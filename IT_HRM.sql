USE [hrManager16thang6]
GO
/****** Object:  Table [dbo].[Applicant]    Script Date: 7/2/2023 5:24:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Applicant](
	[Applicant_id] [int] NOT NULL,
	[name] [nvarchar](50) NULL,
	[phoneNumer] [int] NULL,
	[email] [nvarchar](50) NULL,
	[CV] [varbinary](max) NULL,
	[gender] [nvarchar](50) NULL,
	[status] [bit] NULL,
	[interviewDate] [date] NULL,
	[jobOffering_id] [int] NULL,
	[employee_id] [nvarchar](50) NULL,
	[department_id] [nvarchar](10) NULL,
 CONSTRAINT [PK_Applicant] PRIMARY KEY CLUSTERED 
(
	[Applicant_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[contract]    Script Date: 7/2/2023 5:24:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[contract](
	[employee_contractId] [int] NULL,
	[expDate] [date] NULL,
	[inspireDate] [date] NULL,
	[medicalInsurance] [float] NULL,
	[SocialAssurance] [float] NULL,
	[tax] [float] NULL,
	[employee_id] [nvarchar](10) NOT NULL,
	[contract_img] [nvarchar](500) NULL,
	[signDate] [date] NULL,
	[accidentalInsurance] [float] NULL,
	[salaryBase] [int] NULL,
	[late_day_penalty] [int] NULL,
	[overtime_day_bonus] [int] NULL,
	[absent_day_penalty] [int] NULL,
	[execuseDayOff] [int] NULL,
 CONSTRAINT [PK_contract] PRIMARY KEY CLUSTERED 
(
	[employee_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DayLeave]    Script Date: 7/2/2023 5:24:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DayLeave](
	[dayleave_id] [int] NOT NULL,
	[dayleave_title] [nvarchar](40) NULL,
	[dayleave_description] [nvarchar](100) NULL,
	[date-created] [date] NULL,
	[status] [bit] NULL,
	[username] [nvarchar](30) NULL,
	[employeeID] [nvarchar](10) NULL,
	[timekeeping_id] [int] NULL,
 CONSTRAINT [PK_DayLeave_2] PRIMARY KEY CLUSTERED 
(
	[dayleave_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[department]    Script Date: 7/2/2023 5:24:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[department](
	[department_id] [nvarchar](10) NOT NULL,
	[department_name] [nvarchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[department_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[employee]    Script Date: 7/2/2023 5:24:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[employee](
	[employee_id] [nvarchar](10) NOT NULL,
	[department_id] [nvarchar](10) NULL,
	[employee_name] [nvarchar](30) NULL,
	[employee_dob] [date] NULL,
	[employee_phone] [char](10) NULL,
	[datejoin] [date] NULL,
	[employee_contractId] [int] NULL,
	[age] [int] NULL,
	[gender] [bit] NULL,
	[supervison_id] [nvarchar](10) NULL,
	[employee_email] [nvarchar](30) NULL,
	[employee_address] [nvarchar](30) NULL,
	[employee_leaveDay] [date] NULL,
	[employee_photo] [varchar](500) NULL,
 CONSTRAINT [PK__employee__C52E0BA8FD2CD588] PRIMARY KEY CLUSTERED 
(
	[employee_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JobOffering]    Script Date: 7/2/2023 5:24:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JobOffering](
	[jobOffering_id] [int] NOT NULL,
	[title] [nvarchar](50) NULL,
	[description] [nvarchar](50) NULL,
	[baseSalary] [float] NULL,
	[dateCreate] [date] NULL,
	[status] [bit] NULL,
	[maxEmployee] [int] NULL,
	[departmentID] [nvarchar](10) NULL,
 CONSTRAINT [PK_JobOffering] PRIMARY KEY CLUSTERED 
(
	[jobOffering_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Report]    Script Date: 7/2/2023 5:24:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Report](
	[report_id] [int] NOT NULL,
	[report_title] [nvarchar](40) NULL,
	[late_day] [int] NULL,
	[absent_day] [int] NULL,
	[overtime_day] [int] NULL,
	[employee_id] [nvarchar](10) NULL,
	[month] [int] NULL,
	[excused_absent_day] [int] NULL,
	[year] [int] NULL,
	[status] [nvarchar](50) NULL,
 CONSTRAINT [PK_DayLeave_1] PRIMARY KEY CLUSTERED 
(
	[report_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[salary]    Script Date: 7/2/2023 5:24:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[salary](
	[salary_id] [nvarchar](50) NULL,
	[month] [smallint] NULL,
	[year] [int] NULL,
	[employee_id] [nvarchar](10) NULL,
	[report_id] [int] NOT NULL,
 CONSTRAINT [PK_salary] PRIMARY KEY CLUSTERED 
(
	[report_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[timekeeping]    Script Date: 7/2/2023 5:24:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[timekeeping](
	[date] [date] NOT NULL,
	[time_in] [time](7) NULL,
	[time_out] [time](7) NULL,
	[timekeeping_id] [int] NOT NULL,
	[status] [nvarchar](50) NULL,
	[employee_id] [nvarchar](10) NULL,
	[dayleave_id] [int] NULL,
	[report_id] [int] NULL,
 CONSTRAINT [PK_timekeeping] PRIMARY KEY CLUSTERED 
(
	[timekeeping_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 7/2/2023 5:24:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[employee_id] [nvarchar](10) NOT NULL,
	[username] [nvarchar](30) NULL,
	[password] [nvarchar](30) NULL,
	[roleName] [nvarchar](50) NULL,
	[email] [nvarchar](50) NULL,
	[status] [bit] NULL,
 CONSTRAINT [PK_User_1] PRIMARY KEY CLUSTERED 
(
	[employee_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Applicant] ([Applicant_id], [name], [phoneNumer], [email], [CV], [gender], [status], [interviewDate], [jobOffering_id], [employee_id], [department_id]) VALUES (1, N'Hoàng Thế Bảo', 192382931, N'bao@gmail.com', NULL, N'1', NULL, NULL, 1, NULL, N'SD')
INSERT [dbo].[Applicant] ([Applicant_id], [name], [phoneNumer], [email], [CV], [gender], [status], [interviewDate], [jobOffering_id], [employee_id], [department_id]) VALUES (2, N'Lâm Hoàng Danh', 1829384758, N'danh@gmail.com', NULL, N'1', 1, CAST(N'2023-08-29' AS Date), 1, NULL, N'PM')
INSERT [dbo].[Applicant] ([Applicant_id], [name], [phoneNumer], [email], [CV], [gender], [status], [interviewDate], [jobOffering_id], [employee_id], [department_id]) VALUES (3, N'Hoàng Nhật Tiến', 1872390475, N'tien@gmail.com', NULL, N'1', 0, CAST(N'2023-06-01' AS Date), 1, NULL, N'UI')
GO
INSERT [dbo].[contract] ([employee_contractId], [expDate], [inspireDate], [medicalInsurance], [SocialAssurance], [tax], [employee_id], [contract_img], [signDate], [accidentalInsurance], [salaryBase], [late_day_penalty], [overtime_day_bonus], [absent_day_penalty], [execuseDayOff]) VALUES (144, CAST(N'2018-08-02' AS Date), CAST(N'2025-08-12' AS Date), 0.001, 0.008, NULL, N'PM199', NULL, CAST(N'2018-08-01' AS Date), 0.0015, 20000000, 100000, 250000, 1000000, 12)
INSERT [dbo].[contract] ([employee_contractId], [expDate], [inspireDate], [medicalInsurance], [SocialAssurance], [tax], [employee_id], [contract_img], [signDate], [accidentalInsurance], [salaryBase], [late_day_penalty], [overtime_day_bonus], [absent_day_penalty], [execuseDayOff]) VALUES (155, CAST(N'2017-01-22' AS Date), CAST(N'2023-09-18' AS Date), 0.001, 0.008, NULL, N'PM938', NULL, CAST(N'2017-01-20' AS Date), 0.0015, 10500000, 100000, 250000, 1000000, 12)
INSERT [dbo].[contract] ([employee_contractId], [expDate], [inspireDate], [medicalInsurance], [SocialAssurance], [tax], [employee_id], [contract_img], [signDate], [accidentalInsurance], [salaryBase], [late_day_penalty], [overtime_day_bonus], [absent_day_penalty], [execuseDayOff]) VALUES (223, CAST(N'2015-09-13' AS Date), CAST(N'2024-08-22' AS Date), 0.001, 0.008, NULL, N'SD009', NULL, CAST(N'2015-09-11' AS Date), 0.0015, 22300000, 100000, 250000, 1000000, 11)
INSERT [dbo].[contract] ([employee_contractId], [expDate], [inspireDate], [medicalInsurance], [SocialAssurance], [tax], [employee_id], [contract_img], [signDate], [accidentalInsurance], [salaryBase], [late_day_penalty], [overtime_day_bonus], [absent_day_penalty], [execuseDayOff]) VALUES (234, CAST(N'2017-08-05' AS Date), CAST(N'2025-06-11' AS Date), 0.001, 0.008, NULL, N'SD212', NULL, CAST(N'2017-08-03' AS Date), 0.0015, 34000000, 100000, 250000, 1000000, 9)
INSERT [dbo].[contract] ([employee_contractId], [expDate], [inspireDate], [medicalInsurance], [SocialAssurance], [tax], [employee_id], [contract_img], [signDate], [accidentalInsurance], [salaryBase], [late_day_penalty], [overtime_day_bonus], [absent_day_penalty], [execuseDayOff]) VALUES (212, CAST(N'2018-02-02' AS Date), CAST(N'2029-01-28' AS Date), 0.001, 0.008, NULL, N'SD223', N'https://i.imgur.com/m5Rgdjt.png', CAST(N'2018-02-01' AS Date), 0.0015, 18000000, 100000, 250000, 1000000, 10)
INSERT [dbo].[contract] ([employee_contractId], [expDate], [inspireDate], [medicalInsurance], [SocialAssurance], [tax], [employee_id], [contract_img], [signDate], [accidentalInsurance], [salaryBase], [late_day_penalty], [overtime_day_bonus], [absent_day_penalty], [execuseDayOff]) VALUES (322, CAST(N'2019-02-12' AS Date), CAST(N'2029-02-21' AS Date), 0.001, 0.008, NULL, N'SM111', NULL, CAST(N'2019-02-10' AS Date), 0.0015, 24000000, 100000, 250000, 1000000, 12)
INSERT [dbo].[contract] ([employee_contractId], [expDate], [inspireDate], [medicalInsurance], [SocialAssurance], [tax], [employee_id], [contract_img], [signDate], [accidentalInsurance], [salaryBase], [late_day_penalty], [overtime_day_bonus], [absent_day_penalty], [execuseDayOff]) VALUES (333, CAST(N'2016-07-01' AS Date), CAST(N'2023-11-16' AS Date), 0.001, 0.008, NULL, N'SM123', NULL, CAST(N'2016-07-01' AS Date), 0.0015, 28000000, 100000, 250000, 1000000, 12)
INSERT [dbo].[contract] ([employee_contractId], [expDate], [inspireDate], [medicalInsurance], [SocialAssurance], [tax], [employee_id], [contract_img], [signDate], [accidentalInsurance], [salaryBase], [late_day_penalty], [overtime_day_bonus], [absent_day_penalty], [execuseDayOff]) VALUES (432, CAST(N'2016-05-04' AS Date), CAST(N'2025-01-25' AS Date), 0.001, 0.008, NULL, N'UI818', NULL, CAST(N'2016-05-02' AS Date), 0.0015, 22000000, 100000, 250000, 1000000, 12)
INSERT [dbo].[contract] ([employee_contractId], [expDate], [inspireDate], [medicalInsurance], [SocialAssurance], [tax], [employee_id], [contract_img], [signDate], [accidentalInsurance], [salaryBase], [late_day_penalty], [overtime_day_bonus], [absent_day_penalty], [execuseDayOff]) VALUES (443, CAST(N'2015-04-01' AS Date), CAST(N'2024-01-28' AS Date), 0.001, 0.008, NULL, N'UI919', NULL, CAST(N'2015-04-01' AS Date), 0.0015, 28000000, 100000, 250000, 1000000, 12)
GO
INSERT [dbo].[DayLeave] ([dayleave_id], [dayleave_title], [dayleave_description], [date-created], [status], [username], [employeeID], [timekeeping_id]) VALUES (33, N'phong nghi thang 3', N'bi benh', CAST(N'2023-03-03' AS Date), 1, N'thanhphong', N'SD212', 52)
INSERT [dbo].[DayLeave] ([dayleave_id], [dayleave_title], [dayleave_description], [date-created], [status], [username], [employeeID], [timekeeping_id]) VALUES (135, N'Nhà có giỗ ạ', N'em xin nghỉ hôm qua và hôm nay ạ', CAST(N'2023-01-26' AS Date), 0, N'minhquan', N'SD009', NULL)
INSERT [dbo].[DayLeave] ([dayleave_id], [dayleave_title], [dayleave_description], [date-created], [status], [username], [employeeID], [timekeeping_id]) VALUES (200, N'nghỉ đi du lịch', N'cho em nghỉ 2 ngày', CAST(N'2023-01-26' AS Date), 1, N'thanhphong', N'SD212', NULL)
INSERT [dbo].[DayLeave] ([dayleave_id], [dayleave_title], [dayleave_description], [date-created], [status], [username], [employeeID], [timekeeping_id]) VALUES (259, N'Về thăm mẹ', N'', CAST(N'2023-01-31' AS Date), 1, N'minhquan', N'SD009', NULL)
INSERT [dbo].[DayLeave] ([dayleave_id], [dayleave_title], [dayleave_description], [date-created], [status], [username], [employeeID], [timekeeping_id]) VALUES (290, N'phong nghỉ tháng 1', N'nghỉ ăn giỗ', CAST(N'2023-01-25' AS Date), 1, N'thanhphong', N'SD212', NULL)
INSERT [dbo].[DayLeave] ([dayleave_id], [dayleave_title], [dayleave_description], [date-created], [status], [username], [employeeID], [timekeeping_id]) VALUES (335, N'Nghỉ phép đi du lịch', N'em bị spa 2 ngày ạ', CAST(N'2023-01-25' AS Date), 1, N'nhatminh', N'SD223', NULL)
INSERT [dbo].[DayLeave] ([dayleave_id], [dayleave_title], [dayleave_description], [date-created], [status], [username], [employeeID], [timekeeping_id]) VALUES (350, N'Dự đám cưới', N'', CAST(N'2023-01-31' AS Date), 0, N'nhatminh', N'SD223', NULL)
INSERT [dbo].[DayLeave] ([dayleave_id], [dayleave_title], [dayleave_description], [date-created], [status], [username], [employeeID], [timekeeping_id]) VALUES (392, N'Nghỉ phép đi du lịch', N'', CAST(N'2023-01-26' AS Date), 1, N'nhatminh', N'SD223', NULL)
INSERT [dbo].[DayLeave] ([dayleave_id], [dayleave_title], [dayleave_description], [date-created], [status], [username], [employeeID], [timekeeping_id]) VALUES (467, N'Nghỉ vì nhà có giỗ', N'vì quê ở xa nên em xin nghỉ ạ', CAST(N'2023-01-25' AS Date), 0, N'minhquan', N'SD009', NULL)
INSERT [dbo].[DayLeave] ([dayleave_id], [dayleave_title], [dayleave_description], [date-created], [status], [username], [employeeID], [timekeeping_id]) VALUES (474, N'phong nghi thang 4', N've que', CAST(N'2023-04-01' AS Date), 0, N'thanhphong', N'SD212', NULL)
GO
INSERT [dbo].[department] ([department_id], [department_name]) VALUES (N'PM', N'Product Management')
INSERT [dbo].[department] ([department_id], [department_name]) VALUES (N'SD', N'Software Development')
INSERT [dbo].[department] ([department_id], [department_name]) VALUES (N'SM', N'Sale and Marketing')
INSERT [dbo].[department] ([department_id], [department_name]) VALUES (N'UI', N'User Interface')
GO
INSERT [dbo].[employee] ([employee_id], [department_id], [employee_name], [employee_dob], [employee_phone], [datejoin], [employee_contractId], [age], [gender], [supervison_id], [employee_email], [employee_address], [employee_leaveDay], [employee_photo]) VALUES (N'PM199', N'PM', N'Minh Đăng', CAST(N'1999-02-23' AS Date), N'0344630925', CAST(N'2017-08-02' AS Date), 144, 25, 1, NULL, N'minhdang@gmail.com', N'District 9', NULL, N'https://scontent.fsgn6-1.fna.fbcdn.net/v/t39.30808-6/323554444_2546748182143414_4145753029381358458_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=vAExdgo3M_4AX82tiOy&_nc_ht=scontent.fsgn6-1.fna&oh=00_AfBoUhcw3cdKvVQhJ3-atL1OV-cFvRadSnEiDU6kc-xJlg&oe=64A5BC68')
INSERT [dbo].[employee] ([employee_id], [department_id], [employee_name], [employee_dob], [employee_phone], [datejoin], [employee_contractId], [age], [gender], [supervison_id], [employee_email], [employee_address], [employee_leaveDay], [employee_photo]) VALUES (N'PM938', N'PM', N'Cẩm Tú ', CAST(N'2003-06-13' AS Date), N'0283749583', CAST(N'2020-02-02' AS Date), 155, 20, 0, NULL, N' camtu@gmail.com', N'District 10', NULL, N'https://scontent.fsgn6-2.fna.fbcdn.net/v/t39.30808-6/336895048_1220330438589470_6023103793541058128_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=8bfeb9&_nc_ohc=vdlnm4brV2oAX91yQ74&_nc_ht=scontent.fsgn6-2.fna&oh=00_AfAgZRJPsBkBPplkc8UX6pmOrpsdYlyoAfTqHzF0O_iXqA&oe=64A7001B')
INSERT [dbo].[employee] ([employee_id], [department_id], [employee_name], [employee_dob], [employee_phone], [datejoin], [employee_contractId], [age], [gender], [supervison_id], [employee_email], [employee_address], [employee_leaveDay], [employee_photo]) VALUES (N'SD009', N'SD', N'Minh Quân', CAST(N'2008-08-16' AS Date), N'0892837485', CAST(N'2023-01-19' AS Date), 223, 14, 1, NULL, N'minhquan123@gmail.com', N'District 1', NULL, N'https://scontent.fsgn12-1.fna.fbcdn.net/v/t39.30808-6/292184173_1227932984624835_300478350326185214_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=174925&_nc_ohc=SPXxJyFCRcoAX_CZ1tB&_nc_ht=scontent.fsgn12-1.fna&oh=00_AfBHoYY8n5PWDrJa6TOJs8E4qrzQKSFEhS_jJXm7maXCZw&oe=64A5ABBA')
INSERT [dbo].[employee] ([employee_id], [department_id], [employee_name], [employee_dob], [employee_phone], [datejoin], [employee_contractId], [age], [gender], [supervison_id], [employee_email], [employee_address], [employee_leaveDay], [employee_photo]) VALUES (N'SD212', N'SD', N'Thanh Phong', CAST(N'2003-09-17' AS Date), N'0892837465', CAST(N'2020-09-12' AS Date), 234, 20, 1, NULL, N'thanhphong@gmail.com', N'District 1', NULL, N'https://scontent.fsgn6-2.fna.fbcdn.net/v/t39.30808-6/313921579_1317526678998798_7947455086617910906_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=nSah1oP0SFsAX93FmmF&_nc_ht=scontent.fsgn6-2.fna&oh=00_AfAW37L86BGaznJt3HV1jbXfvcnisxFY8HTX_0-E5KN2Gg&oe=64A5A7F7')
INSERT [dbo].[employee] ([employee_id], [department_id], [employee_name], [employee_dob], [employee_phone], [datejoin], [employee_contractId], [age], [gender], [supervison_id], [employee_email], [employee_address], [employee_leaveDay], [employee_photo]) VALUES (N'SD223', N'SD', N'Nhật Minh', CAST(N'2003-02-24' AS Date), N'0982736452', CAST(N'2020-02-04' AS Date), 212, 20, 1, NULL, N'nhatminh@gmail.com', N'District 7', NULL, N'https://scontent.fsgn12-1.fna.fbcdn.net/v/t1.6435-9/162033366_428725741550969_7515044929714119942_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=3Ypf4ylFKjUAX_4eU5P&_nc_ht=scontent.fsgn12-1.fna&oh=00_AfBUJ67L4pcsICgXmcxwnTZ72FPEeDlK23kslVNDKHpesg&oe=64C8CF1B')
INSERT [dbo].[employee] ([employee_id], [department_id], [employee_name], [employee_dob], [employee_phone], [datejoin], [employee_contractId], [age], [gender], [supervison_id], [employee_email], [employee_address], [employee_leaveDay], [employee_photo]) VALUES (N'SM111', N'SM', N'Trọng Nghĩa', CAST(N'2003-12-01' AS Date), N'0928374689', CAST(N'2020-10-13' AS Date), 322, 20, 1, NULL, N'trongnghia@gmail.com', N'Distric 4', NULL, N'https://scontent.fsgn6-2.fna.fbcdn.net/v/t1.6435-9/83505588_1508296165984843_1983001785136054272_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=3bEx8LB_g8cAX-UrQxA&_nc_ht=scontent.fsgn6-2.fna&oh=00_AfBD-wV2R7KOH489X0K3yo9AjzfuNlFvCb66oIYBFwWmZg&oe=64C89BFA')
INSERT [dbo].[employee] ([employee_id], [department_id], [employee_name], [employee_dob], [employee_phone], [datejoin], [employee_contractId], [age], [gender], [supervison_id], [employee_email], [employee_address], [employee_leaveDay], [employee_photo]) VALUES (N'SM123', N'SM', N'Trung Quân', CAST(N'2003-10-01' AS Date), N'0928374826', CAST(N'2019-10-08' AS Date), 333, 20, 1, NULL, N'trungquan@gmail.com', N'District 2', NULL, N'https://scontent.fsgn12-1.fna.fbcdn.net/v/t39.30808-6/345835550_2594392910698879_1717986139375130570_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=174925&_nc_ohc=DKT8Ns0Z86YAX9C7TM6&_nc_ht=scontent.fsgn12-1.fna&oh=00_AfA4jhOZruw8P3itzpl8yaZCea50EPsXNStCaBQ3gZnk5Q&oe=64A5FD08')
INSERT [dbo].[employee] ([employee_id], [department_id], [employee_name], [employee_dob], [employee_phone], [datejoin], [employee_contractId], [age], [gender], [supervison_id], [employee_email], [employee_address], [employee_leaveDay], [employee_photo]) VALUES (N'UI818', N'UI', N'Thái Sơn', CAST(N'2003-09-17' AS Date), N'0982738927', CAST(N'2020-10-10' AS Date), 432, 22, 1, NULL, N'thaison@gmail.com', N'Go Vap', NULL, N'https://scontent.fsgn6-1.fna.fbcdn.net/v/t39.30808-6/344801846_1592639794543987_2398257216944043649_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=174925&_nc_ohc=9Ossn52mMk0AX8LLUoV&_nc_ht=scontent.fsgn6-1.fna&oh=00_AfDnkjV_oXVJ5x_xNCzfoMK9xjSgGWk0zIgk6WDb-6CH-g&oe=64A6E0DB')
INSERT [dbo].[employee] ([employee_id], [department_id], [employee_name], [employee_dob], [employee_phone], [datejoin], [employee_contractId], [age], [gender], [supervison_id], [employee_email], [employee_address], [employee_leaveDay], [employee_photo]) VALUES (N'UI919', N'UI', N'Xuân Thao', CAST(N'2002-02-03' AS Date), N'0293839836', CAST(N'2018-10-12' AS Date), 443, 28, 1, NULL, N'thaonxse161167@fpt.edu.vn', N'Thu Duc', NULL, N'https://scontent.fsgn6-1.fna.fbcdn.net/v/t1.6435-9/94566921_694925054597721_1442135398204571648_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=8bfeb9&_nc_ohc=ObUoeiZd1a8AX8WdMVT&_nc_ht=scontent.fsgn6-1.fna&oh=00_AfCv74oLgQVkc9OzirrWPxMQ1xai1ZLpFI77AqV8vpib3w&oe=64C8B081')
GO
INSERT [dbo].[JobOffering] ([jobOffering_id], [title], [description], [baseSalary], [dateCreate], [status], [maxEmployee], [departmentID]) VALUES (1, N'Tuyển DEV', N'Tuyển 12 dev', 10000000, NULL, 1, 20, N'SD')
INSERT [dbo].[JobOffering] ([jobOffering_id], [title], [description], [baseSalary], [dateCreate], [status], [maxEmployee], [departmentID]) VALUES (2, N'Tuyển Marketing', N'Tuyển 5 vị trí', 5000000, NULL, 1, 10, N'SM')
INSERT [dbo].[JobOffering] ([jobOffering_id], [title], [description], [baseSalary], [dateCreate], [status], [maxEmployee], [departmentID]) VALUES (3, N'Tuyển nhân viên vệ sinh', N'3 vị trí', 3000000, NULL, 0, 5, NULL)
INSERT [dbo].[JobOffering] ([jobOffering_id], [title], [description], [baseSalary], [dateCreate], [status], [maxEmployee], [departmentID]) VALUES (4, N'Tuyển Front-end', N'Tuyển 10 vị trí', 20000000, NULL, 1, 20, N'SD')
INSERT [dbo].[JobOffering] ([jobOffering_id], [title], [description], [baseSalary], [dateCreate], [status], [maxEmployee], [departmentID]) VALUES (5, N'Tuyển Quản lí dụ án', N'Tuyển 3 vị trí', 50000000, NULL, 1, 10, N'PM')
GO
INSERT [dbo].[Report] ([report_id], [report_title], [late_day], [absent_day], [overtime_day], [employee_id], [month], [excused_absent_day], [year], [status]) VALUES (6, N'Báo cáo Minh tháng 1', 1, 1, 1, N'SD223', 1, 2, 2023, N'completed')
INSERT [dbo].[Report] ([report_id], [report_title], [late_day], [absent_day], [overtime_day], [employee_id], [month], [excused_absent_day], [year], [status]) VALUES (141, N'Báo cáo Phong tháng 3', 0, 0, 0, N'SD212', 3, 1, 2023, N'not completed')
INSERT [dbo].[Report] ([report_id], [report_title], [late_day], [absent_day], [overtime_day], [employee_id], [month], [excused_absent_day], [year], [status]) VALUES (264, N'Quân báo cáo tháng 3', NULL, NULL, NULL, N'SD009', 3, NULL, 2023, NULL)
INSERT [dbo].[Report] ([report_id], [report_title], [late_day], [absent_day], [overtime_day], [employee_id], [month], [excused_absent_day], [year], [status]) VALUES (347, N'bao cao Minh thang 4', NULL, NULL, NULL, N'SD223', 4, NULL, 2023, NULL)
INSERT [dbo].[Report] ([report_id], [report_title], [late_day], [absent_day], [overtime_day], [employee_id], [month], [excused_absent_day], [year], [status]) VALUES (372, N'Báo cáo Phong tháng 2', NULL, NULL, NULL, N'SD212', 2, NULL, 2023, NULL)
INSERT [dbo].[Report] ([report_id], [report_title], [late_day], [absent_day], [overtime_day], [employee_id], [month], [excused_absent_day], [year], [status]) VALUES (374, N'Báo cáo Phong tháng 1', 2, 1, 1, N'SD212', 1, 2, 2023, N'completed')
INSERT [dbo].[Report] ([report_id], [report_title], [late_day], [absent_day], [overtime_day], [employee_id], [month], [excused_absent_day], [year], [status]) VALUES (400, N'Báo cáo Quân tháng 2', NULL, NULL, NULL, N'SD009', 2, NULL, 2023, NULL)
INSERT [dbo].[Report] ([report_id], [report_title], [late_day], [absent_day], [overtime_day], [employee_id], [month], [excused_absent_day], [year], [status]) VALUES (405, N'Báo cáo Minh tháng 2', NULL, NULL, NULL, N'SD223', 2, NULL, 2023, NULL)
INSERT [dbo].[Report] ([report_id], [report_title], [late_day], [absent_day], [overtime_day], [employee_id], [month], [excused_absent_day], [year], [status]) VALUES (475, N'Báo cáo Quân tháng 1', 2, 2, 0, N'SD009', 1, 1, 2023, N'completed')
GO
INSERT [dbo].[salary] ([salary_id], [month], [year], [employee_id], [report_id]) VALUES (N'832D8', 1, 2023, N'SD223', 6)
INSERT [dbo].[salary] ([salary_id], [month], [year], [employee_id], [report_id]) VALUES (N'9154F', 1, 2023, N'SD212', 374)
INSERT [dbo].[salary] ([salary_id], [month], [year], [employee_id], [report_id]) VALUES (N'6240B', 1, 2023, N'SD009', 475)
GO
INSERT [dbo].[timekeeping] ([date], [time_in], [time_out], [timekeeping_id], [status], [employee_id], [dayleave_id], [report_id]) VALUES (CAST(N'2023-01-01' AS Date), CAST(N'09:00:00' AS Time), CAST(N'17:00:00' AS Time), 1, N'on time', N'SD212', NULL, 374)
INSERT [dbo].[timekeeping] ([date], [time_in], [time_out], [timekeeping_id], [status], [employee_id], [dayleave_id], [report_id]) VALUES (CAST(N'2023-01-10' AS Date), CAST(N'09:10:00' AS Time), CAST(N'17:00:00' AS Time), 2, N'late', N'SD212', NULL, 374)
INSERT [dbo].[timekeeping] ([date], [time_in], [time_out], [timekeeping_id], [status], [employee_id], [dayleave_id], [report_id]) VALUES (CAST(N'2023-01-15' AS Date), CAST(N'09:15:00' AS Time), CAST(N'17:00:00' AS Time), 3, N'late', N'SD212', NULL, 374)
INSERT [dbo].[timekeeping] ([date], [time_in], [time_out], [timekeeping_id], [status], [employee_id], [dayleave_id], [report_id]) VALUES (CAST(N'2023-01-25' AS Date), NULL, NULL, 4, N'absent with permission', N'SD212', 290, 374)
INSERT [dbo].[timekeeping] ([date], [time_in], [time_out], [timekeeping_id], [status], [employee_id], [dayleave_id], [report_id]) VALUES (CAST(N'2023-01-26' AS Date), NULL, NULL, 5, N'absent with permission', N'SD212', 200, 374)
INSERT [dbo].[timekeeping] ([date], [time_in], [time_out], [timekeeping_id], [status], [employee_id], [dayleave_id], [report_id]) VALUES (CAST(N'2023-01-31' AS Date), NULL, NULL, 6, N'absent without permission', N'SD212', NULL, 374)
INSERT [dbo].[timekeeping] ([date], [time_in], [time_out], [timekeeping_id], [status], [employee_id], [dayleave_id], [report_id]) VALUES (CAST(N'2023-01-01' AS Date), CAST(N'09:00:00' AS Time), CAST(N'17:00:00' AS Time), 7, N'on time', N'SD009', NULL, 475)
INSERT [dbo].[timekeeping] ([date], [time_in], [time_out], [timekeeping_id], [status], [employee_id], [dayleave_id], [report_id]) VALUES (CAST(N'2023-01-10' AS Date), CAST(N'09:10:00' AS Time), CAST(N'17:00:00' AS Time), 8, N'late', N'SD009', NULL, 475)
INSERT [dbo].[timekeeping] ([date], [time_in], [time_out], [timekeeping_id], [status], [employee_id], [dayleave_id], [report_id]) VALUES (CAST(N'2023-01-15' AS Date), CAST(N'09:01:00' AS Time), CAST(N'17:00:00' AS Time), 9, N'late', N'SD009', NULL, 475)
INSERT [dbo].[timekeeping] ([date], [time_in], [time_out], [timekeeping_id], [status], [employee_id], [dayleave_id], [report_id]) VALUES (CAST(N'2023-01-25' AS Date), NULL, NULL, 10, N'absent without permission', N'SD009', 467, 475)
INSERT [dbo].[timekeeping] ([date], [time_in], [time_out], [timekeeping_id], [status], [employee_id], [dayleave_id], [report_id]) VALUES (CAST(N'2023-01-26' AS Date), NULL, NULL, 11, N'absent without permission', N'SD009', 135, 475)
INSERT [dbo].[timekeeping] ([date], [time_in], [time_out], [timekeeping_id], [status], [employee_id], [dayleave_id], [report_id]) VALUES (CAST(N'2023-01-31' AS Date), NULL, NULL, 12, N'absent with permission', N'SD009', 259, 475)
INSERT [dbo].[timekeeping] ([date], [time_in], [time_out], [timekeeping_id], [status], [employee_id], [dayleave_id], [report_id]) VALUES (CAST(N'2023-01-01' AS Date), CAST(N'09:00:00' AS Time), CAST(N'17:00:00' AS Time), 14, N'on time', N'SD223', NULL, 6)
INSERT [dbo].[timekeeping] ([date], [time_in], [time_out], [timekeeping_id], [status], [employee_id], [dayleave_id], [report_id]) VALUES (CAST(N'2023-01-10' AS Date), CAST(N'09:20:00' AS Time), CAST(N'18:00:00' AS Time), 15, N'overtime', N'SD223', NULL, 6)
INSERT [dbo].[timekeeping] ([date], [time_in], [time_out], [timekeeping_id], [status], [employee_id], [dayleave_id], [report_id]) VALUES (CAST(N'2023-01-15' AS Date), CAST(N'09:19:00' AS Time), CAST(N'17:00:00' AS Time), 16, N'late', N'SD223', NULL, 6)
INSERT [dbo].[timekeeping] ([date], [time_in], [time_out], [timekeeping_id], [status], [employee_id], [dayleave_id], [report_id]) VALUES (CAST(N'2023-01-25' AS Date), NULL, NULL, 17, N'absent with permission', N'SD223', 335, 6)
INSERT [dbo].[timekeeping] ([date], [time_in], [time_out], [timekeeping_id], [status], [employee_id], [dayleave_id], [report_id]) VALUES (CAST(N'2023-01-26' AS Date), NULL, NULL, 18, N'absent with permission', N'SD223', 392, 6)
INSERT [dbo].[timekeeping] ([date], [time_in], [time_out], [timekeeping_id], [status], [employee_id], [dayleave_id], [report_id]) VALUES (CAST(N'2023-01-31' AS Date), NULL, NULL, 19, N'absent without permission', N'SD223', 350, 6)
INSERT [dbo].[timekeeping] ([date], [time_in], [time_out], [timekeeping_id], [status], [employee_id], [dayleave_id], [report_id]) VALUES (CAST(N'2023-01-02' AS Date), CAST(N'09:00:00' AS Time), CAST(N'17:00:00' AS Time), 20, N'on time', N'SD212', NULL, 374)
INSERT [dbo].[timekeeping] ([date], [time_in], [time_out], [timekeeping_id], [status], [employee_id], [dayleave_id], [report_id]) VALUES (CAST(N'2023-01-03' AS Date), CAST(N'09:00:00' AS Time), CAST(N'17:00:00' AS Time), 21, N'on time', N'SD212', NULL, 374)
INSERT [dbo].[timekeeping] ([date], [time_in], [time_out], [timekeeping_id], [status], [employee_id], [dayleave_id], [report_id]) VALUES (CAST(N'2023-01-04' AS Date), CAST(N'09:00:00' AS Time), CAST(N'17:00:00' AS Time), 22, N'on time', N'SD212', NULL, 374)
INSERT [dbo].[timekeeping] ([date], [time_in], [time_out], [timekeeping_id], [status], [employee_id], [dayleave_id], [report_id]) VALUES (CAST(N'2023-01-05' AS Date), CAST(N'09:00:00' AS Time), CAST(N'17:00:00' AS Time), 23, N'on time', N'SD212', NULL, 374)
INSERT [dbo].[timekeeping] ([date], [time_in], [time_out], [timekeeping_id], [status], [employee_id], [dayleave_id], [report_id]) VALUES (CAST(N'2023-01-08' AS Date), CAST(N'09:00:00' AS Time), CAST(N'17:00:00' AS Time), 26, N'on time', N'SD212', NULL, 374)
INSERT [dbo].[timekeeping] ([date], [time_in], [time_out], [timekeeping_id], [status], [employee_id], [dayleave_id], [report_id]) VALUES (CAST(N'2023-01-09' AS Date), CAST(N'09:00:00' AS Time), CAST(N'17:00:00' AS Time), 27, N'on time', N'SD212', NULL, 374)
INSERT [dbo].[timekeeping] ([date], [time_in], [time_out], [timekeeping_id], [status], [employee_id], [dayleave_id], [report_id]) VALUES (CAST(N'2023-01-11' AS Date), CAST(N'09:00:00' AS Time), CAST(N'17:00:00' AS Time), 28, N'on time', N'SD212', NULL, 374)
INSERT [dbo].[timekeeping] ([date], [time_in], [time_out], [timekeeping_id], [status], [employee_id], [dayleave_id], [report_id]) VALUES (CAST(N'2023-01-12' AS Date), CAST(N'09:00:00' AS Time), CAST(N'17:00:00' AS Time), 29, N'on time', N'SD212', NULL, 374)
INSERT [dbo].[timekeeping] ([date], [time_in], [time_out], [timekeeping_id], [status], [employee_id], [dayleave_id], [report_id]) VALUES (CAST(N'2023-01-16' AS Date), CAST(N'09:00:00' AS Time), CAST(N'17:00:00' AS Time), 32, N'on time', N'SD212', NULL, 374)
INSERT [dbo].[timekeeping] ([date], [time_in], [time_out], [timekeeping_id], [status], [employee_id], [dayleave_id], [report_id]) VALUES (CAST(N'2023-01-17' AS Date), CAST(N'09:00:00' AS Time), CAST(N'17:00:00' AS Time), 33, N'on time', N'SD212', NULL, 374)
INSERT [dbo].[timekeeping] ([date], [time_in], [time_out], [timekeeping_id], [status], [employee_id], [dayleave_id], [report_id]) VALUES (CAST(N'2023-01-18' AS Date), CAST(N'09:00:00' AS Time), CAST(N'17:00:00' AS Time), 34, N'on time', N'SD212', NULL, 374)
INSERT [dbo].[timekeeping] ([date], [time_in], [time_out], [timekeeping_id], [status], [employee_id], [dayleave_id], [report_id]) VALUES (CAST(N'2023-01-19' AS Date), CAST(N'09:00:00' AS Time), CAST(N'17:00:00' AS Time), 35, N'on time', N'SD212', NULL, 374)
INSERT [dbo].[timekeeping] ([date], [time_in], [time_out], [timekeeping_id], [status], [employee_id], [dayleave_id], [report_id]) VALUES (CAST(N'2023-01-22' AS Date), CAST(N'09:00:00' AS Time), CAST(N'17:00:00' AS Time), 38, N'on time', N'SD212', NULL, 374)
INSERT [dbo].[timekeeping] ([date], [time_in], [time_out], [timekeeping_id], [status], [employee_id], [dayleave_id], [report_id]) VALUES (CAST(N'2023-01-23' AS Date), CAST(N'09:00:00' AS Time), CAST(N'17:00:00' AS Time), 39, N'on time', N'SD212', NULL, 374)
INSERT [dbo].[timekeeping] ([date], [time_in], [time_out], [timekeeping_id], [status], [employee_id], [dayleave_id], [report_id]) VALUES (CAST(N'2023-01-28' AS Date), CAST(N'09:00:00' AS Time), CAST(N'18:00:00' AS Time), 42, N'overtime', N'SD212', NULL, 374)
INSERT [dbo].[timekeeping] ([date], [time_in], [time_out], [timekeeping_id], [status], [employee_id], [dayleave_id], [report_id]) VALUES (CAST(N'2023-01-29' AS Date), CAST(N'09:00:00' AS Time), CAST(N'17:00:00' AS Time), 43, N'on time', N'SD212', NULL, 374)
INSERT [dbo].[timekeeping] ([date], [time_in], [time_out], [timekeeping_id], [status], [employee_id], [dayleave_id], [report_id]) VALUES (CAST(N'2023-01-30' AS Date), CAST(N'09:00:00' AS Time), CAST(N'17:00:00' AS Time), 44, N'on time', N'SD212', NULL, 374)
INSERT [dbo].[timekeeping] ([date], [time_in], [time_out], [timekeeping_id], [status], [employee_id], [dayleave_id], [report_id]) VALUES (CAST(N'2023-01-02' AS Date), CAST(N'09:00:00' AS Time), CAST(N'17:00:00' AS Time), 45, N'on time', N'SD009', NULL, 475)
INSERT [dbo].[timekeeping] ([date], [time_in], [time_out], [timekeeping_id], [status], [employee_id], [dayleave_id], [report_id]) VALUES (CAST(N'2023-01-03' AS Date), CAST(N'09:00:00' AS Time), CAST(N'17:00:00' AS Time), 46, N'on time', N'SD009', NULL, 475)
INSERT [dbo].[timekeeping] ([date], [time_in], [time_out], [timekeeping_id], [status], [employee_id], [dayleave_id], [report_id]) VALUES (CAST(N'2023-01-04' AS Date), CAST(N'09:00:00' AS Time), CAST(N'17:00:00' AS Time), 47, N'on time', N'SD009', NULL, 475)
INSERT [dbo].[timekeeping] ([date], [time_in], [time_out], [timekeeping_id], [status], [employee_id], [dayleave_id], [report_id]) VALUES (CAST(N'2023-01-05' AS Date), CAST(N'09:00:00' AS Time), CAST(N'17:00:00' AS Time), 48, N'on time', N'SD009', NULL, 475)
INSERT [dbo].[timekeeping] ([date], [time_in], [time_out], [timekeeping_id], [status], [employee_id], [dayleave_id], [report_id]) VALUES (CAST(N'2023-01-06' AS Date), CAST(N'09:00:00' AS Time), CAST(N'17:00:00' AS Time), 49, N'on time', N'SD009', NULL, 475)
INSERT [dbo].[timekeeping] ([date], [time_in], [time_out], [timekeeping_id], [status], [employee_id], [dayleave_id], [report_id]) VALUES (CAST(N'2023-01-07' AS Date), CAST(N'09:00:00' AS Time), CAST(N'17:00:00' AS Time), 50, N'on time', N'SD009', NULL, 475)
INSERT [dbo].[timekeeping] ([date], [time_in], [time_out], [timekeeping_id], [status], [employee_id], [dayleave_id], [report_id]) VALUES (CAST(N'2023-01-08' AS Date), CAST(N'09:00:00' AS Time), CAST(N'17:00:00' AS Time), 51, N'on time', N'SD009', NULL, 475)
INSERT [dbo].[timekeeping] ([date], [time_in], [time_out], [timekeeping_id], [status], [employee_id], [dayleave_id], [report_id]) VALUES (CAST(N'2023-03-03' AS Date), NULL, NULL, 52, N'absent with permission', N'SD212', 33, 141)
GO
INSERT [dbo].[User] ([employee_id], [username], [password], [roleName], [email], [status]) VALUES (N'PM199', N'minhdang', N'Dang@123', N'HRM', N'minhdang@gmail.com', 1)
INSERT [dbo].[User] ([employee_id], [username], [password], [roleName], [email], [status]) VALUES (N'PM938', N'camtu', N'Camtu@123', N'STAFF', N' t@gmail.com', 1)
INSERT [dbo].[User] ([employee_id], [username], [password], [roleName], [email], [status]) VALUES (N'SD009', N'minhquan', N'Quan@123', N'STAFF', N'minhquan123@gmail.com', 0)
INSERT [dbo].[User] ([employee_id], [username], [password], [roleName], [email], [status]) VALUES (N'SD212', N'thanhphong', N'Phong@123', N'LEADER', N'phongngo17092003@gmail.com', 1)
INSERT [dbo].[User] ([employee_id], [username], [password], [roleName], [email], [status]) VALUES (N'SD223', N'nhatminh', N'Minh@123', N'STAFF', N'nhatminh@gmail.com', 0)
INSERT [dbo].[User] ([employee_id], [username], [password], [roleName], [email], [status]) VALUES (N'SM111', N'trongnghia', N'Nghia@123', N'STAFF', N'trongnghia@gmail.com', 1)
INSERT [dbo].[User] ([employee_id], [username], [password], [roleName], [email], [status]) VALUES (N'SM123', N'trungquan', N'Quantrung@123', N'LEADER', N'trungquan@gmail.com', 1)
INSERT [dbo].[User] ([employee_id], [username], [password], [roleName], [email], [status]) VALUES (N'UI818', N'thaison', N'Son@123', N'STAFF', N'thaison@gmail.com', 1)
INSERT [dbo].[User] ([employee_id], [username], [password], [roleName], [email], [status]) VALUES (N'UI919', N'xuanthao', N'Thao@123', N'LEADER', N'thaonxse161167@fpt.edu.vn', 1)
GO
ALTER TABLE [dbo].[Applicant]  WITH CHECK ADD  CONSTRAINT [FK_department_applicant] FOREIGN KEY([department_id])
REFERENCES [dbo].[department] ([department_id])
GO
ALTER TABLE [dbo].[Applicant] CHECK CONSTRAINT [FK_department_applicant]
GO
ALTER TABLE [dbo].[DayLeave]  WITH CHECK ADD  CONSTRAINT [FK_employee_dayleave] FOREIGN KEY([employeeID])
REFERENCES [dbo].[employee] ([employee_id])
GO
ALTER TABLE [dbo].[DayLeave] CHECK CONSTRAINT [FK_employee_dayleave]
GO
ALTER TABLE [dbo].[DayLeave]  WITH CHECK ADD  CONSTRAINT [FK_timekeeping_dayleave] FOREIGN KEY([timekeeping_id])
REFERENCES [dbo].[timekeeping] ([timekeeping_id])
GO
ALTER TABLE [dbo].[DayLeave] CHECK CONSTRAINT [FK_timekeeping_dayleave]
GO
ALTER TABLE [dbo].[employee]  WITH CHECK ADD  CONSTRAINT [FK__employee__depart__5441852A] FOREIGN KEY([department_id])
REFERENCES [dbo].[department] ([department_id])
GO
ALTER TABLE [dbo].[employee] CHECK CONSTRAINT [FK__employee__depart__5441852A]
GO
ALTER TABLE [dbo].[employee]  WITH CHECK ADD  CONSTRAINT [FK_employee_contract] FOREIGN KEY([employee_id])
REFERENCES [dbo].[contract] ([employee_id])
GO
ALTER TABLE [dbo].[employee] CHECK CONSTRAINT [FK_employee_contract]
GO
ALTER TABLE [dbo].[JobOffering]  WITH CHECK ADD  CONSTRAINT [FK_JobOffering] FOREIGN KEY([departmentID])
REFERENCES [dbo].[department] ([department_id])
GO
ALTER TABLE [dbo].[JobOffering] CHECK CONSTRAINT [FK_JobOffering]
GO
ALTER TABLE [dbo].[Report]  WITH CHECK ADD  CONSTRAINT [FK_EmployeeID_Report] FOREIGN KEY([employee_id])
REFERENCES [dbo].[employee] ([employee_id])
GO
ALTER TABLE [dbo].[Report] CHECK CONSTRAINT [FK_EmployeeID_Report]
GO
ALTER TABLE [dbo].[salary]  WITH CHECK ADD  CONSTRAINT [FK_Salary] FOREIGN KEY([employee_id])
REFERENCES [dbo].[employee] ([employee_id])
GO
ALTER TABLE [dbo].[salary] CHECK CONSTRAINT [FK_Salary]
GO
ALTER TABLE [dbo].[salary]  WITH CHECK ADD  CONSTRAINT [FK_salary_Application] FOREIGN KEY([report_id])
REFERENCES [dbo].[Report] ([report_id])
GO
ALTER TABLE [dbo].[salary] CHECK CONSTRAINT [FK_salary_Application]
GO
ALTER TABLE [dbo].[timekeeping]  WITH CHECK ADD  CONSTRAINT [FK_timekeeping_report] FOREIGN KEY([report_id])
REFERENCES [dbo].[Report] ([report_id])
GO
ALTER TABLE [dbo].[timekeeping] CHECK CONSTRAINT [FK_timekeeping_report]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User] FOREIGN KEY([employee_id])
REFERENCES [dbo].[employee] ([employee_id])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User]
GO
