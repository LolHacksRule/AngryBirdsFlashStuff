package §>2§
{
   import §!!P§.§,!e§;
   import §!!P§.§?D§;
   import §"#z§.Texture;
   import §'!j§.Starling;
   import §'G§.§%"z§;
   import §'G§.§2#n§;
   import §'G§.§3$§;
   import §'G§.§3$B§;
   import §,"v§.§7!J§;
   import §,"v§.§;"n§;
   import §,"v§.§[!I§;
   import §-<§.§'"v§;
   import §-<§.§4[§;
   import §-<§.§<§;
   import §1#v§.§;!Y§;
   import §2_§.b2Joint;
   import §6!3§.§"#Z§;
   import §6!3§.§'!§;
   import §6!3§.§-8§;
   import §6#H§.Sprite;
   import §?!C§.b2Vec2;
   import §?$<§.§'!s§;
   import §?$<§.§2#W§;
   import §?$<§.§>#i§;
   import §?$<§.§]#A§;
   import §?$<§.§^§;
   import §?N§.b2Settings;
   import flash.display.BitmapData;
   import flash.display.Stage;
   import flash.geom.Point;
   
   public class §&" § extends §!6§
   {
       
      
      protected var §[!x§:§'!5§;
      
      protected var §8#G§:BitmapData;
      
      protected var §'f§:Texture;
      
      public function §&" §(param1:Stage, param2:§2#W§, param3:§4[§, param4:§;"n§)
      {
         super(param1,param2,param3,param4);
      }
      
      public function get §@#`§() : §]#A§
      {
         return §!#J§ as §]#A§;
      }
      
      override protected function initializeLevelSlingshot(param1:§7!J§) : §6#t§
      {
         return new §0"e§(this,param1,new Sprite());
      }
      
      override protected function initThemeGraphicsManager() : §2#n§
      {
         return new §%"z§(stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",mLevelManager,§]#A§(§!#J§));
      }
      
      override protected function initThemeSoundsManager() : §2#n§
      {
         return new §%"z§(stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",mLevelManager,§]#A§(§!#J§),false);
      }
      
      override protected function initCutSceneManager() : §2#n§
      {
         return new §%"z§(stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",mLevelManager,§]#A§(§!#J§));
      }
      
      override protected function initLevelEngine(param1:§7!J§) : void
      {
         var _loc2_:Number = param1.worldGravity;
         mLevelEngine = new §5!`§(this,_loc2_);
      }
      
      override protected function initializeLevelBackground(param1:String, param2:Number, param3:§3$§, param4:Number) : §,!e§
      {
         var _loc7_:§<#3§ = null;
         var _loc5_:§'"v§;
         if((_loc5_ = §]!9§.getBackground(param1)) == null)
         {
            §;!Y§.log("UNKNOWN LEVEL THEME! " + param1);
            param1 = §7!J§.§&[§;
            _loc5_ = §]!9§.getBackground(param1);
         }
         var _loc6_:§^#1§ = null;
         if(this.§@#`§)
         {
            _loc6_ = this.§@#`§.soundManager;
         }
         if(_loc5_ is §<#3§)
         {
            _loc7_ = _loc5_ as §<#3§;
            return this.§5$=§(_loc7_,param2,param3,_loc6_,param4,!Starling.§&"f§);
         }
         return super.initializeLevelBackground(param1,param2,param3,param4);
      }
      
      private function §5$=§(param1:§<#3§, param2:Number, param3:§3$§, param4:§^#1§, param5:Number, param6:Boolean = true) : §?D§
      {
         return new §?D§(this,param1,param2,param3,param4,param5,param6);
      }
      
      override protected function initializeLevelObjectManager(param1:§7!J§) : §'!§
      {
         var _loc3_:§?D§ = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc2_:String = §'"v§.§"!B§;
         if(param1 is §[!I§)
         {
            _loc3_ = §2$2§ as §?D§;
            if(_loc3_)
            {
               _loc4_ = _loc3_.§^#,§;
               _loc5_ = _loc3_.§!!Z§;
               return new §"#Z§(this,param1 as §[!I§,new Sprite(),_loc4_,_loc5_);
            }
            return new §"#Z§(this,param1 as §[!I§,new Sprite(),_loc2_);
         }
         return super.initializeLevelObjectManager(param1);
      }
      
      override protected function getThemeGraphicsLoadList(param1:String) : Array
      {
         var _loc3_:§<#3§ = null;
         var _loc2_:§'"v§ = §]!9§.getBackground(param1);
         if(_loc2_ is §<#3§)
         {
            _loc3_ = _loc2_ as §<#3§;
            return _loc3_.§2H§;
         }
         return null;
      }
      
      override protected function initializePhysicsConstants(param1:§7!J§) : void
      {
         if(param1.hasGround)
         {
            super.initializePhysicsConstants(param1);
         }
         else
         {
            b2Settings.b2_linearSleepTolerance = b2Settings.§7#T§;
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
         this.§8#G§ = new BitmapData(16,16,true,2298413056);
         this.§'f§ = textureManager.getTextureFromBitmapData(this.§8#G§);
         this.§[!x§ = new §'!5§(new Sprite(),this.§'f§,§-8§.§#!O§ / 1000,§-8§.§6#$§);
         slingshot.aimingLineSprite.addChild(this.§[!x§.sprite);
      }
      
      protected function stabilizeWorld() : void
      {
         this.§+$B§(20,1000 / 30);
      }
      
      protected function §+$B§(param1:int, param2:Number) : void
      {
         var _loc3_:b2Vec2 = new b2Vec2();
         _loc3_.SetV(mLevelEngine.mWorld.GetGravity());
         if(this.§[d§ && this.§[d§.§2"§)
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
            _loc4_ = _loc4_.§%$>§();
         }
         var _loc6_:int = 0;
         while(_loc6_ < param1)
         {
            mLevelEngine.mWorld.Step(param2,10,10);
            mLevelEngine.mWorld.ClearForces();
            if(_loc6_ == 0)
            {
               §@"]§.setCollisionsEnabled(false);
            }
            _loc6_++;
         }
         for each(_loc4_ in _loc5_)
         {
            _loc4_.EnableMotor(true);
         }
         mLevelEngine.mWorld.SetGravity(_loc3_);
         mLevelEngine.mWorld.SetWarmStarting(true);
         §@"]§.setCollisionsEnabled(true);
      }
      
      override public function clearLevel() : void
      {
         if(this.§'f§)
         {
            textureManager.unregisterBitmapDataTexture(this.§'f§);
            this.§'f§ = null;
            this.§8#G§ = null;
         }
         if(this.§[!x§)
         {
            this.§[!x§.dispose();
            this.§[!x§ = null;
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
         var _loc3_:§>#i§ = null;
         var _loc4_:String = null;
         var _loc5_:§3$B§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(this.§[!x§ && slingshot)
         {
            _loc1_ = slingshot.getCurrentBirdType();
            if(_loc1_)
            {
               _loc3_ = §!#J§.getItem(_loc1_) as §>#i§;
               if(_loc3_)
               {
                  _loc4_ = _loc3_.§]"S§("aimingAidSprite");
                  if(_loc5_ = §?#r§.getTexture(_loc4_))
                  {
                     this.§[!x§.§0#x§(_loc5_.texture);
                  }
                  if(_loc3_.shape is §'!s§)
                  {
                     _loc6_ = §'!s§(_loc3_.shape).radius;
                     this.§[!x§.§<!%§(_loc6_);
                  }
               }
            }
            _loc2_ = slingshot.getPosition();
            this.§[!x§.enabled = slingshot.mDragging && slingshot.canShootTheBird;
            if(this.§[!x§.enabled && _loc2_ != null && slingshot.mDragging)
            {
               _loc7_ = -Math.cos(slingshot.shootingAngle / (180 / Math.PI));
               _loc8_ = Math.sin(slingshot.shootingAngle / (180 / Math.PI));
               this.§[!x§.§""_§(_loc2_,new Point(_loc7_,_loc8_),slingshot.getLaunchSpeed(),this.levelObjects);
            }
         }
      }
      
      protected function get §[d§() : §"#Z§
      {
         return levelObjects as §"#Z§;
      }
   }
}
