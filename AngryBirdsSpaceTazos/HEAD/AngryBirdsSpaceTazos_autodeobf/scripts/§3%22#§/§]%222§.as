package §3"#§
{
   import §&!]§.Sprite;
   import §'!B§.§8T§;
   import §'!a§.b2Settings;
   import §1z§.§!P§;
   import §1z§.§2#§;
   import §1z§.§^!@§;
   import §3>§.§%5§;
   import §3>§.§1!;§;
   import §3>§.§[8§;
   import §3>§.§]!N§;
   import §4!W§.b2CircleShape;
   import §6!n§.b2Vec2;
   import §9!v§.§"[§;
   import §9!v§.§-!^§;
   import §9!v§.§0!S§;
   import §9!v§.§6a§;
   import §9"!§.§"" §;
   import §9"!§.§#K§;
   import §9"!§.§5g§;
   import §9"@§.Texture;
   import §;"0§.§-q§;
   import §;"0§.§>!7§;
   import §;"0§.§@$§;
   import §?"@§.§0!T§;
   import §?"@§.§]1§;
   import §[9§.b2Joint;
   import §`!w§.§^!$§;
   import flash.display.BitmapData;
   import flash.display.Stage;
   import flash.geom.Point;
   
   public class §]"2§ extends §`"8§
   {
       
      
      protected var §"K§:§ &§;
      
      protected var §09§:BitmapData;
      
      protected var §'!'§:Texture;
      
      public function §]"2§(param1:Stage, param2:§]!N§, param3:§-q§, param4:§^!@§)
      {
         super(param1,param2,param3,param4);
      }
      
      public function get §3"7§() : §[8§
      {
         return §!d§ as §[8§;
      }
      
      override protected function initializeLevelSlingshot(param1:§2#§) : §0k§
      {
         return new § true§(this,param1,new Sprite());
      }
      
      override protected function initThemeGraphicsManager() : §-!^§
      {
         return new §0!S§(stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",§#"=§,§[8§(§!d§));
      }
      
      override protected function initThemeSoundsManager() : §-!^§
      {
         return new §0!S§(stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",§#"=§,§[8§(§!d§),false);
      }
      
      override protected function initCutSceneManager() : §-!^§
      {
         return new §0!S§(stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",§#"=§,§[8§(§!d§));
      }
      
      override protected function initLevelEngine(param1:§2#§) : void
      {
         var _loc2_:Number = param1.worldGravity;
         mLevelEngine = new §@!2§(this,_loc2_);
      }
      
      override protected function initializeLevelBackground(param1:String, param2:Number, param3:§6a§, param4:Number) : §]1§
      {
         var _loc7_:§>!7§ = null;
         var _loc5_:§@$§;
         if((_loc5_ = §"!N§.getBackground(param1)) == null)
         {
            §^!$§.log("UNKNOWN LEVEL THEME! " + param1);
            param1 = §2#§.§89§;
            _loc5_ = §"!N§.getBackground(param1);
         }
         var _loc6_:§%5§ = null;
         if(this.§3"7§)
         {
            _loc6_ = this.§3"7§.soundManager;
         }
         if(_loc5_ is §>!7§)
         {
            _loc7_ = _loc5_ as §>!7§;
            return new §0!T§(_loc7_,param2,param3,_loc6_,param4,!§8T§.§`!q§);
         }
         return super.initializeLevelBackground(param1,param2,param3,param4);
      }
      
      override protected function initializeLevelObjectManager(param1:§2#§) : §"" §
      {
         var _loc3_:§0!T§ = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc2_:String = §@$§.§`! §;
         if(param1 is §!P§)
         {
            _loc3_ = §""4§ as §0!T§;
            if(_loc3_)
            {
               _loc4_ = _loc3_.§ A§;
               _loc5_ = _loc3_.§6^§;
               return new §5g§(this,param1 as §!P§,new Sprite(),_loc4_,_loc5_);
            }
            return new §5g§(this,param1 as §!P§,new Sprite(),_loc2_);
         }
         return super.initializeLevelObjectManager(param1);
      }
      
      override protected function getThemeGraphicsLoadList(param1:String) : Array
      {
         var _loc3_:§>!7§ = null;
         var _loc2_:§@$§ = §"!N§.getBackground(param1);
         if(_loc2_ is §>!7§)
         {
            _loc3_ = _loc2_ as §>!7§;
            return _loc3_.§5f§;
         }
         return null;
      }
      
      override protected function initializePhysicsConstants(param1:§2#§) : void
      {
         if(param1.hasGround)
         {
            super.initializePhysicsConstants(param1);
         }
         else
         {
            b2Settings.b2_linearSleepTolerance = b2Settings.§2!Z§;
         }
      }
      
      override protected function levelInitialized() : void
      {
         this.§09§ = new BitmapData(16,16,true,2298413056);
         this.§'!'§ = textureManager.getTextureFromBitmapData(this.§09§);
         this.§"K§ = new § &§(new Sprite(),this.§'!'§,§#K§.§5!g§ / 1000,§#K§.§3L§);
         slingshot.aimingLineSprite.addChild(this.§"K§.sprite);
         this.§>!;§();
      }
      
      protected function §>!;§() : void
      {
         this.§9Q§(10);
      }
      
      protected function §9Q§(param1:int) : void
      {
         var _loc2_:b2Vec2 = new b2Vec2();
         _loc2_.SetV(mLevelEngine.mWorld.GetGravity());
         mLevelEngine.mWorld.SetGravity(new b2Vec2(0,0));
         §9!-§.setCollisionsEnabled(false);
         var _loc3_:b2Joint = mLevelEngine.mWorld.GetJointList();
         var _loc4_:Vector.<b2Joint> = new Vector.<b2Joint>();
         while(_loc3_)
         {
            if(_loc3_.IsMotorEnabled())
            {
               _loc4_.push(_loc3_);
               _loc3_.EnableMotor(false);
            }
            _loc3_ = _loc3_.§1§();
         }
         var _loc5_:int = 0;
         while(_loc5_ < param1)
         {
            mLevelEngine.mWorld.Step(1000 / 30,10,10);
            mLevelEngine.mWorld.ClearForces();
            _loc5_++;
         }
         for each(_loc3_ in _loc4_)
         {
            _loc3_.EnableMotor(true);
         }
         mLevelEngine.mWorld.SetGravity(_loc2_);
         mLevelEngine.mWorld.SetWarmStarting(true);
         §9!-§.setCollisionsEnabled(true);
      }
      
      override public function clearLevel() : void
      {
         if(this.§'!'§)
         {
            textureManager.unregisterBitmapDataTexture(this.§'!'§);
            this.§'!'§ = null;
            this.§09§ = null;
         }
         if(this.§"K§)
         {
            this.§"K§.dispose();
            this.§"K§ = null;
         }
         super.clearLevel();
      }
      
      override public function update(param1:Number, param2:Boolean) : Number
      {
         var _loc4_:String = null;
         var _loc5_:Point = null;
         var _loc6_:§1!;§ = null;
         var _loc7_:String = null;
         var _loc8_:§"[§ = null;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc3_:Number = super.update(param1,param2);
         if(this.§"K§ && slingshot)
         {
            if(_loc4_ = slingshot.getCurrentBirdType())
            {
               if(_loc6_ = §!d§.getItem(_loc4_) as §1!;§)
               {
                  _loc7_ = _loc6_.§^"F§("aimingAidSprite");
                  if(_loc8_ = §@k§.getTexture(_loc7_))
                  {
                     this.§"K§.§;">§(_loc8_.texture);
                  }
                  if(_loc6_.shape is b2CircleShape)
                  {
                     _loc9_ = b2CircleShape(_loc6_.shape).§>!`§();
                     this.§"K§.§>K§(_loc9_);
                  }
               }
            }
            _loc5_ = slingshot.getPosition();
            this.§"K§.enabled = slingshot.mDragging && slingshot.canShootTheBird;
            if(this.§"K§.enabled && _loc5_ != null && slingshot.mDragging)
            {
               _loc10_ = -Math.cos(slingshot.shootingAngle / (180 / Math.PI));
               _loc11_ = Math.sin(slingshot.shootingAngle / (180 / Math.PI));
               this.§"K§.§8!]§(_loc5_,new Point(_loc10_,_loc11_),slingshot.getLaunchSpeed(),this.levelObjects);
            }
         }
         return _loc3_;
      }
   }
}
