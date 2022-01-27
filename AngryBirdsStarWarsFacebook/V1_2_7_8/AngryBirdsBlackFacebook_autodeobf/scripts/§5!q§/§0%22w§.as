package §5!q§
{
   import §+"f§.§+!0§;
   import §+"f§.§[_§;
   import §+"f§.§`!1§;
   import §,#+§.§7!m§;
   import §,#+§.§<U§;
   import §,#+§.§="l§;
   import §0"I§.§5!s§;
   import §1"s§.Sprite;
   import §2",§.b2Joint;
   import §3"$§.§"7§;
   import §3"$§.§&"0§;
   import §3"$§.§,"]§;
   import §3"$§.§]!h§;
   import §6"R§.§"!n§;
   import §6"R§.§4_§;
   import §6"R§.§super§;
   import §7!S§.§ !x§;
   import §7!S§.§>"-§;
   import §9!!§.§=!S§;
   import §9!s§.b2Settings;
   import §<"L§.Texture;
   import §>P§.§!!O§;
   import §>P§.§&"§;
   import §>P§.§3t§;
   import §>P§.§5"3§;
   import §>P§.§?[§;
   import §^>§.b2Vec2;
   import flash.display.BitmapData;
   import flash.display.Stage;
   import flash.geom.Point;
   
   public class §0"w§ extends §3"X§
   {
       
      
      protected var §;!^§:§9s§;
      
      protected var §`!<§:BitmapData;
      
      protected var §<"C§:Texture;
      
      public function §0"w§(param1:Stage, param2:§!!O§, param3:§+!0§, param4:§7!m§)
      {
         super(param1,param2,param3,param4);
      }
      
      public function get §4#7§() : §5"3§
      {
         return §#"§ as §5"3§;
      }
      
      override protected function initializeLevelSlingshot(param1:§<U§) : §-R§
      {
         return new §7#,§(this,param1,new Sprite());
      }
      
      override protected function initThemeGraphicsManager() : §"7§
      {
         return new §,"]§(stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",§ !p§,§5"3§(§#"§));
      }
      
      override protected function initThemeSoundsManager() : §"7§
      {
         return new §,"]§(stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",§ !p§,§5"3§(§#"§),false);
      }
      
      override protected function initCutSceneManager() : §"7§
      {
         return new §,"]§(stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",§ !p§,§5"3§(§#"§));
      }
      
      override protected function initLevelEngine(param1:§<U§) : void
      {
         var _loc2_:Number = param1.worldGravity;
         mLevelEngine = new §]!i§(this,_loc2_);
      }
      
      override protected function initializeLevelBackground(param1:String, param2:Number, param3:§&"0§, param4:Number) : §>"-§
      {
         var _loc7_:§`!1§ = null;
         var _loc5_:§[_§;
         if((_loc5_ = § G§.getBackground(param1)) == null)
         {
            §5!s§.log("UNKNOWN LEVEL THEME! " + param1);
            param1 = §<U§.§[q§;
            _loc5_ = § G§.getBackground(param1);
         }
         var _loc6_:§?[§ = null;
         if(this.§4#7§)
         {
            _loc6_ = this.§4#7§.soundManager;
         }
         if(_loc5_ is §`!1§)
         {
            _loc7_ = _loc5_ as §`!1§;
            return this.§<!H§(_loc7_,param2,param3,_loc6_,param4,!§=!S§.§&!n§);
         }
         return super.initializeLevelBackground(param1,param2,param3,param4);
      }
      
      private function §<!H§(param1:§`!1§, param2:Number, param3:§&"0§, param4:§?[§, param5:Number, param6:Boolean = true) : § !x§
      {
         return new § !x§(param1,param2,param3,param4,param5,param6);
      }
      
      override protected function initializeLevelObjectManager(param1:§<U§) : §super§
      {
         var _loc3_:§ !x§ = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc2_:String = §[_§.§+!3§;
         if(param1 is §="l§)
         {
            _loc3_ = §!A§ as § !x§;
            if(_loc3_)
            {
               _loc4_ = _loc3_.§-!2§;
               _loc5_ = _loc3_.§]j§;
               return new §"!n§(this,param1 as §="l§,new Sprite(),_loc4_,_loc5_);
            }
            return new §"!n§(this,param1 as §="l§,new Sprite(),_loc2_);
         }
         return super.initializeLevelObjectManager(param1);
      }
      
      override protected function getThemeGraphicsLoadList(param1:String) : Array
      {
         var _loc3_:§`!1§ = null;
         var _loc2_:§[_§ = § G§.getBackground(param1);
         if(_loc2_ is §`!1§)
         {
            _loc3_ = _loc2_ as §`!1§;
            return _loc3_.§#"H§;
         }
         return null;
      }
      
      override protected function initializePhysicsConstants(param1:§<U§) : void
      {
         if(param1.hasGround)
         {
            super.initializePhysicsConstants(param1);
         }
         else
         {
            b2Settings.b2_linearSleepTolerance = b2Settings.§0"a§;
         }
      }
      
      override protected function levelInitialized() : void
      {
         super.levelInitialized();
         this.§%"R§();
         this.§<"a§();
      }
      
      protected function §%"R§() : void
      {
         this.§`!<§ = new BitmapData(16,16,true,2298413056);
         this.§<"C§ = textureManager.getTextureFromBitmapData(this.§`!<§);
         this.§;!^§ = new §9s§(new Sprite(),this.§<"C§,§4_§.§5"X§ / 1000,§4_§.§1"d§);
         slingshot.aimingLineSprite.addChild(this.§;!^§.sprite);
      }
      
      protected function §<"a§() : void
      {
         this.§2"?§(20,1000 / 30);
      }
      
      protected function §2"?§(param1:int, param2:Number) : void
      {
         var _loc3_:b2Vec2 = new b2Vec2();
         _loc3_.SetV(mLevelEngine.mWorld.GetGravity());
         if(this.§0#2§ && this.§0#2§.§[H§)
         {
            mLevelEngine.mWorld.SetGravity(new b2Vec2(0,0));
         }
         else
         {
            mLevelEngine.mWorld.SetGravity(new b2Vec2(_loc3_.x / 10,_loc3_.y / 10));
         }
         var _loc4_:b2Joint = mLevelEngine.mWorld.GetJointList();
         var _loc5_:Vector.<b2Joint> = new Vector.<b2Joint>();
         while(_loc4_)
         {
            if(_loc4_.IsMotorEnabled())
            {
               _loc5_.push(_loc4_);
               _loc4_.EnableMotor(false);
            }
            _loc4_ = _loc4_.§=!&§();
         }
         var _loc6_:int = 0;
         while(_loc6_ < param1)
         {
            mLevelEngine.mWorld.Step(param2,10,10);
            mLevelEngine.mWorld.ClearForces();
            if(_loc6_ == 0)
            {
               §^"8§.setCollisionsEnabled(false);
            }
            _loc6_++;
         }
         for each(_loc4_ in _loc5_)
         {
            _loc4_.EnableMotor(true);
         }
         mLevelEngine.mWorld.SetGravity(_loc3_);
         mLevelEngine.mWorld.SetWarmStarting(true);
         §^"8§.setCollisionsEnabled(true);
      }
      
      override public function clearLevel() : void
      {
         if(this.§<"C§)
         {
            textureManager.unregisterBitmapDataTexture(this.§<"C§);
            this.§<"C§ = null;
            this.§`!<§ = null;
         }
         if(this.§;!^§)
         {
            this.§;!^§.dispose();
            this.§;!^§ = null;
         }
         super.clearLevel();
      }
      
      override public function update(param1:Number, param2:Boolean) : Number
      {
         var _loc3_:Number = super.update(param1,param2);
         this.§5!d§();
         return _loc3_;
      }
      
      protected function §5!d§() : void
      {
         var _loc1_:String = null;
         var _loc2_:Point = null;
         var _loc3_:§&"§ = null;
         var _loc4_:String = null;
         var _loc5_:§]!h§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(this.§;!^§ && slingshot)
         {
            _loc1_ = slingshot.getCurrentBirdType();
            if(_loc1_)
            {
               _loc3_ = §#"§.getItem(_loc1_) as §&"§;
               if(_loc3_)
               {
                  _loc4_ = _loc3_.getProperty("aimingAidSprite");
                  if(_loc5_ = §-#7§.getTexture(_loc4_))
                  {
                     this.§;!^§.§]!%§(_loc5_.texture);
                  }
                  if(_loc3_.shape is §3t§)
                  {
                     _loc6_ = §3t§(_loc3_.shape).radius;
                     this.§;!^§.§9!v§(_loc6_);
                  }
               }
            }
            _loc2_ = slingshot.getPosition();
            this.§;!^§.enabled = slingshot.mDragging && slingshot.canShootTheBird;
            if(this.§;!^§.enabled && _loc2_ != null && slingshot.mDragging)
            {
               _loc7_ = -Math.cos(slingshot.shootingAngle / (180 / Math.PI));
               _loc8_ = Math.sin(slingshot.shootingAngle / (180 / Math.PI));
               this.§;!^§.§6"^§(_loc2_,new Point(_loc7_,_loc8_),slingshot.getLaunchSpeed(),this.levelObjects);
            }
         }
      }
      
      protected function get §0#2§() : §"!n§
      {
         return levelObjects as §"!n§;
      }
   }
}
