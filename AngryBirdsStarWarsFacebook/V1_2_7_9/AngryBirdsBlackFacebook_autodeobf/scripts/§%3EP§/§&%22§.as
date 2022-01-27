package §>P§
{
   import §6"R§.§%!0§;
   import §6"R§.§4!w§;
   import §6"R§.§4_§;
   import §6"R§.§8E§;
   import §6"R§.§[!Z§;
   
   public class §&"§ extends §28§
   {
      
      protected static const §&"@§:String = "sprites";
       
      
      public function §&"§(param1:Object, param2:int, param3:§1C§, param4:§&s§, param5:int, param6:Boolean = false, param7:§?[§ = null)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
         §,p§ = getProperty(§&"@§,"score");
      }
      
      override public function getAnimationDefinitions() : Array
      {
         var _loc1_:Array = this.§!m§();
         var _loc2_:Array = this.§^"1§();
         if(_loc2_)
         {
            _loc1_.push([§8E§.§5!7§,[["1",_loc2_[0],_loc2_[1]]]]);
         }
         return _loc1_;
      }
      
      protected function §!m§() : Array
      {
         var _loc1_:String = getProperty(§&"@§,"default");
         var _loc2_:String = getProperty(§&"@§,"blink");
         var _loc3_:String = getProperty(§&"@§,"flying");
         var _loc4_:String = getProperty(§&"@§,"yell");
         var _loc5_:String = getProperty(§&"@§,"flying");
         var _loc6_:String = getProperty(§&"@§,"collision");
         return [[§4!w§.§-"§,[["1",[_loc1_]]]],[§[!Z§.§ !O§,[["1",[_loc2_]]]],[§%!0§.§4O§,[["1",[_loc3_]]]],[§[!Z§.§7!;§,[["1",[_loc4_]]]],[§%!0§.§4!?§,[["1",[_loc5_]]]],[§4_§.§9!b§,[["1",[_loc6_]]]]];
      }
      
      protected function §^"1§() : Array
      {
         var _loc3_:Array = null;
         var _loc4_:Array = null;
         var _loc5_:int = 0;
         var _loc6_:String = null;
         var _loc1_:Array = null;
         var _loc2_:int = getNumberProperty(§&"@§,"timer","length");
         if(_loc2_ > 0)
         {
            _loc3_ = [];
            _loc4_ = [];
            _loc1_ = [_loc3_,_loc4_];
            _loc5_ = 0;
            while(_loc5_ < _loc2_)
            {
               _loc6_ = getProperty(§&"@§,"timer",_loc5_);
               _loc3_.push(_loc6_);
               _loc4_.push(70);
               _loc5_++;
            }
         }
         return _loc1_;
      }
   }
}
