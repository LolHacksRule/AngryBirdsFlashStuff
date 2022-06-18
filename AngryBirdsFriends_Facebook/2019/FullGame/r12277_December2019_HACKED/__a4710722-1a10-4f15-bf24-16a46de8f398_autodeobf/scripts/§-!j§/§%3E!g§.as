package §-!j§
{
   import §^0§.§2!`§;
   import §^0§.§=Q§;
   import §^0§.§[# §;
   import §^0§.§`j§;
   
   public class §>!g§ extends §'$#§
   {
      
      protected static const §8#e§:String = "sprites";
       
      
      public function §>!g§(param1:Object, param2:int, param3:§5!,§, param4:§&!@§, param5:int, param6:Boolean = false, param7:§4"-§ = null)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
         §,"P§ = §0'§(§8#e§,"score");
      }
      
      override public function getAnimationDefinitions() : Array
      {
         var _loc1_:Array = this.§&"Z§();
         var _loc2_:Array = this.§""e§();
         if(_loc2_)
         {
            _loc1_.push([§2!`§.§;#M§,[["1",_loc2_[0],_loc2_[1]]]]);
         }
         return _loc1_;
      }
      
      protected function §&"Z§() : Array
      {
         var _loc1_:String = §0'§(§8#e§,"default");
         var _loc2_:String = §0'§(§8#e§,"blink");
         var _loc3_:String = §0'§(§8#e§,"flying");
         var _loc4_:String = §0'§(§8#e§,"yell");
         var _loc5_:String = §0'§(§8#e§,"flying");
         var _loc6_:String = §0'§(§8#e§,"collision");
         return [[§=Q§.§6!t§,[["1",[_loc1_]]]],[§=Q§.§%x§,[["1",[_loc2_]]]],[§[# §.§]"$§,[["1",[_loc3_]]]],[§=Q§.§7"Y§,[["1",[_loc4_]]]],[§[# §.§,"U§,[["1",[_loc5_]]]],[§`j§.§'#?§,[["1",[_loc6_]]]]];
      }
      
      protected function §""e§() : Array
      {
         var _loc3_:Array = null;
         var _loc4_:Array = null;
         var _loc5_:int = 0;
         var _loc6_:String = null;
         var _loc1_:Array = null;
         var _loc2_:int = §6`§(§8#e§,"timer","length");
         if(_loc2_ > 0)
         {
            _loc3_ = [];
            _loc4_ = [];
            _loc1_ = [_loc3_,_loc4_];
            _loc5_ = 0;
            while(_loc5_ < _loc2_)
            {
               _loc6_ = §0'§(§8#e§,"timer",_loc5_);
               _loc3_.push(_loc6_);
               _loc4_.push(70);
               _loc5_++;
            }
         }
         return _loc1_;
      }
   }
}
