package §8§#8
{
   import §4"O§.b2World;
   import §8"L§.§4U§;
   import §8"L§.§`u§;
   import §;#D§.§3#U§;
   import §>M§.§["z§;
   import §@!M§.§!"p§;
   import §@!M§.§^#p§;
   import §^"S§.Sprite;
   import §`"8§.§0$2§;
   import §`"8§.§`#+§;
   import §`7§.§0t§;
   
   public class §>h§ extends §<#D§
   {
      
      private static var § !m§:§0t§ = new §0t§();
       
      
      private var §7!D§:String;
      
      public function §>h§(param1:String, param2:Sprite, param3:§0$2§, param4:b2World, param5:§4U§, param6:§["z§, param7:Number, param8:String = "", param9:int = 1)
      {
         this.§7!D§ = param1;
         var _loc10_:String = param5.itemName;
         var _loc11_:§0$2§;
         if(!(_loc11_ = §3#U§.§#$4§.animationManager.getAnimation(_loc10_)))
         {
            _loc11_ = this.§"h§(param5,_loc10_);
         }
         super(param2,_loc11_,param4,param5,param6,param7);
      }
      
      private function §"h§(param1:§4U§, param2:String) : §0$2§
      {
         var _loc3_:Array = param1.getAnimationDefinitions();
         var _loc4_:§`#+§;
         (_loc4_ = §3#U§.§#$4§.animationManager).§3"5§(param2,_loc3_);
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
         var _loc1_:String = (levelItem as §`u§).idleSound;
         var _loc2_:String = (levelItem as §`u§).soundChannel;
         if(_loc1_)
         {
            §!"p§.§%!R§(_loc1_,_loc2_ == null ? §!"p§.§^#@§ : _loc2_);
         }
      }
      
      override public function playFearSound() : §^#p§
      {
         var _loc1_:String = (levelItem as §`u§).fearSound;
         var _loc2_:String = (levelItem as §`u§).soundChannel;
         var _loc3_:§^#p§ = null;
         if(_loc1_)
         {
            _loc3_ = §!"p§.§%!R§(_loc1_,_loc2_ == null ? §!"p§.§^#@§ : _loc2_);
         }
         return _loc3_;
      }
   }
}
