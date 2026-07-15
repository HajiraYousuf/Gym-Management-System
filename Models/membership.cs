namespace GymManagementSystem.Models
{
    public class Membership
    {
        public int Id { get; set;}

        public string PlanName { get; set;}

        public decimal Price { get; set;}

        public int DurationMonths { get; set;}

    }
}