package §7"&§
{
   import §>!5§.§"7§;
   import §>!5§.§'#f§;
   import §>!5§.§4!Q§;
   import §>!5§.§^"9§;
   
   public class §"!U§ extends §;"&§
   {
      
      protected static const §6!H§:String = "sprites";
       
      
      public function §"!U§(param1:Object, param2:int, param3:§^"Q§, param4:§>"f§, param5:int, param6:Boolean = false, param7:§8"G§ = null)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
         §["%§ = §=#a§(§6!H§,"score");
      }
      
      override public function getAnimationDefinitions() : Array
      {
         var _loc1_:Array = this.§#u§();
         var _loc2_:Array = this.§3I§();
         if(_loc2_)
         {
            _loc1_.push([§'#f§.§,!#§,[["1",_loc2_[0],_loc2_[1]]]]);
         }
         return _loc1_;
      }
      
      protected function §#u§() : Array
      {
         var _loc1_:String = §=#a§(§6!H§,"default");
         var _loc2_:String = §=#a§(§6!H§,"blink");
         var _loc3_:String = §=#a§(§6!H§,"flying");
         var _loc4_:String = §=#a§(§6!H§,"yell");
         var _loc5_:String = §=#a§(§6!H§,"flying");
         var _loc6_:String = §=#a§(§6!H§,"collision");
         return [[§^"9§.§5!G§,[["1",[_loc1_]]]],[§^"9§.§2"W§,[["1",[_loc2_]]]],[§"7§.§?#r§,[["1",[_loc3_]]]],[§^"9§.§'$"§,[["1",[_loc4_]]]],[§"7§.§@$2§,[["1",[_loc5_]]]],[§4!Q§.§&!%§,[["1",[_loc6_]]]]];
      }
      
      protected function §3I§() : Array
      {
         var _loc3_:Array = null;
         var _loc4_:Array = null;
         var _loc5_:int = 0;
         var _loc6_:String = null;
         var _loc1_:Array = null;
         var _loc2_:int = §6-§(§6!H§,"timer","length");
         if(_loc2_ > 0)
         {
            _loc3_ = [];
            _loc4_ = [];
            _loc1_ = [_loc3_,_loc4_];
            _loc5_ = 0;
            while(_loc5_ < _loc2_)
            {
               _loc6_ = §=#a§(§6!H§,"timer",_loc5_);
               _loc3_.push(_loc6_);
               _loc4_.push(70);
               _loc5_++;
            }
         }
         return _loc1_;
      }
   }
}
