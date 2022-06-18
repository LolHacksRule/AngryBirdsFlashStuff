package §9s§
{
   import §!!,§.§7l§;
   import §!!,§.§^!0§;
   import §!D§.§0!M§;
   import §!D§.§5O§;
   import §#!@§.Sprite;
   import §2u§.§!!§;
   import §2u§.§1@§;
   import §6Z§.§"!;§;
   import §6Z§.§'?§;
   import §@!+§.§+_§;
   import §[v§.§&U§;
   import §[v§.§0&§;
   import §[v§.§1!2§;
   import §[v§.§7e§;
   import flash.display.Stage;
   
   public class §7R§ extends §^9§
   {
       
      
      private var §`!"§:Stage;
      
      public function §7R§(param1:Stage)
      {
         this.§`!"§ = param1;
         super(param1);
      }
      
      override protected function initThemeGraphicsManager() : §&U§
      {
         return new §&U§(this.§`!"§.loaderInfo.parameters.assetsUrl || "",this.§`!"§.loaderInfo.parameters.buildNumber || "");
      }
      
      override public function get backgroundTextureManager() : §0&§
      {
         if(§"'§)
         {
            return §"'§.textureManager;
         }
         return null;
      }
      
      override protected function initAnimationManager(param1:§0&§) : §7e§
      {
         return new §1!2§(param1);
      }
      
      override protected function initLevelBackground(param1:String, param2:Number, param3:§0&§, param4:Number) : §1@§
      {
         if(param1 == "BACKGROUND_FB_MOUNTAINS")
         {
            return new §!!§(param1,param2,param3,param4);
         }
         return new §1@§(param1,param2,param3,param4);
      }
      
      override protected function initLevelSlingshot(param1:§"!;§) : §[!?§
      {
         return new §]Y§(this,param1,new Sprite());
      }
      
      override protected function initLevelObjectManager(param1:§"!;§) : §^!0§
      {
         return new §7l§(this,param1,new Sprite());
      }
      
      override protected function initLevelCamera(param1:§"!;§) : §+_§
      {
         var _loc2_:String = §'?§.§"t§;
         var _loc3_:Array = _loc2_.split("-");
         var _loc4_:int;
         if((_loc4_ = parseInt(_loc3_[0])) < 9 && _loc2_ != "3-2")
         {
            return new §+_§(this,param1,1.1);
         }
         return new §+_§(this,param1,1);
      }
      
      override protected function initParticleManager(param1:§7e§, param2:§0&§) : §5O§
      {
         return new §0!M§(param1,param2);
      }
   }
}
