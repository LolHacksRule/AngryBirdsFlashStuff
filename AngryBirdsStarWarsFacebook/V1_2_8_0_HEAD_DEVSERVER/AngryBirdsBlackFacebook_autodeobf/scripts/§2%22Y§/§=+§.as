package §2"Y§
{
   import §7P§.§&#=§;
   import §7P§.§&l§;
   import §7P§.§3!y§;
   import §7P§.§?"N§;
   import §7P§.§^#$§;
   
   public class §=+§ extends §,",§
   {
      
      protected static const §3#P§:String = "sprites";
       
      
      public function §=+§(param1:Object, param2:int, param3:§&!x§, param4:§'#2§, param5:int, param6:Boolean = false, param7:§%"3§ = null)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
         §4#L§ = getProperty(§3#P§,"score");
      }
      
      override public function getAnimationDefinitions() : Array
      {
         var _loc1_:Array = this.§6!p§();
         var _loc2_:Array = this.§1#Y§();
         if(_loc2_)
         {
            _loc1_.push([§&l§.§;#0§,[["1",_loc2_[0],_loc2_[1]]]]);
         }
         return _loc1_;
      }
      
      protected function §6!p§() : Array
      {
         var _loc1_:String = getProperty(§3#P§,"default");
         var _loc2_:String = getProperty(§3#P§,"blink");
         var _loc3_:String = getProperty(§3#P§,"flying");
         var _loc4_:String = getProperty(§3#P§,"yell");
         var _loc5_:String = getProperty(§3#P§,"flying");
         var _loc6_:String = getProperty(§3#P§,"collision");
         return [[§&#=§.§'%§,[["1",[_loc1_]]]],[§^#$§.§^?§,[["1",[_loc2_]]]],[§?"N§.§;!U§,[["1",[_loc3_]]]],[§^#$§.§3"=§,[["1",[_loc4_]]]],[§?"N§.§-"[§,[["1",[_loc5_]]]],[§3!y§.§4!v§,[["1",[_loc6_]]]]];
      }
      
      protected function §1#Y§() : Array
      {
         var _loc3_:Array = null;
         var _loc4_:Array = null;
         var _loc5_:int = 0;
         var _loc6_:String = null;
         var _loc1_:Array = null;
         var _loc2_:int = getNumberProperty(§3#P§,"timer","length");
         if(_loc2_ > 0)
         {
            _loc3_ = [];
            _loc4_ = [];
            _loc1_ = [_loc3_,_loc4_];
            _loc5_ = 0;
            while(_loc5_ < _loc2_)
            {
               _loc6_ = getProperty(§3#P§,"timer",_loc5_);
               _loc3_.push(_loc6_);
               _loc4_.push(70);
               _loc5_++;
            }
         }
         return _loc1_;
      }
   }
}
