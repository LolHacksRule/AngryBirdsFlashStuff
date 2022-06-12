package §0!2§
{
   import §#S§.§"W§;
   import §#S§.§+!;§;
   import §#S§.§?!?§;
   import §#S§.§@3§;
   import §+!F§.§1!D§;
   import §2!6§.§ !h§;
   import §2!6§.§[!0§;
   import §2X§.§[!@§;
   import §3!#§.§04§;
   import §3!#§.§<!g§;
   import §5!G§.§&2§;
   import §70§.§<!j§;
   import §9"+§.§=I§;
   import §9"+§.§?![§;
   import §9"=§.§3!p§;
   import §9"=§.§5>§;
   import §]!v§.Sprite;
   import §`!n§.§#!s§;
   import §`u§.§4]§;
   import §`u§.§5!-§;
   import flash.display.Stage;
   
   public class §9!F§ extends §5"L§
   {
       
      
      private var §0![§:Stage;
      
      private var §9"'§:§[!0§;
      
      private var §%!;§:Array;
      
      public function §9!F§(param1:Stage)
      {
         this.§0![§ = param1;
         super(param1);
      }
      
      public function §;!A§() : Array
      {
         if(this.§%!;§)
         {
            return this.§%!;§.concat();
         }
         return null;
      }
      
      public function §?"1§() : void
      {
         (§!x§ as §3t§).§;u§ = false;
      }
      
      public function §'9§() : int
      {
         var _loc1_:int = 0;
         if(this.§%!;§)
         {
            _loc1_ = this.§%!;§.length;
            if((§&2§.§],§ as §9!F§).§;!A§().indexOf(§ !h§.§36§.§5"5§) != -1)
            {
               _loc1_--;
            }
         }
         return _loc1_;
      }
      
      override public function addItemsToDisplayList() : void
      {
         if(§?![§.§-0§)
         {
            §#!P§(§1!U§.backgroundLayersSprite,false);
         }
         this.§?"1§();
         §#!P§(§65§.getGroupSprite(§3!p§.§0!t§),false);
         §#!P§(§65§.getGroupSprite(§3!p§.§"z§),true);
         §#!P§((§-!5§ as §<!g§).§,!m§,true);
         §#!P§(§65§.getGroupSprite(§3!p§.§31§),true);
         §#!P§(§-!5§.mainSprite,true);
         §#!P§(§!x§.sprite,true);
         §#!P§(§65§.getGroupSprite(§3!p§.PARTICLE_GROUP_GAME_EFFECTS),true);
         §#!P§(§1!U§.groundSprite,false);
         if(§?![§.§-0§)
         {
            §#!P§(§1!U§.foregroundLayersSprite,false);
         }
         §#!P§(§65§.getGroupSprite(§3!p§.§>!?§),true);
         §#!P§(§65§.getGroupSprite(§3!p§.§`! §),true);
      }
      
      public function §2W§(param1:String) : Boolean
      {
         if(!this.§%!;§)
         {
            return false;
         }
         return this.§%!;§.indexOf(param1) >= 0;
      }
      
      public function §2'§(param1:String) : void
      {
         if(!this.§%!;§)
         {
            this.§%!;§ = [];
         }
         this.§%!;§.push(param1);
      }
      
      override public function init(param1:§#!s§) : void
      {
         super.init(param1);
         this.§%!;§ = [];
         this.§9"'§ = new §[!0§();
      }
      
      override public function setController(param1:§<!j§) : void
      {
         super.setController(param1);
         if(param1 is §[!@§)
         {
            this.§9"'§.setController(param1 as §[!@§);
         }
      }
      
      override public function clearLevel() : void
      {
         super.clearLevel();
         if(this.§9"'§)
         {
            this.§9"'§.dispose();
            this.§9"'§ = null;
         }
      }
      
      override protected function updateWithTime(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : Number
      {
         this.§9"'§.run(param1);
         return super.updateWithTime(param1,param2,param3,param4);
      }
      
      override public function handleEngineUpdateStep(param1:Number) : void
      {
         super.handleEngineUpdateStep(param1);
         this.§9"'§.§4d§(param1);
      }
      
      override protected function initThemeGraphicsManager() : §"W§
      {
         return new §"W§(this.§0![§.loaderInfo.parameters.assetsUrl || "",this.§0![§.loaderInfo.parameters.buildNumber || "");
      }
      
      override protected function initThemeSoundsManager() : §"W§
      {
         return new §"W§(this.§0![§.loaderInfo.parameters.assetsUrl || "",this.§0![§.loaderInfo.parameters.buildNumber || "",false);
      }
      
      override protected function initCutSceneManager() : §"W§
      {
         return new §"W§(this.§0![§.loaderInfo.parameters.assetsUrl || "",this.§0![§.loaderInfo.parameters.buildNumber || "");
      }
      
      override public function get backgroundTextureManager() : §?!?§
      {
         if(§`!t§)
         {
            return §`!t§.textureManager;
         }
         return null;
      }
      
      override protected function initAnimationManager(param1:§?!?§) : §+!;§
      {
         return new §@3§(param1);
      }
      
      override protected function initLevelBackground(param1:String, param2:Number, param3:§?!?§, param4:Number) : §?![§
      {
         if(param1 == "BACKGROUND_FB_MOUNTAINS" && !§1!D§.§9"I§)
         {
            return new §=I§(param1,param2,param3,param4);
         }
         return new §?![§(param1,param2,param3,param4);
      }
      
      override protected function initLevelSlingshot(param1:§#!s§) : §,!W§
      {
         return new §3t§(this,param1,new Sprite());
      }
      
      override protected function initLevelObjectManager(param1:§#!s§) : §04§
      {
         return new §<!g§(this,param1,new Sprite());
      }
      
      override protected function initParticleManager(param1:§+!;§, param2:§?!?§) : §3!p§
      {
         return new §5>§(param1,param2);
      }
      
      public function get §"#§() : §[!0§
      {
         return this.§9"'§;
      }
      
      override protected function initLevelCamera(param1:§#!s§) : §5!-§
      {
         return new §4]§(this,param1);
      }
   }
}
