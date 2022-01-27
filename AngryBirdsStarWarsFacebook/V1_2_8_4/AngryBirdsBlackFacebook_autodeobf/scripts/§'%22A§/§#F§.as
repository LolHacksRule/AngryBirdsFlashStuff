package §'"A§
{
   import §9"U§.§!!K§;
   import §9"U§.§,!c§;
   import §9"U§.§[!b§;
   
   public class §#F§
   {
      
      public static const §2!f§:String = "PowerUp";
      
      public static const § "v§:String = "Energy";
      
      public static const §9!Q§:String = "Level_Unlock";
      
      public static const §]-§:String = "unlimited";
       
      
      private var §%R§:int;
      
      private var §]!R§:String;
      
      private var §3!#§:Vector.<§#"G§>;
      
      public function §#F§(param1:String, param2:int = 0)
      {
         super();
         this.§]!R§ = param1;
         this.§%R§ = param2;
         this.§3!#§ = this.§-"S§();
      }
      
      public function get daysLeft() : int
      {
         return this.§%R§;
      }
      
      public function set daysLeft(param1:int) : void
      {
         this.§%R§ = param1;
      }
      
      public function get id() : String
      {
         return this.§]!R§;
      }
      
      public function get content() : Vector.<§#"G§>
      {
         return this.§3!#§.concat();
      }
      
      protected function §-"S§() : Vector.<§#"G§>
      {
         var _loc1_:Vector.<§#"G§> = new Vector.<§#"G§>(0);
         switch(this.§]!R§)
         {
            case §!!K§.§7!;§:
               _loc1_.push(new §#"G§(§2!f§,§[!b§.§9!m§,§]-§));
               _loc1_.push(new §#"G§(§ "v§,§,!c§.§%!e§,§]-§));
               _loc1_.push(new §#"G§(§9!Q§,"tournament_all_levels",§]-§));
         }
         return _loc1_;
      }
      
      public function toString() : String
      {
         return "[Subscription id:" + this.§]!R§ + ", daysLeft:" + this.§%R§ + "]";
      }
   }
}
