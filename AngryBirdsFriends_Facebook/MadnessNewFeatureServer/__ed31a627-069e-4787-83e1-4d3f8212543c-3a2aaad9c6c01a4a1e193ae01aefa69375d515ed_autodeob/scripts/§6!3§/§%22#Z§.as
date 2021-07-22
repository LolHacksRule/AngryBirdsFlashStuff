package §6!3§
{
   import §!!P§.§?D§;
   import §'G§.§3$B§;
   import §'G§.§;D§;
   import §,"v§.§7!J§;
   import §,"v§.§[!I§;
   import §-#X§.§,!B§;
   import §-#X§.§6F§;
   import §-#X§.§@#r§;
   import §6#H§.Sprite;
   import §7"p§.§%!I§;
   import §7"p§.§3!%§;
   import §7"p§.§@v§;
   import §7"p§.§]!`§;
   import §7"p§.§`!7§;
   import §7$?§.§,"6§;
   import §7$?§.§7"T§;
   import §>2§.§!6§;
   import §?!C§.b2Vec2;
   import §?$<§.§'!s§;
   import §?$<§.§,#q§;
   import §?$<§.§-"B§;
   import §?$<§.§<#x§;
   import §?$<§.§?$>§;
   import §?$<§.§@"q§;
   import §?Y§.§@#w§;
   import §@!S§.b2World;
   import flash.geom.Point;
   
   public class §"#Z§ extends §'!§ implements §6"&§
   {
       
      
      protected var §6!S§:String;
      
      protected var §,"@§:String;
      
      protected var §,#4§:b2Vec2;
      
      protected var §%"P§:b2Vec2;
      
      protected var §8!Q§:Boolean = true;
      
      protected var §=$?§:§@#w§;
      
      public function §"#Z§(param1:§!6§, param2:§7!J§, param3:Sprite, param4:String, param5:String = "", param6:String = "")
      {
         var _loc7_:§[!I§ = null;
         this.§,#4§ = new b2Vec2();
         this.§%"P§ = new b2Vec2();
         this.§6!S§ = param5;
         this.§,"@§ = param6;
         super(param1,param2,param3,param4);
         if(param2 is §[!I§)
         {
            if((_loc7_ = param2 as §[!I§).§##B§ > 0)
            {
               this.§8!Q§ = false;
            }
         }
         this.§=$?§ = new §@#w§(param1.mLevelEngine.mWorld);
      }
      
      override public function dispose() : void
      {
         super.dispose();
         if(this.§=$?§)
         {
            this.§=$?§.dispose();
            this.§=$?§ = null;
         }
      }
      
      override protected function getLevelTextureScale() : Number
      {
         var _loc1_:§?D§ = §5#0§.background as §?D§;
         if(_loc1_)
         {
            return _loc1_.§+!a§;
         }
         return super.getLevelTextureScale();
      }
      
      override protected function shouldShowScoreText(param1:§;!U§) : Boolean
      {
         var _loc2_:§<#x§ = null;
         if(param1)
         {
            _loc2_ = param1.levelItem as §<#x§;
            if(_loc2_ && _loc2_.spriteScore)
            {
               return false;
            }
         }
         return super.shouldShowScoreText(param1);
      }
      
      override protected function getScoreTextPosition(param1:§;!U§) : Point
      {
         var _loc2_:Number = param1.getBody().GetPosition().x;
         var _loc3_:Number = param1.getBody().GetPosition().y;
         return new Point(_loc2_,_loc3_);
      }
      
      override protected function addLevelObjects(param1:§7!J§) : void
      {
         var _loc3_:int = 0;
         var _loc4_:Number = NaN;
         var _loc5_:§@#r§ = null;
         var _loc2_:§[!I§ = param1 as §[!I§;
         if(_loc2_)
         {
            _loc3_ = 0;
            while(_loc3_ < _loc2_.§##B§)
            {
               _loc4_ = 1;
               _loc5_ = _loc2_.§'#k§(_loc3_);
               addObjectFromModel(_loc5_,_loc5_.id,false,false,false,_loc4_);
               _loc3_++;
            }
         }
         super.addLevelObjects(param1);
      }
      
      protected function §<"6§(param1:§,!B§, param2:Sprite, param3:§;D§) : §!y§
      {
         var _loc11_:§3$B§ = null;
         var _loc4_:String;
         if((_loc4_ = param1.type).indexOf("SCORE") != -1)
         {
            _loc4_ = §%!I§.§ !V§;
         }
         var _loc5_:Number = param1.x;
         var _loc6_:Number = param1.y;
         var _loc7_:Number = param1.angle;
         var _loc8_:Number = param1.§=#j§;
         var _loc9_:Number = param1.§1]§;
         var _loc10_:§,#q§;
         if(!(_loc10_ = §5#0§.levelItemManager.getItem(_loc4_) as §,#q§))
         {
            return null;
         }
         if(_loc10_.§ _§)
         {
            return new §@v§(param2,param3,§5#0§.mLevelEngine.mWorld,_loc10_,_loc5_,_loc6_);
         }
         if(_loc4_ == §%!I§.§ !V§)
         {
            _loc11_ = §5#0§.textureManager.getTexture(param1.type);
            return new §%!I§(_loc11_,param2,§5#0§.mLevelEngine.mWorld,_loc10_,_loc5_,_loc6_);
         }
         if(_loc4_.indexOf("Trail") != -1)
         {
            return new §3!%§(param2,param3,§5#0§.mLevelEngine.mWorld,_loc10_,_loc5_,_loc6_,_loc7_,_loc8_,_loc9_);
         }
         if(_loc10_.amount <= 3)
         {
            return new §`!7§(param2,param3,§5#0§.mLevelEngine.mWorld,_loc10_,_loc5_,_loc6_,_loc7_,_loc8_,_loc9_);
         }
         return new §]!`§(param2,param3,§5#0§.mLevelEngine.mWorld,_loc10_,_loc5_,_loc6_,_loc7_,_loc8_,_loc9_);
      }
      
      override protected function createObjectInstance(param1:§,!B§, param2:Sprite, param3:Boolean = true, param4:Number = 1.0) : §!y§
      {
         var _loc6_:String = null;
         var _loc7_:§;D§ = null;
         var _loc8_:§@#r§ = null;
         var _loc9_:§3$B§ = null;
         var _loc10_:§3$B§ = null;
         var _loc5_:§?$>§;
         if((_loc5_ = §5#0§.levelItemManager.getItem(param1.type)) is §@"q§)
         {
            _loc6_ = _loc5_.itemName;
            _loc7_ = §5#0§.animationManager.getAnimation(_loc6_);
            if(_loc5_ is §,#q§)
            {
               return this.§<"6§(param1,param2,_loc7_);
            }
            if(param1.type.indexOf(§7u§.§ !V§) != -1)
            {
               if(_loc8_ = param1 as §@#r§)
               {
                  if(!_loc5_)
                  {
                     throw new Error("Can\'t find gravity sensor definition for \'" + param1.type + "\'");
                  }
                  _loc9_ = §5#0§.backgroundTextureManager.getTexture(this.§6!S§);
                  _loc10_ = §5#0§.backgroundTextureManager.getTexture(this.§,"@§);
                  return new §7u§(param2,§5#0§.mLevelEngine.mWorld,param1,_loc5_ as §@"q§,§'!s§(_loc8_.shape).radius,_loc8_.§+#G§,_loc8_.§=!g§,_loc8_.§,"4§,_loc9_,_loc10_);
               }
            }
            else if(param1.type.indexOf("SENSOR_PIG") != -1)
            {
               return new §@O§(param2,§5#0§.mLevelEngine.mWorld,_loc5_,_loc5_.shape,param1);
            }
            if(_loc6_.substr(0,13) == "BLOCK_STATIC_")
            {
               return super.createObjectInstance(param1,param2,param3,param4);
            }
            if(_loc6_.substr(0,7) == "BUBBLE_")
            {
               return new §=!A§(param2,_loc7_,§5#0§.mLevelEngine.mWorld,_loc5_,param1,param4);
            }
            if(_loc5_ is §<#x§)
            {
               if(param1 is §6F§)
               {
                  return this.createBombBlockInstance(param1,param2,_loc7_,_loc5_,§>#x§.§`#$§,param4);
               }
               return this.§>#&§(param2,_loc7_,§5#0§.mLevelEngine.mWorld,_loc5_,param1,param4);
            }
         }
         return super.createObjectInstance(param1,param2,param3,param4);
      }
      
      protected function §>#&§(param1:Sprite, param2:§;D§, param3:b2World, param4:§?$>§, param5:§,!B§, param6:Number) : §'#S§
      {
         return new §'#S§(param1,param2,param3,param4,param5,param6);
      }
      
      override protected function addObjectPig(param1:§,!B§, param2:Sprite, param3:§;D§, param4:§?$>§, param5:Number = 1.0) : §>#p§
      {
         if(param3.hasSubAnimation(§-"B§.§`^§))
         {
            return new §-#Q§(param2,param3,§5#0§.mLevelEngine.mWorld,param4,param1,param5);
         }
         return super.addObjectPig(param1,param2,param3,param4,param5);
      }
      
      override protected function createBombBlockInstance(param1:§,!B§, param2:Sprite, param3:§;D§, param4:§?$>§, param5:int, param6:Number = 1.0) : §!y§
      {
         var _loc7_:§@"q§ = null;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:§6F§ = null;
         if(param4 is §@"q§)
         {
            _loc8_ = (_loc7_ = param4 as §@"q§).§"$8§("explosionRadius");
            _loc9_ = _loc7_.§"$8§("explosionForce");
            _loc10_ = _loc7_.§"$8§("explosionDamageRadius");
            _loc11_ = _loc7_.§"$8§("explosionDamage");
            if(param1 is §6F§)
            {
               _loc12_ = param1 as §6F§;
               if(!isNaN(_loc12_.explosionRadius))
               {
                  _loc8_ = _loc12_.explosionRadius;
               }
               if(!isNaN(_loc12_.explosionForce))
               {
                  _loc9_ = _loc12_.explosionForce;
               }
               if(!isNaN(_loc12_.explosionDamageRadius))
               {
                  _loc10_ = _loc12_.explosionDamageRadius;
               }
               if(!isNaN(_loc12_.explosionDamage))
               {
                  _loc11_ = _loc12_.explosionDamage;
               }
            }
            return new §?#8§(param2,param3,§5#0§.mLevelEngine.mWorld,param4,param1,_loc8_,_loc9_,_loc10_,_loc11_,param6);
         }
         return super.createBombBlockInstance(param1,param2,param3,param4,param5,param6);
      }
      
      override public function renderObjects(param1:Number, param2:Number, param3:Number) : void
      {
         super.renderObjects(param1,param2,param3);
         if(this.§=$?§)
         {
            this.§=$?§.§6!?§(param1,this);
         }
      }
      
      override protected function getExplosionDamageMultiplier(param1:Number, param2:Number) : Number
      {
         return 1 - param1 / param2;
      }
      
      protected function §0#J§(param1:Number, param2:Number) : Number
      {
         return super.getExplosionDamageMultiplier(param1,param2);
      }
      
      override protected function getExplosionDistanceToObject(param1:Number, param2:Number, param3:§;!U§) : §,"6§
      {
         var _loc4_:Number = param3.getBody().GetPosition().x;
         var _loc5_:Number = param3.getBody().GetPosition().y;
         var _loc6_:Number = param3.levelItem.shape.getWidth();
         var _loc7_:Number = param3.levelItem.shape.getHeight();
         var _loc8_:Number = param3.getBody().GetAngle();
         return §7"T§.§=!m§(_loc4_,_loc5_,_loc6_,_loc7_,_loc8_,param1,param2);
      }
      
      protected function §`5§(param1:Number, param2:Number, param3:§;!U§) : §,"6§
      {
         return super.getExplosionDistanceToObject(param1,param2,param3);
      }
      
      public function §9"n§(param1:String, param2:Number, param3:Number, param4:Number, param5:Number, param6:Boolean) : void
      {
         var _loc8_:Number = NaN;
         var _loc9_:Sprite = null;
         var _loc10_:§;D§ = null;
         var _loc7_:§<#x§;
         if(_loc7_ = §5#0§.levelItemManager.getItem(param1) as §<#x§)
         {
            _loc8_ = _loc7_.scale;
            if(param6)
            {
               _loc8_ = 1;
            }
            _loc8_ *= 1.5;
            _loc9_ = new Sprite();
            _loc10_ = §5#0§.animationManager.getAnimation(param1);
            this.§=$?§.§9"n§(param2,param3,param4,param5,_loc7_,_loc9_,_loc10_,_loc8_,param6);
            §9#W§.addChild(_loc9_);
         }
      }
      
      public function §0!-§(param1:Number, param2:Number) : §-#Q§
      {
         var _loc7_:§-#Q§ = null;
         var _loc8_:b2Vec2 = null;
         var _loc9_:Number = NaN;
         var _loc3_:§-#Q§ = null;
         var _loc4_:Number = 0;
         var _loc5_:int = §,N§.length;
         var _loc6_:int = 0;
         while(_loc6_ < _loc5_)
         {
            if((_loc7_ = §,N§[_loc6_] as §-#Q§) && _loc7_.health > 0 && !_loc7_.§[u§)
            {
               _loc8_ = _loc7_.getBody().GetPosition();
               _loc9_ = Math.sqrt((param1 - _loc8_.x) * (param1 - _loc8_.x) + (param2 - _loc8_.y) * (param2 - _loc8_.y));
               if(_loc3_ == null || _loc9_ < _loc4_)
               {
                  _loc3_ = _loc7_;
                  _loc4_ = _loc9_;
               }
            }
            _loc6_++;
         }
         return _loc3_;
      }
      
      public function §!"v§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         §5#0§.setSlowMotion(param1,param2,param3,param4);
      }
      
      override public function getForceAtPoint(param1:Number, param2:Number, param3:Number, param4:b2Vec2) : b2Vec2
      {
         var _loc5_:§@#v§ = null;
         var _loc6_:§7u§ = null;
         if(this.§8!Q§)
         {
            return super.getForceAtPoint(param1,param2,param3,param4);
         }
         if(!param4)
         {
            param4 = new b2Vec2();
         }
         param4.x = 0;
         param4.y = 0;
         for each(_loc5_ in §`!4§)
         {
            if(_loc6_ = _loc5_ as §7u§)
            {
               this.§,#4§.x = param1;
               this.§,#4§.y = param2;
               _loc6_.§"!o§(this.§,#4§,param3,this.§%"P§);
               param4.§ #H§(this.§%"P§);
            }
         }
         return param4;
      }
      
      override protected function updateExplosionEffects(param1:§>#x§, param2:Number, param3:Number, param4:Number) : void
      {
      }
      
      protected function §&$1§(param1:§>#x§, param2:Number, param3:Number, param4:Number) : void
      {
         super.updateExplosionEffects(param1,param2,param3,param4);
      }
      
      override protected function hasMinimumCollisionSpeed(param1:§!y§, param2:§!y§) : Boolean
      {
         return true;
      }
      
      protected function §3#@§(param1:§;!U§, param2:§;!U§) : Number
      {
         return super.getCollisionDamageFactor(param1,param2);
      }
      
      override protected function getCollisionDamageFactor(param1:§;!U§, param2:§;!U§) : Number
      {
         var _loc3_:Number = NaN;
         if(param1 is §,s§)
         {
            return 1;
         }
         if(param2 is §,s§)
         {
            return 0;
         }
         return Number(param1.§%!5§(param2.§5"1§()));
      }
      
      protected function §8#S§(param1:§;!U§, param2:§;!U§) : Number
      {
         return super.getCollisionForceFactor(param1,param2);
      }
      
      override protected function getCollisionForceFactor(param1:§;!U§, param2:§;!U§) : Number
      {
         var _loc3_:Number = NaN;
         if(param1 is §,s§)
         {
            return Number(param1.§%!5§(param2.§5"1§()));
         }
         return 1;
      }
      
      public function get §2"§() : Boolean
      {
         var _loc1_:§@#v§ = null;
         if(§`!4§.length > 0)
         {
            for each(_loc1_ in §`!4§)
            {
               if(_loc1_ is §7u§)
               {
                  return true;
               }
            }
         }
         return false;
      }
   }
}
