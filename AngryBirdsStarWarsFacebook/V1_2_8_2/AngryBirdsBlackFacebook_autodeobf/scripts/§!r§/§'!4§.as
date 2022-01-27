package §!r§
{
   import §!!k§.§'!j§;
   import §!!k§.§1!^§;
   import §""c§.§=!Y§;
   import §"§.§;!E§;
   import §#g§.§5!M§;
   import §#g§.§<b§;
   import §#g§.§[!F§;
   import §#g§.§["%§;
   import §#g§.§]_§;
   import §#g§.§^"y§;
   import §7"A§.b2Vec2;
   import §8"-§.§5"`§;
   import §;"E§.§>"§;
   import §;"E§.§]T§;
   import §=G§.§9"S§;
   import §=G§.§9v§;
   import §=G§.§<u§;
   import §>"_§.b2World;
   import flash.geom.Point;
   import §null §.§'!k§;
   import §null §.§>#-§;
   import §use§.Sprite;
   
   public class §'!4§ extends §9"f§ implements §<!F§
   {
       
      
      protected var §"!§:String;
      
      protected var §!!%§:String;
      
      protected var §?!V§:b2Vec2;
      
      protected var §4"h§:b2Vec2;
      
      protected var §;#4§:Boolean = true;
      
      protected var §@"6§:§5"`§;
      
      public function §'!4§(param1:§;!E§, param2:§>#-§, param3:Sprite, param4:String, param5:String = "", param6:String = "")
      {
         var _loc7_:§'!k§ = null;
         this.§?!V§ = new b2Vec2();
         this.§4"h§ = new b2Vec2();
         this.§"!§ = param5;
         this.§!!%§ = param6;
         super(param1,param2,param3,param4);
         if(param2 is §'!k§)
         {
            if((_loc7_ = param2 as §'!k§).§5!+§ > 0)
            {
               this.§;#4§ = false;
            }
         }
         this.§@"6§ = new §5"`§(param1.mLevelEngine.mWorld);
      }
      
      override public function dispose() : void
      {
         super.dispose();
         if(this.§@"6§)
         {
            this.§@"6§.dispose();
            this.§@"6§ = null;
         }
      }
      
      override protected function getLevelTextureScale() : Number
      {
         var _loc1_:§=!Y§ = §+!E§.background as §=!Y§;
         if(_loc1_)
         {
            return _loc1_.textureScale;
         }
         return super.getLevelTextureScale();
      }
      
      override protected function shouldShowScoreText(param1:§0N§) : Boolean
      {
         var _loc2_:§5!M§ = null;
         if(param1)
         {
            _loc2_ = param1.levelItem as §5!M§;
            if(_loc2_ && _loc2_.spriteScore)
            {
               return false;
            }
         }
         return super.shouldShowScoreText(param1);
      }
      
      override protected function getScoreTextPosition(param1:§0N§) : Point
      {
         var _loc2_:Number = param1.§3"s§().GetPosition().x;
         var _loc3_:Number = param1.§3"s§().GetPosition().y;
         return new Point(_loc2_,_loc3_);
      }
      
      override protected function addLevelObjects(param1:§>#-§) : void
      {
         var _loc3_:int = 0;
         var _loc4_:Number = NaN;
         var _loc5_:§<u§ = null;
         var _loc2_:§'!k§ = param1 as §'!k§;
         if(_loc2_)
         {
            _loc3_ = 0;
            while(_loc3_ < _loc2_.§5!+§)
            {
               _loc4_ = 1;
               _loc5_ = _loc2_.§#!G§(_loc3_);
               §<"n§(_loc5_,_loc5_.id,false,false,false,_loc4_);
               _loc3_++;
            }
         }
         super.addLevelObjects(param1);
      }
      
      protected function addParticleSpace(param1:§9v§, param2:Sprite, param3:§1!^§) : §?!x§
      {
         return null;
      }
      
      override protected function createObjectInstance(param1:§9v§, param2:Sprite, param3:Boolean = true, param4:Number = 1.0) : §?!x§
      {
         var _loc6_:String = null;
         var _loc7_:§1!^§ = null;
         var _loc8_:§<u§ = null;
         var _loc9_:§'!j§ = null;
         var _loc10_:§'!j§ = null;
         var _loc5_:§["%§;
         if((_loc5_ = §+!E§.levelItemManager.getItem(param1.type)) is §[!F§)
         {
            _loc6_ = _loc5_.itemName;
            _loc7_ = §+!E§.animationManager.getAnimation(_loc6_);
            if(_loc5_ is §^"y§)
            {
               return this.addParticleSpace(param1,param2,_loc7_);
            }
            if(param1.type.indexOf(§["Z§.§5!L§) != -1)
            {
               if(_loc8_ = param1 as §<u§)
               {
                  if(!_loc5_)
                  {
                     throw new Error("Can\'t find gravity sensor definition for \'" + param1.type + "\'");
                  }
                  _loc9_ = §+!E§.backgroundTextureManager.getTexture(this.§"!§);
                  _loc10_ = §+!E§.backgroundTextureManager.getTexture(this.§!!%§);
                  return new §["Z§(param2,§+!E§.mLevelEngine.mWorld,param1,_loc5_ as §[!F§,§<b§(_loc8_.shape).radius,_loc8_.§##2§,_loc8_.§7"a§,_loc8_.§7#,§,_loc9_,_loc10_);
               }
            }
            else if(param1.type.indexOf("SENSOR_PIG") != -1)
            {
               return new §+#0§(param2,§+!E§.mLevelEngine.mWorld,_loc5_,_loc5_.shape,param1);
            }
            if(_loc6_.substr(0,13) == "BLOCK_STATIC_")
            {
               return super.createObjectInstance(param1,param2,param3,param4);
            }
            if(_loc6_.substr(0,7) == "BUBBLE_")
            {
               return new §2G§(param2,_loc7_,§+!E§.mLevelEngine.mWorld,_loc5_,param1,param4);
            }
            if(_loc5_ is §5!M§)
            {
               if(param1 is §9"S§)
               {
                  return this.createBombBlockInstance(param1,param2,_loc7_,_loc5_,§3c§.§[=§,param4);
               }
               return this.createObjectBlockSpace(param2,_loc7_,§+!E§.mLevelEngine.mWorld,_loc5_,param1,param4);
            }
         }
         return super.createObjectInstance(param1,param2,param3,param4);
      }
      
      protected function createObjectBlockSpace(param1:Sprite, param2:§1!^§, param3:b2World, param4:§["%§, param5:§9v§, param6:Number) : §%E§
      {
         return new §%E§(param1,param2,param3,param4,param5,param6);
      }
      
      override protected function addObjectPig(param1:§9v§, param2:Sprite, param3:§1!^§, param4:§["%§, param5:Number = 1.0) : §4%§
      {
         if(param3.hasSubAnimation(§]_§.§'!r§))
         {
            return new §^#2§(param2,param3,§+!E§.mLevelEngine.mWorld,param4,param1,param5);
         }
         return super.addObjectPig(param1,param2,param3,param4,param5);
      }
      
      override protected function createBombBlockInstance(param1:§9v§, param2:Sprite, param3:§1!^§, param4:§["%§, param5:int, param6:Number = 1.0) : §?!x§
      {
         var _loc7_:§[!F§ = null;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:§9"S§ = null;
         if(param4 is §[!F§)
         {
            _loc8_ = (_loc7_ = param4 as §[!F§).getNumberProperty("explosionRadius");
            _loc9_ = _loc7_.getNumberProperty("explosionForce");
            _loc10_ = _loc7_.getNumberProperty("explosionDamageRadius");
            _loc11_ = _loc7_.getNumberProperty("explosionDamage");
            if(param1 is §9"S§)
            {
               _loc12_ = param1 as §9"S§;
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
            return new §-!4§(param2,param3,§+!E§.mLevelEngine.mWorld,param4,param1,_loc8_,_loc9_,_loc10_,_loc11_,param6);
         }
         return super.createBombBlockInstance(param1,param2,param3,param4,param5,param6);
      }
      
      override public function renderObjects(param1:Number, param2:Number, param3:Number) : void
      {
         super.renderObjects(param1,param2,param3);
         if(this.§@"6§)
         {
            this.§@"6§.§6C§(param1,this);
         }
      }
      
      override protected function getExplosionDamageMultiplier(param1:Number, param2:Number) : Number
      {
         return 1 - param1 / param2;
      }
      
      protected function §,"L§(param1:Number, param2:Number) : Number
      {
         return super.getExplosionDamageMultiplier(param1,param2);
      }
      
      override protected function getExplosionDistanceToObject(param1:Number, param2:Number, param3:§0N§) : §>"§
      {
         var _loc4_:Number = param3.§3"s§().GetPosition().x;
         var _loc5_:Number = param3.§3"s§().GetPosition().y;
         var _loc6_:Number = param3.levelItem.shape.getWidth();
         var _loc7_:Number = param3.levelItem.shape.getHeight();
         var _loc8_:Number = param3.§3"s§().GetAngle();
         return §]T§.§8"3§(_loc4_,_loc5_,_loc6_,_loc7_,_loc8_,param1,param2);
      }
      
      protected function §8#$§(param1:Number, param2:Number, param3:§0N§) : §>"§
      {
         return super.getExplosionDistanceToObject(param1,param2,param3);
      }
      
      public function §=-§(param1:String, param2:Number, param3:Number, param4:Number, param5:Number, param6:Boolean) : void
      {
         var _loc8_:Number = NaN;
         var _loc9_:Sprite = null;
         var _loc10_:§1!^§ = null;
         var _loc7_:§5!M§;
         if(_loc7_ = §+!E§.levelItemManager.getItem(param1) as §5!M§)
         {
            _loc8_ = _loc7_.scale;
            if(param6)
            {
               _loc8_ = 1;
            }
            _loc8_ *= 1.5;
            _loc9_ = new Sprite();
            _loc10_ = §+!E§.animationManager.getAnimation(param1);
            this.§@"6§.§=-§(param2,param3,param4,param5,_loc7_,_loc9_,_loc10_,_loc8_,param6);
            §1!+§.addChild(_loc9_);
         }
      }
      
      public function §`!G§(param1:Number, param2:Number) : §^#2§
      {
         var _loc7_:§^#2§ = null;
         var _loc8_:b2Vec2 = null;
         var _loc9_:Number = NaN;
         var _loc3_:§^#2§ = null;
         var _loc4_:Number = 0;
         var _loc5_:int = §7"q§.length;
         var _loc6_:int = 0;
         while(_loc6_ < _loc5_)
         {
            if((_loc7_ = §7"q§[_loc6_] as §^#2§) && _loc7_.health > 0 && !_loc7_.§!;§)
            {
               _loc8_ = _loc7_.§3"s§().GetPosition();
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
      
      public function §["a§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         §+!E§.setSlowMotion(param1,param2,param3,param4);
      }
      
      override public function getForceAtPoint(param1:Number, param2:Number, param3:Number, param4:b2Vec2) : b2Vec2
      {
         var _loc5_:§03§ = null;
         var _loc6_:§["Z§ = null;
         if(this.§;#4§)
         {
            return super.getForceAtPoint(param1,param2,param3,param4);
         }
         if(!param4)
         {
            param4 = new b2Vec2();
         }
         param4.x = 0;
         param4.y = 0;
         for each(_loc5_ in §2!r§)
         {
            if(_loc6_ = _loc5_ as §["Z§)
            {
               this.§?!V§.x = param1;
               this.§?!V§.y = param2;
               _loc6_.§6"X§(this.§?!V§,param3,this.§4"h§);
               param4.§4"5§(this.§4"h§);
            }
         }
         return param4;
      }
      
      override protected function updateExplosionEffects(param1:§3c§, param2:Number, param3:Number, param4:Number) : void
      {
      }
      
      protected function §'"2§(param1:§3c§, param2:Number, param3:Number, param4:Number) : void
      {
         super.updateExplosionEffects(param1,param2,param3,param4);
      }
      
      override protected function hasMinimumCollisionSpeed(param1:§?!x§, param2:§?!x§) : Boolean
      {
         return true;
      }
      
      protected function §3!-§(param1:§0N§, param2:§0N§) : Number
      {
         return super.getCollisionDamageFactor(param1,param2);
      }
      
      override protected function getCollisionDamageFactor(param1:§0N§, param2:§0N§) : Number
      {
         var _loc3_:Number = NaN;
         if(param1 is §;!T§)
         {
            return 1;
         }
         if(param2 is §;!T§)
         {
            return 0;
         }
         return Number(param1.§=!_§(param2.§8!Y§()));
      }
      
      protected function §,`§(param1:§0N§, param2:§0N§) : Number
      {
         return super.getCollisionForceFactor(param1,param2);
      }
      
      override protected function getCollisionForceFactor(param1:§0N§, param2:§0N§) : Number
      {
         var _loc3_:Number = NaN;
         if(param1 is §;!T§)
         {
            return Number(param1.§=!_§(param2.§8!Y§()));
         }
         return 1;
      }
      
      public function get §2g§() : Boolean
      {
         var _loc1_:§03§ = null;
         if(§2!r§.length > 0)
         {
            for each(_loc1_ in §2!r§)
            {
               if(_loc1_ is §["Z§)
               {
                  return true;
               }
            }
         }
         return false;
      }
   }
}
