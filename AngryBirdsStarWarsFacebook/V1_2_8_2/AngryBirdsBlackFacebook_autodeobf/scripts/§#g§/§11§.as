package §#g§
{
   import §!r§.§0N§;
   import §!r§.§3f§;
   import §!r§.§4"O§;
   import §!r§.§;!T§;
   import §!r§.§<"R§;
   
   public class §11§ extends §`"[§
   {
      
      protected static const §8";§:String = "sprites";
       
      
      public function §11§(param1:Object, param2:int, param3:§!+§, param4:§^i§, param5:int, param6:Boolean = false, param7:§?B§ = null)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
         §4#§ = getProperty(§8";§,"score");
      }
      
      override public function getAnimationDefinitions() : Array
      {
         var _loc1_:Array = this.§"!'§();
         var _loc2_:Array = this.§ !l§();
         if(_loc2_)
         {
            _loc1_.push([§3f§.§>"s§,[["1",_loc2_[0],_loc2_[1]]]]);
         }
         return _loc1_;
      }
      
      protected function §"!'§() : Array
      {
         var _loc1_:String = getProperty(§8";§,"default");
         var _loc2_:String = getProperty(§8";§,"blink");
         var _loc3_:String = getProperty(§8";§,"flying");
         var _loc4_:String = getProperty(§8";§,"yell");
         var _loc5_:String = getProperty(§8";§,"flying");
         var _loc6_:String = getProperty(§8";§,"collision");
         return [[§0N§.§'"T§,[["1",[_loc1_]]]],[§<"R§.§@#0§,[["1",[_loc2_]]]],[§;!T§.§@T§,[["1",[_loc3_]]]],[§<"R§.§ Q§,[["1",[_loc4_]]]],[§;!T§.§9z§,[["1",[_loc5_]]]],[§4"O§.§>W§,[["1",[_loc6_]]]]];
      }
      
      protected function § !l§() : Array
      {
         var _loc3_:Array = null;
         var _loc4_:Array = null;
         var _loc5_:int = 0;
         var _loc6_:String = null;
         var _loc1_:Array = null;
         var _loc2_:int = getNumberProperty(§8";§,"timer","length");
         if(_loc2_ > 0)
         {
            _loc3_ = [];
            _loc4_ = [];
            _loc1_ = [_loc3_,_loc4_];
            _loc5_ = 0;
            while(_loc5_ < _loc2_)
            {
               _loc6_ = getProperty(§8";§,"timer",_loc5_);
               _loc3_.push(_loc6_);
               _loc4_.push(70);
               _loc5_++;
            }
         }
         return _loc1_;
      }
   }
}
