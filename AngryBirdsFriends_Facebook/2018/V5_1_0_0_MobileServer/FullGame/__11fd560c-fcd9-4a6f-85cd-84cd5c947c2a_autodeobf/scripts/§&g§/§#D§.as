package §&g§
{
   public class §#D§
   {
      
      private static var §!c§:§#D§ = new §#D§();
      
      private static var §=!!§:Array = ["Use Power Potion to make Wingman even stronger!","The Blues are best at crashing glass!","Chuck breaks wood better than anyone!","Bomb beats stone, but can\'t handle wood!","Boomerang can be tricky - sometimes, a direct shot is best!","Use Wingman after flinging all your birds!","Jingle Sling adds a short-range scope to help you aim!","Use King Sling to improve damage and range!","Matilda drops an explosive egg and hits hard on her way out!","Use Wingman to smash levels and get amazing scores!","Bomb can be activated before OR after he hits!"];
      
      private static var §<!r§:Array = ["Use Inbox in the Sidebar to send free gifts to your friends!","Mystery gifts can hold Power-Ups and Bird Coins!","Get free Power-ups by inviting your friends to play!","Check back for special tournaments every month!","Slingshots are permanent - buy once, use forever!","Connect to Facebook to save progress between devices!","Reach higher League tiers to get even more epic rewards!","You cannot lose League rating until you reach Bronze tier.","Reach Diamond Tier in League and become a star player!","Go to League Options to edit your League Profile!"];
       
      
      public function §#D§()
      {
         super();
         if(§!c§)
         {
            throw new Error("TipsManager is singleton");
         }
      }
      
      public static function get §6!§() : §#D§
      {
         return §!c§;
      }
      
      public function §'6§() : String
      {
         return §=!!§[this.randRange(0,§=!!§.length - 1)];
      }
      
      public function §;"t§() : String
      {
         return §<!r§[this.randRange(0,§<!r§.length - 1)];
      }
      
      public function §'$?§(param1:int) : String
      {
         return §=!!§[param1];
      }
      
      public function get §;#<§() : int
      {
         return §=!!§.length;
      }
      
      private function randRange(param1:Number, param2:Number) : Number
      {
         return Math.floor(Math.random() * (param2 - param1 + 1)) + param1;
      }
   }
}
