package §"§#0
{
   import § "-§.§6!R§;
   import §!!k§.§'!j§;
   import §!!k§.§-!7§;
   import §!!k§.§0!B§;
   import §!!k§.§@'§;
   import §!r§.§'!4§;
   import §!r§.§4"O§;
   import §!r§.§9"f§;
   import §""c§.§=!Y§;
   import §""c§.§>"w§;
   import §#g§.§11§;
   import §#g§.§2"m§;
   import §#g§.§<b§;
   import §#g§.§>"-§;
   import §#g§.§?B§;
   import §&"s§.Texture;
   import §7!I§.b2Settings;
   import §7"A§.b2Vec2;
   import §9"`§.§-"H§;
   import §=![§.b2Joint;
   import §`!v§.§5!R§;
   import §`!v§.§8X§;
   import §`!v§.§`[§;
   import flash.display.BitmapData;
   import flash.display.Stage;
   import flash.geom.Point;
   import §null §.§'!k§;
   import §null §.§5#§;
   import §null §.§>#-§;
   import §use§.Sprite;
   
   public class §+# § extends §;!E§
   {
       
      
      protected var §""&§:§'!$§;
      
      protected var §;#2§:BitmapData;
      
      protected var §;r§:Texture;
      
      public function §+# §(param1:Stage, param2:§2"m§, param3:§5!R§, param4:§5#§)
      {
         super(param1,param2,param3,param4);
      }
      
      public function get §`"D§() : §>"-§
      {
         return §7W§ as §>"-§;
      }
      
      override protected function initializeLevelSlingshot(param1:§>#-§) : §%#7§
      {
         return new §5X§(this,param1,new Sprite());
      }
      
      override protected function initThemeGraphicsManager() : §@'§
      {
         return new §-!7§(stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",§'""§,§>"-§(§7W§));
      }
      
      override protected function initThemeSoundsManager() : §@'§
      {
         return new §-!7§(stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",§'""§,§>"-§(§7W§),false);
      }
      
      override protected function initCutSceneManager() : §@'§
      {
         return new §-!7§(stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",§'""§,§>"-§(§7W§));
      }
      
      override protected function initLevelEngine(param1:§>#-§) : void
      {
         var _loc2_:Number = param1.worldGravity;
         mLevelEngine = new §!x§(this,_loc2_);
      }
      
      override protected function initializeLevelBackground(param1:String, param2:Number, param3:§0!B§, param4:Number) : §>"w§
      {
         var _loc7_:§`[§ = null;
         var _loc5_:§8X§;
         if((_loc5_ = §+!X§.getBackground(param1)) == null)
         {
            §-"H§.log("UNKNOWN LEVEL THEME! " + param1);
            param1 = §>#-§.§"!i§;
            _loc5_ = §+!X§.getBackground(param1);
         }
         var _loc6_:§?B§ = null;
         if(this.§`"D§)
         {
            _loc6_ = this.§`"D§.soundManager;
         }
         if(_loc5_ is §`[§)
         {
            _loc7_ = _loc5_ as §`[§;
            return this.§`!K§(_loc7_,param2,param3,_loc6_,param4,!§6!R§.§%!f§);
         }
         return super.initializeLevelBackground(param1,param2,param3,param4);
      }
      
      private function §`!K§(param1:§`[§, param2:Number, param3:§0!B§, param4:§?B§, param5:Number, param6:Boolean = true) : §=!Y§
      {
         return new §=!Y§(param1,param2,param3,param4,param5,param6);
      }
      
      override protected function initializeLevelObjectManager(param1:§>#-§) : §9"f§
      {
         var _loc3_:§=!Y§ = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc2_:String = §8X§.§ W§;
         if(param1 is §'!k§)
         {
            _loc3_ = §3"k§ as §=!Y§;
            if(_loc3_)
            {
               _loc4_ = _loc3_.§?#"§;
               _loc5_ = _loc3_.§1#%§;
               return new §'!4§(this,param1 as §'!k§,new Sprite(),_loc4_,_loc5_);
            }
            return new §'!4§(this,param1 as §'!k§,new Sprite(),_loc2_);
         }
         return super.initializeLevelObjectManager(param1);
      }
      
      override protected function getThemeGraphicsLoadList(param1:String) : Array
      {
         var _loc3_:§`[§ = null;
         var _loc2_:§8X§ = §+!X§.getBackground(param1);
         if(_loc2_ is §`[§)
         {
            _loc3_ = _loc2_ as §`[§;
            return _loc3_.§3!7§;
         }
         return null;
      }
      
      override protected function initializePhysicsConstants(param1:§>#-§) : void
      {
         if(param1.hasGround)
         {
            super.initializePhysicsConstants(param1);
         }
         else
         {
            b2Settings.b2_linearSleepTolerance = b2Settings.§#1§;
         }
      }
      
      override protected function levelInitialized() : void
      {
         super.levelInitialized();
         this.§5^§();
         this.§9"§();
      }
      
      protected function §5^§() : void
      {
         this.§;#2§ = new BitmapData(16,16,true,2298413056);
         this.§;r§ = textureManager.getTextureFromBitmapData(this.§;#2§);
         this.§""&§ = new §'!$§(new Sprite(),this.§;r§,§4"O§.§5!J§ / 1000,§4"O§.§5"9§);
         slingshot.aimingLineSprite.addChild(this.§""&§.sprite);
      }
      
      protected function §9"§() : void
      {
         this.§9_§(20,1000 / 30);
      }
      
      protected function §9_§(param1:int, param2:Number) : void
      {
         var _loc3_:b2Vec2 = new b2Vec2();
         _loc3_.SetV(mLevelEngine.mWorld.GetGravity());
         if(this.§[R§ && this.§[R§.§2g§)
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
            _loc4_ = _loc4_.§^a§();
         }
         var _loc6_:int = 0;
         while(_loc6_ < param1)
         {
            mLevelEngine.mWorld.Step(param2,10,10);
            mLevelEngine.mWorld.ClearForces();
            if(_loc6_ == 0)
            {
               § +§.setCollisionsEnabled(false);
            }
            _loc6_++;
         }
         for each(_loc4_ in _loc5_)
         {
            _loc4_.EnableMotor(true);
         }
         mLevelEngine.mWorld.SetGravity(_loc3_);
         mLevelEngine.mWorld.SetWarmStarting(true);
         § +§.setCollisionsEnabled(true);
      }
      
      override public function clearLevel() : void
      {
         if(this.§;r§)
         {
            textureManager.unregisterBitmapDataTexture(this.§;r§);
            this.§;r§ = null;
            this.§;#2§ = null;
         }
         if(this.§""&§)
         {
            this.§""&§.dispose();
            this.§""&§ = null;
         }
         super.clearLevel();
      }
      
      override public function update(param1:Number, param2:Boolean) : Number
      {
         var _loc3_:Number = super.update(param1,param2);
         this.§+!4§();
         return _loc3_;
      }
      
      protected function §+!4§() : void
      {
         var _loc1_:String = null;
         var _loc2_:Point = null;
         var _loc3_:§11§ = null;
         var _loc4_:String = null;
         var _loc5_:§'!j§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(this.§""&§ && slingshot)
         {
            _loc1_ = slingshot.getCurrentBirdType();
            if(_loc1_)
            {
               _loc3_ = §7W§.getItem(_loc1_) as §11§;
               if(_loc3_)
               {
                  _loc4_ = _loc3_.getProperty("aimingAidSprite");
                  if(_loc5_ = §9!G§.getTexture(_loc4_))
                  {
                     this.§""&§.§;T§(_loc5_.texture);
                  }
                  if(_loc3_.shape is §<b§)
                  {
                     _loc6_ = §<b§(_loc3_.shape).radius;
                     this.§""&§.§0J§(_loc6_);
                  }
               }
            }
            _loc2_ = slingshot.getPosition();
            this.§""&§.enabled = slingshot.mDragging && slingshot.canShootTheBird;
            if(this.§""&§.enabled && _loc2_ != null && slingshot.mDragging)
            {
               _loc7_ = -Math.cos(slingshot.shootingAngle / (180 / Math.PI));
               _loc8_ = Math.sin(slingshot.shootingAngle / (180 / Math.PI));
               this.§""&§.§-!f§(_loc2_,new Point(_loc7_,_loc8_),slingshot.getLaunchSpeed(),this.levelObjects);
            }
         }
      }
      
      protected function get §[R§() : §'!4§
      {
         return levelObjects as §'!4§;
      }
   }
}
