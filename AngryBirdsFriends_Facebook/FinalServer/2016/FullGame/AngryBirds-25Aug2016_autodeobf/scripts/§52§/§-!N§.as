package §52§
{
   import §!x§.§4"d§;
   import §#v§.§#!?§;
   import §#v§.§-"R§;
   import §#v§.§2"+§;
   import §0H§.b2Settings;
   import §0m§.b2Vec2;
   import §1&§.Texture;
   import §8$1§.§1"W§;
   import §8$1§.§<"G§;
   import §9$§.Sprite;
   import §@!O§.b2Joint;
   import §@"§.§!h§;
   import §@"§.§&!=§;
   import §@"§.§+!3§;
   import §@"§.§,"A§;
   import §[#a§.§"!R§;
   import §[#a§.§5"S§;
   import §[#a§.§6"[§;
   import §^§.§1!9§;
   import §^§.§7#%§;
   import §^§.§[>§;
   import §^a§.Starling;
   import §`#C§.§3#U§;
   import §`#C§.§3Z§;
   import §`#C§.§8!h§;
   import §`#C§.§9#s§;
   import §`#C§.§`$9§;
   import flash.display.BitmapData;
   import flash.display.Stage;
   import flash.geom.Point;
   
   public class §-!N§ extends §#!,§
   {
       
      
      protected var §5!s§:§4&§;
      
      protected var §&" §:BitmapData;
      
      protected var §6$5§:Texture;
      
      public function §-!N§(param1:Stage, param2:§9#s§, param3:§1!9§, param4:§#!?§)
      {
         super(param1,param2,param3,param4);
      }
      
      public function get §%"k§() : §3Z§
      {
         return §#o§ as §3Z§;
      }
      
      override protected function initializeLevelSlingshot(param1:§-"R§) : §@M§
      {
         return new §0!k§(this,param1,new Sprite());
      }
      
      override protected function initThemeGraphicsManager() : §,"A§
      {
         return new §!h§(stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",mLevelManager,§3Z§(§#o§));
      }
      
      override protected function initThemeSoundsManager() : §,"A§
      {
         return new §!h§(stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",mLevelManager,§3Z§(§#o§),false);
      }
      
      override protected function initCutSceneManager() : §,"A§
      {
         return new §!h§(stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",mLevelManager,§3Z§(§#o§));
      }
      
      override protected function initLevelEngine(param1:§-"R§) : void
      {
         var _loc2_:Number = param1.worldGravity;
         mLevelEngine = new § "M§(this,_loc2_);
      }
      
      override protected function initializeLevelBackground(param1:String, param2:Number, param3:§&!=§, param4:Number) : §<"G§
      {
         var _loc7_:§7#%§ = null;
         var _loc5_:§[>§;
         if((_loc5_ = §]$ §.getBackground(param1)) == null)
         {
            §4"d§.log("UNKNOWN LEVEL THEME! " + param1);
            param1 = §-"R§.§?! §;
            _loc5_ = §]$ §.getBackground(param1);
         }
         var _loc6_:§8!h§ = null;
         if(this.§%"k§)
         {
            _loc6_ = this.§%"k§.§?"E§;
         }
         if(_loc5_ is §7#%§)
         {
            _loc7_ = _loc5_ as §7#%§;
            return this.§7@§(_loc7_,param2,param3,_loc6_,param4,!Starling.§ #4§);
         }
         return super.initializeLevelBackground(param1,param2,param3,param4);
      }
      
      private function §7@§(param1:§7#%§, param2:Number, param3:§&!=§, param4:§8!h§, param5:Number, param6:Boolean = true) : §1"W§
      {
         return new §1"W§(this,param1,param2,param3,param4,param5,param6);
      }
      
      override protected function initializeLevelObjectManager(param1:§-"R§) : §6"[§
      {
         var _loc3_:§1"W§ = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc2_:String = §[>§.§1"r§;
         if(param1 is §2"+§)
         {
            _loc3_ = §-"!§ as §1"W§;
            if(_loc3_)
            {
               _loc4_ = _loc3_.§7"z§;
               _loc5_ = _loc3_.§&t§;
               return new §5"S§(this,param1 as §2"+§,new Sprite(),_loc4_,_loc5_);
            }
            return new §5"S§(this,param1 as §2"+§,new Sprite(),_loc2_);
         }
         return super.initializeLevelObjectManager(param1);
      }
      
      override protected function getThemeGraphicsLoadList(param1:String) : Array
      {
         var _loc3_:§7#%§ = null;
         var _loc2_:§[>§ = §]$ §.getBackground(param1);
         if(_loc2_ is §7#%§)
         {
            _loc3_ = _loc2_ as §7#%§;
            return _loc3_.§^#2§;
         }
         return null;
      }
      
      override protected function initializePhysicsConstants(param1:§-"R§) : void
      {
         if(param1.hasGround)
         {
            super.initializePhysicsConstants(param1);
         }
         else
         {
            b2Settings.b2_linearSleepTolerance = b2Settings.§8>§;
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
         this.§&" § = new BitmapData(16,16,true,2298413056);
         this.§6$5§ = textureManager.getTextureFromBitmapData(this.§&" §);
         this.§5!s§ = new §4&§(new Sprite(),this.§6$5§,§"!R§.§1h§ / 1000,§"!R§.§9# §);
         slingshot.aimingLineSprite.addChild(this.§5!s§.sprite);
      }
      
      protected function stabilizeWorld() : void
      {
         this.§&"I§(20,1000 / 30);
      }
      
      protected function §&"I§(param1:int, param2:Number) : void
      {
         var _loc3_:b2Vec2 = new b2Vec2();
         _loc3_.SetV(mLevelEngine.mWorld.GetGravity());
         if(this.§'!#§ && this.§'!#§.§9$,§)
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
            _loc4_ = _loc4_.§ !V§();
         }
         var _loc6_:int = 0;
         while(_loc6_ < param1)
         {
            mLevelEngine.mWorld.Step(param2,10,10);
            mLevelEngine.mWorld.ClearForces();
            if(_loc6_ == 0)
            {
               §@#y§.setCollisionsEnabled(false);
            }
            _loc6_++;
         }
         for each(_loc4_ in _loc5_)
         {
            _loc4_.EnableMotor(true);
         }
         mLevelEngine.mWorld.SetGravity(_loc3_);
         mLevelEngine.mWorld.SetWarmStarting(true);
         §@#y§.setCollisionsEnabled(true);
      }
      
      override public function clearLevel() : void
      {
         if(this.§6$5§)
         {
            textureManager.unregisterBitmapDataTexture(this.§6$5§);
            this.§6$5§ = null;
            this.§&" § = null;
         }
         if(this.§5!s§)
         {
            this.§5!s§.dispose();
            this.§5!s§ = null;
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
         var _loc3_:§`$9§ = null;
         var _loc4_:String = null;
         var _loc5_:§+!3§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(this.§5!s§ && slingshot)
         {
            _loc1_ = slingshot.getCurrentBirdType();
            if(_loc1_)
            {
               _loc3_ = §#o§.getItem(_loc1_) as §`$9§;
               if(_loc3_)
               {
                  _loc4_ = _loc3_.§1#c§("aimingAidSprite");
                  if(_loc5_ = §5!H§.getTexture(_loc4_))
                  {
                     this.§5!s§.§?!a§(_loc5_.texture);
                  }
                  if(_loc3_.shape is §3#U§)
                  {
                     _loc6_ = §3#U§(_loc3_.shape).radius;
                     this.§5!s§.§9F§(_loc6_);
                  }
               }
            }
            _loc2_ = slingshot.getPosition();
            this.§5!s§.enabled = slingshot.mDragging && slingshot.canShootTheBird;
            if(this.§5!s§.enabled && _loc2_ != null && slingshot.mDragging)
            {
               _loc7_ = -Math.cos(slingshot.shootingAngle / (180 / Math.PI));
               _loc8_ = Math.sin(slingshot.shootingAngle / (180 / Math.PI));
               this.§5!s§.§"$<§(_loc2_,new Point(_loc7_,_loc8_),slingshot.getLaunchSpeed(),this.levelObjects);
            }
         }
      }
      
      protected function get §'!#§() : §5"S§
      {
         return levelObjects as §5"S§;
      }
   }
}
