USE [master]
GO
/****** Object:  Database [Assignment_SU24]    Script Date: 7/16/2024 8:12:16 AM ******/
CREATE DATABASE [Assignment_SU24]
GO
USE [Assignment_SU24]
GO
/****** Object:  Table [dbo].[assesments]    Script Date: 7/16/2024 8:12:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[assesments](
	[aid] [int] NOT NULL,
	[aname] [varchar](150) NOT NULL,
	[weight] [float] NOT NULL,
	[subid] [int] NULL,
 CONSTRAINT [PK_assesments] PRIMARY KEY CLUSTERED 
(
	[aid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[courses]    Script Date: 7/16/2024 8:12:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[courses](
	[cid] [int] NOT NULL,
	[cname] [varchar](150) NOT NULL,
	[lid] [int] NOT NULL,
	[subid] [int] NOT NULL,
	[semid] [int] NOT NULL,
 CONSTRAINT [PK_courses] PRIMARY KEY CLUSTERED 
(
	[cid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[exams]    Script Date: 7/16/2024 8:12:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[exams](
	[eid] [int] NOT NULL,
	[from] [datetime] NOT NULL,
	[duration] [float] NOT NULL,
	[aid] [int] NOT NULL,
 CONSTRAINT [PK_exams] PRIMARY KEY CLUSTERED 
(
	[eid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[grades]    Script Date: 7/16/2024 8:12:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[grades](
	[eid] [int] NOT NULL,
	[sid] [int] NOT NULL,
	[score] [float] NOT NULL,
 CONSTRAINT [PK_grades] PRIMARY KEY CLUSTERED 
(
	[eid] ASC,
	[sid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[lecturers]    Script Date: 7/16/2024 8:12:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lecturers](
	[lid] [int] NOT NULL,
	[lname] [varchar](150) NOT NULL,
 CONSTRAINT [PK_lecturers] PRIMARY KEY CLUSTERED 
(
	[lid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[semester]    Script Date: 7/16/2024 8:12:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[semester](
	[semid] [int] NOT NULL,
	[year] [int] NOT NULL,
	[season] [varchar](10) NOT NULL,
	[active] [bit] NOT NULL,
 CONSTRAINT [PK_semester] PRIMARY KEY CLUSTERED 
(
	[semid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[students]    Script Date: 7/16/2024 8:12:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[students](
	[sid] [int] NOT NULL,
	[sname] [nvarchar](150) NOT NULL,
 CONSTRAINT [PK_students] PRIMARY KEY CLUSTERED 
(
	[sid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[students_courses]    Script Date: 7/16/2024 8:12:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[students_courses](
	[sid] [int] NOT NULL,
	[cid] [int] NOT NULL,
 CONSTRAINT [PK_students_courses] PRIMARY KEY CLUSTERED 
(
	[sid] ASC,
	[cid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[subjects]    Script Date: 7/16/2024 8:12:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[subjects](
	[subid] [int] NOT NULL,
	[subname] [varchar](150) NOT NULL,
 CONSTRAINT [PK_subjects] PRIMARY KEY CLUSTERED 
(
	[subid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users]    Script Date: 7/16/2024 8:12:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
    [sid] [int]  NULL,
	[username] [varchar](150) NOT NULL,
	[password] [varchar](150) NOT NULL,
	[displayname] [varchar](150) NOT NULL,
 CONSTRAINT [PK_users] PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users_lecturers]    Script Date: 7/16/2024 8:12:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users_lecturers](
	[username] [varchar](150) NOT NULL,
	[lid] [int] NOT NULL,
	[active] [bit] NOT NULL,
 CONSTRAINT [PK_users_lecturers] PRIMARY KEY CLUSTERED 
(
	[username] ASC,
	[lid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[assesments] ([aid], [aname], [weight], [subid]) VALUES (1, N'WS1', 0.05, 1)
INSERT [dbo].[assesments] ([aid], [aname], [weight], [subid]) VALUES (2, N'WS2', 0.05, 1)
INSERT [dbo].[assesments] ([aid], [aname], [weight], [subid]) VALUES (3, N'PT', 0.05, 1)
INSERT [dbo].[assesments] ([aid], [aname], [weight], [subid]) VALUES (4, N'PT2', 0.05, 1)
INSERT [dbo].[assesments] ([aid], [aname], [weight], [subid]) VALUES (5, N'Assignment', 0.4, 1)
INSERT [dbo].[assesments] ([aid], [aname], [weight], [subid]) VALUES (6, N'Final Exam', 0.2, 1)
INSERT [dbo].[assesments] ([aid], [aname], [weight], [subid]) VALUES (7, N'Practical Exam', 0.2, 1)
INSERT [dbo].[assesments] ([aid], [aname], [weight], [subid]) VALUES (8, N'WS1', 0.5, 2)
INSERT [dbo].[assesments] ([aid], [aname], [weight], [subid]) VALUES (9, N'WS2', 0.5, 2)
INSERT [dbo].[assesments] ([aid], [aname], [weight], [subid]) VALUES (10, N'FE', 1, 3)
GO
INSERT [dbo].[courses] ([cid], [cname], [lid], [subid], [semid]) VALUES (1, N'SE1872-PRJ301', 1, 1, 4)
INSERT [dbo].[courses] ([cid], [cname], [lid], [subid], [semid]) VALUES (2, N'SE1872-IOT102', 2, 2, 4)
INSERT [dbo].[courses] ([cid], [cname], [lid], [subid], [semid]) VALUES (3, N'SE1872-MAS291', 1, 3, 4)
INSERT [dbo].[courses] ([cid], [cname], [lid], [subid], [semid]) VALUES (4, N'SE1872-JPD123', 1, 1, 4)
GO
INSERT [dbo].[exams] ([eid], [from], [duration], [aid]) VALUES (1, CAST(N'2024-06-17T09:00:00.000' AS DateTime), 30, 1)
INSERT [dbo].[exams] ([eid], [from], [duration], [aid]) VALUES (2, CAST(N'2024-06-17T09:00:00.000' AS DateTime), 30, 2)
INSERT [dbo].[exams] ([eid], [from], [duration], [aid]) VALUES (3, CAST(N'2024-06-17T09:00:00.000' AS DateTime), 30, 3)
INSERT [dbo].[exams] ([eid], [from], [duration], [aid]) VALUES (4, CAST(N'2024-06-17T09:00:00.000' AS DateTime), 30, 4)
INSERT [dbo].[exams] ([eid], [from], [duration], [aid]) VALUES (5, CAST(N'2024-06-17T09:00:00.000' AS DateTime), 30, 5)
INSERT [dbo].[exams] ([eid], [from], [duration], [aid]) VALUES (6, CAST(N'2024-06-17T09:00:00.000' AS DateTime), 30, 6)
INSERT [dbo].[exams] ([eid], [from], [duration], [aid]) VALUES (7, CAST(N'2024-06-17T09:00:00.000' AS DateTime), 30, 7)
INSERT [dbo].[exams] ([eid], [from], [duration], [aid]) VALUES (8, CAST(N'2024-06-18T09:00:00.000' AS DateTime), 30, 1)
INSERT [dbo].[exams] ([eid], [from], [duration], [aid]) VALUES (9, CAST(N'2024-06-18T09:00:00.000' AS DateTime), 30, 8)
INSERT [dbo].[exams] ([eid], [from], [duration], [aid]) VALUES (10, CAST(N'2024-06-18T09:00:00.000' AS DateTime), 30, 9)
INSERT [dbo].[exams] ([eid], [from], [duration], [aid]) VALUES (11, CAST(N'2024-06-18T09:00:00.000' AS DateTime), 30, 10)
GO
INSERT [dbo].[grades] ([eid], [sid], [score]) VALUES (1, 3, 8)
INSERT [dbo].[grades] ([eid], [sid], [score]) VALUES (2, 3, 2)
INSERT [dbo].[grades] ([eid], [sid], [score]) VALUES (3, 3, 9)
INSERT [dbo].[grades] ([eid], [sid], [score]) VALUES (4, 3, 9)
INSERT [dbo].[grades] ([eid], [sid], [score]) VALUES (5, 3, 9)
INSERT [dbo].[grades] ([eid], [sid], [score]) VALUES (6, 3, 9)
INSERT [dbo].[grades] ([eid], [sid], [score]) VALUES (7, 3, 9)
INSERT [dbo].[grades] ([eid], [sid], [score]) VALUES (8, 3, 9)
INSERT [dbo].[grades] ([eid], [sid], [score]) VALUES (9, 3, 9)
INSERT [dbo].[grades] ([eid], [sid], [score]) VALUES (10, 3, 9)

INSERT [dbo].[grades] ([eid], [sid], [score]) VALUES (1, 1, 8)
INSERT [dbo].[grades] ([eid], [sid], [score]) VALUES (2, 1, 2)
INSERT [dbo].[grades] ([eid], [sid], [score]) VALUES (3, 1, 9)
INSERT [dbo].[grades] ([eid], [sid], [score]) VALUES (4, 1, 9)
INSERT [dbo].[grades] ([eid], [sid], [score]) VALUES (5, 1, 9)
INSERT [dbo].[grades] ([eid], [sid], [score]) VALUES (6, 1, 9)
INSERT [dbo].[grades] ([eid], [sid], [score]) VALUES (7, 1, 9)
INSERT [dbo].[grades] ([eid], [sid], [score]) VALUES (8, 1, 9)
INSERT [dbo].[grades] ([eid], [sid], [score]) VALUES (9, 1, 9)
INSERT [dbo].[grades] ([eid], [sid], [score]) VALUES (10, 1, 9)

GO
INSERT [dbo].[lecturers] ([lid], [lname]) VALUES (1, N'sonnt')
INSERT [dbo].[lecturers] ([lid], [lname]) VALUES (2, N'hanhvb')
INSERT [dbo].[lecturers] ([lid], [lname]) VALUES (3, N'anhnn')
GO
INSERT [dbo].[semester] ([semid], [year], [season], [active]) VALUES (1, 2023, N'SUMMER', 0)
INSERT [dbo].[semester] ([semid], [year], [season], [active]) VALUES (2, 2023, N'FALL', 0)
INSERT [dbo].[semester] ([semid], [year], [season], [active]) VALUES (3, 2024, N'SPRING', 0)
INSERT [dbo].[semester] ([semid], [year], [season], [active]) VALUES (4, 2024, N'SUMMER', 1)
GO
INSERT [dbo].[students] ([sid], [sname]) VALUES (1, N'Vi Duc Chinh')
INSERT [dbo].[students] ([sid], [sname]) VALUES (2, N'Ngo Manh Huy')
INSERT [dbo].[students] ([sid], [sname]) VALUES (3, N'Nguyen Nhat Duy')
INSERT [dbo].[students] ([sid], [sname]) VALUES (4, N'Nguyen Hai Tien')
INSERT [dbo].[students] ([sid], [sname]) VALUES (5, N'Le Doan Thang')
INSERT [dbo].[students] ([sid], [sname]) VALUES (6, N'Dinh Quang Huy')
GO
INSERT [dbo].[students_courses] ([sid], [cid]) VALUES (1, 1)
INSERT [dbo].[students_courses] ([sid], [cid]) VALUES (1, 2)
INSERT [dbo].[students_courses] ([sid], [cid]) VALUES (3, 1)
INSERT [dbo].[students_courses] ([sid], [cid]) VALUES (3, 3)
GO
INSERT [dbo].[subjects] ([subid], [subname]) VALUES (1, N'PRJ301')
INSERT [dbo].[subjects] ([subid], [subname]) VALUES (2, N'IOT102')
INSERT [dbo].[subjects] ([subid], [subname]) VALUES (3, N'MAS291')
GO
INSERT [dbo].[users] ([sid],[username], [password], [displayname]) VALUES (1,N'chinh', N'123', N'Vi Duc Chinh')
INSERT [dbo].[users] ([sid],[username], [password], [displayname]) VALUES (3,N'duy', N'123', N'Nguyen Nhat Duy')
INSERT [dbo].[users] ([username], [password], [displayname]) VALUES (N'sonnt', N'123', N'Ngo Ngoc son')
INSERT [dbo].[users] ([username], [password], [displayname]) VALUES (N'hanhvb', N'123', N'Vu Ba Hanh')
GO
INSERT [dbo].[users_lecturers] ([username], [lid], [active]) VALUES (N'hanhvb', 2, 1)
INSERT [dbo].[users_lecturers] ([username], [lid], [active]) VALUES (N'sonnt', 1, 1)
GO
-- Add foreign keys for assesments table
ALTER TABLE [dbo].[assesments] 
ADD CONSTRAINT FK_assesments_subjects FOREIGN KEY (subid)
REFERENCES [dbo].[subjects] (subid);

-- Add foreign keys for courses table
ALTER TABLE [dbo].[courses] 
ADD CONSTRAINT FK_courses_lecturers FOREIGN KEY (lid)
REFERENCES [dbo].[lecturers] (lid);

ALTER TABLE [dbo].[courses] 
ADD CONSTRAINT FK_courses_subjects FOREIGN KEY (subid)
REFERENCES [dbo].[subjects] (subid);

ALTER TABLE [dbo].[courses] 
ADD CONSTRAINT FK_courses_semester FOREIGN KEY (semid)
REFERENCES [dbo].[semester] (semid);

-- Add foreign keys for exams table
ALTER TABLE [dbo].[exams] 
ADD CONSTRAINT FK_exams_assesments FOREIGN KEY (aid)
REFERENCES [dbo].[assesments] (aid);

-- Add foreign keys for grades table
ALTER TABLE [dbo].[grades] 
ADD CONSTRAINT FK_grades_exams FOREIGN KEY (eid)
REFERENCES [dbo].[exams] (eid);

ALTER TABLE [dbo].[grades] 
ADD CONSTRAINT FK_grades_students FOREIGN KEY (sid)
REFERENCES [dbo].[students] (sid);

-- Add foreign keys for students_courses table
ALTER TABLE [dbo].[students_courses] 
ADD CONSTRAINT FK_students_courses_students FOREIGN KEY (sid)
REFERENCES [dbo].[students] (sid);

ALTER TABLE [dbo].[students_courses] 
ADD CONSTRAINT FK_students_courses_courses FOREIGN KEY (cid)
REFERENCES [dbo].[courses] (cid);

-- Add foreign key for users table
ALTER TABLE [dbo].[users] 
ADD CONSTRAINT FK_users_students FOREIGN KEY (usersid)
REFERENCES [dbo].[students] (sid);

-- Add foreign keys for users_lecturers table
ALTER TABLE [dbo].[users_lecturers] 
ADD CONSTRAINT FK_users_lecturers_users FOREIGN KEY (username)
REFERENCES [dbo].[users] (username);

ALTER TABLE [dbo].[users_lecturers] 
ADD CONSTRAINT FK_users_lecturers_lecturers FOREIGN KEY (lid)
REFERENCES [dbo].[lecturers] (lid);
GO