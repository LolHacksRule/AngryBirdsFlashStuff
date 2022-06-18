package § !D§
{
   import §!6§.Sprite;
   import §""'§.Texture;
   import §"$=§.§'![§;
   import §"$=§.§=$&§;
   import §"$=§.§?#Y§;
   import §'!O§.§0"U§;
   import §'!O§.§>!Y§;
   import §'!O§.§@P§;
   import §-!!§.§&$5§;
   import §-!!§.§+§;
   import §-!!§.§7S§;
   import §0"=§.b2Joint;
   import §9#K§.§=#f§;
   import §<#S§.§1$3§;
   import §<#S§.§[!W§;
   import §?§.§!#<§;
   import §?§.§0F§;
   import §?§.§<"J§;
   import §?§.§?!e§;
   import §?§.§`"N§;
   import §[!3§.b2Settings;
   import §]"P§.Starling;
   import §^"[§.§&"-§;
   import §^"[§.§=!N§;
   import §^"[§.§=#;§;
   import §^"[§.§^!8§;
   import §`# §.b2Vec2;
   import flash.display.BitmapData;
   import flash.display.Stage;
   import flash.geom.Point;
   
   public class §0#I§ extends §'"u§
   {
       
      
      protected var §@b§:§8#D§;
      
      protected var §3L§:BitmapData;
      
      protected var §9#Z§:Texture;
      
      public function §0#I§(param1:Stage, param2:§<"J§, param3:§>!Y§, param4:§'![§)
      {
         super(param1,param2,param3,param4);
      }
      
      public function get §[!T§() : §?!e§
      {
         return §`!2§ as §?!e§;
      }
      
      override protected function initializeLevelSlingshot(param1:§=$&§) : §"b§
      {
         return new §#"b§(this,param1,new Sprite());
      }
      
      override protected function initThemeGraphicsManager() : §&"-§
      {
         return new §=!N§(stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",mLevelManager,§?!e§(§`!2§));
      }
      
      override protected function initThemeSoundsManager() : §&"-§
      {
         return new §=!N§(stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",mLevelManager,§?!e§(§`!2§),false);
      }
      
      override protected function initCutSceneManager() : §&"-§
      {
         return new §=!N§(stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",mLevelManager,§?!e§(§`!2§));
      }
      
      override protected function initLevelEngine(param1:§=$&§) : void
      {
         var _loc2_:Number = param1.worldGravity;
         mLevelEngine = new §<!A§(this,_loc2_);
      }
      
      override protected function initializeLevelBackground(param1:String, param2:Number, param3:§=#;§, param4:Number) : §[!W§
      {
         var _loc7_:§0"U§ = null;
         var _loc5_:§@P§;
         if((_loc5_ = §&"%§.getBackground(param1)) == null)
         {
            §=#f§.log("UNKNOWN LEVEL THEME! " + param1);
            param1 = §=$&§.§2"f§;
            _loc5_ = §&"%§.getBackground(param1);
         }
         var _loc6_:§`"N§ = null;
         if(this.§[!T§)
         {
            _loc6_ = this.§[!T§.§3!h§;
         }
         if(_loc5_ is §0"U§)
         {
            _loc7_ = _loc5_ as §0"U§;
            return this.§#"h§(_loc7_,param2,param3,_loc6_,param4,!Starling.§^$?§);
         }
         return super.initializeLevelBackground(param1,param2,param3,param4);
      }
      
      private function §#"h§(param1:§0"U§, param2:Number, param3:§=#;§, param4:§`"N§, param5:Number, param6:Boolean = true) : §1$3§
      {
         return new §1$3§(this,param1,param2,param3,param4,param5,param6);
      }
      
      override protected function initializeLevelObjectManager(param1:§=$&§) : §7S§
      {
         var _loc3_:§1$3§ = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc2_:String = §@P§.§-$0§;
         if(param1 is §?#Y§)
         {
            _loc3_ = §3!?§ as §1$3§;
            if(_loc3_)
            {
               _loc4_ = _loc3_.§%"§;
               _loc5_ = _loc3_.§=!b§;
               return new §+#9§(this,param1 as §?#Y§,new Sprite(),_loc4_,_loc5_);
            }
            return new §+#9§(this,param1 as §?#Y§,new Sprite(),_loc2_);
         }
         return super.initializeLevelObjectManager(param1);
      }
      
      override protected function getThemeGraphicsLoadList(param1:String) : Array
      {
         var _loc3_:§0"U§ = null;
         var _loc2_:§@P§ = §&"%§.getBackground(param1);
         if(_loc2_ is §0"U§)
         {
            _loc3_ = _loc2_ as §0"U§;
            return _loc3_.§[E§;
         }
         return null;
      }
      
      override protected function initializePhysicsConstants(param1:§=$&§) : void
      {
         if(param1.hasGround)
         {
            super.initializePhysicsConstants(param1);
         }
         else
         {
            b2Settings.b2_linearSleepTolerance = b2Settings.§1f§;
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
         this.§3L§ = new BitmapData(16,16,true,2298413056);
         this.§9#Z§ = textureManager.getTextureFromBitmapData(this.§3L§);
         this.§@b§ = new §8#D§(new Sprite(),this.§9#Z§,§&$5§.§!$D§ / 1000,§&$5§.§5"U§);
         slingshot.aimingLineSprite.addChild(this.§@b§.sprite);
      }
      
      protected function stabilizeWorld() : void
      {
         this.§]!W§(20,1000 / 30);
      }
      
      protected function §]!W§(param1:int, param2:Number) : void
      {
         var _loc3_:b2Vec2 = new b2Vec2();
         _loc3_.SetV(mLevelEngine.mWorld.GetGravity());
         if(this.§["x§ && this.§["x§.§##L§)
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
            _loc4_ = _loc4_.§+c§();
         }
         var _loc6_:int = 0;
         while(_loc6_ < param1)
         {
            mLevelEngine.mWorld.Step(param2,10,10);
            mLevelEngine.mWorld.ClearForces();
            if(_loc6_ == 0)
            {
               §]!'§.setCollisionsEnabled(false);
            }
            _loc6_++;
         }
         for each(_loc4_ in _loc5_)
         {
            _loc4_.EnableMotor(true);
         }
         mLevelEngine.mWorld.SetGravity(_loc3_);
         mLevelEngine.mWorld.SetWarmStarting(true);
         §]!'§.setCollisionsEnabled(true);
      }
      
      override public function clearLevel() : void
      {
         if(this.§9#Z§)
         {
            textureManager.unregisterBitmapDataTexture(this.§9#Z§);
            this.§9#Z§ = null;
            this.§3L§ = null;
         }
         if(this.§@b§)
         {
            this.§@b§.dispose();
            this.§@b§ = null;
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
         var _loc3_:§!#<§ = null;
         var _loc4_:String = null;
         var _loc5_:§^!8§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(this.§@b§ && slingshot)
         {
            _loc1_ = slingshot.getCurrentBirdType();
            if(_loc1_)
            {
               _loc3_ = §`!2§.getItem(_loc1_) as §!#<§;
               if(_loc3_)
               {
                  _loc4_ = _loc3_.§3!i§("aimingAidSprite");
                  if(_loc5_ = §2!b§.getTexture(_loc4_))
                  {
                     this.§@b§.§4H§(_loc5_.texture);
                  }
                  if(_loc3_.shape is §0F§)
                  {
                     _loc6_ = §0F§(_loc3_.shape).radius;
                     this.§@b§.§?!y§(_loc6_);
                  }
               }
            }
            _loc2_ = slingshot.getPosition();
            this.§@b§.enabled = slingshot.mDragging && slingshot.canShootTheBird;
            if(this.§@b§.enabled && _loc2_ != null && slingshot.mDragging)
            {
               _loc7_ = -Math.cos(slingshot.shootingAngle / (180 / Math.PI));
               _loc8_ = Math.sin(slingshot.shootingAngle / (180 / Math.PI));
               this.§@b§.§'"c§(_loc2_,new Point(_loc7_,_loc8_),slingshot.getLaunchSpeed(),this.levelObjects);
            }
         }
      }
      
      protected function get §["x§() : §+#9§
      {
         return levelObjects as §+#9§;
      }
   }
}
