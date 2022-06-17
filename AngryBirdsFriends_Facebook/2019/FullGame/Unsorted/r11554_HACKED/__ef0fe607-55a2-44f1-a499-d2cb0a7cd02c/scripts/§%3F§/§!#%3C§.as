package §?§#3
{
   import §-!!§.§&$5§;
   import §-!!§.§5"W§;
   import §-!!§.§8"J§;
   import §-!!§.§?!V§;
   
   public class §!#<§ extends §@#K§
   {
      
      protected static const §=s§:String = "sprites";
       
      
      public function §!#<§(param1:Object, param2:int, param3:§7!$§, param4:§4I§, param5:int, param6:Boolean = false, param7:§`"N§ = null)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
         §>C§ = §3!i§(§=s§,"score");
      }
      
      override public function getAnimationDefinitions() : Array
      {
         var _loc1_:Array = this.§;X§();
         var _loc2_:Array = this.§8!x§();
         if(_loc2_)
         {
            _loc1_.push([§?!V§.§"!o§,[["1",_loc2_[0],_loc2_[1]]]]);
         }
         return _loc1_;
      }
      
      protected function §;X§() : Array
      {
         var _loc1_:String = §3!i§(§=s§,"default");
         var _loc2_:String = §3!i§(§=s§,"blink");
         var _loc3_:String = §3!i§(§=s§,"flying");
         var _loc4_:String = §3!i§(§=s§,"yell");
         var _loc5_:String = §3!i§(§=s§,"flying");
         var _loc6_:String = §3!i§(§=s§,"collision");
         return [[§8"J§.§>!N§,[["1",[_loc1_]]]],[§8"J§.§9#N§,[["1",[_loc2_]]]],[§5"W§.§1"F§,[["1",[_loc3_]]]],[§8"J§.§6$$§,[["1",[_loc4_]]]],[§5"W§.§4#Z§,[["1",[_loc5_]]]],[§&$5§.§'""§,[["1",[_loc6_]]]]];
      }
      
      protected function §8!x§() : Array
      {
         var _loc3_:Array = null;
         var _loc4_:Array = null;
         var _loc5_:int = 0;
         var _loc6_:String = null;
         var _loc1_:Array = null;
         var _loc2_:int = §[$7§(§=s§,"timer","length");
         if(_loc2_ > 0)
         {
            _loc3_ = [];
            _loc4_ = [];
            _loc1_ = [_loc3_,_loc4_];
            _loc5_ = 0;
            while(_loc5_ < _loc2_)
            {
               _loc6_ = §3!i§(§=s§,"timer",_loc5_);
               _loc3_.push(_loc6_);
               _loc4_.push(70);
               _loc5_++;
            }
         }
         return _loc1_;
      }
   }
}
