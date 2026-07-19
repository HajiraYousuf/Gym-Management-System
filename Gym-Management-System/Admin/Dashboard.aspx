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

<section class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 xl:grid-cols-6 gap-4 mb-6 ">

    <!-- Card 1 -->
    <div class="bg-gradient-to-r from-lime-950 to-zinc-900 border border-gray-800 rounded-xl p-4">
                <div class="flex items-center justify-between">
            <div>
                <p class="text-gray-400 text-xs">Total Members</p>
                <h2 class="text-xl font-bold text-white mt-1">1,250</h2>
            </div>
            <div class="w-10 h-10 flex items-center justify-center rounded-lg bg-lime-400/10 text-lime-400">
                <i class="ri-group-line text-xl"></i>
            </div>
        </div>
        <p class="text-lime-400 text-xs mt-3">
            ↑ 12% this month
        </p>
    </div>

    <!-- Card 2 -->
    <div class="bg-gradient-to-r from-lime-950 to-zinc-900 border border-gray-800 rounded-xl p-4">

        <div class="flex items-center justify-between">

            <div>
                <p class="text-gray-400 text-xs">Active Trainers</p>
                <h2 class="text-xl font-bold text-white mt-1">45</h2>
            </div>

            <div class="w-10 h-10 flex items-center justify-center rounded-lg bg-lime-400/10 text-lime-400">
                <i class="ri-user-star-line text-xl"></i>
            </div>

        </div>

        <p class="text-lime-400 text-xs mt-3">
            ↑ 5 new trainers
        </p>

    </div>



    <!-- Card 3 -->
    <div class="bg-gradient-to-r from-lime-950 to-zinc-900 border border-gray-800 rounded-xl p-4">

        <div class="flex items-center justify-between">

            <div>
                <p class="text-gray-400 text-xs">Staff Members</p>
                <h2 class="text-xl font-bold text-white mt-1">45</h2>
            </div>

            <div class="w-10 h-10 flex items-center justify-center rounded-lg bg-lime-400/10 text-lime-400">
                <i class="ri-team-line text-xl"></i>
            </div>

        </div>

        <p class="text-gray-400 text-xs mt-3">
            Total staff members
        </p>

    </div>



    <!-- Card 4 -->
    <div class="bg-gradient-to-r from-lime-950 to-zinc-900 border border-gray-800 rounded-xl p-4">

        <div class="flex items-center justify-between">

            <div>
                <p class="text-gray-400 text-xs">Monthly Revenue</p>
                <h2 class="text-xl font-bold text-white mt-1">$24.5K</h2>
            </div>

            <div class="w-10 h-10 flex items-center justify-center rounded-lg bg-lime-400/10 text-lime-400">
                <i class="ri-money-dollar-circle-line text-xl"></i>
            </div>

        </div>

        <p class="text-lime-400 text-xs mt-3">
            ↑ 18% increase
        </p>

    </div>



    <!-- Card 5 -->
    <div class="bg-gradient-to-r from-lime-950 to-zinc-900 border border-gray-800 rounded-xl p-4">

        <div class="flex items-center justify-between">

            <div>
                <p class="text-gray-400 text-xs">Check In Today</p>
                <h2 class="text-xl font-bold text-white mt-1">320</h2>
            </div>

            <div class="w-10 h-10 flex items-center justify-center rounded-lg bg-lime-400/10 text-lime-400">
                <i class="ri-login-circle-line text-xl"></i>
            </div>

        </div>

        <p class="text-gray-400 text-xs mt-3">
            Today's check-ins
        </p>

    </div>



    <!-- Card 6 -->
    <div class="bg-gradient-to-r from-lime-950 to-zinc-900 border border-gray-800 rounded-xl p-4">

        <div class="flex items-center justify-between">

            <div>
                <p class="text-gray-400 text-xs">New Messages</p>
                <h2 class="text-xl font-bold text-white mt-1">24</h2>
            </div>

            <div class="w-10 h-10 flex items-center justify-center rounded-lg bg-lime-400/10 text-lime-400">
                <i class="ri-message-3-line text-xl"></i>
            </div>

        </div>

        <p class="text-gray-400 text-xs mt-3">
            Unread messages
        </p>

    </div>


</section>

<section class="grid grid-cols-1 lg:grid-cols-3 gap-6 mb-6 items-stretch">

   <!-- ================= MEMBER STATUS ================= -->
    <div class="bg-[#181d22] border border-gray-700 rounded-md  transition-all duration-300 p-5 h-[280px]">

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
            <div class="relative w-32 h-32  flex-shrink-0 flex items-center justify-center">

                <canvas id="memberStatusChart" class="w-full h-full"></canvas>

                <!-- Center Text -->
                <div class="absolute text-center">
                    <h2 class="text-2xl font-bold text-white leading-none">
                        1248
                    </h2>

                    <p class="text-gray-400 text-sm mt-1">
                        Total
                    </p>
                </div>

            </div>

            <!-- Status -->
            <div class="flex-1 min-w-0 space-y-3">

                <!-- Active -->
                <div class="rounded-lg p-3">
                    <div class="flex items-center gap-3">

                        <span class="w-3 h-3 rounded-full bg-lime-400 flex-shrink-0"></span>

                        <div>
                            <h4 class="text-white text-sm font-semibold">
                                Active Members
                            </h4>

                            <p class="text-lime-400 text-xs">
                                982 (78.7%)
                            </p>
                        </div>

                    </div>
                </div>

                <!-- Expired -->
                <div class="rounded-lg p-3">
                    <div class="flex items-center gap-3">

                        <span class="w-3 h-3 rounded-full bg-yellow-400 flex-shrink-0"></span>

                        <div>
                            <h4 class="text-white text-sm font-semibold">
                                Expired Members
                            </h4>

                            <p class="text-yellow-400 text-xs">
                                186 (14.9%)
                            </p>
                        </div>

                    </div>
                </div>

                <!-- Inactive -->
                <div class="rounded-lg p-3">
                    <div class="flex items-center gap-3">

                        <span class="w-3 h-3 rounded-full bg-gray-500 flex-shrink-0"></span>

                        <div>
                            <h4 class="text-white text-sm font-semibold">
                                Inactive Members
                            </h4>

                            <p class="text-gray-400 text-xs">
                                80 (6.4%)
                            </p>
                        </div>

                    </div>
                </div>

            </div>

        </div>

    </div>

    <!-- ================= MEMBERS OVERVIEW ================= -->
    <div class="bg-[#181d22] border border-gray-700 rounded-md transition-all duration-300 p-5 h-[280px]">


            <div class="flex justify-between items-center mb-5">

                <h2 class="text-white font-semibold text-lg">
                    Members Overview
                </h2>


                <button class="text-gray-400 text-sm">

                    This Month

                    <i class="fa-solid fa-chevron-down ml-1"></i>

                </button>


            </div>



            <div class="h-[180px] w-full">

                <canvas id="overviewChart"></canvas>

            </div>



        </div>


    <!-- ================= CALENDAR ================= -->
    <div class="bg-[#181d22] border border-gray-700 rounded-md transition-all duration-300 p-5 h-[280px]">


            <div class="flex justify-between items-center">

                <h2 class="text-white font-semibold text-lg">
                    Calendar
                </h2>


                <i class="fa-solid fa-calendar text-lime-400"></i>


            </div>




            <div class="mt-5">


                <div class="grid grid-cols-7 gap-1 text-center text-gray-400 text-xs">

                    <span>Sun</span>
                    <span>Mon</span>
                    <span>Tue</span>
                    <span>Wed</span>
                    <span>Thu</span>
                    <span>Fri</span>
                    <span>Sat</span>

                </div>




                <div class="grid grid-cols-7 gap-1 mt-3 text-center text-sm">


                    <span class="text-gray-500 py-1">27</span>
                    <span class="text-gray-500 py-1">28</span>
                    <span class="text-gray-500 py-1">29</span>
                    <span class="text-gray-500 py-1">30</span>


                    <span class="text-white py-1">1</span>
                    <span class="text-white py-1">2</span>
                    <span class="text-white py-1">3</span>


                    <span class="text-white py-1">4</span>
                    <span class="text-white py-1">5</span>
                    <span class="text-white py-1">6</span>
                    <span class="text-white py-1">7</span>
                    <span class="text-white py-1">8</span>
                    <span class="text-white py-1">9</span>
                    <span class="text-white py-1">10</span>


                    <span class="text-white py-1">11</span>
                    <span class="text-white py-1">12</span>
                    <span class="text-white py-1">13</span>
                    <span class="text-white py-1">14</span>
                    <span class="text-white py-1">15</span>


                    <div class="bg-lime-400 text-black rounded-lg py-1 font-bold">
                        16
                    </div>


                    <span class="text-white py-1">17</span>
                    <span class="text-white py-1">18</span>
                    <span class="text-white py-1">19</span>
                    <span class="text-white py-1">20</span>
                    <span class="text-white py-1">21</span>
                    <span class="text-white py-1">22</span>
                    <span class="text-white py-1">23</span>


                    <span class="text-white py-1">24</span>
                    <span class="text-white py-1">25</span>
                    <span class="text-white py-1">26</span>
                    <span class="text-white py-1">27</span>
                    <span class="text-white py-1">28</span>
                    <span class="text-white py-1">29</span>
                    <span class="text-white py-1">30</span>
                    <span class="text-white py-1">31</span>


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

            <!-- Table Container (Scrollable on small screens if needed) -->
            <div class="overflow-x-auto rounded-xl border border-[#232B35]">
                <div class="">
                    <!-- Heading -->
                    <div class="grid grid-cols-5 bg-[#1B232D] text-gray-400 text-xs font-medium px-4 py-3">
                        <div>Invoice</div>
                        <div>Member</div>
                        <div>Amount</div>
                        <div>Status</div>
                        <div>Date</div>
                    </div>

                    <!-- Row 1 -->
                    <div class="grid grid-cols-5 items-center px-4 py-2.5 text-sm border-t border-[#232B35] hover:bg-[#1B232D] transition">
                        <div class="text-gray-300 text-xs">INV-00125</div>
                        <div class="text-white font-medium truncate pr-2">Ahmed Ali</div>
                        <div class="text-white">$120.00</div>
                        <div>
                            <span class="bg-lime-500/20 text-lime-400 text-xs px-2 py-0.5 rounded-full inline-block">
                                Paid
                            </span>
                        </div>
                        <div class="text-gray-400 text-xs">16 May 2025</div>
                    </div>

                    <!-- Row 2 -->
                    <div class="grid grid-cols-5 items-center px-4 py-2.5 text-sm border-t border-[#232B35] hover:bg-[#1B232D] transition">
                        <div class="text-gray-300 text-xs">INV-00124</div>
                        <div class="text-white font-medium truncate pr-2">Mohamed Hassan</div>
                        <div class="text-white">$150.00</div>
                        <div>
                            <span class="bg-blue-500/20 text-blue-400 text-xs px-2 py-0.5 rounded-full inline-block">
                                Paid
                            </span>
                        </div>
                        <div class="text-gray-400 text-xs">16 May 2025</div>
                    </div>

                    <!-- Row 3 -->
                    <div class="grid grid-cols-5 items-center px-4 py-2.5 text-sm border-t border-[#232B35] hover:bg-[#1B232D] transition">
                        <div class="text-gray-300 text-xs">INV-00123</div>
                        <div class="text-white font-medium truncate pr-2">Aisha Mohamed</div>
                        <div class="text-white">$90.00</div>
                        <div>
                            <span class="bg-yellow-500/20 text-yellow-400 text-xs px-2 py-0.5 rounded-full inline-block">
                                Pending
                            </span>
                        </div>
                        <div class="text-gray-400 text-xs">15 May 2025</div>
                    </div>

                    <!-- Row 4 -->
                    <div class="grid grid-cols-5 items-center px-4 py-2.5 text-sm border-t border-[#232B35] hover:bg-[#1B232D] transition">
                        <div class="text-gray-300 text-xs">INV-00122</div>
                        <div class="text-white font-medium truncate pr-2">Omar Yusuf</div>
                        <div class="text-white">$200.00</div>
                        <div>
                            <span class="bg-lime-500/20 text-lime-400 text-xs px-2 py-0.5 rounded-full inline-block">
                                Paid
                            </span>
                        </div>
                        <div class="text-gray-400 text-xs">15 May 2025</div>
                    </div>

                    <!-- Row 5 -->
                    <div class="grid grid-cols-5 items-center px-4 py-2.5 text-sm border-t border-[#232B35] hover:bg-[#1B232D] transition">
                        <div class="text-gray-300 text-xs">INV-00121</div>
                        <div class="text-white font-medium truncate pr-2">Fatima Abdi</div>
                        <div class="text-white">$110.00</div>
                        <div>
                            <span class="bg-yellow-500/20 text-yellow-400 text-xs px-2 py-0.5 rounded-full inline-block">
                                Pending
                            </span>
                        </div>
                        <div class="text-gray-400 text-xs">14 May 2025</div>
                    </div>
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

                <!-- Legend -->
                <div class="space-y-3 flex-1 min-w-0">
                    <div class="flex items-center gap-2">
                        <span class="w-2.5 h-2.5 rounded-full bg-lime-400 flex-shrink-0"></span>
                        <div class="min-w-0">
                            <h4 class="text-white text-xs font-medium truncate">Paid</h4>
                            <p class="text-gray-400 text-xs">72%</p>
                        </div>
                    </div>
                    <div class="flex items-center gap-2">
                        <span class="w-2.5 h-2.5 rounded-full bg-yellow-400 flex-shrink-0"></span>
                        <div class="min-w-0">
                            <h4 class="text-white text-xs font-medium truncate">Pending</h4>
                            <p class="text-gray-400 text-xs">18%</p>
                        </div>
                    </div>
                    <div class="flex items-center gap-2">
                        <span class="w-2.5 h-2.5 rounded-full bg-red-500 flex-shrink-0"></span>
                        <div class="min-w-0">
                            <h4 class="text-white text-xs font-medium truncate">Overdue</h4>
                            <p class="text-gray-400 text-xs">10%</p>
                        </div>
                    </div>
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

                <!-- Stats -->
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

<section class="flex flex-row gap-4 w-full max-w-[1600px] my-6">

    <!-- 1. SCHEDULE LIST CARD -->
    <div class="bg-[#111625] border border-[#1e2640] rounded-xl p-5 flex-[1.4] min-w-[360px]">
        <div class="flex justify-between items-center mb-5">
            <h3 class="text-[17px] font-semibold tracking-wide text-white">Schedule</h3>
            <a href="#" class="text-[13px] text-[#d4af37] font-medium hover:underline">View All</a>
        </div>
        
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
                <tr class="border-b border-[#1e2640]">
                    <td class="py-3.5">07:00 AM</td>
                    <td class="py-3.5 font-medium text-white">Strength</td>
                    <td class="py-3.5">Ali Ahmed</td>
                    <td class="py-3.5 text-right"><span class="text-[#84cc16] text-[13px] font-semibold">Ongoing</span></td>
                </tr>
                <tr class="border-b border-[#1e2640]">
                    <td class="py-3.5">09:00 AM</td>
                    <td class="py-3.5 font-medium text-white">Yoga</td>
                    <td class="py-3.5">Sarah Khan</td>
                    <td class="py-3.5 text-right"><span class="text-[#84cc16] text-[13px] font-semibold">Ongoing</span></td>
                </tr>
                <tr class="border-b border-[#1e2640]">
                    <td class="py-3.5">11:00 AM</td>
                    <td class="py-3.5 font-medium text-white">Zumba</td>
                    <td class="py-3.5">Maryam Ali</td>
                    <td class="py-3.5 text-right"><span class="text-[#0d9488] text-[13px] font-semibold">Upcoming</span></td>
                </tr>
                <tr class="border-b border-[#1e2640]">
                    <td class="py-3.5">04:00 PM</td>
                    <td class="py-3.5 font-medium text-white">CrossFit</td>
                    <td class="py-3.5">Hassan Y.</td>
                    <td class="py-3.5 text-right"><span class="text-[#0d9488] text-[13px] font-semibold">Upcoming</span></td>
                </tr>
                <tr>
                    <td class="py-3.5">06:00 PM</td>
                    <td class="py-3.5 font-medium text-white">Abs & Core</td>
                    <td class="py-3.5">Omar Farah</td>
                    <td class="py-3.5 text-right"><span class="text-[#0d9488] text-[13px] font-semibold">Upcoming</span></td>
                </tr>
            </tbody>
        </table>
    </div>

    <!-- 2. RECENT ACTIVITY CARD -->
    <div class="bg-[#111625] border border-[#1e2640] rounded-xl p-5 flex-1 min-w-[260px]">
        <div class="flex justify-between items-center mb-5">
            <h3 class="text-[17px] font-semibold tracking-wide text-white">Activity</h3>
            <a href="#" class="text-[13px] text-[#d4af37] font-medium hover:underline">View All</a>
        </div>
        
        <div class="space-y-1">
            <div class="flex items-center justify-between py-3 border-b border-[#1e2640]">
                <div class="flex items-center gap-3 truncate">
                    <div class="w-7 h-7 bg-lime-500/10 text-[#84cc16] rounded flex items-center justify-center text-[13px] flex-shrink-0"><i class="fa-solid fa-user-plus"></i></div>
                    <div class="text-[15px] text-slate-300 truncate">Ahmed Ali joined</div>
                </div>
                <div class="text-[13px] text-gray-500 pl-2 flex-shrink-0">10:15 AM</div>
            </div>

            <div class="flex items-center justify-between py-3 border-b border-[#1e2640]">
                <div class="flex items-center gap-3 truncate">
                    <div class="w-7 h-7 bg-teal-500/10 text-[#0d9488] rounded flex items-center justify-center text-[13px] flex-shrink-0"><i class="fa-solid fa-wallet"></i></div>
                    <div class="text-[15px] text-slate-300 truncate">Received $120.00</div>
                </div>
                <div class="text-[13px] text-gray-500 pl-2 flex-shrink-0">09:45 AM</div>
            </div>

            <div class="flex items-center justify-between py-3 border-b border-[#1e2640]">
                <div class="flex items-center gap-3 truncate">
                    <div class="w-7 h-7 bg-lime-500/10 text-[#84cc16] rounded flex items-center justify-center text-[13px] flex-shrink-0"><i class="fa-solid fa-box"></i></div>
                    <div class="text-[15px] text-slate-300 truncate">"Premium" pack created</div>
                </div>
                <div class="text-[13px] text-gray-500 pl-2 flex-shrink-0">Yesterday</div>
            </div>

            <div class="flex items-center justify-between py-3 border-b border-[#1e2640]">
                <div class="flex items-center gap-3 truncate">
                    <div class="w-7 h-7 bg-lime-500/10 text-[#84cc16] rounded flex items-center justify-center text-[13px] flex-shrink-0"><i class="fa-solid fa-dumbbell"></i></div>
                    <div class="text-[15px] text-slate-300 truncate">Ali added new class</div>
                </div>
                <div class="text-[13px] text-gray-500 pl-2 flex-shrink-0">Yesterday</div>
            </div>

            <div class="flex items-center justify-between py-3">
                <div class="flex items-center gap-3 truncate">
                    <div class="w-7 h-7 bg-lime-500/10 text-[#84cc16] rounded flex items-center justify-center text-[13px] flex-shrink-0"><i class="fa-solid fa-calendar-days"></i></div>
                    <div class="text-[15px] text-slate-300 truncate">"Muscle Gain" plan</div>
                </div>
                <div class="text-[13px] text-gray-500 pl-2 flex-shrink-0">16 May</div>
            </div>
        </div>
    </div>

    <!-- 3. NOTICE BOARD CARD -->
    <div class="bg-[#111625] border border-[#1e2640] rounded-xl p-5 flex-1 min-w-[260px]">
        <div class="flex justify-between items-center mb-5">
            <h3 class="text-[17px] font-semibold tracking-wide text-white">Notices</h3>
            <a href="#" class="text-[13px] text-[#d4af37] font-medium hover:underline">View All</a>
        </div>

        <div class="space-y-1">
            <div class="flex items-center py-3 border-b border-[#1e2640] gap-3">
                <div class="w-7 h-7 bg-lime-500/10 text-[#84cc16] rounded flex items-center justify-center text-[13px] flex-shrink-0"><i class="fa-solid fa-bullhorn"></i></div>
                <div class="text-[15px] text-slate-300 leading-tight truncate">
                    Closed on Sunday
                    <span class="block text-[12px] text-gray-500 mt-1">19 May 2025</span>
                </div>
            </div>

            <div class="flex items-center py-3 border-b border-[#1e2640] gap-3">
                <div class="w-7 h-7 bg-teal-500/10 text-[#0d9488] rounded flex items-center justify-center text-[13px] flex-shrink-0"><i class="fa-solid fa-users"></i></div>
                <div class="text-[15px] text-slate-300 leading-tight truncate">
                    New Yoga Class Saturday
                    <span class="block text-[12px] text-gray-500 mt-1">18 May 2025</span>
                </div>
            </div>

            <div class="flex items-center py-3 gap-3">
                <div class="w-7 h-7 bg-lime-500/10 text-[#84cc16] rounded flex items-center justify-center text-[13px] flex-shrink-0"><i class="fa-solid fa-wrench"></i></div>
                <div class="text-[15px] text-slate-300 leading-tight truncate">
                    Maintenance Schedule
                    <span class="block text-[12px] text-gray-500 mt-1">17 May 2025</span>
                </div>
            </div>
        </div>
    </div>

    <!-- 4. MESSAGES CARD -->
    <div class="bg-[#111625] border border-[#1e2640] rounded-xl p-5 flex-1 min-w-[260px]">
        <div class="flex justify-between items-center mb-5">
            <h3 class="text-[17px] font-semibold tracking-wide text-white">Messages</h3>
            <a href="#" class="text-[13px] text-[#d4af37] font-medium hover:underline">View All</a>
        </div>

        <div class="space-y-1">
            <div class="flex items-center justify-between py-3 border-b border-[#1e2640]">
                <div class="flex items-center gap-3 truncate">
                    <div class="w-8 h-8 rounded-full bg-slate-700 flex items-center justify-center text-[12px] font-semibold text-white border border-gray-600 flex-shrink-0">AM</div>
                    <div class="flex flex-col truncate">
                        <span class="text-[15px] font-medium text-white truncate">Aisha M.</span>
                        <span class="text-[13px] text-gray-500 truncate">I have a question...</span>
                    </div>
                </div>
                <div class="flex flex-col items-end gap-1 pl-2 flex-shrink-0">
                    <span class="text-[12px] text-gray-500">10:20 AM</span>
                    <span class="bg-[#84cc16] text-black text-[11px] font-bold px-1.5 rounded-full min-w-[18px] text-center">2</span>
                </div>
            </div>

            <div class="flex items-center justify-between py-3 border-b border-[#1e2640]">
                <div class="flex items-center gap-3 truncate">
                    <div class="w-8 h-8 rounded-full bg-slate-700 flex items-center justify-center text-[12px] font-semibold text-white border border-gray-600 flex-shrink-0">MH</div>
                    <div class="flex flex-col truncate">
                        <span class="text-[15px] font-medium text-white truncate">Mohamed H.</span>
                        <span class="text-[13px] text-gray-500 truncate">Next payment due?</span>
                    </div>
                </div>
                <div class="flex flex-col items-end gap-1 pl-2 flex-shrink-0">
                    <span class="text-[12px] text-gray-500">09:15 AM</span>
                    <span class="bg-[#84cc16] text-black text-[11px] font-bold px-1.5 rounded-full min-w-[18px] text-center">1</span>
                </div>
            </div>

            <div class="flex items-center justify-between py-3">
                <div class="flex items-center gap-3 truncate">
                    <div class="w-8 h-8 rounded-full bg-slate-700 flex items-center justify-center text-[12px] font-semibold text-white border border-gray-600 flex-shrink-0">OY</div>
                    <div class="flex flex-col truncate">
                        <span class="text-[15px] font-medium text-white truncate">Omar Yusuf</span>
                        <span class="text-[13px] text-gray-500 truncate">Thanks for reminder!</span>
                    </div>
                </div>
                <div class="flex flex-col items-end pl-2 flex-shrink-0">
                    <span class="text-[12px] text-gray-500">Yest.</span>
                </div>
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

    <!-- Buttons -->
    <div class="grid grid-cols-2 sm:grid-cols-3 md:grid-cols-5 lg:grid-cols-9 gap-3 p-4">

        <!-- Add Member -->
        <div class="h-20 bg-[#181d22] border border-gray-700 rounded-md hover:bg-[#20262d] hover:border-lime-400 transition-all duration-300 flex flex-col items-center justify-center cursor-pointer">
            <i class="fa-solid fa-user-plus text-lime-400 text-2xl mb-2"></i>
            <span class="text-[11px] text-gray-300">Add Member</span>
        </div>

        <!-- Add Trainer -->
        <div class="h-20 bg-[#181d22] border border-gray-700 rounded-md hover:bg-[#20262d] hover:border-lime-400 transition-all duration-300 flex flex-col items-center justify-center cursor-pointer">
            <i class="fa-solid fa-users text-lime-400 text-2xl mb-2"></i>
            <span class="text-[11px] text-gray-300">Add Trainer</span>
        </div>

        <!-- Create Membership -->
        <div class="h-20 bg-[#181d22] border border-gray-700 rounded-md hover:bg-[#20262d] hover:border-lime-400 transition-all duration-300 flex flex-col items-center justify-center cursor-pointer">
            <i class="fa-solid fa-crown text-lime-400 text-2xl mb-2"></i>
            <span class="text-[11px] text-gray-300">Create Membership</span>
        </div>

        <!-- Add Class -->
        <div class="h-20 bg-[#181d22] border border-gray-700 rounded-md hover:bg-[#20262d] hover:border-lime-400 transition-all duration-300 flex flex-col items-center justify-center cursor-pointer">
            <i class="fa-solid fa-calendar-plus text-lime-400 text-2xl mb-2"></i>
            <span class="text-[11px] text-gray-300">Add Class</span>
        </div>

        <!-- Add Payment -->
        <div class="h-20 bg-[#181d22] border border-gray-700 rounded-md hover:bg-[#20262d] hover:border-lime-400 transition-all duration-300 flex flex-col items-center justify-center cursor-pointer">
            <i class="fa-solid fa-credit-card text-lime-400 text-2xl mb-2"></i>
            <span class="text-[11px] text-gray-300">Add Payment</span>
        </div>

        <!-- Reservation -->
        <div class="h-20 bg-[#181d22] border border-gray-700 rounded-md hover:bg-[#20262d] hover:border-lime-400 transition-all duration-300 flex flex-col items-center justify-center cursor-pointer">
            <i class="fa-solid fa-calendar-check text-lime-400 text-2xl mb-2"></i>
            <span class="text-[11px] text-gray-300">Reservation</span>
        </div>

        <!-- New Notice -->
        <div class="h-20 bg-[#181d22] border border-gray-700 rounded-md hover:bg-[#20262d] hover:border-lime-400 transition-all duration-300 flex flex-col items-center justify-center cursor-pointer">
            <i class="fa-solid fa-note-sticky text-lime-400 text-2xl mb-2"></i>
            <span class="text-[11px] text-gray-300">New Notice</span>
        </div>

        <!-- Send Message -->
        <div class="h-20 bg-[#181d22] border border-gray-700 rounded-md hover:bg-[#20262d] hover:border-lime-400 transition-all duration-300 flex flex-col items-center justify-center cursor-pointer">
            <i class="fa-solid fa-message text-lime-400 text-2xl mb-2"></i>
            <span class="text-[11px] text-gray-300">Send Message</span>
        </div>

        <!-- Generate Report -->
        <div class="h-20 bg-[#181d22] border border-gray-700 rounded-md hover:bg-[#20262d] hover:border-lime-400 transition-all duration-300 flex flex-col items-center justify-center cursor-pointer">
            <i class="fa-solid fa-chart-column text-lime-400 text-2xl mb-2"></i>
            <span class="text-[11px] text-gray-300">Generate Report</span>
        </div>

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

                        ticks: { color: "#94A3B8" },

                        grid: { color: "#232B35" }

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
