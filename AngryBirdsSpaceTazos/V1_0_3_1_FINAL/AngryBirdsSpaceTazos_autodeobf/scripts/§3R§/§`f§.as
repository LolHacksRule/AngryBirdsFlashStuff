package §3R§
{
   import §"!w§.b2CircleShape;
   import §#!5§.§1e§;
   import §#!5§.§@"8§;
   import §'@§.Texture;
   import §1f§.§9H§;
   import §4",§.§,!j§;
   import §4",§.§3v§;
   import §4",§.§;"%§;
   import §4"@§.Sprite;
   import §5"D§.§3!3§;
   import §5"D§.§6g§;
   import §5"D§.§9!-§;
   import §6!C§.§6E§;
   import §6!M§.§3Y§;
   import §6!M§.§8"3§;
   import §6!M§.§9`§;
   import §6!M§.§=!T§;
   import §8K§.b2Settings;
   import §<!<§.§0`§;
   import §<!<§.§1!q§;
   import §<!<§.§[<§;
   import §?"#§.b2Joint;
   import §[!f§.b2Vec2;
   import §^e§.§0"1§;
   import §^e§.§1"B§;
   import §^e§.§7!R§;
   import §^e§.§?!-§;
   import flash.display.BitmapData;
   import flash.display.Stage;
   import flash.geom.Point;
   
   public class §`f§ extends §1!R§
   {
       
      
      protected var §["9§:§;5§;
      
      protected var §[!=§:BitmapData;
      
      protected var §#!!§:Texture;
      
      public function §`f§(param1:Stage, param2:§8"3§, param3:§0`§, param4:§,!j§)
      {
         super(param1,param2,param3,param4);
      }
      
      public function get §,!w§() : §3Y§
      {
         return §2!?§ as §3Y§;
      }
      
      override protected function initializeLevelSlingshot(param1:§3v§) : §,@§
      {
         return new §"5§(this,param1,new Sprite());
      }
      
      override protected function initThemeGraphicsManager() : §1"B§
      {
         return new §?!-§(stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",§]m§,§3Y§(§2!?§));
      }
      
      override protected function initThemeSoundsManager() : §1"B§
      {
         return new §?!-§(stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",§]m§,§3Y§(§2!?§),false);
      }
      
      override protected function initCutSceneManager() : §1"B§
      {
         return new §?!-§(stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",§]m§,§3Y§(§2!?§));
      }
      
      override protected function initLevelEngine(param1:§3v§) : void
      {
         var _loc2_:Number = param1.worldGravity;
         mLevelEngine = new §=y§(this,_loc2_);
      }
      
      override protected function initializeLevelBackground(param1:String, param2:Number, param3:§0"1§, param4:Number) : §1e§
      {
         var _loc7_:§[<§ = null;
         var _loc5_:§1!q§;
         if((_loc5_ = §4!+§.getBackground(param1)) == null)
         {
            §6E§.log("UNKNOWN LEVEL THEME! " + param1);
            param1 = §3v§.§8",§;
            _loc5_ = §4!+§.getBackground(param1);
         }
         var _loc6_:§=!T§ = null;
         if(this.§,!w§)
         {
            _loc6_ = this.§,!w§.soundManager;
         }
         if(_loc5_ is §[<§)
         {
            _loc7_ = _loc5_ as §[<§;
            return new §@"8§(_loc7_,param2,param3,_loc6_,param4,!§9H§.§&!V§);
         }
         return super.initializeLevelBackground(param1,param2,param3,param4);
      }
      
      override protected function initializeLevelObjectManager(param1:§3v§) : §3!3§
      {
         var _loc3_:§@"8§ = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc2_:String = §1!q§.§;$§;
         if(param1 is §;"%§)
         {
            _loc3_ = §+^§ as §@"8§;
            if(_loc3_)
            {
               _loc4_ = _loc3_.§?N§;
               _loc5_ = _loc3_.§;9§;
               return new §6g§(this,param1 as §;"%§,new Sprite(),_loc4_,_loc5_);
            }
            return new §6g§(this,param1 as §;"%§,new Sprite(),_loc2_);
         }
         return super.initializeLevelObjectManager(param1);
      }
      
      override protected function getThemeGraphicsLoadList(param1:String) : Array
      {
         var _loc3_:§[<§ = null;
         var _loc2_:§1!q§ = §4!+§.getBackground(param1);
         if(_loc2_ is §[<§)
         {
            _loc3_ = _loc2_ as §[<§;
            return _loc3_.§=]§;
         }
         return null;
      }
      
      override protected function initializePhysicsConstants(param1:§3v§) : void
      {
         if(param1.hasGround)
         {
            super.initializePhysicsConstants(param1);
         }
         else
         {
            b2Settings.b2_linearSleepTolerance = b2Settings.§!!e§;
         }
      }
      
      override protected function levelInitialized() : void
      {
         this.§[!=§ = new BitmapData(16,16,true,2298413056);
         this.§#!!§ = textureManager.getTextureFromBitmapData(this.§[!=§);
         this.§["9§ = new §;5§(new Sprite(),this.§#!!§,§9!-§.§5">§ / 1000,§9!-§.§5"F§);
         slingshot.aimingLineSprite.addChild(this.§["9§.sprite);
         this.§ 0§();
      }
      
      protected function § 0§() : void
      {
         this.§#!e§(10);
      }
      
      protected function §#!e§(param1:int) : void
      {
         var _loc2_:b2Vec2 = new b2Vec2();
         _loc2_.SetV(mLevelEngine.mWorld.GetGravity());
         mLevelEngine.mWorld.SetGravity(new b2Vec2(0,0));
         §&"!§.setCollisionsEnabled(false);
         var _loc3_:b2Joint = mLevelEngine.mWorld.GetJointList();
         var _loc4_:Vector.<b2Joint> = new Vector.<b2Joint>();
         while(_loc3_)
         {
            if(_loc3_.IsMotorEnabled())
            {
               _loc4_.push(_loc3_);
               _loc3_.EnableMotor(false);
            }
            _loc3_ = _loc3_.§0!7§();
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
         §&"!§.setCollisionsEnabled(true);
      }
      
      override public function clearLevel() : void
      {
         if(this.§#!!§)
         {
            textureManager.unregisterBitmapDataTexture(this.§#!!§);
            this.§#!!§ = null;
            this.§[!=§ = null;
         }
         if(this.§["9§)
         {
            this.§["9§.dispose();
            this.§["9§ = null;
         }
         super.clearLevel();
      }
      
      override public function update(param1:Number, param2:Boolean) : Number
      {
         var _loc4_:String = null;
         var _loc5_:Point = null;
         var _loc6_:§9`§ = null;
         var _loc7_:String = null;
         var _loc8_:§7!R§ = null;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc3_:Number = super.update(param1,param2);
         if(this.§["9§ && slingshot)
         {
            if(_loc4_ = slingshot.getCurrentBirdType())
            {
               if(_loc6_ = §2!?§.getItem(_loc4_) as §9`§)
               {
                  _loc7_ = _loc6_.§<"H§("aimingAidSprite");
                  if(_loc8_ = §#!v§.getTexture(_loc7_))
                  {
                     this.§["9§.§,p§(_loc8_.texture);
                  }
                  if(_loc6_.shape is b2CircleShape)
                  {
                     _loc9_ = b2CircleShape(_loc6_.shape).§5Y§();
                     this.§["9§.§ v§(_loc9_);
                  }
               }
            }
            _loc5_ = slingshot.getPosition();
            this.§["9§.enabled = slingshot.mDragging && slingshot.canShootTheBird;
            if(this.§["9§.enabled && _loc5_ != null && slingshot.mDragging)
            {
               _loc10_ = -Math.cos(slingshot.shootingAngle / (180 / Math.PI));
               _loc11_ = Math.sin(slingshot.shootingAngle / (180 / Math.PI));
               this.§["9§.§<!4§(_loc5_,new Point(_loc10_,_loc11_),slingshot.getLaunchSpeed(),this.levelObjects);
            }
         }
         return _loc3_;
      }
   }
}
