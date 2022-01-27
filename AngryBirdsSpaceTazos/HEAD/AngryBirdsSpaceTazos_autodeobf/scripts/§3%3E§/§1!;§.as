package §3>§
{
   import §9"!§.§!!H§;
   import §9"!§.§#K§;
   import §9"!§.§,K§;
   import §9"!§.§1!s§;
   import §9"!§.§^"3§;
   
   public class §1!;§ extends § !9§
   {
      
      protected static const §'"F§:String = "sprites";
       
      
      public function §1!;§(param1:Object, param2:int, param3:§!4§, param4:§=!Z§, param5:int, param6:Boolean = false, param7:§%5§ = null)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
         §#!J§ = §^"F§(§'"F§,"score");
      }
      
      override public function getAnimationDefinitions() : Array
      {
         var _loc1_:Array = this.§&X§();
         var _loc2_:Array = this.§#!?§();
         if(_loc2_)
         {
            _loc1_.push([§1!s§.§-"&§,[["1",_loc2_[0],_loc2_[1]]]]);
         }
         return _loc1_;
      }
      
      protected function §&X§() : Array
      {
         var _loc1_:String = §^"F§(§'"F§,"default");
         var _loc2_:String = §^"F§(§'"F§,"blink");
         var _loc3_:String = §^"F§(§'"F§,"flying");
         var _loc4_:String = §^"F§(§'"F§,"yell");
         var _loc5_:String = §^"F§(§'"F§,"flying");
         var _loc6_:String = §^"F§(§'"F§,"collision");
         return [[§^"3§.§4!Z§,[["1",[_loc1_]]]],[§,K§.§6!z§,[["1",[_loc2_]]]],[§!!H§.§+_§,[["1",[_loc3_]]]],[§,K§.§;!+§,[["1",[_loc4_]]]],[§!!H§.§&"&§,[["1",[_loc5_]]]],[§#K§.§6H§,[["1",[_loc6_]]]]];
      }
      
      protected function §#!?§() : Array
      {
         var _loc3_:Array = null;
         var _loc4_:Array = null;
         var _loc5_:int = 0;
         var _loc6_:String = null;
         var _loc1_:Array = null;
         var _loc2_:int = §,$§(§'"F§,"timer","length");
         if(_loc2_ > 0)
         {
            _loc3_ = [];
            _loc4_ = [];
            _loc1_ = [_loc3_,_loc4_];
            _loc5_ = 0;
            while(_loc5_ < _loc2_)
            {
               _loc6_ = §^"F§(§'"F§,"timer",_loc5_);
               _loc3_.push(_loc6_);
               _loc4_.push(70);
               _loc5_++;
            }
         }
         return _loc1_;
      }
   }
}
