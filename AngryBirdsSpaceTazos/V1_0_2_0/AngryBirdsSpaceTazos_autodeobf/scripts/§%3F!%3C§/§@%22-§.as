package §?!<§
{
   import §""<§.§#N§;
   import §&!S§.b2Vec2;
   import §'!&§.Sprite;
   import §+D§.b2Joint;
   import §,§.;
   import §,§.§-!d§;
   import §,§.§3"F§;
   import §-!b§.§#q§;
   import §-!b§.§9U§;
   import §3!4§.§ ![§;
   import §3"$§.Texture;
   import §8o§.§!">§;
   import §8o§.§5"%§;
   import §8o§.§>q§;
   import §8o§.§^!L§;
   import §;!0§.§!!#§;
   import §;!0§.§!!X§;
   import §;!0§.;
   import §;"=§.§-_§;
   import §;"=§.§3"=§;
   import §;"=§.§6!<§;
   import §;"=§.§[e§;
   import §?f§.b2CircleShape;
   import §@!@§.b2Settings;
   import §[,§.§%Y§;
   import §[,§.§?"7§;
   import §[,§.§]j§;
   import flash.display.BitmapData;
   import flash.display.Stage;
   import flash.geom.Point;
   
   public class §@"-§ extends §'!1§
   {
       
      
      protected var §4!'§:§ S§;
      
      protected var §+7§:BitmapData;
      
      protected var §8=§:Texture;
      
      public function §@"-§(param1:Stage, param2:§3"=§, param3:§,§.§#0§, param4:§;!0§.§#2§)
      {
         super(param1,param2,param3,param4);
      }
      
      public function get §6"+§() : §6!<§
      {
         return §@1§ as §6!<§;
      }
      
      override protected function initializeLevelSlingshot(param1:§!!X§) : §&V§
      {
         return new §,!z§(this,param1,new Sprite());
      }
      
      override protected function initThemeGraphicsManager() : §^!L§
      {
         return new §>q§(stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",§,W§,§6!<§(§@1§));
      }
      
      override protected function initThemeSoundsManager() : §^!L§
      {
         return new §>q§(stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",§,W§,§6!<§(§@1§),false);
      }
      
      override protected function initCutSceneManager() : §^!L§
      {
         return new §>q§(stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",§,W§,§6!<§(§@1§));
      }
      
      override protected function initLevelEngine(param1:§!!X§) : void
      {
         var _loc2_:Number = param1.worldGravity;
         mLevelEngine = new §,p§(this,_loc2_);
      }
      
      override protected function initializeLevelBackground(param1:String, param2:Number, param3:§5"%§, param4:Number) : §9U§
      {
         var _loc7_:§3"F§ = null;
         var _loc5_:§-!d§;
         if((_loc5_ = §,!r§.getBackground(param1)) == null)
         {
            §#N§.log("UNKNOWN LEVEL THEME! " + param1);
            param1 = §!!X§.§7!y§;
            _loc5_ = §,!r§.getBackground(param1);
         }
         var _loc6_:§-_§ = null;
         if(this.§6"+§)
         {
            _loc6_ = this.§6"+§.soundManager;
         }
         if(_loc5_ is §3"F§)
         {
            _loc7_ = _loc5_ as §3"F§;
            return new §#q§(_loc7_,param2,param3,_loc6_,param4,!§ ![§.§>n§);
         }
         return super.initializeLevelBackground(param1,param2,param3,param4);
      }
      
      override protected function initializeLevelObjectManager(param1:§!!X§) : §]j§
      {
         var _loc3_:§#q§ = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc2_:String = §-!d§.§`"=§;
         if(param1 is §!!#§)
         {
            _loc3_ = §]"3§ as §#q§;
            if(_loc3_)
            {
               _loc4_ = _loc3_.§%!I§;
               _loc5_ = _loc3_.§""E§;
               return new §%Y§(this,param1 as §!!#§,new Sprite(),_loc4_,_loc5_);
            }
            return new §%Y§(this,param1 as §!!#§,new Sprite(),_loc2_);
         }
         return super.initializeLevelObjectManager(param1);
      }
      
      override protected function getThemeGraphicsLoadList(param1:String) : Array
      {
         var _loc3_:§3"F§ = null;
         var _loc2_:§-!d§ = §,!r§.getBackground(param1);
         if(_loc2_ is §3"F§)
         {
            _loc3_ = _loc2_ as §3"F§;
            return _loc3_.§"!n§;
         }
         return null;
      }
      
      override protected function initializePhysicsConstants(param1:§!!X§) : void
      {
         if(param1.hasGround)
         {
            super.initializePhysicsConstants(param1);
         }
         else
         {
            b2Settings.b2_linearSleepTolerance = b2Settings.§]m§;
         }
      }
      
      override protected function levelInitialized() : void
      {
         this.§+7§ = new BitmapData(16,16,true,2298413056);
         this.§8=§ = textureManager.getTextureFromBitmapData(this.§+7§);
         this.§4!'§ = new § S§(new Sprite(),this.§8=§,§?"7§.§30§ / 1000,§?"7§.§4!_§);
         slingshot.aimingLineSprite.addChild(this.§4!'§.sprite);
         this.§6!P§();
      }
      
      protected function §6!P§() : void
      {
         this.§3!k§(10);
      }
      
      protected function §3!k§(param1:int) : void
      {
         var _loc2_:b2Vec2 = new b2Vec2();
         _loc2_.SetV(mLevelEngine.mWorld.GetGravity());
         mLevelEngine.mWorld.SetGravity(new b2Vec2(0,0));
         §#!u§.setCollisionsEnabled(false);
         var _loc3_:b2Joint = mLevelEngine.mWorld.GetJointList();
         var _loc4_:Vector.<b2Joint> = new Vector.<b2Joint>();
         while(_loc3_)
         {
            if(_loc3_.IsMotorEnabled())
            {
               _loc4_.push(_loc3_);
               _loc3_.EnableMotor(false);
            }
            _loc3_ = _loc3_.§6!4§();
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
         §#!u§.setCollisionsEnabled(false);
      }
      
      override public function clearLevel() : void
      {
         if(this.§8=§)
         {
            textureManager.unregisterBitmapDataTexture(this.§8=§);
            this.§8=§ = null;
            this.§+7§ = null;
         }
         if(this.§4!'§)
         {
            this.§4!'§.dispose();
            this.§4!'§ = null;
         }
         super.clearLevel();
      }
      
      override public function update(param1:Number, param2:Boolean) : Number
      {
         var _loc4_:String = null;
         var _loc5_:Point = null;
         var _loc6_:§[e§ = null;
         var _loc7_:String = null;
         var _loc8_:§!">§ = null;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc3_:Number = super.update(param1,param2);
         if(this.§4!'§ && slingshot)
         {
            if(_loc4_ = slingshot.getCurrentBirdType())
            {
               if(_loc6_ = §@1§.getItem(_loc4_) as §[e§)
               {
                  _loc7_ = _loc6_.§[D§("aimingAidSprite");
                  if(_loc8_ = §3'§.getTexture(_loc7_))
                  {
                     this.§4!'§.§;!_§(_loc8_.texture);
                  }
                  if(_loc6_.shape is b2CircleShape)
                  {
                     _loc9_ = b2CircleShape(_loc6_.shape).§=a§();
                     this.§4!'§.§?!g§(_loc9_);
                  }
               }
            }
            _loc5_ = slingshot.getPosition();
            this.§4!'§.enabled = slingshot.mDragging && slingshot.canShootTheBird;
            if(this.§4!'§.enabled && _loc5_ != null && slingshot.mDragging)
            {
               _loc10_ = -Math.cos(slingshot.shootingAngle / (180 / Math.PI));
               _loc11_ = Math.sin(slingshot.shootingAngle / (180 / Math.PI));
               this.§4!'§.§'!7§(_loc5_,new Point(_loc10_,_loc11_),slingshot.getLaunchSpeed(),this.levelObjects);
            }
         }
         return _loc3_;
      }
   }
}
