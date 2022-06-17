package §-!!§
{
   import §!6§.Sprite;
   import §+#B§.§4"[§;
   import §8#t§.b2World;
   import §9$+§.§9"4§;
   import §=!2§.§%"T§;
   import §>"9§.§1"T§;
   import §>"9§.§[#%§;
   import §?§.§,Y§;
   import §?§.§]# §;
   import §^"[§.§2§;
   import §^"[§.§4!8§;
   
   public class § +§ extends §8!1§
   {
      
      private static var §!!z§:§4"[§ = new §4"[§();
       
      
      private var §8!C§:String;
      
      public function § +§(param1:String, param2:Sprite, param3:§4!8§, param4:b2World, param5:§,Y§, param6:§9"4§, param7:Number, param8:String = "", param9:int = 1)
      {
         this.§8!C§ = param1;
         var _loc10_:String = param5.itemName;
         var _loc11_:§4!8§;
         if(!(_loc11_ = §%"T§.§;`§.animationManager.getAnimation(_loc10_)))
         {
            _loc11_ = this.§8=§(param5,_loc10_);
         }
         super(param2,_loc11_,param4,param5,param6,param7);
      }
      
      private function §8=§(param1:§,Y§, param2:String) : §4!8§
      {
         var _loc3_:Array = param1.getAnimationDefinitions();
         var _loc4_:§2#6§;
         (_loc4_ = §%"T§.§;`§.animationManager).§<k§(param2,_loc3_);
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
         var _loc1_:String = (levelItem as §]# §).idleSound;
         var _loc2_:String = (levelItem as §]# §).soundChannel;
         if(_loc1_)
         {
            §[#%§.§!"0§(_loc1_,_loc2_ == null ? §[#%§.§0"f§ : _loc2_);
         }
      }
      
      override public function playFearSound() : §1"T§
      {
         var _loc1_:String = (levelItem as §]# §).fearSound;
         var _loc2_:String = (levelItem as §]# §).soundChannel;
         var _loc3_:§1"T§ = null;
         if(_loc1_)
         {
            _loc3_ = §[#%§.§!"0§(_loc1_,_loc2_ == null ? §[#%§.§0"f§ : _loc2_);
         }
         return _loc3_;
      }
   }
}
