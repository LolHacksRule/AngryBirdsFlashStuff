package §8"L§
{
   import §8§.§0"-§;
   import §8§.§4!y§;
   import §8§.§?$%§;
   import §8§.§?F§;
   
   public class §9"T§ extends §]$$§
   {
      
      protected static const §!"q§:String = "sprites";
       
      
      public function §9"T§(param1:Object, param2:int, param3:§?"b§, param4:§+"L§, param5:int, param6:Boolean = false, param7:§6!0§ = null)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
         §2"R§ = §3$,§(§!"q§,"score");
      }
      
      override public function getAnimationDefinitions() : Array
      {
         var _loc1_:Array = this.§#2§();
         var _loc2_:Array = this.§?S§();
         if(_loc2_)
         {
            _loc1_.push([§0"-§.§1$§,[["1",_loc2_[0],_loc2_[1]]]]);
         }
         return _loc1_;
      }
      
      protected function §#2§() : Array
      {
         var _loc1_:String = §3$,§(§!"q§,"default");
         var _loc2_:String = §3$,§(§!"q§,"blink");
         var _loc3_:String = §3$,§(§!"q§,"flying");
         var _loc4_:String = §3$,§(§!"q§,"yell");
         var _loc5_:String = §3$,§(§!"q§,"flying");
         var _loc6_:String = §3$,§(§!"q§,"collision");
         return [[§4!y§.§<#J§,[["1",[_loc1_]]]],[§4!y§.§7=§,[["1",[_loc2_]]]],[§?$%§.§#$+§,[["1",[_loc3_]]]],[§4!y§.§+#8§,[["1",[_loc4_]]]],[§?$%§.§%"C§,[["1",[_loc5_]]]],[§?F§.§-U§,[["1",[_loc6_]]]]];
      }
      
      protected function §?S§() : Array
      {
         var _loc3_:Array = null;
         var _loc4_:Array = null;
         var _loc5_:int = 0;
         var _loc6_:String = null;
         var _loc1_:Array = null;
         var _loc2_:int = §5$9§(§!"q§,"timer","length");
         if(_loc2_ > 0)
         {
            _loc3_ = [];
            _loc4_ = [];
            _loc1_ = [_loc3_,_loc4_];
            _loc5_ = 0;
            while(_loc5_ < _loc2_)
            {
               _loc6_ = §3$,§(§!"q§,"timer",_loc5_);
               _loc3_.push(_loc6_);
               _loc4_.push(70);
               _loc5_++;
            }
         }
         return _loc1_;
      }
   }
}
