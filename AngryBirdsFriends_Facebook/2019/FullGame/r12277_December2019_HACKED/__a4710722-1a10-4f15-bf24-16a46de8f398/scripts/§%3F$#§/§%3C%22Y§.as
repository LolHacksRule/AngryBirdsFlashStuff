package §?$#§
{
   import §""4§.Texture;
   import §#!S§.§[!s§;
   import §#!S§.§^#b§;
   import §#!S§.§`"B§;
   import §#"3§.§4!h§;
   import §#Z§.Sprite;
   import §&§.Starling;
   import §-!j§.§#"+§;
   import §-!j§.§,"!§;
   import §-!j§.§,#V§;
   import §-!j§.§4"-§;
   import §-!j§.§>!g§;
   import §1#F§.b2Settings;
   import §5v§.b2Joint;
   import §6!R§.b2Vec2;
   import §8"h§.§>;§;
   import §8"h§.§]n§;
   import §9#M§.§%"=§;
   import §9#M§.§'!-§;
   import §9#M§.§7!n§;
   import §9#M§.§8§;
   import §?o§.§ !B§;
   import §?o§.§ ^§;
   import §?o§.§4#?§;
   import §^0§.§%"^§;
   import §^0§.§;$5§;
   import §^0§.§`j§;
   import flash.display.BitmapData;
   import flash.display.Stage;
   import flash.geom.Point;
   
   public class §<"Y§ extends §<d§
   {
       
      
      protected var §9"e§:§<m§;
      
      protected var §+$2§:BitmapData;
      
      protected var §>$!§:Texture;
      
      public function §<"Y§(param1:Stage, param2:§#"+§, param3:§[!s§, param4:§4#?§)
      {
         super(param1,param2,param3,param4);
      }
      
      public function get §@0§() : §,"!§
      {
         return §+#D§ as §,"!§;
      }
      
      override protected function initializeLevelSlingshot(param1:§ ^§) : §2!"§
      {
         return new §,#C§(this,param1,new Sprite());
      }
      
      override protected function initThemeGraphicsManager() : §8#0§
      {
         return new §7!n§(stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",mLevelManager,§,"!§(§+#D§));
      }
      
      override protected function initThemeSoundsManager() : §8#0§
      {
         return new §7!n§(stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",mLevelManager,§,"!§(§+#D§),false);
      }
      
      override protected function initCutSceneManager() : §8#0§
      {
         return new §7!n§(stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",mLevelManager,§,"!§(§+#D§));
      }
      
      override protected function initLevelEngine(param1:§ ^§) : void
      {
         var _loc2_:Number = param1.worldGravity;
         mLevelEngine = new §@#l§(this,_loc2_);
      }
      
      override protected function initializeLevelBackground(param1:String, param2:Number, param3:§%"=§, param4:Number) : §]n§
      {
         var _loc7_:§^#b§ = null;
         var _loc5_:§`"B§;
         if((_loc5_ = §8$;§.getBackground(param1)) == null)
         {
            §4!h§.log("UNKNOWN LEVEL THEME! " + param1);
            param1 = § ^§.§,!t§;
            _loc5_ = §8$;§.getBackground(param1);
         }
         var _loc6_:§4"-§ = null;
         if(this.§@0§)
         {
            _loc6_ = this.§@0§.soundManager;
         }
         if(_loc5_ is §^#b§)
         {
            _loc7_ = _loc5_ as §^#b§;
            return this.§?$8§(_loc7_,param2,param3,_loc6_,param4,!Starling.§," §);
         }
         return super.initializeLevelBackground(param1,param2,param3,param4);
      }
      
      private function §?$8§(param1:§^#b§, param2:Number, param3:§%"=§, param4:§4"-§, param5:Number, param6:Boolean = true) : §>;§
      {
         return new §>;§(this,param1,param2,param3,param4,param5,param6);
      }
      
      override protected function initializeLevelObjectManager(param1:§ ^§) : §%"^§
      {
         var _loc3_:§>;§ = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc2_:String = §`"B§.§8#f§;
         if(param1 is § !B§)
         {
            _loc3_ = §2"o§ as §>;§;
            if(_loc3_)
            {
               _loc4_ = _loc3_.§"#§;
               _loc5_ = _loc3_.§]Q§;
               return new §;$5§(this,param1 as § !B§,new Sprite(),_loc4_,_loc5_);
            }
            return new §;$5§(this,param1 as § !B§,new Sprite(),_loc2_);
         }
         return super.initializeLevelObjectManager(param1);
      }
      
      override protected function getThemeGraphicsLoadList(param1:String) : Array
      {
         var _loc3_:§^#b§ = null;
         var _loc2_:§`"B§ = §8$;§.getBackground(param1);
         if(_loc2_ is §^#b§)
         {
            _loc3_ = _loc2_ as §^#b§;
            return _loc3_.§&"M§;
         }
         return null;
      }
      
      override protected function initializePhysicsConstants(param1:§ ^§) : void
      {
         if(param1.hasGround)
         {
            super.initializePhysicsConstants(param1);
         }
         else
         {
            b2Settings.b2_linearSleepTolerance = b2Settings.§ #V§;
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
         this.§+$2§ = new BitmapData(16,16,true,2298413056);
         this.§>$!§ = textureManager.getTextureFromBitmapData(this.§+$2§);
         this.§9"e§ = new §<m§(new Sprite(),this.§>$!§,§`j§.§+#"§ / 1000,§`j§.§>#i§);
         slingshot.aimingLineSprite.addChild(this.§9"e§.sprite);
      }
      
      protected function stabilizeWorld() : void
      {
         this.§-#R§(20,1000 / 30);
      }
      
      protected function §-#R§(param1:int, param2:Number) : void
      {
         var _loc3_:b2Vec2 = new b2Vec2();
         _loc3_.SetV(mLevelEngine.mWorld.GetGravity());
         if(this.§+"J§ && this.§+"J§.§,m§)
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
            _loc4_ = _loc4_.§6"t§();
         }
         var _loc6_:int = 0;
         while(_loc6_ < param1)
         {
            mLevelEngine.mWorld.Step(param2,10,10);
            mLevelEngine.mWorld.ClearForces();
            if(_loc6_ == 0)
            {
               §>"6§.setCollisionsEnabled(false);
            }
            _loc6_++;
         }
         for each(_loc4_ in _loc5_)
         {
            _loc4_.EnableMotor(true);
         }
         mLevelEngine.mWorld.SetGravity(_loc3_);
         mLevelEngine.mWorld.SetWarmStarting(true);
         §>"6§.setCollisionsEnabled(true);
      }
      
      override public function clearLevel() : void
      {
         if(this.§>$!§)
         {
            textureManager.unregisterBitmapDataTexture(this.§>$!§);
            this.§>$!§ = null;
            this.§+$2§ = null;
         }
         if(this.§9"e§)
         {
            this.§9"e§.dispose();
            this.§9"e§ = null;
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
         var _loc3_:§>!g§ = null;
         var _loc4_:String = null;
         var _loc5_:§'!-§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(this.§9"e§ && slingshot)
         {
            _loc1_ = slingshot.getCurrentBirdType();
            if(_loc1_)
            {
               _loc3_ = §+#D§.getItem(_loc1_) as §>!g§;
               if(_loc3_)
               {
                  _loc4_ = _loc3_.§0'§("aimingAidSprite");
                  if(_loc5_ = §]#o§.getTexture(_loc4_))
                  {
                     this.§9"e§.§6#X§(_loc5_.texture);
                  }
                  if(_loc3_.shape is §,#V§)
                  {
                     _loc6_ = §,#V§(_loc3_.shape).radius;
                     this.§9"e§.§@!q§(_loc6_);
                  }
               }
            }
            _loc2_ = slingshot.getPosition();
            this.§9"e§.enabled = slingshot.mDragging && slingshot.canShootTheBird;
            if(this.§9"e§.enabled && _loc2_ != null && slingshot.mDragging)
            {
               _loc7_ = -Math.cos(slingshot.shootingAngle / (180 / Math.PI));
               _loc8_ = Math.sin(slingshot.shootingAngle / (180 / Math.PI));
               this.§9"e§.§`#+§(_loc2_,new Point(_loc7_,_loc8_),slingshot.getLaunchSpeed(),this.levelObjects);
            }
         }
      }
      
      protected function get §+"J§() : §;$5§
      {
         return levelObjects as §;$5§;
      }
   }
}
