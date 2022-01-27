package §6!M§
{
   import §5"D§.§"!h§;
   import §5"D§.§&!v§;
   import §5"D§.§1"G§;
   import §5"D§.§6!!§;
   import §5"D§.§9!-§;
   
   public class §9`§ extends §[M§
   {
      
      protected static const §<k§:String = "sprites";
       
      
      public function §9`§(param1:Object, param2:int, param3:§8!]§, param4:§=!P§, param5:int, param6:Boolean = false, param7:§=!T§ = null)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
         §+"D§ = §<"H§(§<k§,"score");
      }
      
      override public function getAnimationDefinitions() : Array
      {
         var _loc1_:Array = this.§=!§();
         var _loc2_:Array = this.§;%§();
         if(_loc2_)
         {
            _loc1_.push([§"!h§.§5d§,[["1",_loc2_[0],_loc2_[1]]]]);
         }
         return _loc1_;
      }
      
      protected function §=!§() : Array
      {
         var _loc1_:String = §<"H§(§<k§,"default");
         var _loc2_:String = §<"H§(§<k§,"blink");
         var _loc3_:String = §<"H§(§<k§,"flying");
         var _loc4_:String = §<"H§(§<k§,"yell");
         var _loc5_:String = §<"H§(§<k§,"flying");
         var _loc6_:String = §<"H§(§<k§,"collision");
         return [[§6!!§.§[!;§,[["1",[_loc1_]]]],[§&!v§.§1!u§,[["1",[_loc2_]]]],[§1"G§.§9!i§,[["1",[_loc3_]]]],[§&!v§.§^2§,[["1",[_loc4_]]]],[§1"G§.§^s§,[["1",[_loc5_]]]],[§9!-§.§ "9§,[["1",[_loc6_]]]]];
      }
      
      protected function §;%§() : Array
      {
         var _loc3_:Array = null;
         var _loc4_:Array = null;
         var _loc5_:int = 0;
         var _loc6_:String = null;
         var _loc1_:Array = null;
         var _loc2_:int = §2"@§(§<k§,"timer","length");
         if(_loc2_ > 0)
         {
            _loc3_ = [];
            _loc4_ = [];
            _loc1_ = [_loc3_,_loc4_];
            _loc5_ = 0;
            while(_loc5_ < _loc2_)
            {
               _loc6_ = §<"H§(§<k§,"timer",_loc5_);
               _loc3_.push(_loc6_);
               _loc4_.push(70);
               _loc5_++;
            }
         }
         return _loc1_;
      }
   }
}
