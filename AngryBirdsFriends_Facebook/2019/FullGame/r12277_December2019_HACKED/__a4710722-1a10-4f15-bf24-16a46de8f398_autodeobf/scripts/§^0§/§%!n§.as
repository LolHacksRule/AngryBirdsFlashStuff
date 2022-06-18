package §^0§
{
   import § "v§.§+o§;
   import § "v§.§4$4§;
   import §#Z§.Sprite;
   import §+!n§.§+!p§;
   import §-!j§.§-"8§;
   import §-!j§.§[#e§;
   import §2E§.§&#a§;
   import §3#h§.b2World;
   import §9#M§.§!!]§;
   import §9#M§.§,`§;
   import §@"v§.§@$<§;
   
   public class §%!n§ extends §0"C§
   {
      
      private static var §9">§:§&#a§ = new §&#a§();
       
      
      private var §`%§:String;
      
      public function §%!n§(param1:String, param2:Sprite, param3:§,`§, param4:b2World, param5:§-"8§, param6:§@$<§, param7:Number, param8:String = "", param9:int = 1)
      {
         this.§`%§ = param1;
         var _loc10_:String = param5.itemName;
         var _loc11_:§,`§;
         if(!(_loc11_ = §+!p§.§`?§.animationManager.getAnimation(_loc10_)))
         {
            _loc11_ = this.§@Y§(param5,_loc10_);
         }
         super(param2,_loc11_,param4,param5,param6,param7);
      }
      
      private function §@Y§(param1:§-"8§, param2:String) : §,`§
      {
         var _loc3_:Array = param1.getAnimationDefinitions();
         var _loc4_:§!!]§;
         (_loc4_ = §+!p§.§`?§.animationManager).§"!y§(param2,_loc3_);
         return _loc4_.getAnimation(param2);
      }
      
      override public function isTnt() : Boolean
      {
         var _loc1_:* = Boolean(super.isTnt());
         if(!_loc1_)
         {
            _loc1_ = itemName.indexOf("MISC_THEMED_EXPLOSIVE_") != -1;
         }
         return _loc1_;
      }
      
      override protected function playScreamSound() : void
      {
         var _loc1_:String = (levelItem as §[#e§).idleSound;
         var _loc2_:String = (levelItem as §[#e§).soundChannel;
         if(_loc1_)
         {
            §4$4§.§'"j§(_loc1_,_loc2_ == null ? §4$4§.§6!H§ : _loc2_);
         }
      }
      
      override public function playFearSound() : §+o§
      {
         var _loc1_:String = (levelItem as §[#e§).fearSound;
         var _loc2_:String = (levelItem as §[#e§).soundChannel;
         var _loc3_:§+o§ = null;
         if(_loc1_)
         {
            _loc3_ = §4$4§.§'"j§(_loc1_,_loc2_ == null ? §4$4§.§6!H§ : _loc2_);
         }
         return _loc3_;
      }
   }
}
