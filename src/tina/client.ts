import { createClient } from 'tinacms'

export const client = createClient({
  url: 'http://localhost:4001/graphql',
  queries: {
    // Get all posts with optional filtering
    postConnection: (filter = {}) => `
      query PostConnection($first: Float, $after: String) {
        postConnection(first: $first, after: $after) {
          edges {
            node {
              id
              title
              description
              heroImage
              category
              _sys {
                filename
              }
            }
          }
          pageInfo {
            hasNextPage
            endCursor
          }
        }
      }
    `,
    // Search posts by query
    searchPosts: (query) => `
      query SearchPosts($query: String!) {
        searchPosts(query: $query) {
          id
          title
          description
          heroImage
          category
        }
      }
    `,
    // Get single post
    post: (relativePath) => `
      query Post($relativePath: String!) {
        post(relativePath: $relativePath) {
          id
          title
          description
          heroImage
          category
        }
      }
    `,
  },
})

// Helper functions for Tina CMS operations
export const tinaQueries = {
  async getAllPosts() {
    try {
      const response = await client.request(client.queries.postConnection());
      return response.data.postConnection.edges.map(edge => edge.node);
    } catch (error) {
      console.error('Error fetching posts from Tina:', error);
      return null;
    }
  },

  async searchPosts(query) {
    try {
      const response = await client.request(client.queries.searchPosts(query), { query });
      return response.data.searchPosts || [];
    } catch (error) {
      console.error('Error searching posts with Tina:', error);
      return null;
    }
  },

  async getPost(relativePath) {
    try {
      const response = await client.request(client.queries.post(relativePath), { relativePath });
      return response.data.post;
    } catch (error) {
      console.error('Error fetching post from Tina:', error);
      return null;
    }
  }
};
