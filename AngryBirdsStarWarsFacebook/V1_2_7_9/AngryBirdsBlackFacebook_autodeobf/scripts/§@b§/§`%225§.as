package §@b§
{
   import §`"8§.§#f§;
   import §`"8§.§@T§;
   import §`"8§.§^x§;
   
   public class §`"5§
   {
      
      public static const §'"_§:String = "PowerUp";
      
      public static const §="k§:String = "Energy";
      
      public static const §1!C§:String = "Level_Unlock";
      
      public static const §5l§:String = "unlimited";
       
      
      private var §>?§:int;
      
      private var §[7§:String;
      
      private var §^!i§:Vector.<§%"U§>;
      
      public function §`"5§(param1:String, param2:int = 0)
      {
         super();
         this.§[7§ = param1;
         this.§>?§ = param2;
         this.§^!i§ = this.§@"j§();
      }
      
      public function get daysLeft() : int
      {
         return this.§>?§;
      }
      
      public function set daysLeft(param1:int) : void
      {
         this.§>?§ = param1;
      }
      
      public function get id() : String
      {
         return this.§[7§;
      }
      
      public function get content() : Vector.<§%"U§>
      {
         return this.§^!i§.concat();
      }
      
      protected function §@"j§() : Vector.<§%"U§>
      {
         var _loc1_:Vector.<§%"U§> = new Vector.<§%"U§>(0);
         switch(this.§[7§)
         {
            case §^x§.§,!%§:
               _loc1_.push(new §%"U§(§'"_§,§#f§.§"X§,§5l§));
               _loc1_.push(new §%"U§(§="k§,§@T§.§`!z§,§5l§));
               _loc1_.push(new §%"U§(§1!C§,"tournament_all_levels",§5l§));
         }
         return _loc1_;
      }
      
      public function toString() : String
      {
         return "[Subscription id:" + this.§[7§ + ", daysLeft:" + this.§>?§ + "]";
      }
   }
}
