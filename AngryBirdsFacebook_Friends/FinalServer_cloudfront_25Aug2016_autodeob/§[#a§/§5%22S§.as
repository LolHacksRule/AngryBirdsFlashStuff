package §[#a§
{
   import §#v§.§-"R§;
   import §#v§.§2"+§;
   import §,#L§.§!#%§;
   import §,#L§.§#!j§;
   import §,#L§.§<!?§;
   import §0m§.b2Vec2;
   import §52§.§#!,§;
   import §6!d§.§%"m§;
   import §8$1§.§1"W§;
   import §9$§.Sprite;
   import §;$%§.§"c§;
   import §;$%§.§,#;§;
   import §=!7§.§"y§;
   import §=!7§.§0"e§;
   import §=!7§.§1"'§;
   import §=!7§.§3!h§;
   import §=!7§.§@!l§;
   import §=#n§.b2World;
   import §@"§.§+!3§;
   import §@"§.§`"W§;
   import §`#C§.§'#g§;
   import §`#C§.§3#U§;
   import §`#C§.§4o§;
   import §`#C§.§6!i§;
   import §`#C§.§8K§;
   import §`#C§.§<?§;
   import flash.geom.Point;
   
   public class §5"S§ extends §6"[§ implements §[#>§
   {
       
      
      protected var §,$2§:String;
      
      protected var §[!N§:String;
      
      protected var §4#&§:b2Vec2;
      
      protected var §+$&§:b2Vec2;
      
      protected var §2!s§:Boolean = true;
      
      protected var §+"2§:§%"m§;
      
      public function §5"S§(param1:§#!,§, param2:§-"R§, param3:Sprite, param4:String, param5:String = "", param6:String = "")
      {
         this.§4#&§ = new b2Vec2();
         this.§+$&§ = new b2Vec2();
         this.§,$2§ = param5;
         this.§[!N§ = param6;
         super(param1,param2,param3,param4);
         if(param2 is §2"+§)
         {
            if((param2 as §2"+§).§<$ § > 0)
            {
               this.§2!s§ = false;
            }
         }
         this.§+"2§ = new §%"m§(param1.mLevelEngine.mWorld);
      }
      
      override public function dispose() : void
      {
         super.dispose();
         if(this.§+"2§)
         {
            this.§+"2§.dispose();
            this.§+"2§ = null;
         }
      }
      
      override protected function getLevelTextureScale() : Number
      {
         var _loc1_:§1"W§ = §,#2§.background as §1"W§;
         if(_loc1_)
         {
            return _loc1_.§#!q§;
         }
         return super.getLevelTextureScale();
      }
      
      override protected function shouldShowScoreText(param1:§="@§) : Boolean
      {
         var _loc2_:§4o§ = null;
         if(param1)
         {
            _loc2_ = param1.levelItem as §4o§;
            if(_loc2_ && _loc2_.spriteScore)
            {
               return false;
            }
         }
         return super.shouldShowScoreText(param1);
      }
      
      override protected function getScoreTextPosition(param1:§="@§) : Point
      {
         var _loc2_:Number = param1.getBody().GetPosition().x;
         var _loc3_:Number = param1.getBody().GetPosition().y;
         return new Point(_loc2_,_loc3_);
      }
      
      override protected function addLevelObjects(param1:§-"R§) : void
      {
         var _loc3_:int = 0;
         var _loc4_:Number = NaN;
         var _loc5_:§<!?§ = null;
         var _loc2_:§2"+§ = param1 as §2"+§;
         if(_loc2_)
         {
            _loc3_ = 0;
            while(_loc3_ < _loc2_.§<$ §)
            {
               _loc4_ = 1;
               _loc5_ = _loc2_.§?"F§(_loc3_);
               addObjectFromModel(_loc5_,_loc5_.id,false,false,false,_loc4_);
               _loc3_++;
            }
         }
         super.addLevelObjects(param1);
      }
      
      protected function §1!W§(param1:§!#%§, param2:Sprite, param3:§`"W§) : §<"H§
      {
         var _loc11_:§+!3§ = null;
         var _loc4_:String;
         if((_loc4_ = param1.type).indexOf("SCORE") != -1)
         {
            _loc4_ = §@!l§.§%!H§;
         }
         var _loc5_:Number = param1.x;
         var _loc6_:Number = param1.y;
         var _loc7_:Number = param1.angle;
         var _loc8_:Number = param1.§2#R§;
         var _loc9_:Number = param1.§<"7§;
         var _loc10_:§'#g§;
         if(!(_loc10_ = §,#2§.levelItemManager.getItem(_loc4_) as §'#g§))
         {
            return null;
         }
         if(_loc10_.§1"Z§)
         {
            return new §3!h§(param2,param3,§,#2§.mLevelEngine.mWorld,_loc10_,_loc5_,_loc6_);
         }
         if(_loc4_ == §@!l§.§%!H§)
         {
            _loc11_ = §,#2§.textureManager.getTexture(param1.type);
            return new §@!l§(_loc11_,param2,§,#2§.mLevelEngine.mWorld,_loc10_,_loc5_,_loc6_);
         }
         if(_loc4_.indexOf("Trail") != -1)
         {
            return new §0"e§(param2,param3,§,#2§.mLevelEngine.mWorld,_loc10_,_loc5_,_loc6_,_loc7_,_loc8_,_loc9_);
         }
         if(_loc10_.amount <= 3)
         {
            return new §"y§(param2,param3,§,#2§.mLevelEngine.mWorld,_loc10_,_loc5_,_loc6_,_loc7_,_loc8_,_loc9_);
         }
         return new §1"'§(param2,param3,§,#2§.mLevelEngine.mWorld,_loc10_,_loc5_,_loc6_,_loc7_,_loc8_,_loc9_);
      }
      
      override protected function createObjectInstance(param1:§!#%§, param2:Sprite, param3:Boolean = true, param4:Number = 1.0) : §<"H§
      {
         var _loc6_:String = null;
         var _loc7_:§`"W§ = null;
         var _loc8_:§<!?§ = null;
         var _loc9_:§+!3§ = null;
         var _loc10_:§+!3§ = null;
         var _loc5_:§8K§;
         if((_loc5_ = §,#2§.levelItemManager.getItem(param1.type)) is §6!i§)
         {
            _loc6_ = _loc5_.itemName;
            _loc7_ = §,#2§.animationManager.getAnimation(_loc6_);
            if(_loc5_ is §'#g§)
            {
               return this.§1!W§(param1,param2,_loc7_);
            }
            if(param1.type.indexOf(§!$"§.§%!H§) != -1)
            {
               if(_loc8_ = param1 as §<!?§)
               {
                  if(!_loc5_)
                  {
                     throw new Error("Can\'t find gravity sensor definition for \'" + param1.type + "\'");
                  }
                  _loc9_ = §,#2§.backgroundTextureManager.getTexture(this.§,$2§);
                  _loc10_ = §,#2§.backgroundTextureManager.getTexture(this.§[!N§);
                  return new §!$"§(param2,§,#2§.mLevelEngine.mWorld,param1,_loc5_ as §6!i§,§3#U§(_loc8_.shape).radius,_loc8_.§1"$§,_loc8_.§^#L§,_loc8_.§,#X§,_loc9_,_loc10_);
               }
            }
            else if(param1.type.indexOf("SENSOR_PIG") != -1)
            {
               return new §2!t§(param2,§,#2§.mLevelEngine.mWorld,_loc5_,_loc5_.shape,param1);
            }
            if(_loc6_.substr(0,13) == "BLOCK_STATIC_")
            {
               return super.createObjectInstance(param1,param2,param3,param4);
            }
            if(_loc6_.substr(0,7) == "BUBBLE_")
            {
               return new §[#T§(param2,_loc7_,§,#2§.mLevelEngine.mWorld,_loc5_,param1,param4);
            }
            if(_loc5_ is §4o§)
            {
               if(param1 is §#!j§)
               {
                  return this.createBombBlockInstance(param1,param2,_loc7_,_loc5_,§<#;§.§?#x§,param4);
               }
               return this.§'!Z§(param2,_loc7_,§,#2§.mLevelEngine.mWorld,_loc5_,param1,param4);
            }
         }
         return super.createObjectInstance(param1,param2,param3,param4);
      }
      
      protected function §'!Z§(param1:Sprite, param2:§`"W§, param3:b2World, param4:§8K§, param5:§!#%§, param6:Number) : §`#X§
      {
         return new §`#X§(param1,param2,param3,param4,param5,param6);
      }
      
      override protected function addObjectPig(param1:§!#%§, param2:Sprite, param3:§`"W§, param4:§8K§, param5:Number = 1.0) : §3a§
      {
         if(param3.hasSubAnimation(§<?§.§@#H§))
         {
            return new §;"Y§(param2,param3,§,#2§.mLevelEngine.mWorld,param4,param1,param5);
         }
         return super.addObjectPig(param1,param2,param3,param4,param5);
      }
      
      override protected function createBombBlockInstance(param1:§!#%§, param2:Sprite, param3:§`"W§, param4:§8K§, param5:int, param6:Number = 1.0) : §<"H§
      {
         var _loc7_:§6!i§ = null;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:§#!j§ = null;
         if(param4 is §6!i§)
         {
            _loc8_ = (_loc7_ = param4 as §6!i§).§0"[§("explosionRadius");
            _loc9_ = _loc7_.§0"[§("explosionForce");
            _loc10_ = _loc7_.§0"[§("explosionDamageRadius");
            _loc11_ = _loc7_.§0"[§("explosionDamage");
            if(param1 is §#!j§)
            {
               _loc12_ = param1 as §#!j§;
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
            return new §;!h§(param2,param3,§,#2§.mLevelEngine.mWorld,param4,param1,_loc8_,_loc9_,_loc10_,_loc11_,param6);
         }
         return super.createBombBlockInstance(param1,param2,param3,param4,param5,param6);
      }
      
      override public function renderObjects(param1:Number, param2:Number, param3:Number) : void
      {
         super.renderObjects(param1,param2,param3);
         if(this.§+"2§)
         {
            this.§+"2§.§1N§(param1,this);
         }
      }
      
      override protected function getExplosionDamageMultiplier(param1:Number, param2:Number) : Number
      {
         return 1 - param1 / param2;
      }
      
      protected function §9!@§(param1:Number, param2:Number) : Number
      {
         return super.getExplosionDamageMultiplier(param1,param2);
      }
      
      override protected function getExplosionDistanceToObject(param1:Number, param2:Number, param3:§="@§) : §"c§
      {
         var _loc4_:Number = param3.getBody().GetPosition().x;
         var _loc5_:Number = param3.getBody().GetPosition().y;
         var _loc6_:Number = param3.levelItem.shape.getWidth();
         var _loc7_:Number = param3.levelItem.shape.getHeight();
         var _loc8_:Number = param3.getBody().GetAngle();
         return §,#;§.§4"Z§(_loc4_,_loc5_,_loc6_,_loc7_,_loc8_,param1,param2);
      }
      
      protected function §^"h§(param1:Number, param2:Number, param3:§="@§) : §"c§
      {
         return super.getExplosionDistanceToObject(param1,param2,param3);
      }
      
      public function §7R§(param1:String, param2:Number, param3:Number, param4:Number, param5:Number, param6:Boolean) : void
      {
         var _loc8_:Number = NaN;
         var _loc9_:Sprite = null;
         var _loc10_:§`"W§ = null;
         var _loc7_:§4o§;
         if(_loc7_ = §,#2§.levelItemManager.getItem(param1) as §4o§)
         {
            _loc8_ = _loc7_.scale;
            if(param6)
            {
               _loc8_ = 1;
            }
            _loc8_ *= 1.5;
            _loc9_ = new Sprite();
            _loc10_ = §,#2§.animationManager.getAnimation(param1);
            this.§+"2§.§7R§(param2,param3,param4,param5,_loc7_,_loc9_,_loc10_,_loc8_,param6);
            §<#^§.addChild(_loc9_);
         }
      }
      
      public function §""t§(param1:Number, param2:Number) : §;"Y§
      {
         var _loc7_:§;"Y§ = null;
         var _loc8_:b2Vec2 = null;
         var _loc9_:Number = NaN;
         var _loc3_:§;"Y§ = null;
         var _loc4_:Number = 0;
         var _loc5_:int = §3!2§.length;
         var _loc6_:int = 0;
         while(_loc6_ < _loc5_)
         {
            if((_loc7_ = §3!2§[_loc6_] as §;"Y§) && _loc7_.health > 0 && !_loc7_.§'"Y§)
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
      
      public function §##y§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         §,#2§.setSlowMotion(param1,param2,param3,param4);
      }
      
      override public function getForceAtPoint(param1:Number, param2:Number, param3:Number, param4:b2Vec2) : b2Vec2
      {
         var _loc6_:§!$"§ = null;
         if(this.§2!s§)
         {
            return super.getForceAtPoint(param1,param2,param3,param4);
         }
         if(!param4)
         {
            param4 = new b2Vec2();
         }
         param4.x = 0;
         param4.y = 0;
         var _loc7_:int = 0;
         var _loc8_:* = §&"n§;
         while(§§hasnext(_loc8_,_loc7_))
         {
            if(_loc6_ = §§nextvalue(_loc7_,_loc8_) as §!$"§)
            {
               this.§4#&§.x = param1;
               this.§4#&§.y = param2;
               _loc6_.§>#+§(this.§4#&§,param3,this.§+$&§);
               param4.§!!§(this.§+$&§);
            }
         }
         return param4;
      }
      
      override protected function updateExplosionEffects(param1:§<#;§, param2:Number, param3:Number, param4:Number) : void
      {
      }
      
      protected function §%0§(param1:§<#;§, param2:Number, param3:Number, param4:Number) : void
      {
         super.updateExplosionEffects(param1,param2,param3,param4);
      }
      
      override protected function hasMinimumCollisionSpeed(param1:§<"H§, param2:§<"H§) : Boolean
      {
         return true;
      }
      
      protected function §;!s§(param1:§="@§, param2:§="@§) : Number
      {
         return super.getCollisionDamageFactor(param1,param2);
      }
      
      override protected function getCollisionDamageFactor(param1:§="@§, param2:§="@§) : Number
      {
         var _loc3_:Number = NaN;
         if(param1 is §-k§)
         {
            return 1;
         }
         if(param2 is §-k§)
         {
            return 0;
         }
         return Number(param1.§!w§(param2.§5"J§()));
      }
      
      protected function §8"9§(param1:§="@§, param2:§="@§) : Number
      {
         return super.getCollisionForceFactor(param1,param2);
      }
      
      override protected function getCollisionForceFactor(param1:§="@§, param2:§="@§) : Number
      {
         var _loc3_:Number = NaN;
         if(param1 is §-k§)
         {
            return Number(param1.§!w§(param2.§5"J§()));
         }
         return 1;
      }
      
      public function get §9$,§() : Boolean
      {
         var _loc1_:§%#T§ = null;
         if(§&"n§.length > 0)
         {
            for each(_loc1_ in §&"n§)
            {
               if(_loc1_ is §!$"§)
               {
                  return true;
               }
            }
         }
         return false;
      }
   }
}
