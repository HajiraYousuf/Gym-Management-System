<%@ Page Title="" Language="C#" MasterPageFile="~/layouts/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="Gym_Management_System.Admin.Dashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- ================= DASHBOARD HEADER ================= -->
<section class="mb-6 pr-4">

    <div class="flex flex-col lg:flex-row justify-between items-center gap-5">


        <!-- Welcome Message -->
        <div>

            <p class="text-sm text-gray-400 mb-2">
                Welcome back, 
                <span class="text-lime-400 font-semibold">
                    Admin
                </span>
                👋
            </p>

            <p class="text-gray-400 mt-2">
                Here's what's happening in your gym today.
            </p>


        </div>



        <!-- Calendar Icon -->
        <div class="relative">

            <button onclick="toggleCalendar()" 
                class="w-11 h-11 rounded-xl 
                       bg-gradient-to-r from-lime-950 to-zinc-900
                       flex items-center justify-center
                       hover:text-lime-400 transition">

                <i class="ri-calendar-line text-lime-400 text-xl"></i>

            </button>


            <!-- Mini Calendar -->
            <div id="calendarBox"
                class="hidden absolute right-0 mt-3 w-72 
                       bg-gradient-to-r from-lime-950 to-zinc-900 rounded-2xl p-5 shadow-xl z-50">


                <div class="flex justify-between items-center mb-4">

                    <h2 class="text-white font-semibold">
                        July 2026
                    </h2>

                    <i class="ri-calendar-line text-lime-400 text-xl"></i>

                </div>


                <div class="text-center mb-4">

                    <h3 class="text-4xl font-bold text-white">
                        15
                    </h3>

                    <p class="text-gray-400">
                        Wednesday, July
                    </p>

                </div>


                <div class="grid grid-cols-7 gap-2 text-center text-sm">

                    <span class="text-gray-500">S</span>
                    <span class="text-gray-500">M</span>
                    <span class="text-gray-500">T</span>
                    <span class="text-gray-500">W</span>
                    <span class="text-gray-500">T</span>
                    <span class="text-gray-500">F</span>
                    <span class="text-gray-500">S</span>

                    <span class="text-white">1</span>
                    <span class="text-white">2</span>
                    <span class="text-white">3</span>
                    <span class="text-white">4</span>
                    <span class="text-white">5</span>
                    <span class="text-white">6</span>
                    <span class="text-white">7</span>

                    <span class="text-white">8</span>
                    <span class="text-white">9</span>
                    <span class="text-white">10</span>
                    <span class="text-white">11</span>
                    <span class="text-white">12</span>
                    <span class="text-white">13</span>
                    <span class="text-white">14</span>

                    <span class="bg-lime-400 text-black rounded-lg py-1 font-bold">
                        15
                    </span>

                </div>

            </div>

        </div>


    </div>

</section>

<section class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 xl:grid-cols-6 gap-4 mb-6">
        <% 
            // Xogta waxaan toos ugu qornay meesha loogu talagalay si loo arko
            var dashboardCards = new[]
            {
                new { Title = "Total Members", Value = "1,250", Icon = "ri-group-line", Status = "↑ 12% this month", StatusColor = "text-lime-400" },
                new { Title = "Active Trainers", Value = "45", Icon = "ri-user-star-line", Status = "↑ 5 new trainers", StatusColor = "text-lime-400" },
                new { Title = "Staff Members", Value = "45", Icon = "ri-team-line", Status = "Total staff members", StatusColor = "text-gray-400" },
                new { Title = "Monthly Revenue", Value = "$24.5K", Icon = "ri-money-dollar-circle-line", Status = "↑ 18% increase", StatusColor = "text-lime-400" },
                new { Title = "Check In Today", Value = "320", Icon = "ri-login-circle-line", Status = "Today's check-ins", StatusColor = "text-gray-400" },
                new { Title = "New Messages", Value = "24", Icon = "ri-message-3-line", Status = "Unread messages", StatusColor = "text-gray-400" }
            };

            foreach (var card in dashboardCards)
            {
        %>
                <!-- Card -->
                <div class="bg-gradient-to-r from-lime-950 to-zinc-900 border border-gray-800 rounded-xl p-4">
                    <div class="flex items-center justify-between">
                        <div>
                            <p class="text-gray-400 text-xs"><%= card.Title %></p>
                            <h2 class="text-xl font-bold text-white mt-1"><%= card.Value %></h2>
                        </div>
                        <div class="w-10 h-10 flex items-center justify-center rounded-lg bg-lime-400/10 text-lime-400">
                            <i class="<%= card.Icon %> text-xl"></i>
                        </div>
                    </div>
                    <p class="<%= card.StatusColor %> text-xs mt-3">
                        <%= card.Status %>
                    </p>
                </div>
        <% 
            } // Dhamaadka Loop-ka
        %>
    </section>

<section class="grid grid-cols-1 lg:grid-cols-3 gap-6 mb-6 items-stretch">

   <!-- ================= MEMBER STATUS ================= -->
    <div class="bg-[#181d22] border border-gray-700 rounded-xl transition-all duration-300 p-5 h-[280px]">

        <!-- Header -->
        <div class="flex justify-between items-center mb-6">
            <h2 class="text-white font-semibold text-lg">
                Member Status
            </h2>

            <button class="text-gray-400 text-sm hover:text-white transition">
                This Month
                <i class="fa-solid fa-chevron-down ml-1"></i>
            </button>
        </div>

        <!-- Content -->
        <div class="flex items-center justify-between gap-6 h-[190px]">

            <!-- Chart -->
            <div class="relative w-32 h-32 flex-shrink-0 flex items-center justify-center">
                <canvas id="memberStatusChart" class="w-full h-full"></canvas>

                <!-- Center Text -->
                <div class="absolute text-center">
                    <h2 class="text-2xl font-bold text-white leading-none">1248</h2>
                    <p class="text-gray-400 text-sm mt-1">Total</p>
                </div>
            </div>

            <!-- Status (Loop-ka Xogta) -->
            <div class="flex-1 min-w-0 space-y-3">
                <% 
                    var memberStatuses = new[]
                    {
                        new { Name = "Active Members", CountInfo = "982 (78.7%)", DotColor = "bg-lime-400", TextColor = "text-lime-400" },
                        new { Name = "Expired Members", CountInfo = "186 (14.9%)", DotColor = "bg-yellow-400", TextColor = "text-yellow-400" },
                        new { Name = "Inactive Members", CountInfo = "80 (6.4%)", DotColor = "bg-gray-500", TextColor = "text-gray-400" }
                    };

                    foreach (var status in memberStatuses)
                    {
                %>
                        <div class="rounded-lg p-3">
                            <div class="flex items-center gap-3">
                                <span class="w-3 h-3 rounded-full <%= status.DotColor %> flex-shrink-0"></span>
                                <div>
                                    <h4 class="text-white text-sm font-semibold"><%= status.Name %></h4>
                                    <p class="<%= status.TextColor %> text-xs"><%= status.CountInfo %></p>
                                </div>
                            </div>
                        </div>
                <% 
                    } 
                %>
            </div>

        </div>

    </div>

    <!-- ================= MEMBERS OVERVIEW ================= -->
    <div class="bg-[#181d22] border border-gray-700 rounded-xl transition-all duration-300 p-5 h-[280px]">
        <div class="flex justify-between items-center mb-5">
            <h2 class="text-white font-semibold text-lg">Members Overview</h2>
            <button class="text-gray-400 text-sm">
                This Month <i class="fa-solid fa-chevron-down ml-1"></i>
            </button>
        </div>

        <div class="h-[180px] w-full">
            <canvas id="overviewChart"></canvas>
        </div>
    </div>


    <!-- ================= CALENDAR ================= -->
    <div class="bg-[#181d22] border border-gray-700 rounded-xl transition-all duration-300 p-5 h-[280px]">
        <div class="flex justify-between items-center">
            <h2 class="text-white font-semibold text-lg">Calendar</h2>
            <i class="fa-solid fa-calendar text-lime-400"></i>
        </div>

        <div class="mt-5">
            <!-- Maalmaha Toddobaadka -->
            <div class="grid grid-cols-7 gap-1 text-center text-gray-400 text-xs">
                <span>Sun</span><span>Mon</span><span>Tue</span><span>Wed</span><span>Thu</span><span>Fri</span><span>Sat</span>
            </div>

            <!-- Maalmaha bisha (Loop) -->
            <div class="grid grid-cols-7 gap-1 mt-3 text-center text-sm">
                <% 
                    // 1. Maalmihii bishii hore ee haray (27 ilaa 30)
                    for (int d = 27; d <= 30; d++) { 
                %>
                        <span class="text-gray-500 py-1"><%= d %></span>
                <% 
                    } 

                    // 2. Maalmaha bishan (1 ilaa 31)
                    for (int d = 1; d <= 31; d++) { 
                        if (d == 16) { 
                %>
                            <!-- Maalinta cagaarka ah (16) -->
                            <div class="bg-lime-400 text-black rounded-lg py-1 font-bold">16</div>
                <% 
                        } else { 
                %>
                            <span class="text-white py-1"><%= d %></span>
                <% 
                        }
                    } 
                %>
            </div>
        </div>
    </div>

</section>

<section class="flex flex-col lg:flex-row gap-4 items-stretch w-full">
    
    <!-- ================= INVOICE LIST ================= -->
    <div class="flex-[4] flex">
        <div class="bg-[#141A22] border border-[#232B35] rounded-2xl p-5 w-full flex flex-col justify-between">
            <!-- Header -->
            <div class="flex justify-between items-center mb-4">
                <div>
                    <h2 class="text-white font-semibold text-lg">Invoice List</h2>
                    <p class="text-xs text-gray-500 mt-1">Invoice ID | Member</p>
                </div>
                <button class="text-lime-400 text-sm hover:text-lime-300 transition">
                    View All
                </button>
            </div>

            <!-- Table Container -->
            <div class="overflow-x-auto rounded-xl border border-[#232B35]">
                <div>
                    <!-- Heading -->
                    <div class="grid grid-cols-5 bg-[#1B232D] text-gray-400 text-xs font-medium px-4 py-3">
                        <div>Invoice</div>
                        <div>Member</div>
                        <div>Amount</div>
                        <div>Status</div>
                        <div>Date</div>
                    </div>

                    <!-- Row Loop-ka Xogta -->
                    <% 
                        var invoices = new[]
                        {
                            new { ID = "INV-00125", Member = "Ahmed Ali", Amount = "$120.00", Status = "Paid", BadgeClass = "bg-lime-500/20 text-lime-400", Date = "16 May 2025" },
                            new { ID = "INV-00124", Member = "Mohamed Hassan", Amount = "$150.00", Status = "Paid", BadgeClass = "bg-blue-500/20 text-blue-400", Date = "16 May 2025" },
                            new { ID = "INV-00123", Member = "Aisha Mohamed", Amount = "$90.00", Status = "Pending", BadgeClass = "bg-yellow-500/20 text-yellow-400", Date = "15 May 2025" },
                            new { ID = "INV-00122", Member = "Omar Yusuf", Amount = "$200.00", Status = "Paid", BadgeClass = "bg-lime-500/20 text-lime-400", Date = "15 May 2025" },
                            new { ID = "INV-00121", Member = "Fatima Abdi", Amount = "$110.00", Status = "Pending", BadgeClass = "bg-yellow-500/20 text-yellow-400", Date = "14 May 2025" }
                        };

                        foreach (var inv in invoices)
                        {
                    %>
                            <div class="grid grid-cols-5 items-center px-4 py-2.5 text-sm border-t border-[#232B35] hover:bg-[#1B232D] transition">
                                <div class="text-gray-300 text-xs"><%= inv.ID %></div>
                                <div class="text-white font-medium truncate pr-2"><%= inv.Member %></div>
                                <div class="text-white"><%= inv.Amount %></div>
                                <div>
                                    <span class="<%= inv.BadgeClass %> text-xs px-2 py-0.5 rounded-full inline-block">
                                        <%= inv.Status %>
                                    </span>
                                </div>
                                <div class="text-gray-400 text-xs"><%= inv.Date %></div>
                            </div>
                    <% 
                        } 
                    %>
                </div>
            </div>
        </div>
    </div>

    <!-- ================= MEMBERSHIP REPORT ================= -->
    <div class="flex-[2.5] min-w-[240px] flex">
        <div class="bg-[#141A22] border border-[#232B35] rounded-2xl p-5 w-full flex flex-col justify-between">
            <!-- Header -->
            <div class="flex justify-between items-center mb-3">
                <div>
                    <h2 class="text-white font-semibold text-md">Membership Report</h2>
                    <p class="text-xs text-gray-500 mt-1">Monthly Membership</p>
                </div>
                <button class="text-lime-400 hover:text-lime-300 transition text-sm">
                    Monthly
                </button>
            </div>

            <!-- Stats -->
            <div class="flex justify-between items-end mb-3">
                <div>
                    <h3 class="text-2xl font-bold text-white">1,284</h3>
                    <p class="text-xs text-gray-400">Total Members</p>
                </div>
                <div class="text-right">
                    <span class="text-lime-400 font-semibold text-sm">+18%</span>
                    <p class="text-xs text-gray-500">Growth</p>
                </div>
            </div>

            <!-- Chart -->
            <div class="flex-1 min-h-[140px] relative mt-2">
                <canvas id="membershipChart" class="w-full h-full absolute inset-0"></canvas>
            </div>
        </div>
    </div>

    <!-- ================= FEE PAYMENT REPORT ================= -->
    <div class="flex-[2.5] min-w-[260px] flex">
        <div class="bg-[#141A22] border border-[#232B35] rounded-2xl p-5 w-full flex flex-col justify-between">
            <!-- Header -->
            <div class="flex justify-between items-center mb-4">
                <div>
                    <h2 class="text-white text-lg font-semibold">Fee Payment</h2>
                    <p class="text-xs text-gray-500 mt-1">Statistics</p>
                </div>
                <button class="text-lime-400 text-sm hover:text-lime-300">
                    This Month
                </button>
            </div>

            <div class="flex items-center justify-between gap-4 flex-1">
                <!-- Chart -->
                <div class="w-28 h-28 sm:w-32 sm:h-32 flex-shrink-0 relative">
                    <canvas id="paymentChart" class="w-full h-full absolute inset-0"></canvas>
                </div>

                <!-- Legend Loop-ka Xogta -->
                <div class="space-y-3 flex-1 min-w-0">
                    <% 
                        var paymentStats = new[]
                        {
                            new { Title = "Paid", Percent = "72%", Color = "bg-lime-400" },
                            new { Title = "Pending", Percent = "18%", Color = "bg-yellow-400" },
                            new { Title = "Overdue", Percent = "10%", Color = "bg-red-500" }
                        };

                        foreach (var stat in paymentStats)
                        {
                    %>
                            <div class="flex items-center gap-2">
                                <span class="w-2.5 h-2.5 rounded-full <%= stat.Color %> flex-shrink-0"></span>
                                <div class="min-w-0">
                                    <h4 class="text-white text-xs font-medium truncate"><%= stat.Title %></h4>
                                    <p class="text-gray-400 text-xs"><%= stat.Percent %></p>
                                </div>
                            </div>
                    <% 
                        } 
                    %>
                </div>
            </div>
        </div>
    </div>

    <!-- ================= TODAY'S ATTENDANCE ================= -->
    <div class="flex-[3] min-w-[280px] flex">
        <div class="bg-[#141A22] border border-[#232B35] rounded-2xl p-5 w-full flex flex-col justify-between">
            <!-- Header -->
            <div class="flex justify-between items-center mb-4">
                <div>
                    <h2 class="text-white font-semibold text-lg">Attendance</h2>
                    <p class="text-xs text-gray-500 mt-1">Live Status</p>
                </div>
                <button class="text-lime-400 text-sm hover:text-lime-300">
                    Today
                </button>
            </div>

            <div class="flex items-center justify-between gap-4 flex-1">
                <!-- Circle -->
                <div class="relative w-28 h-28 sm:w-32 sm:h-32 flex-shrink-0">
                    <canvas id="attendanceChart" class="w-full h-full"></canvas>
                    <div class="absolute inset-0 flex flex-col items-center justify-center">
                        <h2 class="text-xl sm:text-2xl font-bold text-white">84%</h2>
                        <p class="text-[10px] text-gray-400">Present</p>
                    </div>
                </div>

                <!-- Stats (Kani waa static dynamic classes kala duwan leh) -->
                <div class="space-y-2 flex-1">
                    <div class="bg-[#1B232D] rounded-xl px-3 py-1.5 flex justify-between items-center">
                        <p class="text-gray-400 text-xs">Present</p>
                        <h3 class="text-lime-400 text-sm font-bold">210</h3>
                    </div>
                    <div class="bg-[#1B232D] rounded-xl px-3 py-1.5 flex justify-between items-center">
                        <p class="text-gray-400 text-xs">Absent</p>
                        <h3 class="text-red-400 text-sm font-bold">40</h3>
                    </div>
                    <div class="bg-[#1B232D] rounded-xl px-3 py-1.5 flex justify-between items-center">
                        <p class="text-gray-400 text-xs">Total</p>
                        <h3 class="text-white text-sm font-bold">250</h3>
                    </div>
                </div>
            </div>
        </div>
    </div>

</section>

<section class="flex flex-col lg:flex-row gap-4 w-full max-w-[1600px] my-6 items-stretch">

    <!-- ================= 1. SCHEDULE LIST CARD ================= -->
    <div class="bg-[#111625] border border-[#1e2640] rounded-xl p-5 flex-[1.4] min-w-[360px] flex flex-col justify-between">
        <div>
            <div class="flex justify-between items-center mb-5">
                <h3 class="text-[17px] font-semibold tracking-wide text-white">Schedule</h3>
                <a href="#" class="text-[13px] text-[#d4af37] font-medium hover:underline">View All</a>
            </div>
            
            <div class="overflow-x-auto">
                <table class="w-full text-left border-collapse">
                    <thead>
                        <tr class="text-[13px] text-gray-500 font-medium uppercase tracking-wider border-none">
                            <th class="pb-3">Time</th>
                            <th class="pb-3">Class</th>
                            <th class="pb-3">Trainer</th>
                            <th class="pb-3 text-right">Status</th>
                        </tr>
                    </thead>
                    <tbody class="text-[15px] text-slate-300">
                        <% 
                            var schedules = new[]
                            {
                                new { Time = "07:00 AM", ClassName = "Strength", Trainer = "Ali Ahmed", Status = "Ongoing", StatusClass = "text-[#84cc16]" },
                                new { Time = "09:00 AM", ClassName = "Yoga", Trainer = "Sarah Khan", Status = "Ongoing", StatusClass = "text-[#84cc16]" },
                                new { Time = "11:00 AM", ClassName = "Zumba", Trainer = "Maryam Ali", Status = "Upcoming", StatusClass = "text-[#0d9488]" },
                                new { Time = "04:00 PM", ClassName = "CrossFit", Trainer = "Hassan Y.", Status = "Upcoming", StatusClass = "text-[#0d9488]" },
                                new { Time = "06:00 PM", ClassName = "Abs & Core", Trainer = "Omar Farah", Status = "Upcoming", StatusClass = "text-[#0d9488]" }
                            };

                            for (int i = 0; i < schedules.Length; i++)
                            {
                                var item = schedules[i];
                                string borderClass = (i == schedules.Length - 1) ? "" : "border-b border-[#1e2640]";
                        %>
                                <tr class="<%= borderClass %>">
                                    <td class="py-3.5"><%= item.Time %></td>
                                    <td class="py-3.5 font-medium text-white"><%= item.ClassName %></td>
                                    <td class="py-3.5"><%= item.Trainer %></td>
                                    <td class="py-3.5 text-right">
                                        <span class="<%= item.StatusClass %> text-[13px] font-semibold"><%= item.Status %></span>
                                    </td>
                                </tr>
                        <% 
                            } 
                        %>
                    </tbody>
                </table>
            </div>
        </div>
    </div>

    <!-- ================= 2. RECENT ACTIVITY CARD ================= -->
    <div class="bg-[#111625] border border-[#1e2640] rounded-xl p-5 flex-1 min-w-[260px] flex flex-col justify-between">
        <div>
            <div class="flex justify-between items-center mb-5">
                <h3 class="text-[17px] font-semibold tracking-wide text-white">Activity</h3>
                <a href="#" class="text-[13px] text-[#d4af37] font-medium hover:underline">View All</a>
            </div>
            
            <div class="space-y-1">
                <% 
                    var activities = new[]
                    {
                        new { Text = "Ahmed Ali joined", Time = "10:15 AM", Icon = "fa-user-plus", BgClass = "bg-lime-500/10 text-[#84cc16]" },
                        new { Text = "Received $120.00", Time = "09:45 AM", Icon = "fa-wallet", BgClass = "bg-teal-500/10 text-[#0d9488]" },
                        new { Text = "\"Premium\" pack created", Time = "Yesterday", Icon = "fa-box", BgClass = "bg-lime-500/10 text-[#84cc16]" },
                        new { Text = "Ali added new class", Time = "Yesterday", Icon = "fa-dumbbell", BgClass = "bg-lime-500/10 text-[#84cc16]" },
                        new { Text = "\"Muscle Gain\" plan", Time = "16 May", Icon = "fa-calendar-days", BgClass = "bg-lime-500/10 text-[#84cc16]" }
                    };

                    for (int i = 0; i < activities.Length; i++)
                    {
                        var act = activities[i];
                        string borderClass = (i == activities.Length - 1) ? "" : "border-b border-[#1e2640]";
                %>
                        <div class="flex items-center justify-between py-3 <%= borderClass %>">
                            <div class="flex items-center gap-3 truncate">
                                <div class="w-7 h-7 <%= act.BgClass %> rounded flex items-center justify-center text-[13px] flex-shrink-0">
                                    <i class="fa-solid <%= act.Icon %>"></i>
                                </div>
                                <div class="text-[15px] text-slate-300 truncate"><%= act.Text %></div>
                            </div>
                            <div class="text-[13px] text-gray-500 pl-2 flex-shrink-0"><%= act.Time %></div>
                        </div>
                <% 
                    } 
                %>
            </div>
        </div>
    </div>

    <!-- ================= 3. NOTICE BOARD CARD ================= -->
    <div class="bg-[#111625] border border-[#1e2640] rounded-xl p-5 flex-1 min-w-[260px] flex flex-col justify-between">
        <div>
            <div class="flex justify-between items-center mb-5">
                <h3 class="text-[17px] font-semibold tracking-wide text-white">Notices</h3>
                <a href="#" class="text-[13px] text-[#d4af37] font-medium hover:underline">View All</a>
            </div>

            <div class="space-y-1">
                <% 
                    var notices = new[]
                    {
                        new { Title = "Closed on Sunday", Date = "19 May 2025", Icon = "fa-bullhorn", BgClass = "bg-lime-500/10 text-[#84cc16]" },
                        new { Title = "New Yoga Class Saturday", Date = "18 May 2025", Icon = "fa-users", BgClass = "bg-teal-500/10 text-[#0d9488]" },
                        new { Title = "Maintenance Schedule", Date = "17 May 2025", Icon = "fa-wrench", BgClass = "bg-lime-500/10 text-[#84cc16]" }
                    };

                    for (int i = 0; i < notices.Length; i++)
                    {
                        var notice = notices[i];
                        string borderClass = (i == notices.Length - 1) ? "" : "border-b border-[#1e2640]";
                %>
                        <div class="flex items-center py-3 <%= borderClass %> gap-3">
                            <div class="w-7 h-7 <%= notice.BgClass %> rounded flex items-center justify-center text-[13px] flex-shrink-0">
                                <i class="fa-solid <%= notice.Icon %>"></i>
                            </div>
                            <div class="text-[15px] text-slate-300 leading-tight truncate">
                                <%= notice.Title %>
                                <span class="block text-[12px] text-gray-500 mt-1">
                                    <%= notice.Date %>
                                </span>
                            </div>
                        </div>
                <% 
                    } 
                %>
            </div>
        </div>
    </div>

    <!-- ================= 4. MESSAGES CARD ================= -->
    <div class="bg-[#111625] border border-[#1e2640] rounded-xl p-5 flex-1 min-w-[260px] flex flex-col justify-between">
        <div>
            <div class="flex justify-between items-center mb-5">
                <h3 class="text-[17px] font-semibold tracking-wide text-white">Messages</h3>
                <a href="#" class="text-[13px] text-[#d4af37] font-medium hover:underline">View All</a>
            </div>

            <div class="space-y-1">
                <% 
                    var messages = new[]
                    {
                        new { Initials = "AM", Name = "Aisha M.", Text = "I have a question...", Time = "10:20 AM", UnreadCount = 2 },
                        new { Initials = "MH", Name = "Mohamed H.", Text = "Next payment due?", Time = "09:15 AM", UnreadCount = 1 },
                        new { Initials = "OY", Name = "Omar Yusuf", Text = "Thanks for reminder!", Time = "Yest.", UnreadCount = 0 }
                    };

                    for (int i = 0; i < messages.Length; i++)
                    {
                        var msg = messages[i];
                        string borderClass = (i == messages.Length - 1) ? "" : "border-b border-[#1e2640]";
                %>
                        <div class="flex items-center justify-between py-3 <%= borderClass %>">
                            <div class="flex items-center gap-3 truncate">
                                <div class="w-8 h-8 rounded-full bg-slate-700 flex items-center justify-center text-[12px] font-semibold text-white border border-gray-600 flex-shrink-0">
                                    <%= msg.Initials %>
                                </div>
                                <div class="flex flex-col truncate">
                                    <span class="text-[15px] font-medium text-white truncate"><%= msg.Name %></span>
                                    <span class="text-[13px] text-gray-500 truncate"><%= msg.Text %></span>
                                </div>
                            </div>
                            
                            <div class="flex flex-col items-end <%= msg.UnreadCount > 0 ? "gap-1" : "" %> pl-2 flex-shrink-0">
                                <span class="text-[12px] text-gray-500"><%= msg.Time %></span>
                                <% if (msg.UnreadCount > 0) { %>
                                    <span class="bg-[#84cc16] text-black text-[11px] font-bold px-1.5 rounded-full min-w-[18px] text-center">
                                        <%= msg.UnreadCount %>
                                    </span>
                                <% } %>
                            </div>
                        </div>
                <% 
                    } 
                %>
            </div>
        </div>
    </div>

</section>

<section class="bg-[#11161b] border border-gray-800 rounded-lg shadow-lg">

    <!-- Header -->
    <div class="px-4 py-3 border-b border-gray-800">
        <h2 class="text-white text-sm font-semibold">
            Quick Actions
        </h2>
    </div>

    <!-- Buttons Container -->
    <div class="grid grid-cols-2 sm:grid-cols-3 md:grid-cols-5 lg:grid-cols-9 gap-3 p-4">
        <% 
            var quickActions = new[]
            {
                new { Title = "Add Member", Icon = "fa-user-plus" },
                new { Title = "Add Trainer", Icon = "fa-users" },
                new { Title = "Create Membership", Icon = "fa-crown" },
                new { Title = "Add Class", Icon = "fa-calendar-plus" },
                new { Title = "Add Payment", Icon = "fa-credit-card" },
                new { Title = "Reservation", Icon = "fa-calendar-check" },
                new { Title = "New Notice", Icon = "fa-note-sticky" },
                new { Title = "Send Message", Icon = "fa-message" },
                new { Title = "Generate Report", Icon = "fa-chart-column" }
            };

            foreach (var action in quickActions)
            {
        %>
                <div class="h-20 bg-[#181d22] border border-gray-700 rounded-md hover:bg-[#20262d] hover:border-lime-400 transition-all duration-300 flex flex-col items-center justify-center cursor-pointer">
                    <i class="fa-solid <%= action.Icon %> text-lime-400 text-2xl mb-2"></i>
                    <span class="text-[11px] text-gray-300 select-none text-center px-1"><%= action.Title %></span>
                </div>
        <% 
            } 
        %>
    </div>

</section>

    <script>
        function toggleCalendar() {
            document.getElementById("calendarBox")
                .classList.toggle("hidden");
        }

        new Chart(document.getElementById("memberStatusChart"), {
            type: "doughnut",
            data: {
                labels: ["Active", "Expired", "Inactive"],
                datasets: [{
                    data: [982, 186, 80],
                    backgroundColor: [
                        "#C8FF2C",
                        "#FACC15",
                        "#475569"
                    ],
                    borderWidth: 0,
                    hoverOffset: 0
                }]
            },
            options: {
                responsive: true,
                maintainAspectRatio: false,
                cutout: "72%",
                animation: false,
                plugins: {
                    legend: {
                        display: false
                    }
                }
            }
        });

        new Chart(document.getElementById("overviewChart"), {

            type: "line",

            data: {

                labels: ["1", "5", "10", "15", "20", "25", "30"],

                datasets: [{

                    label: "Members",

                    data: [500, 800, 900, 1200, 1500, 1400, 1900],

                    borderColor: "#C8FF2C",

                    backgroundColor: "rgba(200,255,44,.18)",

                    fill: true,

                    tension: .4,

                    pointRadius: 5,

                    pointBackgroundColor: "#C8FF2C"

                }]

            },

            options: {

                responsive: true,

                plugins: {

                    legend: { display: false }

                },

                scales: {

                    x: {

                        ticks: { color: "#94A3B8" },

                        grid: { display: false }

                    },

                    y: {
                        min: 0,
                        max: 2000,

                        ticks: {
                            color: "#94A3B8",
                            stepSize: 500
                        },

                        grid: {
                            color: "#232B35"
                        }
                    }

                }

            }

        });

        const membershipChart = new Chart(
            document.getElementById('membershipChart'),
            {
                type: 'bar',
                data: {
                    labels: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun'],
                    datasets: [
                        {
                            label: 'New Members',
                            data: [80, 120, 95, 150, 130, 170],
                            backgroundColor: '#84cc16', // Lime
                            borderRadius: 8,
                            barThickness: 12
                        },
                        {
                            label: 'Renewal Members',
                            data: [140, 220, 185, 280, 260, 340],
                            backgroundColor: '#3F6212', // Blue
                            borderRadius: 8,
                            barThickness: 12
                        }
                    ]
                },
                options: {
                    responsive: true,
                    maintainAspectRatio: false,
                    plugins: {
                        legend: {
                            display: true,
                            position: 'top',
                            labels: {
                                color: '#D1D5DB',
                                usePointStyle: true,
                                pointStyle: 'circle',
                                padding: 20
                            }
                        }
                    },
                    scales: {
                        x: {
                            grid: {
                                display: false
                            },
                            ticks: {
                                color: '#9CA3AF'
                            }
                        },
                        y: {
                            beginAtZero: true,
                            grid: {
                                color: '#232B35'
                            },
                            ticks: {
                                color: '#9CA3AF'
                            }
                        }
                    }
                }
            }
        );
        const paymentChart = new Chart(
            document.getElementById('paymentChart'),
            {
                type: 'doughnut',
                data: {
                    labels: [
                        'Paid',
                        'Pending',
                        'Overdue'
                    ],
                    datasets: [
                        {
                            data: [
                                72,
                                18,
                                10
                            ],
                            backgroundColor: [
                                '#84cc16',
                                '#facc15',
                                '#ef4444'
                            ],
                            borderWidth: 0,
                            hoverOffset: 8
                        }
                    ]
                },
                options: {
                    responsive: true,
                    maintainAspectRatio: false,
                    cutout: '70%',
                    plugins: {
                        legend: {
                            display: false
                        },
                        tooltip: {
                            enabled: true
                        }
                    }
                }
            });

        const attendanceChart = new Chart(
            document.getElementById('attendanceChart'),
            {
                type: 'doughnut',
                data: {
                    datasets: [
                        {
                            data: [84, 16],
                            backgroundColor: [
                                '#84cc16',
                                '#232B35'
                            ],
                            borderWidth: 0
                        }
                    ]
                },
                options: {
                    responsive: true,
                    maintainAspectRatio: false,
                    rotation: -90,
                    circumference: 360,
                    cutout: '80%',
                    plugins: {
                        legend: {
                            display: false
                        },
                        tooltip: {
                            enabled: false
                        }
                    }
                }
            });

    </script>

</asp:Content>
