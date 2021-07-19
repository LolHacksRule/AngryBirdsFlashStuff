package §'4§
{
   import §"!&§.§+W§;
   import §"!&§.§-!M§;
   import §"!&§.§8"F§;
   import §"!&§.§="D§;
   import §+!a§.§6p§;
   import §+!a§.§@!_§;
   import §+!a§.§`b§;
   import §,Z§.b2CircleShape;
   import §0N§.§2!@§;
   import §4&§.§ "E§;
   import §4&§.§'!"§;
   import §4&§.§,C§;
   import §4&§.§^7§;
   import §5Q§.§^!e§;
   import §7!8§.Sprite;
   import §9t§.b2Vec2;
   import §<!o§.§3!$§;
   import §<!o§.§32§;
   import §@!'§.b2Settings;
   import §]">§.§%!E§;
   import §]">§.§-%§;
   import §]">§.§0!D§;
   import §`!#§.Texture;
   import §`!j§.§#b§;
   import §`!j§.§2!7§;
   import §`!j§.§9"!§;
   import §`X§.b2Joint;
   import flash.display.BitmapData;
   import flash.display.Stage;
   import flash.geom.Point;
   
   public class §^";§ extends §^g§
   {
       
      
      protected var §]F§:§?D§;
      
      protected var §`4§:BitmapData;
      
      protected var §>A§:Texture;
      
      public function §^";§(param1:Stage, param2:§-!M§, param3:§`b§, param4:§9"!§)
      {
         super(param1,param2,param3,param4);
      }
      
      public function get §0o§() : §8"F§
      {
         return §3"4§ as §8"F§;
      }
      
      override protected function initializeLevelSlingshot(param1:§#b§) : §3!n§
      {
         return new §;!g§(this,param1,new Sprite());
      }
      
      override protected function initThemeGraphicsManager() : § "E§
      {
         return new §^7§(stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",§6u§,§8"F§(§3"4§));
      }
      
      override protected function initThemeSoundsManager() : § "E§
      {
         return new §^7§(stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",§6u§,§8"F§(§3"4§),false);
      }
      
      override protected function initCutSceneManager() : § "E§
      {
         return new §^7§(stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",§6u§,§8"F§(§3"4§));
      }
      
      override protected function initLevelEngine(param1:§#b§) : void
      {
         var _loc2_:Number = param1.worldGravity;
         mLevelEngine = new §4q§(this,_loc2_);
      }
      
      override protected function initializeLevelBackground(param1:String, param2:Number, param3:§,C§, param4:Number) : §3!$§
      {
         var _loc7_:§6p§ = null;
         var _loc5_:§@!_§;
         if((_loc5_ = §+Q§.getBackground(param1)) == null)
         {
            §2!@§.log("UNKNOWN LEVEL THEME! " + param1);
            param1 = §#b§.§`!0§;
            _loc5_ = §+Q§.getBackground(param1);
         }
         var _loc6_:§="D§ = null;
         if(this.§0o§)
         {
            _loc6_ = this.§0o§.soundManager;
         }
         if(_loc5_ is §6p§)
         {
            _loc7_ = _loc5_ as §6p§;
            return new §32§(_loc7_,param2,param3,_loc6_,param4,!§^!e§.§use§);
         }
         return super.initializeLevelBackground(param1,param2,param3,param4);
      }
      
      override protected function initializeLevelObjectManager(param1:§#b§) : §-%§
      {
         var _loc3_:§32§ = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc2_:String = §@!_§.§!z§;
         if(param1 is §2!7§)
         {
            _loc3_ = §3"C§ as §32§;
            if(_loc3_)
            {
               _loc4_ = _loc3_.§?"5§;
               _loc5_ = _loc3_.§4L§;
               return new §0!D§(this,param1 as §2!7§,new Sprite(),_loc4_,_loc5_);
            }
            return new §0!D§(this,param1 as §2!7§,new Sprite(),_loc2_);
         }
         return super.initializeLevelObjectManager(param1);
      }
      
      override protected function getThemeGraphicsLoadList(param1:String) : Array
      {
         var _loc3_:§6p§ = null;
         var _loc2_:§@!_§ = §+Q§.getBackground(param1);
         if(_loc2_ is §6p§)
         {
            _loc3_ = _loc2_ as §6p§;
            return _loc3_.§6!Q§;
         }
         return null;
      }
      
      override protected function initializePhysicsConstants(param1:§#b§) : void
      {
         if(param1.hasGround)
         {
            super.initializePhysicsConstants(param1);
         }
         else
         {
            b2Settings.b2_linearSleepTolerance = b2Settings.§'!t§;
         }
      }
      
      override protected function levelInitialized() : void
      {
         this.§`4§ = new BitmapData(16,16,true,2298413056);
         this.§>A§ = textureManager.getTextureFromBitmapData(this.§`4§);
         this.§]F§ = new §?D§(new Sprite(),this.§>A§,§%!E§.§6&§ / 1000,§%!E§.§0e§);
         slingshot.aimingLineSprite.addChild(this.§]F§.sprite);
         this.§4"-§();
      }
      
      protected function §4"-§() : void
      {
         this.§+"#§(10);
      }
      
      protected function §+"#§(param1:int) : void
      {
         var _loc2_:b2Vec2 = new b2Vec2();
         _loc2_.SetV(mLevelEngine.mWorld.GetGravity());
         mLevelEngine.mWorld.SetGravity(new b2Vec2(0,0));
         §9u§.setCollisionsEnabled(false);
         var _loc3_:b2Joint = mLevelEngine.mWorld.GetJointList();
         var _loc4_:Vector.<b2Joint> = new Vector.<b2Joint>();
         while(_loc3_)
         {
            if(_loc3_.IsMotorEnabled())
            {
               _loc4_.push(_loc3_);
               _loc3_.EnableMotor(false);
            }
            _loc3_ = _loc3_.§`!y§();
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
         §9u§.setCollisionsEnabled(false);
      }
      
      override public function clearLevel() : void
      {
         if(this.§>A§)
         {
            textureManager.unregisterBitmapDataTexture(this.§>A§);
            this.§>A§ = null;
            this.§`4§ = null;
         }
         if(this.§]F§)
         {
            this.§]F§.dispose();
            this.§]F§ = null;
         }
         super.clearLevel();
      }
      
      override public function update(param1:Number, param2:Boolean) : Number
      {
         var _loc4_:String = null;
         var _loc5_:Point = null;
         var _loc6_:§+W§ = null;
         var _loc7_:String = null;
         var _loc8_:§'!"§ = null;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc3_:Number = super.update(param1,param2);
         if(this.§]F§ && slingshot)
         {
            if(_loc4_ = slingshot.getCurrentBirdType())
            {
               if(_loc6_ = §3"4§.getItem(_loc4_) as §+W§)
               {
                  _loc7_ = _loc6_.§0%§("aimingAidSprite");
                  if(_loc8_ = §7!T§.getTexture(_loc7_))
                  {
                     this.§]F§.§`!v§(_loc8_.texture);
                  }
                  if(_loc6_.shape is b2CircleShape)
                  {
                     _loc9_ = b2CircleShape(_loc6_.shape).§<!$§();
                     this.§]F§.§2C§(_loc9_);
                  }
               }
            }
            _loc5_ = slingshot.getPosition();
            this.§]F§.enabled = slingshot.mDragging && slingshot.canShootTheBird;
            if(this.§]F§.enabled && _loc5_ != null && slingshot.mDragging)
            {
               _loc10_ = -Math.cos(slingshot.shootingAngle / (180 / Math.PI));
               _loc11_ = Math.sin(slingshot.shootingAngle / (180 / Math.PI));
               this.§]F§.§!!0§(_loc5_,new Point(_loc10_,_loc11_),slingshot.getLaunchSpeed(),this.levelObjects);
            }
         }
         return _loc3_;
      }
   }
}
