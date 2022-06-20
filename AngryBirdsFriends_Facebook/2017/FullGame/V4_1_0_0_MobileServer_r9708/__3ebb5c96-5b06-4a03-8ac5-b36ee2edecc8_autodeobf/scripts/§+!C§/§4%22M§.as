package §+!C§
{
   import §%!9§.b2Vec2;
   import §&!v§.Sprite;
   import §-"+§.Texture;
   import §3!U§.b2Joint;
   import §6!6§.§-"k§;
   import §6!6§.§6!r§;
   import §6!6§.§[k§;
   import §7!j§.§'#'§;
   import §7!j§.§'0§;
   import §7!j§.§,"d§;
   import §7!j§.§2"c§;
   import §7"&§.§"!U§;
   import §7"&§.§&"T§;
   import §7"&§.§2>§;
   import §7"&§.§8"G§;
   import §7"&§.§>#H§;
   import §9#K§.b2Settings;
   import §9+§.Starling;
   import §<"p§.§?!T§;
   import §>!5§.§4!Q§;
   import §>!5§.§6#-§;
   import §>!5§.§="Y§;
   import §@#§.§6z§;
   import §@#§.§]#B§;
   import §@#§.§^#Q§;
   import §]#m§.§0!^§;
   import §]#m§.§0"?§;
   import flash.display.BitmapData;
   import flash.display.Stage;
   import flash.geom.Point;
   
   public class §4"M§ extends §!!S§
   {
       
      
      protected var §4-§:§!"t§;
      
      protected var §!!3§:BitmapData;
      
      protected var §3L§:Texture;
      
      public function §4"M§(param1:Stage, param2:§&"T§, param3:§[k§, param4:§^#Q§)
      {
         super(param1,param2,param3,param4);
      }
      
      public function get §8!,§() : §2>§
      {
         return § "G§ as §2>§;
      }
      
      override protected function initializeLevelSlingshot(param1:§]#B§) : §]#b§
      {
         return new §+$7§(this,param1,new Sprite());
      }
      
      override protected function initThemeGraphicsManager() : §,"d§
      {
         return new §2"c§(stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",mLevelManager,§2>§(§ "G§));
      }
      
      override protected function initThemeSoundsManager() : §,"d§
      {
         return new §2"c§(stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",mLevelManager,§2>§(§ "G§),false);
      }
      
      override protected function initCutSceneManager() : §,"d§
      {
         return new §2"c§(stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",mLevelManager,§2>§(§ "G§));
      }
      
      override protected function initLevelEngine(param1:§]#B§) : void
      {
         var _loc2_:Number = param1.worldGravity;
         mLevelEngine = new §<!-§(this,_loc2_);
      }
      
      override protected function initializeLevelBackground(param1:String, param2:Number, param3:§'0§, param4:Number) : §0!^§
      {
         var _loc7_:§-"k§ = null;
         var _loc5_:§6!r§;
         if((_loc5_ = §7"h§.getBackground(param1)) == null)
         {
            §?!T§.log("UNKNOWN LEVEL THEME! " + param1);
            param1 = §]#B§.§-$&§;
            _loc5_ = §7"h§.getBackground(param1);
         }
         var _loc6_:§8"G§ = null;
         if(this.§8!,§)
         {
            _loc6_ = this.§8!,§.§4$;§;
         }
         if(_loc5_ is §-"k§)
         {
            _loc7_ = _loc5_ as §-"k§;
            return this.§8!C§(_loc7_,param2,param3,_loc6_,param4,!Starling.§-m§);
         }
         return super.initializeLevelBackground(param1,param2,param3,param4);
      }
      
      private function §8!C§(param1:§-"k§, param2:Number, param3:§'0§, param4:§8"G§, param5:Number, param6:Boolean = true) : §0"?§
      {
         return new §0"?§(this,param1,param2,param3,param4,param5,param6);
      }
      
      override protected function initializeLevelObjectManager(param1:§]#B§) : §6#-§
      {
         var _loc3_:§0"?§ = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc2_:String = §6!r§.§9#&§;
         if(param1 is §6z§)
         {
            _loc3_ = §'I§ as §0"?§;
            if(_loc3_)
            {
               _loc4_ = _loc3_.§&9§;
               _loc5_ = _loc3_.§#e§;
               return new §="Y§(this,param1 as §6z§,new Sprite(),_loc4_,_loc5_);
            }
            return new §="Y§(this,param1 as §6z§,new Sprite(),_loc2_);
         }
         return super.initializeLevelObjectManager(param1);
      }
      
      override protected function getThemeGraphicsLoadList(param1:String) : Array
      {
         var _loc3_:§-"k§ = null;
         var _loc2_:§6!r§ = §7"h§.getBackground(param1);
         if(_loc2_ is §-"k§)
         {
            _loc3_ = _loc2_ as §-"k§;
            return _loc3_.§]$>§;
         }
         return null;
      }
      
      override protected function initializePhysicsConstants(param1:§]#B§) : void
      {
         if(param1.hasGround)
         {
            super.initializePhysicsConstants(param1);
         }
         else
         {
            b2Settings.b2_linearSleepTolerance = b2Settings.§+W§;
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
         this.§!!3§ = new BitmapData(16,16,true,2298413056);
         this.§3L§ = textureManager.getTextureFromBitmapData(this.§!!3§);
         this.§4-§ = new §!"t§(new Sprite(),this.§3L§,§4!Q§.§&"0§ / 1000,§4!Q§.§3!e§);
         slingshot.aimingLineSprite.addChild(this.§4-§.sprite);
      }
      
      protected function stabilizeWorld() : void
      {
         this.§;#6§(20,1000 / 30);
      }
      
      protected function §;#6§(param1:int, param2:Number) : void
      {
         var _loc3_:b2Vec2 = new b2Vec2();
         _loc3_.SetV(mLevelEngine.mWorld.GetGravity());
         if(this.§1"y§ && this.§1"y§.§1u§)
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
            _loc4_ = _loc4_.§,=§();
         }
         var _loc6_:int = 0;
         while(_loc6_ < param1)
         {
            mLevelEngine.mWorld.Step(param2,10,10);
            mLevelEngine.mWorld.ClearForces();
            if(_loc6_ == 0)
            {
               §!Y§.setCollisionsEnabled(false);
            }
            _loc6_++;
         }
         for each(_loc4_ in _loc5_)
         {
            _loc4_.EnableMotor(true);
         }
         mLevelEngine.mWorld.SetGravity(_loc3_);
         mLevelEngine.mWorld.SetWarmStarting(true);
         §!Y§.setCollisionsEnabled(true);
      }
      
      override public function clearLevel() : void
      {
         if(this.§3L§)
         {
            textureManager.unregisterBitmapDataTexture(this.§3L§);
            this.§3L§ = null;
            this.§!!3§ = null;
         }
         if(this.§4-§)
         {
            this.§4-§.dispose();
            this.§4-§ = null;
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
         var _loc3_:§"!U§ = null;
         var _loc4_:String = null;
         var _loc5_:§'#'§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(this.§4-§ && slingshot)
         {
            _loc1_ = slingshot.getCurrentBirdType();
            if(_loc1_)
            {
               _loc3_ = § "G§.getItem(_loc1_) as §"!U§;
               if(_loc3_)
               {
                  _loc4_ = _loc3_.§=#a§("aimingAidSprite");
                  if(_loc5_ = §>!4§.getTexture(_loc4_))
                  {
                     this.§4-§.§3!W§(_loc5_.texture);
                  }
                  if(_loc3_.shape is §>#H§)
                  {
                     _loc6_ = §>#H§(_loc3_.shape).radius;
                     this.§4-§.§&"H§(_loc6_);
                  }
               }
            }
            _loc2_ = slingshot.getPosition();
            this.§4-§.enabled = slingshot.mDragging && slingshot.canShootTheBird;
            if(this.§4-§.enabled && _loc2_ != null && slingshot.mDragging)
            {
               _loc7_ = -Math.cos(slingshot.shootingAngle / (180 / Math.PI));
               _loc8_ = Math.sin(slingshot.shootingAngle / (180 / Math.PI));
               this.§4-§.§5"n§(_loc2_,new Point(_loc7_,_loc8_),slingshot.getLaunchSpeed(),this.levelObjects);
            }
         }
      }
      
      protected function get §1"y§() : §="Y§
      {
         return levelObjects as §="Y§;
      }
   }
}
