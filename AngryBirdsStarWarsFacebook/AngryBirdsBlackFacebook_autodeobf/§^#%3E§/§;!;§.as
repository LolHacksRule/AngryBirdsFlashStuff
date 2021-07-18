package §^#>§
{
   import §!!U§.Sprite;
   import §&#H§.§3#J§;
   import §&v§.Texture;
   import §1!2§.b2Joint;
   import §2"Y§.§%"3§;
   import §2"Y§.§,§;
   import §2"Y§.§=+§;
   import §2"Y§.§>"X§;
   import §2"Y§.§?#Q§;
   import §5"i§.b2Settings;
   import §5t§.Log;
   import §69§.§!!u§;
   import §69§.§""H§;
   import §69§.§4!e§;
   import §7!F§.§+r§;
   import §7!F§.§1x§;
   import §7!F§.§7§;
   import §7!F§.§8!W§;
   import §7P§.§," §;
   import §7P§.§3!y§;
   import §7P§.§;=§;
   import §9#@§.§ "V§;
   import §9#@§.§1"6§;
   import §?m§.§+"2§;
   import §?m§.§8!B§;
   import §?m§.§=!z§;
   import §[R§.b2Vec2;
   import flash.display.BitmapData;
   import flash.display.Stage;
   import flash.geom.Point;
   
   public class §;!;§ extends §#_§
   {
       
      
      protected var §-!4§:§##J§;
      
      protected var §[2§:BitmapData;
      
      protected var §7"n§:Texture;
      
      public function §;!;§(param1:Stage, param2:§,#5§, param3:§!!u§, param4:§+"2§)
      {
         super(param1,param2,param3,param4);
      }
      
      public function get §0"l§() : §>"X§
      {
         return §?4§ as §>"X§;
      }
      
      override protected function initializeLevelSlingshot(param1:§8!B§) : §;x§
      {
         return new §2#!§(this,param1,new Sprite());
      }
      
      override protected function initThemeGraphicsManager() : §1x§
      {
         return new §+r§(stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",§+!b§,§>"X§(§?4§));
      }
      
      override protected function initThemeSoundsManager() : §1x§
      {
         return new §+r§(stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",§+!b§,§>"X§(§?4§),false);
      }
      
      override protected function initCutSceneManager() : §1x§
      {
         return new §+r§(stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",§+!b§,§>"X§(§?4§));
      }
      
      override protected function initLevelEngine(param1:§8!B§) : void
      {
         var _loc2_:Number = param1.worldGravity;
         mLevelEngine = new §^P§(this,_loc2_);
      }
      
      override protected function initializeLevelBackground(param1:String, param2:Number, param3:§7#5§, param4:Number) : § "V§
      {
         var _loc7_:§""H§ = null;
         var _loc5_:§4!e§;
         if((_loc5_ = §?"1§.getBackground(param1)) == null)
         {
            Log.log("UNKNOWN LEVEL THEME! " + param1);
            param1 = §8!B§.§7#M§;
            _loc5_ = §?"1§.getBackground(param1);
         }
         var _loc6_:§%"3§ = null;
         if(this.§0"l§)
         {
            _loc6_ = this.§0"l§.soundManager;
         }
         if(_loc5_ is §""H§)
         {
            _loc7_ = _loc5_ as §""H§;
            return this.§9#W§(_loc7_,param2,param3,_loc6_,param4,!§3#J§.§3!s§);
         }
         return super.initializeLevelBackground(param1,param2,param3,param4);
      }
      
      private function §9#W§(param1:§""H§, param2:Number, param3:§7#5§, param4:§%"3§, param5:Number, param6:Boolean = true) : §1"6§
      {
         return new §1"6§(param1,param2,param3,param4,param5,param6);
      }
      
      override protected function initializeLevelObjectManager(param1:§8!B§) : §;=§
      {
         var _loc3_:§1"6§ = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc2_:String = §4!e§.§0!K§;
         if(param1 is §=!z§)
         {
            _loc3_ = §1!C§ as §1"6§;
            if(_loc3_)
            {
               _loc4_ = _loc3_.§?c§;
               _loc5_ = _loc3_.§ "&§;
               return new §," §(this,param1 as §=!z§,new Sprite(),_loc4_,_loc5_);
            }
            return new §," §(this,param1 as §=!z§,new Sprite(),_loc2_);
         }
         return super.initializeLevelObjectManager(param1);
      }
      
      override protected function getThemeGraphicsLoadList(param1:String) : Array
      {
         var _loc3_:§""H§ = null;
         var _loc2_:§4!e§ = §?"1§.getBackground(param1);
         if(_loc2_ is §""H§)
         {
            _loc3_ = _loc2_ as §""H§;
            return _loc3_.§9#K§;
         }
         return null;
      }
      
      override protected function initializePhysicsConstants(param1:§8!B§) : void
      {
         if(param1.hasGround)
         {
            super.initializePhysicsConstants(param1);
         }
         else
         {
            b2Settings.b2_linearSleepTolerance = b2Settings.§%"A§;
         }
      }
      
      override protected function levelInitialized() : void
      {
         super.levelInitialized();
         this.§["-§();
         this.§@"w§();
      }
      
      protected function §["-§() : void
      {
         this.§[2§ = new BitmapData(16,16,true,2298413056);
         this.§7"n§ = textureManager.getTextureFromBitmapData(this.§[2§);
         this.§-!4§ = new §##J§(new Sprite(),this.§7"n§,§3!y§.§>!1§ / 1000,§3!y§.§9#3§);
         slingshot.aimingLineSprite.addChild(this.§-!4§.sprite);
      }
      
      protected function §@"w§() : void
      {
         this.§;"P§(20,1000 / 30);
      }
      
      protected function §;"P§(param1:int, param2:Number) : void
      {
         var _loc3_:b2Vec2 = new b2Vec2();
         _loc3_.SetV(mLevelEngine.mWorld.GetGravity());
         if(this.§!#3§ && this.§!#3§.§5#R§)
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
            _loc4_ = _loc4_.§>!>§();
         }
         var _loc6_:int = 0;
         while(_loc6_ < param1)
         {
            mLevelEngine.mWorld.Step(param2,10,10);
            mLevelEngine.mWorld.ClearForces();
            if(_loc6_ == 0)
            {
               §%H§.setCollisionsEnabled(false);
            }
            _loc6_++;
         }
         for each(_loc4_ in _loc5_)
         {
            _loc4_.EnableMotor(true);
         }
         mLevelEngine.mWorld.SetGravity(_loc3_);
         mLevelEngine.mWorld.SetWarmStarting(true);
         §%H§.setCollisionsEnabled(true);
      }
      
      override public function clearLevel() : void
      {
         if(this.§7"n§)
         {
            textureManager.unregisterBitmapDataTexture(this.§7"n§);
            this.§7"n§ = null;
            this.§[2§ = null;
         }
         if(this.§-!4§)
         {
            this.§-!4§.dispose();
            this.§-!4§ = null;
         }
         super.clearLevel();
      }
      
      override public function update(param1:Number, param2:Boolean) : Number
      {
         var _loc3_:Number = super.update(param1,param2);
         this.§#"6§();
         return _loc3_;
      }
      
      protected function §#"6§() : void
      {
         var _loc1_:String = null;
         var _loc2_:Point = null;
         var _loc3_:§=+§ = null;
         var _loc4_:String = null;
         var _loc5_:§8!W§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(this.§-!4§ && slingshot)
         {
            _loc1_ = slingshot.getCurrentBirdType();
            if(_loc1_)
            {
               _loc3_ = §?4§.getItem(_loc1_) as §=+§;
               if(_loc3_)
               {
                  _loc4_ = _loc3_.getProperty("aimingAidSprite");
                  if(_loc5_ = §6V§.getTexture(_loc4_))
                  {
                     this.§-!4§.§>!o§(_loc5_.texture);
                  }
                  if(_loc3_.shape is §?#Q§)
                  {
                     _loc6_ = §?#Q§(_loc3_.shape).radius;
                     this.§-!4§.§"Q§(_loc6_);
                  }
               }
            }
            _loc2_ = slingshot.getPosition();
            this.§-!4§.enabled = slingshot.mDragging && slingshot.canShootTheBird;
            if(this.§-!4§.enabled && _loc2_ != null && slingshot.mDragging)
            {
               _loc7_ = -Math.cos(slingshot.shootingAngle / (180 / Math.PI));
               _loc8_ = Math.sin(slingshot.shootingAngle / (180 / Math.PI));
               this.§-!4§.§-!V§(_loc2_,new Point(_loc7_,_loc8_),slingshot.getLaunchSpeed(),this.levelObjects);
            }
         }
      }
      
      protected function get §!#3§() : §," §
      {
         return levelObjects as §," §;
      }
   }
}
