package §`#C§
{
   import §[#a§.§"!R§;
   import §[#a§.§-k§;
   import §[#a§.§8$9§;
   import §[#a§.§="@§;
   
   public class §`$9§ extends §@"-§
   {
      
      protected static const §1!f§:String = "sprites";
       
      
      public function §`$9§(param1:Object, param2:int, param3:§^#A§, param4:§0!y§, param5:int, param6:Boolean = false, param7:§8!h§ = null)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
         §4"P§ = §1#c§(§1!f§,"score");
      }
      
      override public function getAnimationDefinitions() : Array
      {
         var _loc1_:Array = this.§-"C§();
         var _loc2_:Array = this.§+f§();
         if(_loc2_)
         {
            _loc1_.push([§8$9§.§@#4§,[["1",_loc2_[0],_loc2_[1]]]]);
         }
         return _loc1_;
      }
      
      protected function §-"C§() : Array
      {
         var _loc1_:String = §1#c§(§1!f§,"default");
         var _loc2_:String = §1#c§(§1!f§,"blink");
         var _loc3_:String = §1#c§(§1!f§,"flying");
         var _loc4_:String = §1#c§(§1!f§,"yell");
         var _loc5_:String = §1#c§(§1!f§,"flying");
         var _loc6_:String = §1#c§(§1!f§,"collision");
         return [[§="@§.§0!V§,[["1",[_loc1_]]]],[§="@§.§""8§,[["1",[_loc2_]]]],[§-k§.§'#;§,[["1",[_loc3_]]]],[§="@§.§[!k§,[["1",[_loc4_]]]],[§-k§.§?e§,[["1",[_loc5_]]]],[§"!R§.§<k§,[["1",[_loc6_]]]]];
      }
      
      protected function §+f§() : Array
      {
         var _loc3_:Array = null;
         var _loc4_:Array = null;
         var _loc5_:int = 0;
         var _loc6_:String = null;
         var _loc1_:Array = null;
         var _loc2_:int = §0"[§(§1!f§,"timer","length");
         if(_loc2_ > 0)
         {
            _loc3_ = [];
            _loc4_ = [];
            _loc1_ = [_loc3_,_loc4_];
            _loc5_ = 0;
            while(_loc5_ < _loc2_)
            {
               _loc6_ = §1#c§(§1!f§,"timer",_loc5_);
               _loc3_.push(_loc6_);
               _loc4_.push(70);
               _loc5_++;
            }
         }
         return _loc1_;
      }
   }
}
