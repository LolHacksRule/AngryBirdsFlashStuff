package §8§#8
{
   import § !w§.§]!p§;
   import § "%§.b2Vec2;
   import §!'§.§"!'§;
   import §!'§.§+#S§;
   import §!'§.§3!p§;
   import §!'§.§[&§;
   import §!'§.§throw§;
   import §4"O§.b2World;
   import §8"L§.§3"s§;
   import §8"L§.§4U§;
   import §8"L§.§5$=§;
   import §8"L§.§5K§;
   import §8"L§.§7^§;
   import §8"L§.§8g§;
   import §8$@§.§="6§;
   import §8$@§.§^"?§;
   import §;$3§.§5$>§;
   import §;$3§.§>f§;
   import §=§.§4§;
   import §>M§.§7!a§;
   import §>M§.§<"@§;
   import §>M§.§["z§;
   import §@0§.§%!q§;
   import §^"S§.Sprite;
   import §`"8§.§0$2§;
   import §`"8§.§`"X§;
   import flash.geom.Point;
   
   public class §4#l§ extends §!#L§ implements §]7§
   {
       
      
      protected var §8#^§:String;
      
      protected var §&"I§:String;
      
      protected var §[!u§:b2Vec2;
      
      protected var §^J§:b2Vec2;
      
      protected var §`"P§:Boolean = true;
      
      protected var §&#'§:§]!p§;
      
      public function §4#l§(param1:§%!q§, param2:§>f§, param3:Sprite, param4:String, param5:String = "", param6:String = "")
      {
         var _loc7_:§5$>§ = null;
         this.§[!u§ = new b2Vec2();
         this.§^J§ = new b2Vec2();
         this.§8#^§ = param5;
         this.§&"I§ = param6;
         super(param1,param2,param3,param4);
         if(param2 is §5$>§)
         {
            if((_loc7_ = param2 as §5$>§).§^!0§ > 0)
            {
               this.§`"P§ = false;
            }
         }
         this.§&#'§ = new §]!p§(param1.mLevelEngine.mWorld);
      }
      
      override public function dispose() : void
      {
         super.dispose();
         if(this.§&#'§)
         {
            this.§&#'§.dispose();
            this.§&#'§ = null;
         }
      }
      
      override protected function getLevelTextureScale() : Number
      {
         var _loc1_:§4#4§ = §=#N§.background as §4#4§;
         if(_loc1_)
         {
            return _loc1_.§?!6§;
         }
         return super.getLevelTextureScale();
      }
      
      override protected function shouldShowScoreText(param1:§4!y§) : Boolean
      {
         var _loc2_:§5K§ = null;
         if(param1)
         {
            _loc2_ = param1.levelItem as §5K§;
            if(_loc2_ && _loc2_.spriteScore)
            {
               return false;
            }
         }
         return super.shouldShowScoreText(param1);
      }
      
      override protected function getScoreTextPosition(param1:§4!y§) : Point
      {
         var _loc2_:Number = param1.getBody().GetPosition().x;
         var _loc3_:Number = param1.getBody().GetPosition().y;
         return new Point(_loc2_,_loc3_);
      }
      
      override protected function addLevelObjects(param1:§>f§) : void
      {
         var _loc3_:int = 0;
         var _loc4_:Number = NaN;
         var _loc5_:§7!a§ = null;
         var _loc2_:§5$>§ = param1 as §5$>§;
         if(_loc2_)
         {
            _loc3_ = 0;
            while(_loc3_ < _loc2_.§^!0§)
            {
               _loc4_ = 1;
               _loc5_ = _loc2_.§+J§(_loc3_);
               addObjectFromModel(_loc5_,_loc5_.id,false,false,false,_loc4_);
               _loc3_++;
            }
         }
         super.addLevelObjects(param1);
      }
      
      protected function §+#J§(param1:§["z§, param2:Sprite, param3:§0$2§) : §,#5§
      {
         var _loc11_:§`"X§ = null;
         var _loc4_:String;
         if((_loc4_ = param1.type).indexOf("SCORE") != -1)
         {
            _loc4_ = §[&§.§1C§;
         }
         var _loc5_:Number = param1.x;
         var _loc6_:Number = param1.y;
         var _loc7_:Number = param1.angle;
         var _loc8_:Number = param1.§;"b§;
         var _loc9_:Number = param1.§<!k§;
         var _loc10_:§3"s§;
         if(!(_loc10_ = §=#N§.levelItemManager.getItem(_loc4_) as §3"s§))
         {
            return null;
         }
         if(_loc10_.§#"B§)
         {
            return new §+#S§(param2,param3,§=#N§.mLevelEngine.mWorld,_loc10_,_loc5_,_loc6_);
         }
         if(_loc4_ == §[&§.§1C§)
         {
            _loc11_ = §=#N§.textureManager.getTexture(param1.type);
            return new §[&§(_loc11_,param2,§=#N§.mLevelEngine.mWorld,_loc10_,_loc5_,_loc6_);
         }
         if(_loc4_.indexOf("Trail") != -1)
         {
            return new §3!p§(param2,param3,§=#N§.mLevelEngine.mWorld,_loc10_,_loc5_,_loc6_,_loc7_,_loc8_,_loc9_);
         }
         if(_loc10_.amount <= 3)
         {
            return new §throw§(param2,param3,§=#N§.mLevelEngine.mWorld,_loc10_,_loc5_,_loc6_,_loc7_,_loc8_,_loc9_);
         }
         return new §"!'§(param2,param3,§=#N§.mLevelEngine.mWorld,_loc10_,_loc5_,_loc6_,_loc7_,_loc8_,_loc9_);
      }
      
      override protected function createObjectInstance(param1:§["z§, param2:Sprite, param3:Boolean = true, param4:Number = 1.0) : §,#5§
      {
         var _loc6_:String = null;
         var _loc7_:§0$2§ = null;
         var _loc8_:§7!a§ = null;
         var _loc9_:§`"X§ = null;
         var _loc10_:§`"X§ = null;
         var _loc5_:§4U§;
         if((_loc5_ = §=#N§.levelItemManager.getItem(param1.type)) is §5$=§)
         {
            _loc6_ = _loc5_.itemName;
            _loc7_ = §=#N§.animationManager.getAnimation(_loc6_);
            if(_loc5_ is §3"s§)
            {
               return this.§+#J§(param1,param2,_loc7_);
            }
            if(param1.type.indexOf(§&$B§.§1C§) != -1)
            {
               if(_loc8_ = param1 as §7!a§)
               {
                  if(!_loc5_)
                  {
                     throw new Error("Can\'t find gravity sensor definition for \'" + param1.type + "\'");
                  }
                  _loc9_ = §=#N§.backgroundTextureManager.getTexture(this.§8#^§);
                  _loc10_ = §=#N§.backgroundTextureManager.getTexture(this.§&"I§);
                  return new §&$B§(param2,§=#N§.mLevelEngine.mWorld,param1,_loc5_ as §5$=§,§8g§(_loc8_.shape).radius,_loc8_.§`D§,_loc8_.§'!@§,_loc8_.§?"g§,_loc9_,_loc10_);
               }
            }
            else if(param1.type.indexOf("SENSOR_PIG") != -1)
            {
               return new §#!$§(param2,§=#N§.mLevelEngine.mWorld,_loc5_,_loc5_.shape,param1);
            }
            if(_loc6_.substr(0,13) == "BLOCK_STATIC_")
            {
               return super.createObjectInstance(param1,param2,param3,param4);
            }
            if(_loc6_.substr(0,7) == "BUBBLE_")
            {
               return new §2#t§(param2,_loc7_,§=#N§.mLevelEngine.mWorld,_loc5_,param1,param4);
            }
            if(_loc5_ is §5K§)
            {
               if(param1 is §<"@§)
               {
                  return this.createBombBlockInstance(param1,param2,_loc7_,_loc5_,§2#%§.§[H§,param4);
               }
               return this.§"$&§(param2,_loc7_,§=#N§.mLevelEngine.mWorld,_loc5_,param1,param4);
            }
         }
         return super.createObjectInstance(param1,param2,param3,param4);
      }
      
      protected function §"$&§(param1:Sprite, param2:§0$2§, param3:b2World, param4:§4U§, param5:§["z§, param6:Number) : §<#D§
      {
         return new §<#D§(param1,param2,param3,param4,param5,param6);
      }
      
      override protected function addObjectPig(param1:§["z§, param2:Sprite, param3:§0$2§, param4:§4U§, param5:Number = 1.0) : §6!H§
      {
         if(param3.hasSubAnimation(§7^§.§]#k§))
         {
            return new §2#'§(param2,param3,§=#N§.mLevelEngine.mWorld,param4,param1,param5);
         }
         return super.addObjectPig(param1,param2,param3,param4,param5);
      }
      
      override protected function createBombBlockInstance(param1:§["z§, param2:Sprite, param3:§0$2§, param4:§4U§, param5:int, param6:Number = 1.0) : §,#5§
      {
         var _loc7_:§5$=§ = null;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:§<"@§ = null;
         if(param4 is §5$=§)
         {
            _loc8_ = (_loc7_ = param4 as §5$=§).§5$9§("explosionRadius");
            _loc9_ = _loc7_.§5$9§("explosionForce");
            _loc10_ = _loc7_.§5$9§("explosionDamageRadius");
            _loc11_ = _loc7_.§5$9§("explosionDamage");
            if(param1 is §<"@§)
            {
               _loc12_ = param1 as §<"@§;
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
            return new §6#o§(param2,param3,§=#N§.mLevelEngine.mWorld,param4,param1,_loc8_,_loc9_,_loc10_,_loc11_,param6);
         }
         return super.createBombBlockInstance(param1,param2,param3,param4,param5,param6);
      }
      
      override public function renderObjects(param1:Number, param2:Number, param3:Number) : void
      {
         super.renderObjects(param1,param2,param3);
         if(this.§&#'§)
         {
            this.§&#'§.§=#p§(param1,this);
         }
      }
      
      override protected function getExplosionDamageMultiplier(param1:Number, param2:Number) : Number
      {
         return 1 - param1 / param2;
      }
      
      protected function §8#>§(param1:Number, param2:Number) : Number
      {
         return super.getExplosionDamageMultiplier(param1,param2);
      }
      
      override protected function getExplosionDistanceToObject(param1:Number, param2:Number, param3:§4!y§) : §="6§
      {
         var _loc4_:Number = param3.getBody().GetPosition().x;
         var _loc5_:Number = param3.getBody().GetPosition().y;
         var _loc6_:Number = param3.levelItem.shape.getWidth();
         var _loc7_:Number = param3.levelItem.shape.getHeight();
         var _loc8_:Number = param3.getBody().GetAngle();
         return §^"?§.§%$<§(_loc4_,_loc5_,_loc6_,_loc7_,_loc8_,param1,param2);
      }
      
      protected function §%!<§(param1:Number, param2:Number, param3:§4!y§) : §="6§
      {
         return super.getExplosionDistanceToObject(param1,param2,param3);
      }
      
      public function §+#2§(param1:String, param2:Number, param3:Number, param4:Number, param5:Number, param6:Boolean) : void
      {
         var _loc8_:Number = NaN;
         var _loc9_:Sprite = null;
         var _loc10_:§0$2§ = null;
         var _loc7_:§5K§;
         if(_loc7_ = §=#N§.levelItemManager.getItem(param1) as §5K§)
         {
            _loc8_ = _loc7_.scale;
            if(param6)
            {
               _loc8_ = 1;
            }
            _loc8_ *= 1.5;
            _loc9_ = new Sprite();
            _loc10_ = §=#N§.animationManager.getAnimation(param1);
            this.§&#'§.§+#2§(param2,param3,param4,param5,_loc7_,_loc9_,_loc10_,_loc8_,param6);
            §!!'§.addChild(_loc9_);
         }
      }
      
      public function §7[§(param1:Number, param2:Number) : §2#'§
      {
         var _loc7_:§2#'§ = null;
         var _loc8_:b2Vec2 = null;
         var _loc9_:Number = NaN;
         var _loc3_:§2#'§ = null;
         var _loc4_:Number = 0;
         var _loc5_:int = §4$8§.length;
         var _loc6_:int = 0;
         while(_loc6_ < _loc5_)
         {
            if((_loc7_ = §4$8§[_loc6_] as §2#'§) && _loc7_.health > 0 && !_loc7_.§6I§)
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
      
      public function §5"h§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         §=#N§.setSlowMotion(param1,param2,param3,param4);
      }
      
      override public function getForceAtPoint(param1:Number, param2:Number, param3:Number, param4:b2Vec2) : b2Vec2
      {
         var _loc5_:§7!0§ = null;
         var _loc6_:§&$B§ = null;
         if(this.§`"P§)
         {
            return super.getForceAtPoint(param1,param2,param3,param4);
         }
         if(!param4)
         {
            param4 = new b2Vec2();
         }
         param4.x = 0;
         param4.y = 0;
         for each(_loc5_ in §8!k§)
         {
            if(_loc6_ = _loc5_ as §&$B§)
            {
               this.§[!u§.x = param1;
               this.§[!u§.y = param2;
               _loc6_.§=!9§(this.§[!u§,param3,this.§^J§);
               param4.§<I§(this.§^J§);
            }
         }
         return param4;
      }
      
      override protected function updateExplosionEffects(param1:§2#%§, param2:Number, param3:Number, param4:Number) : void
      {
      }
      
      protected function §-#T§(param1:§2#%§, param2:Number, param3:Number, param4:Number) : void
      {
         super.updateExplosionEffects(param1,param2,param3,param4);
      }
      
      override protected function hasMinimumCollisionSpeed(param1:§,#5§, param2:§,#5§) : Boolean
      {
         return true;
      }
      
      protected function §#"Q§(param1:§4!y§, param2:§4!y§) : Number
      {
         return super.getCollisionDamageFactor(param1,param2);
      }
      
      override protected function getCollisionDamageFactor(param1:§4!y§, param2:§4!y§) : Number
      {
         var _loc3_:Number = NaN;
         if(param1 is §?$%§)
         {
            return 1;
         }
         if(param2 is §?$%§)
         {
            return 0;
         }
         return Number(param1.§2$9§(param2.§;#B§()));
      }
      
      protected function §+#^§(param1:§4!y§, param2:§4!y§) : Number
      {
         return super.getCollisionForceFactor(param1,param2);
      }
      
      override protected function getCollisionForceFactor(param1:§4!y§, param2:§4!y§) : Number
      {
         var _loc3_:Number = NaN;
         if(param1 is §?$%§)
         {
            return Number(param1.§2$9§(param2.§;#B§()));
         }
         return 1;
      }
      
      public function get §8#&§() : Boolean
      {
         var _loc1_:§7!0§ = null;
         if(§8!k§.length > 0)
         {
            for each(_loc1_ in §8!k§)
            {
               if(_loc1_ is §&$B§)
               {
                  return true;
               }
            }
         }
         return false;
      }
   }
}
