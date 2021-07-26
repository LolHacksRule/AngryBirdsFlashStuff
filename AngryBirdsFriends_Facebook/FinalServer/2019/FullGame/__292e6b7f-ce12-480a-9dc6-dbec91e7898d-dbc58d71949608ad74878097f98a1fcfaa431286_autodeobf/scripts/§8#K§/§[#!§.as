package §8#K§
{
   import §;!=§.§-!e§;
   import §;!=§.§4"4§;
   import §;!=§.§>"G§;
   import §;!=§.§[!k§;
   
   public class §[#!§ extends §<#`§
   {
      
      protected static const §4"U§:String = "sprites";
       
      
      public function §[#!§(param1:Object, param2:int, param3:§+#y§, param4:§8$-§, param5:int, param6:Boolean = false, param7:§ !q§ = null)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
         §6"G§ = §2!t§(§4"U§,"score");
      }
      
      override public function getAnimationDefinitions() : Array
      {
         var _loc1_:Array = this.§^"p§();
         var _loc2_:Array = this.§3W§();
         if(_loc2_)
         {
            _loc1_.push([§-!e§.§8#@§,[["1",_loc2_[0],_loc2_[1]]]]);
         }
         return _loc1_;
      }
      
      protected function §^"p§() : Array
      {
         var _loc1_:String = §2!t§(§4"U§,"default");
         var _loc2_:String = §2!t§(§4"U§,"blink");
         var _loc3_:String = §2!t§(§4"U§,"flying");
         var _loc4_:String = §2!t§(§4"U§,"yell");
         var _loc5_:String = §2!t§(§4"U§,"flying");
         var _loc6_:String = §2!t§(§4"U§,"collision");
         return [[§>"G§.§+$=§,[["1",[_loc1_]]]],[§>"G§.§-"e§,[["1",[_loc2_]]]],[§[!k§.§&!V§,[["1",[_loc3_]]]],[§>"G§.§"9§,[["1",[_loc4_]]]],[§[!k§.§5"-§,[["1",[_loc5_]]]],[§4"4§.§<#F§,[["1",[_loc6_]]]]];
      }
      
      protected function §3W§() : Array
      {
         var _loc3_:Array = null;
         var _loc4_:Array = null;
         var _loc5_:int = 0;
         var _loc6_:String = null;
         var _loc1_:Array = null;
         var _loc2_:int = §!! §(§4"U§,"timer","length");
         if(_loc2_ > 0)
         {
            _loc3_ = [];
            _loc4_ = [];
            _loc1_ = [_loc3_,_loc4_];
            _loc5_ = 0;
            while(_loc5_ < _loc2_)
            {
               _loc6_ = §2!t§(§4"U§,"timer",_loc5_);
               _loc3_.push(_loc6_);
               _loc4_.push(70);
               _loc5_++;
            }
         }
         return _loc1_;
      }
   }
}
