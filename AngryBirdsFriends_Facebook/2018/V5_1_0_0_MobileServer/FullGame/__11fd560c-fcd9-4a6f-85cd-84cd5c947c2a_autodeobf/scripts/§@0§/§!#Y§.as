package §@0§
{
   import § ! §.b2Joint;
   import § "%§.b2Vec2;
   import §,!s§.b2Settings;
   import §6$8§.§#"E§;
   import §6$8§.§'!W§;
   import §6$8§.§]§;
   import §8"L§.§6!0§;
   import §8"L§.§8W§;
   import §8"L§.§8g§;
   import §8"L§.§9"T§;
   import §8"L§.§[t§;
   import §8§.§!#L§;
   import §8§.§4#l§;
   import §8§.§?F§;
   import §9$;§.Texture;
   import §;$3§.§5$>§;
   import §;$3§.§8=§;
   import §;$3§.§>f§;
   import §=§.§4§;
   import §=§.§>!o§;
   import §?"e§.Starling;
   import §]!6§.§6Y§;
   import §^"S§.Sprite;
   import §`"8§.§,#O§;
   import §`"8§.§34§;
   import §`"8§.§8$3§;
   import §`"8§.§`"X§;
   import flash.display.BitmapData;
   import flash.display.Stage;
   import flash.geom.Point;
   
   public class §!#Y§ extends §%!q§
   {
       
      
      protected var §]"v§:§0+§;
      
      protected var §5"t§:BitmapData;
      
      protected var §@"d§:Texture;
      
      public function §!#Y§(param1:Stage, param2:§8W§, param3:§'!W§, param4:§8=§)
      {
         super(param1,param2,param3,param4);
      }
      
      public function get §&"N§() : §[t§
      {
         return §<"a§ as §[t§;
      }
      
      override protected function initializeLevelSlingshot(param1:§>f§) : § !o§
      {
         return new §,"%§(this,param1,new Sprite());
      }
      
      override protected function initThemeGraphicsManager() : §8$3§
      {
         return new §,#O§(stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",mLevelManager,§[t§(§<"a§));
      }
      
      override protected function initThemeSoundsManager() : §8$3§
      {
         return new §,#O§(stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",mLevelManager,§[t§(§<"a§),false);
      }
      
      override protected function initCutSceneManager() : §8$3§
      {
         return new §,#O§(stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",mLevelManager,§[t§(§<"a§));
      }
      
      override protected function initLevelEngine(param1:§>f§) : void
      {
         var _loc2_:Number = param1.worldGravity;
         mLevelEngine = new §9"Q§(this,_loc2_);
      }
      
      override protected function initializeLevelBackground(param1:String, param2:Number, param3:§34§, param4:Number) : §>!o§
      {
         var _loc7_:§#"E§ = null;
         var _loc5_:§]§;
         if((_loc5_ = §5m§.getBackground(param1)) == null)
         {
            §6Y§.log("UNKNOWN LEVEL THEME! " + param1);
            param1 = §>f§.§="X§;
            _loc5_ = §5m§.getBackground(param1);
         }
         var _loc6_:§6!0§ = null;
         if(this.§&"N§)
         {
            _loc6_ = this.§&"N§.§"#§;
         }
         if(_loc5_ is §#"E§)
         {
            _loc7_ = _loc5_ as §#"E§;
            return this.§#"g§(_loc7_,param2,param3,_loc6_,param4,!Starling.§`"J§);
         }
         return super.initializeLevelBackground(param1,param2,param3,param4);
      }
      
      private function §#"g§(param1:§#"E§, param2:Number, param3:§34§, param4:§6!0§, param5:Number, param6:Boolean = true) : §4#4§
      {
         return new §4#4§(this,param1,param2,param3,param4,param5,param6);
      }
      
      override protected function initializeLevelObjectManager(param1:§>f§) : §!#L§
      {
         var _loc3_:§4#4§ = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc2_:String = §]§.§-k§;
         if(param1 is §5$>§)
         {
            _loc3_ = §"$2§ as §4#4§;
            if(_loc3_)
            {
               _loc4_ = _loc3_.§6!=§;
               _loc5_ = _loc3_.§;"a§;
               return new §4#l§(this,param1 as §5$>§,new Sprite(),_loc4_,_loc5_);
            }
            return new §4#l§(this,param1 as §5$>§,new Sprite(),_loc2_);
         }
         return super.initializeLevelObjectManager(param1);
      }
      
      override protected function getThemeGraphicsLoadList(param1:String) : Array
      {
         var _loc3_:§#"E§ = null;
         var _loc2_:§]§ = §5m§.getBackground(param1);
         if(_loc2_ is §#"E§)
         {
            _loc3_ = _loc2_ as §#"E§;
            return _loc3_.§6! §;
         }
         return null;
      }
      
      override protected function initializePhysicsConstants(param1:§>f§) : void
      {
         if(param1.hasGround)
         {
            super.initializePhysicsConstants(param1);
         }
         else
         {
            b2Settings.b2_linearSleepTolerance = b2Settings.§?#D§;
         }
      }
      
      override protected function levelInitialized() : void
      {
         super.levelInitialized();
         this.initializeAimingLine();
         this.stabilizeWorld();
      }
      
      protected function initializeAimingLine() : void
      {
         this.§5"t§ = new BitmapData(16,16,true,2298413056);
         this.§@"d§ = textureManager.getTextureFromBitmapData(this.§5"t§);
         this.§]"v§ = new §0+§(new Sprite(),this.§@"d§,§?F§.§9!O§ / 1000,§?F§.§^Z§);
         slingshot.aimingLineSprite.addChild(this.§]"v§.sprite);
      }
      
      protected function stabilizeWorld() : void
      {
         this.§^"^§(20,1000 / 30);
      }
      
      protected function §^"^§(param1:int, param2:Number) : void
      {
         var _loc3_:b2Vec2 = new b2Vec2();
         _loc3_.SetV(mLevelEngine.mWorld.GetGravity());
         if(this.§8#3§ && this.§8#3§.§8#&§)
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
            _loc4_ = _loc4_.§^"y§();
         }
         var _loc6_:int = 0;
         while(_loc6_ < param1)
         {
            mLevelEngine.mWorld.Step(param2,10,10);
            mLevelEngine.mWorld.ClearForces();
            if(_loc6_ == 0)
            {
               §"#[§.setCollisionsEnabled(false);
            }
            _loc6_++;
         }
         for each(_loc4_ in _loc5_)
         {
            _loc4_.EnableMotor(true);
         }
         mLevelEngine.mWorld.SetGravity(_loc3_);
         mLevelEngine.mWorld.SetWarmStarting(true);
         §"#[§.setCollisionsEnabled(true);
      }
      
      override public function clearLevel() : void
      {
         if(this.§@"d§)
         {
            textureManager.unregisterBitmapDataTexture(this.§@"d§);
            this.§@"d§ = null;
            this.§5"t§ = null;
         }
         if(this.§]"v§)
         {
            this.§]"v§.dispose();
            this.§]"v§ = null;
         }
         super.clearLevel();
      }
      
      override public function update(param1:Number, param2:Boolean) : Number
      {
         var _loc3_:Number = super.update(param1,param2);
         this.updateAimingLine();
         return _loc3_;
      }
      
      protected function updateAimingLine() : void
      {
         var _loc1_:String = null;
         var _loc2_:Point = null;
         var _loc3_:§9"T§ = null;
         var _loc4_:String = null;
         var _loc5_:§`"X§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(this.§]"v§ && slingshot)
         {
            _loc1_ = slingshot.getCurrentBirdType();
            if(_loc1_)
            {
               _loc3_ = §<"a§.getItem(_loc1_) as §9"T§;
               if(_loc3_)
               {
                  _loc4_ = _loc3_.§3$,§("aimingAidSprite");
                  if(_loc5_ = §4Z§.getTexture(_loc4_))
                  {
                     this.§]"v§.§;!=§(_loc5_.texture);
                  }
                  if(_loc3_.shape is §8g§)
                  {
                     _loc6_ = §8g§(_loc3_.shape).radius;
                     this.§]"v§.§!#Z§(_loc6_);
                  }
               }
            }
            _loc2_ = slingshot.getPosition();
            this.§]"v§.enabled = slingshot.mDragging && slingshot.canShootTheBird;
            if(this.§]"v§.enabled && _loc2_ != null && slingshot.mDragging)
            {
               _loc7_ = -Math.cos(slingshot.shootingAngle / (180 / Math.PI));
               _loc8_ = Math.sin(slingshot.shootingAngle / (180 / Math.PI));
               this.§]"v§.§<$7§(_loc2_,new Point(_loc7_,_loc8_),slingshot.getLaunchSpeed(),this.levelObjects);
            }
         }
      }
      
      protected function get §8#3§() : §4#l§
      {
         return levelObjects as §4#l§;
      }
   }
}
