USE [master]
GO
/****** Object:  Database [BlogDb]    Script Date: 2/19/2023 11:50:22 AM ******/
CREATE DATABASE [BlogDb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BlogDb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\BlogDb.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'BlogDb_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\BlogDb_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [BlogDb] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BlogDb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BlogDb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BlogDb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BlogDb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BlogDb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BlogDb] SET ARITHABORT OFF 
GO
ALTER DATABASE [BlogDb] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [BlogDb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BlogDb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BlogDb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BlogDb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BlogDb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BlogDb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BlogDb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BlogDb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BlogDb] SET  ENABLE_BROKER 
GO
ALTER DATABASE [BlogDb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BlogDb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BlogDb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BlogDb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BlogDb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BlogDb] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [BlogDb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BlogDb] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [BlogDb] SET  MULTI_USER 
GO
ALTER DATABASE [BlogDb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BlogDb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BlogDb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BlogDb] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [BlogDb] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [BlogDb] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [BlogDb] SET QUERY_STORE = ON
GO
ALTER DATABASE [BlogDb] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [BlogDb]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 2/19/2023 11:50:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Post]    Script Date: 2/19/2023 11:50:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Post](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NOT NULL,
	[SubTitle] [nvarchar](max) NOT NULL,
	[Content] [nvarchar](max) NOT NULL,
	[Date] [nvarchar](max) NOT NULL,
	[Image] [nvarchar](max) NOT NULL,
	[Slug] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Tbl_Post] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Profile]    Script Date: 2/19/2023 11:50:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Profile](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[FatherName] [nvarchar](max) NOT NULL,
	[Bio] [nvarchar](max) NOT NULL,
	[Image] [nvarchar](max) NOT NULL,
	[username] [nvarchar](max) NOT NULL,
	[Password] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Tbl_Profile] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230118140724_addPostandProfileTable', N'7.0.2')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230129101823_updateProfile', N'7.0.2')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230131142958_db', N'7.0.2')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230131143959_dbAddPass', N'7.0.2')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230203102352_newdb', N'7.0.2')
GO
SET IDENTITY_INSERT [dbo].[Tbl_Post] ON 

INSERT [dbo].[Tbl_Post] ([Id], [Title], [SubTitle], [Content], [Date], [Image], [Slug]) VALUES (2, N'AI Adoption on the Rise', N'AI in 2023', N'AI has captured the imagination and attention of people globally. But in the business world, the rate of adoption of artificial intelligence has lagged behind the level of interest through 2019. Even though we hear that most business leaders believe AI provides a competitive advantage, up until recently, some industry watchers have pegged enterprise adoption at less than 20%.

But as we enter 2020, we’re spotting an uptick, not only in interest but in AI adoption. And that uptick is reaffirmed by a recent global survey commissioned by IBM. The survey, From Roadblock to Scale: The Global Sprint Towards AI, polled more than 4,500 technology decision makers. We wanted to gauge the current and future states of AI deployment across the U.S., Europe and China, to better understand the landscape and the challenges. As you’ll see, it’s about to change dramatically.

AI Adoption on the Rise
Results from the Roadblocks to Scale survey indicate that while there is still work to be done, advances in data discovery and management, skills training and AI explainability are driving the rate of AI adoption faster than many predicted.

For example, 45% of the respondents from large companies (1,000+ employees) said they have adopted AI, while 29% of small and medium sized businesses (under 1,000 employees) responding said they have adopted the technology. These numbers are significantly higher than some industry watchers have estimated to date. Some of the more telling data points of the survey, for which the Executive Summary can be found here, include the following:

A Glimpse at the Numbers
Skills. Major roadblocks are still holding companies back from the benefits of AI. Amongst respondents, 37% cite limited AI expertise or knowledge as a hinderance from successful AI adoption at their business, with increasing data complexities and siloed data (31%) and lack of tools for developing AI models (26%) following close behind.
Trust. Trust is part of the bedrock of AI’s deployment. Globally, 78% of respondents across all countries surveyed say it is very or critically important that they can trust that their AI’s output is fair, safe, and reliable. Moreover, being able to explain how AI arrived at a decision is universally important (83% of global respondents).
Data. Companies currently deploying AI technologies are more likely to use a hybrid cloud (38% adopted) or hybrid multicloud (17% adopted), as AI success is fed by data. And, data is everywhere, on all clouds.', N'3/2/2023', N'AI-adoption-image.jpg', N'AI-Adoption-on-the-Rise')
INSERT [dbo].[Tbl_Post] ([Id], [Title], [SubTitle], [Content], [Date], [Image], [Slug]) VALUES (5, N'Sharing code between ASP.NET and ASP.NET Core', N'how to Share code between ASP.NET and ASP.NET Core', N'<p>With the release of .NET 6 there are even more benefits to using ASP.NET Core. But migrating existing code to ASP.NET Core often sounds like a big investment. Today we’ll share how you can accelerate the migration to ASP.NET Core. There are minor changes you can make today that can make it easier to migrate to ASP.NET Core tomorrow.</p><p>Before we begin let’s talk about a real scenario. Let’s talk about how to modify code in a 10-year-old application so that it can be shared with ASP.NET Core. In the next sections we’ll give samples that migrate the ShoppingCartController.cs from the MVC Music Store app that was used to demo ASP.NET MVC3.</p><p>The first step to migrating this web app is to create a new <strong>ASP.NET Core Web App (Model-View-Controller)</strong> project. This template will add support for Controllers and map the default route for Controllers in the Program.cs file. Once we have the new project setup, we’ll remove the default HomeController and the view files for Home/Index and Home/Privacy so we can share content from the MVC3 Music Store web app without conflict.</p><h2>You can share Controllers</h2><p>The first thing you can share between the two projects is Controllers. Many teams want the new website to work the same as the current one. And when we say “the same” we mean “the same”. If you fix a bug in one project, then you need that same fix to show up in both sites. One of the easiest ways to assure this behavior is to share the same file in both projects. Luckily ASP.NET Core uses the new SDK style project files. That means it’s easy to open the csproj file and add some changes because the files are very readable.</p><p>To start sharing a Controller class you’ll need to create an &lt;ItemGroup&gt; and add a reference to the existing class. Here’s a sample that shows how to share the ShoppingCartController.cs by updating the csproj file of the ASP.NET Core project.</p>', N'19/02/2023', N'mvcHowtoShare.jpg', N'how-to-Sharing-code-between-ASP.NET')
INSERT [dbo].[Tbl_Post] ([Id], [Title], [SubTitle], [Content], [Date], [Image], [Slug]) VALUES (6, N'Testing ASP.NET Core MVC web apps in-memory', N'how to Test ASP.NET Core MVC web apps in-memory', N'<p>Testing is an important part of the development process of any application. In this blog post we are going to explore how we can test ASP.NET Core MVC applications using an in-memory server. This approach has several advantages:</p><ul><li>It’s very fast because it does not start a real server.</li><li>It’s reliable because there is no need to reserve ports or clean up resources after it runs.</li><li>It’s easier than other ways of testing your application, such as using an external test driver.</li><li>It allows testing of traits in your application that are hard to unit test, like ensuring your authorization rules are correct.</li></ul><p>The main shortcoming of this approach is that is not well suited to test applications that heavily rely on JavaScript. That said, if you are writing a traditional web application or an API then all the benefits mentioned above apply.</p><p>For testing MVC applications we are going to use TestServer. TestServer is an in-memory implementation of a server for ASP.NET Core applications akin to Kestrel or HTTP.SYS.</p><h2>Creating and setting up the projects</h2><p>We are going to start by creating an MVC application using the following command:</p><p>dotnet new mvc -au Individual -uld --use-launch-settings -o .\TestingMVC\src\TestingMVC</p><p>Next we are going to create a test project with the following command:</p><p>dotnet new xunit -o .\TestingMVC\test\TestingMVC.Tests</p><p>Next we are going to create a solution, add the projects to the solution and add a reference to the application project from the test project.</p><p>dotnet new sln
dotnet sln add .\src\TestingMVC\TestingMVC.csproj
dotnet sln add .\test\TestingMVC.Tests\TestingMVC.Tests.csproj
dotnet add .\test\TestingMVC.Tests\TestingMVC.Tests.csproj reference .\src\TestingMVC\TestingMVC.csproj</p><p>The next step is to add references to the components we are going to use for testing. For that, we go to the testing csproj file and add the following item group</p>', N'19/02/2023', N'swimlane-cross-platform.jpg', N'Testing-ASP.NET-Core-MVC-web-apps-in-memory')
INSERT [dbo].[Tbl_Post] ([Id], [Title], [SubTitle], [Content], [Date], [Image], [Slug]) VALUES (7, N'Let''s known about MVC Framework', N'what is  MVC Framework what are its uses', N'<p>The <strong>Model-View-Controller (MVC)</strong> is an architectural pattern that separates an application into three main logical components: the <strong>model</strong>, the view, and the controller. Each of these components are built to handle specific development aspects of an application. MVC is one of the most frequently used industry-standard web development framework to create scalable and extensible projects.</p><h2>MVC Components</h2><p>Following are the components of MVC −</p><h3>Model</h3><p>The Model component corresponds to all the data-related logic that the user works with. This can represent either the data that is being transferred between the View and Controller components or any other business logic-related data. For example, a Customer object will retrieve the customer information from the database, manipulate it and update it data back to the database or use it to render data.</p><h3>View</h3><p>The View component is used for all the UI logic of the application. For example, the Customer view will include all the UI components such as text boxes, dropdowns, etc. that the final user interacts with.</p><h3>Controller</h3><p>Controllers act as an interface between Model and View components to process all the business logic and incoming requests, manipulate data using the Model component and interact with the Views to render the final output. For example, the Customer controller will handle all the interactions and inputs from the Customer View and update the database using the Customer Model. The same controller will be used to view the Customer data.</p>', N'19/02/2023', N'model_view_controller.jpg', N'The-Model-View-Controller-(MVC)')
INSERT [dbo].[Tbl_Post] ([Id], [Title], [SubTitle], [Content], [Date], [Image], [Slug]) VALUES (8, N' T-Mobile is updating its automatic payment (or AutoPay) ', N'when will  T-Mobile is update its automatic payment ', N'<p>T-Mobile is updating its automatic payment (or AutoPay) rules, including dropping the ability for credit card users to gain the AutoPay discount on its plans. The carrier confirmed to CNET on Thursday that starting "as early as May" it will be limiting these discounts just to those who pay with a debit card or bank account.&nbsp;</p><p>The move marks a change from the carrier''s current policy, which allows anyone to get a discount on wireless or home internet service if they set up automatic payments, regardless of the method they use to pay their bills. If you still want to pay your T-Mobile bills with a credit card, you can, but it will be without this discount.</p><p>A T-Mobile spokesperson says that the switch is being done to "continue providing customers with the best value in wireless," noting that the "majority of our customers use their bank account or debit card for AutoPay and will continue to get a discount on top of an already great rate plan value."</p><p>T-Mobile says that debit cards will still be accepted even after the changes. No firm date was given for when the switch would take place or when customers might be notified.&nbsp;</p><p>AutoPay discounts are a regular incentive offered by wireless providers to encourage users to set up direct billing for services. Without AutoPay set up, carriers generally charge a few dollars more per month, per line or per service. For T-Mobile''s Home Internet, for example, the price with AutoPay is $50 per month, while the cost without it being set up is $55 monthly.&nbsp;</p><p>The carrier offers a similar $5 discount for each line on an account with its Magenta Max, Magenta (up to 8 lines, respectively) or Essentials plans (up to 6 lines). &nbsp;</p><p>T-Mobile isn''t the first carrier to move away from credit cards for automatic payments. Verizon has long limited its AutoPay discounts to users who pay with debit cards or checking accounts, expanding in 2020 to only allow for credit card payments if you <a href="https://www.cnet.com/tech/mobile/verizons-new-visa-card-gives-wireless-customers-more-ways-to-save/">use the carrier''s own branded Verizon Visa card</a>. AT&amp;T, meanwhile, still allows for credit card payments (even without using its own branded card), in addition to debit cards and bank accounts. &nbsp;</p>', N'19/02/2023', N'tmobile.PNG', N'when-will--T-Mobile-is-update-its-automatic-payment')
INSERT [dbo].[Tbl_Post] ([Id], [Title], [SubTitle], [Content], [Date], [Image], [Slug]) VALUES (9, N'a new AI bot in town: ChatGPT', N'do you know an intersting facts about chatGPT', N'<p>There''s a new AI bot in town: <a href="https://chat.openai.com/chat">ChatGPT</a>. Even if you aren''t into artificial intelligence, pay attention, because this one is a big deal.</p><p>The tool, from a power player in artificial intelligence called <a href="https://openai.com/">OpenAI</a>, lets you type natural-language prompts. ChatGPT then offers <a href="https://www.cnet.com/culture/internet/look-what-chatgpt-did-to-my-online-dating-profile/">conversational, if somewhat stilted, responses</a>. The bot remembers the thread of your dialogue, using previous questions and answers to inform its next responses. It derives its answers from huge volumes of information on the internet.</p><p><a href="https://www.cnet.com/tech/services-and-software/chatgpt-is-going-to-be-everywhere-in-2023/">ChatGPT is a big deal</a>. The tool seems pretty knowledgeable in areas where there''s good training data for it to learn from. It''s not omniscient or <a href="https://www.cnet.com/science/chatgpt-is-a-stunning-ai-but-human-jobs-are-safe-for-now/">smart enough to replace all humans yet</a>, but it can be creative, and its answers can sound downright authoritative. A few days after its launch,&nbsp;<a href="https://twitter.com/sama/status/1599668808285028353">more than a million people were trying out ChatGPT</a>.</p><p>But be careful, OpenAI warns. ChatGPT has all kinds of potential pitfalls, some easy to spot and some more subtle.</p><p>"It''s a mistake to be relying on it for anything important right now," <a href="https://twitter.com/sama/status/1601731295792414720">OpenAI Chief Executive Sam Altman tweeted</a>. "We have lots of work to do on robustness and truthfulness." Here''s a look at why ChatGPT is important and what''s going on with it.</p><p>And it''s becoming big business. In January,&nbsp;<a href="https://www.cnet.com/tech/services-and-software/microsoft-boosts-openai-with-multibillion-dollar-investment/">Microsoft pledged to invest billions of dollars into OpenAI</a>. A modified version of the technology behind ChatGPT is now powering&nbsp;<a href="https://www.cnet.com/tech/computing/microsofts-ai-powered-bing-challenges-google-search/">Microsoft''s new Bing challenge to Google search</a>&nbsp;and, eventually, it''ll power the company''s effort to build new&nbsp;<a href="https://www.cnet.com/tech/ai-as-co-pilot-your-online-life-is-about-to-change-like-it-or-not/">AI co-pilot smarts in to every part of your digital life</a>.</p><p>Bing uses OpenAI technology to process search queries, <a href="https://www.cnet.com/tech/computing/microsofts-ai-boosted-bing-can-run-rings-around-google-search/">compile results from different sources</a>, summarize documents, generate travel itineraries, answer questions and generally just chat with humans. That''s a potential revolution for search engines, but it''s been plagued with <a href="https://www.cnet.com/tech/computing/bing-ai-bungles-search-results-at-times-just-like-google/">problems like factual errors</a> and and <a href="https://www.cnet.com/tech/services-and-software/microsoft-will-try-to-fix-bing-ais-errors-and-bizarre-chats/">unhinged conversations</a>.</p><h2><strong>What is ChatGPT?</strong></h2><p>ChatGPT is an AI chatbot system that <a href="https://openai.com/blog/chatgpt/">OpenAI released in November</a> to show off and test what a very large, powerful AI system can accomplish. You can ask it countless questions and often will get an answer that''s useful.</p><p>For example, you can ask it encyclopedia questions like, "Explain Newton''s laws of motion." You can tell it, "Write me a poem," and when it does, say, "Now make it more exciting." You ask it to write a computer program that''ll show you all the different ways you can arrange the letters of a word.</p><p>Here''s the catch: ChatGPT doesn''t exactly know anything. It''s an AI that''s trained to recognize patterns in vast swaths of text harvested from the internet, then further trained with human assistance to deliver more useful, better dialog. The answers you get may sound plausible and even authoritative, but they might well be entirely wrong, as OpenAI warns.</p><p>Chatbots have been of interest for years to companies looking for ways to help customers get what they need and to AI researchers trying to tackle the Turing Test. That''s the famous "Imitation Game" that <a href="https://academic.oup.com/mind/article/LIX/236/433/986238">computer scientist Alan Turing proposed in 1950</a> as a way to gauge intelligence: Can a human conversing with a human and with a computer tell which is which?</p>', N'19/02/2023', N'aibot.PNG', N'do-you-know-an-intersting-facts-about-chatGPT')
SET IDENTITY_INSERT [dbo].[Tbl_Post] OFF
GO
SET IDENTITY_INSERT [dbo].[Tbl_Profile] ON 

INSERT [dbo].[Tbl_Profile] ([Id], [Name], [FatherName], [Bio], [Image], [username], [Password]) VALUES (1, N'Shahid', N'Khan', N'Hello, I am Muhammad Shahid, a passionate ASP.NET MVC developer with 3 years of professional experience. I have always been fascinated by the world of technology and its advancements, and that is what led me to pursue a career in this field. 
Apart from my work as a developer, I am also an avid blogger who enjoys sharing my knowledge and insights about the latest trends and advancements in the .NET world. My blog is aimed at helping people stay connected and updated with the latest news and technologies related to this field. ', N'adminProfile.png', N'admin', N'admin123')
SET IDENTITY_INSERT [dbo].[Tbl_Profile] OFF
GO
ALTER TABLE [dbo].[Tbl_Profile] ADD  DEFAULT (N'') FOR [username]
GO
ALTER TABLE [dbo].[Tbl_Profile] ADD  DEFAULT (N'') FOR [Password]
GO
USE [master]
GO
ALTER DATABASE [BlogDb] SET  READ_WRITE 
GO
