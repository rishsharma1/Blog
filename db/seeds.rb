Post.delete_all

Post.create(
  id: 1,
  title: "My Very First Post",
  created_at: Time.now - 1.day,
  content:
  %Q{### There Is Something You Should Know!

  This is my very first post using markdown!
  Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.

  How do you like it?  I learned this from [RichOnRails.com](http://richonrails.com/articles/rendering-markdown-with-redcarpet)!},
  description: "This is my very first post using markdown!
  Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis..."
)

Post.create(
  id: 2,
  title: "My Second Post",
  created_at: Time.now,
  content:
  %Q{### My List of Things To Do!

  Here is the list of things I wish to do!

  * write more posts
  * write even more posts
  * write even more posts!

  #Michael Fassbender Appreciation
  ------------------------------------------------
  <p align="center">
  <img src="http://49.media.tumblr.com/tumblr_m5dfos72Gl1qzktzro1_500.gif" alt="Fassbender"/>
  </p>

  <p align="center">
  <img src="https://media.giphy.com/media/IfTeNljktJRx6/giphy.gif" alt="Fassbender"/>
  </p>

  <p align="center">
  <img src="http://media3.popsugar-assets.com/files/2015/07/17/970/n/1922398/8cff8e9ca636434d_0e5f6e720da6d29e_gif_500x660_3fb48dk058tb.xxxlarge/i/Boxer-Briefs-Always-Good-Idea.gif" alt="Fassbender"/>
  </p>

  




  }
)
