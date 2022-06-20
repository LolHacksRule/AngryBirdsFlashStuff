package §<!w§
{
   public class §0"H§
   {
      
      private static var §%#b§:§0"H§ = new §0"H§();
      
      private static var §^#&§:Array = ["Use Power Potion to make Wingman even stronger!","The Blues are best at crashing glass!","Chuck breaks wood better than anyone!","Bomb beats stone, but can\'t handle wood!","Boomerang can be tricky - sometimes, a direct shot is best!","Use Wingman after flinging all your birds!","Jingle Sling adds a short-range scope to help you aim!","Use King Sling to improve damage and range!","Matilda drops an explosive egg and hits hard on her way out!","Use Wingman to smash levels and get amazing scores!","Bomb can be activated before OR after he hits!"];
      
      private static var §6$&§:Array = ["Use Inbox in the Sidebar to send free gifts to your friends!","Mystery gifts can hold Power-Ups and Bird Coins!","Get free Power-ups by inviting your friends to play!","Enjoy ALL-NEW levels every week in the Tournament!","Check back for special tournaments every month!","Slingshots are permanent - buy once, use forever!","Connect to Facebook to save progress between devices!","Reach higher League tiers to get even more epic rewards!","You cannot lose League rating until you reach Bronze tier.","Reach Diamond Tier in League and become a star player!","Go to League Options to edit your League Profile!"];
       
      
      public function §0"H§()
      {
         super();
         if(§%#b§)
         {
            throw new Error("TipsManager is singleton");
         }
      }
      
      public static function get § "D§() : §0"H§
      {
         return §%#b§;
      }
      
      public function §1#[§() : String
      {
         return §^#&§[this.randRange(0,§^#&§.length - 1)];
      }
      
      public function §]!F§() : String
      {
         return §6$&§[this.randRange(0,§6$&§.length - 1)];
      }
      
      public function § R§(param1:int) : String
      {
         return §^#&§[param1];
      }
      
      public function get §^!]§() : int
      {
         return §^#&§.length;
      }
      
      private function randRange(param1:Number, param2:Number) : Number
      {
         return Math.floor(Math.random() * (param2 - param1 + 1)) + param1;
      }
   }
}
