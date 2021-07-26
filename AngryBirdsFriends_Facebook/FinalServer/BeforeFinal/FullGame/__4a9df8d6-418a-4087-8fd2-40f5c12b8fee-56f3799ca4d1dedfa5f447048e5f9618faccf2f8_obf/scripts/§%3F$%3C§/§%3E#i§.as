package §?$<§
{
   import §6!3§.§,s§;
   import §6!3§.§-#B§;
   import §6!3§.§-8§;
   import §6!3§.§;!U§;
   
   public class §>#i§ extends §5!<§
   {
      
      protected static const §[#&§:String = "sprites";
       
      
      public function §>#i§(param1:Object, param2:int, param3:§;<§, param4:§9!V§, param5:int, param6:Boolean = false, param7:§^#1§ = null)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
         §;j§ = §]"S§(§[#&§,"score");
      }
      
      override public function getAnimationDefinitions() : Array
      {
         var _loc1_:Array = this.§-"Y§();
         var _loc2_:Array = this.§6$;§();
         if(_loc2_)
         {
            _loc1_.push([§-#B§.§@!I§,[["1",_loc2_[0],_loc2_[1]]]]);
         }
         return _loc1_;
      }
      
      protected function §-"Y§() : Array
      {
         var _loc1_:String = §]"S§(§[#&§,"default");
         var _loc2_:String = §]"S§(§[#&§,"blink");
         var _loc3_:String = §]"S§(§[#&§,"flying");
         var _loc4_:String = §]"S§(§[#&§,"yell");
         var _loc5_:String = §]"S§(§[#&§,"flying");
         var _loc6_:String = §]"S§(§[#&§,"collision");
         return [[§;!U§.§,#c§,[["1",[_loc1_]]]],[§;!U§.§;8§,[["1",[_loc2_]]]],[§,s§.§#!h§,[["1",[_loc3_]]]],[§;!U§.§<#M§,[["1",[_loc4_]]]],[§,s§.§!"3§,[["1",[_loc5_]]]],[§-8§.§%"q§,[["1",[_loc6_]]]]];
      }
      
      protected function §6$;§() : Array
      {
         var _loc3_:Array = null;
         var _loc4_:Array = null;
         var _loc5_:int = 0;
         var _loc6_:String = null;
         var _loc1_:Array = null;
         var _loc2_:int = §"$8§(§[#&§,"timer","length");
         if(_loc2_ > 0)
         {
            _loc3_ = [];
            _loc4_ = [];
            _loc1_ = [_loc3_,_loc4_];
            _loc5_ = 0;
            while(_loc5_ < _loc2_)
            {
               _loc6_ = §]"S§(§[#&§,"timer",_loc5_);
               _loc3_.push(_loc6_);
               _loc4_.push(70);
               _loc5_++;
            }
         }
         return _loc1_;
      }
   }
}
