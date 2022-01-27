package §;"=§
{
   import §[,§.§#!v§;
   import §[,§.§'y§;
   import §[,§.§5,§;
   import §[,§.§>!G§;
   import §[,§.§?"7§;
   
   public class §[e§ extends §,]§
   {
      
      protected static const §]!H§:String = "sprites";
       
      
      public function §[e§(param1:Object, param2:int, param3:§"!=§, param4:§"!Y§, param5:int, param6:Boolean = false, param7:§-_§ = null)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
         §<!s§ = §[D§(§]!H§,"score");
      }
      
      override public function getAnimationDefinitions() : Array
      {
         var _loc1_:Array = this.§8u§();
         var _loc2_:Array = this.§1Q§();
         if(_loc2_)
         {
            _loc1_.push([§>!G§.§+a§,[["1",_loc2_[0],_loc2_[1]]]]);
         }
         return _loc1_;
      }
      
      protected function §8u§() : Array
      {
         var _loc1_:String = §[D§(§]!H§,"default");
         var _loc2_:String = §[D§(§]!H§,"blink");
         var _loc3_:String = §[D§(§]!H§,"flying");
         var _loc4_:String = §[D§(§]!H§,"yell");
         var _loc5_:String = §[D§(§]!H§,"flying");
         var _loc6_:String = §[D§(§]!H§,"collision");
         return [[§5,§.§+!d§,[["1",[_loc1_]]]],[§'y§.§`u§,[["1",[_loc2_]]]],[§#!v§.§3!Q§,[["1",[_loc3_]]]],[§'y§.§+_§,[["1",[_loc4_]]]],[§#!v§.§,E§,[["1",[_loc5_]]]],[§?"7§.§!C§,[["1",[_loc6_]]]]];
      }
      
      protected function §1Q§() : Array
      {
         var _loc3_:Array = null;
         var _loc4_:Array = null;
         var _loc5_:int = 0;
         var _loc6_:String = null;
         var _loc1_:Array = null;
         var _loc2_:int = §0f§(§]!H§,"timer","length");
         if(_loc2_ > 0)
         {
            _loc3_ = [];
            _loc4_ = [];
            _loc1_ = [_loc3_,_loc4_];
            _loc5_ = 0;
            while(_loc5_ < _loc2_)
            {
               _loc6_ = §[D§(§]!H§,"timer",_loc5_);
               _loc3_.push(_loc6_);
               _loc4_.push(70);
               _loc5_++;
            }
         }
         return _loc1_;
      }
   }
}
