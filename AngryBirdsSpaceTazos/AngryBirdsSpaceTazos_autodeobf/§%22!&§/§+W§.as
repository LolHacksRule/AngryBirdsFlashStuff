package §"!&§
{
   import §]">§.§ 6§;
   import §]">§.§"!s§;
   import §]">§.§%!E§;
   import §]">§.§1!0§;
   import §]">§.§5=§;
   
   public class §+W§ extends §0"?§
   {
      
      protected static const §&! §:String = "sprites";
       
      
      public function §+W§(param1:Object, param2:int, param3:§<s§, param4:§=C§, param5:int, param6:Boolean = false, param7:§="D§ = null)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
         §5"F§ = §0%§(§&! §,"score");
      }
      
      override public function getAnimationDefinitions() : Array
      {
         var _loc1_:Array = this.§8J§();
         var _loc2_:Array = this.§!"5§();
         if(_loc2_)
         {
            _loc1_.push([§"!s§.§7"3§,[["1",_loc2_[0],_loc2_[1]]]]);
         }
         return _loc1_;
      }
      
      protected function §8J§() : Array
      {
         var _loc1_:String = §0%§(§&! §,"default");
         var _loc2_:String = §0%§(§&! §,"blink");
         var _loc3_:String = §0%§(§&! §,"flying");
         var _loc4_:String = §0%§(§&! §,"yell");
         var _loc5_:String = §0%§(§&! §,"flying");
         var _loc6_:String = §0%§(§&! §,"collision");
         return [[§1!0§.§,!Y§,[["1",[_loc1_]]]],[§5=§.§[_§,[["1",[_loc2_]]]],[§ 6§.§>E§,[["1",[_loc3_]]]],[§5=§.§3P§,[["1",[_loc4_]]]],[§ 6§.§#D§,[["1",[_loc5_]]]],[§%!E§.§;O§,[["1",[_loc6_]]]]];
      }
      
      protected function §!"5§() : Array
      {
         var _loc3_:Array = null;
         var _loc4_:Array = null;
         var _loc5_:int = 0;
         var _loc6_:String = null;
         var _loc1_:Array = null;
         var _loc2_:int = §=c§(§&! §,"timer","length");
         if(_loc2_ > 0)
         {
            _loc3_ = [];
            _loc4_ = [];
            _loc1_ = [_loc3_,_loc4_];
            _loc5_ = 0;
            while(_loc5_ < _loc2_)
            {
               _loc6_ = §0%§(§&! §,"timer",_loc5_);
               _loc3_.push(_loc6_);
               _loc4_.push(70);
               _loc5_++;
            }
         }
         return _loc1_;
      }
   }
}
