package §6!H§
{
   import §,"N§.§6"w§;
   import §,"N§.§<!9§;
   import §,"N§.§?v§;
   
   public class §9!!§
   {
      
      public static const §;"S§:String = "PowerUp";
      
      public static const §"!O§:String = "Energy";
      
      public static const §@#"§:String = "Level_Unlock";
      
      public static const §`!P§:String = "unlimited";
       
      
      private var §1"3§:int;
      
      private var §6##§:String;
      
      private var §3!S§:Vector.<§5!t§>;
      
      public function §9!!§(param1:String, param2:int = 0)
      {
         super();
         this.§6##§ = param1;
         this.§1"3§ = param2;
         this.§3!S§ = this.§58§();
      }
      
      public function get daysLeft() : int
      {
         return this.§1"3§;
      }
      
      public function set daysLeft(param1:int) : void
      {
         this.§1"3§ = param1;
      }
      
      public function get id() : String
      {
         return this.§6##§;
      }
      
      public function get content() : Vector.<§5!t§>
      {
         return this.§3!S§.concat();
      }
      
      protected function §58§() : Vector.<§5!t§>
      {
         var _loc1_:Vector.<§5!t§> = new Vector.<§5!t§>(0);
         switch(this.§6##§)
         {
            case §<!9§.§ v§:
               _loc1_.push(new §5!t§(§;"S§,§6"w§.§+!G§,§`!P§));
               _loc1_.push(new §5!t§(§"!O§,§?v§.§5"=§,§`!P§));
               _loc1_.push(new §5!t§(§@#"§,"tournament_all_levels",§`!P§));
         }
         return _loc1_;
      }
      
      public function toString() : String
      {
         return "[Subscription id:" + this.§6##§ + ", daysLeft:" + this.§1"3§ + "]";
      }
   }
}
