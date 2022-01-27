package §6"R§
{
   import §,#+§.§<U§;
   import §,#+§.§="l§;
   import §1"s§.Sprite;
   import §1x§.b2World;
   import §3"$§.§[a§;
   import §3"$§.§]!h§;
   import §4"F§.§""r§;
   import §4"F§.§8"r§;
   import §4"F§.§^d§;
   import §4=§.§99§;
   import §5!q§.§3"X§;
   import §7!S§.§ !x§;
   import §;[§.§0!9§;
   import §;[§.§<!x§;
   import §>P§.§&"T§;
   import §>P§.§3t§;
   import §>P§.§;+§;
   import §>P§.§=!,§;
   import §>P§.§=4§;
   import §>P§.§^#'§;
   import §^>§.b2Vec2;
   import flash.geom.Point;
   
   public class §"!n§ extends §super§ implements § !Q§
   {
       
      
      protected var §&!P§:String;
      
      protected var §%!B§:String;
      
      protected var §%!F§:b2Vec2;
      
      protected var § "h§:b2Vec2;
      
      protected var §8<§:Boolean = true;
      
      protected var §=P§:§99§;
      
      public function §"!n§(param1:§3"X§, param2:§<U§, param3:Sprite, param4:String, param5:String = "", param6:String = "")
      {
         var _loc7_:§="l§ = null;
         this.§%!F§ = new b2Vec2();
         this.§ "h§ = new b2Vec2();
         this.§&!P§ = param5;
         this.§%!B§ = param6;
         super(param1,param2,param3,param4);
         if(param2 is §="l§)
         {
            if((_loc7_ = param2 as §="l§).§#p§ > 0)
            {
               this.§8<§ = false;
            }
         }
         this.§=P§ = new §99§(param1.mLevelEngine.mWorld);
      }
      
      override public function dispose() : void
      {
         super.dispose();
         if(this.§=P§)
         {
            this.§=P§.dispose();
            this.§=P§ = null;
         }
      }
      
      override protected function getLevelTextureScale() : Number
      {
         var _loc1_:§ !x§ = §]""§.background as § !x§;
         if(_loc1_)
         {
            return _loc1_.textureScale;
         }
         return super.getLevelTextureScale();
      }
      
      override protected function shouldShowScoreText(param1:§4!w§) : Boolean
      {
         var _loc2_:§;+§ = null;
         if(param1)
         {
            _loc2_ = param1.levelItem as §;+§;
            if(_loc2_ && _loc2_.spriteScore)
            {
               return false;
            }
         }
         return super.shouldShowScoreText(param1);
      }
      
      override protected function getScoreTextPosition(param1:§4!w§) : Point
      {
         var _loc2_:Number = param1.§?"Z§().GetPosition().x;
         var _loc3_:Number = param1.§?"Z§().GetPosition().y;
         return new Point(_loc2_,_loc3_);
      }
      
      override protected function addLevelObjects(param1:§<U§) : void
      {
         var _loc3_:int = 0;
         var _loc4_:Number = NaN;
         var _loc5_:§8"r§ = null;
         var _loc2_:§="l§ = param1 as §="l§;
         if(_loc2_)
         {
            _loc3_ = 0;
            while(_loc3_ < _loc2_.§#p§)
            {
               _loc4_ = 1;
               _loc5_ = _loc2_.§6!T§(_loc3_);
               §0+§(_loc5_,_loc5_.id,false,false,false,_loc4_);
               _loc3_++;
            }
         }
         super.addLevelObjects(param1);
      }
      
      protected function addParticleSpace(param1:§^d§, param2:Sprite, param3:§[a§) : §!z§
      {
         return null;
      }
      
      override protected function createObjectInstance(param1:§^d§, param2:Sprite, param3:Boolean = true, param4:Number = 1.0) : §!z§
      {
         var _loc6_:String = null;
         var _loc7_:§[a§ = null;
         var _loc8_:§8"r§ = null;
         var _loc9_:§]!h§ = null;
         var _loc10_:§]!h§ = null;
         var _loc5_:§=!,§;
         if((_loc5_ = §]""§.levelItemManager.getItem(param1.type)) is §=4§)
         {
            _loc6_ = _loc5_.itemName;
            _loc7_ = §]""§.animationManager.getAnimation(_loc6_);
            if(_loc5_ is §^#'§)
            {
               return this.addParticleSpace(param1,param2,_loc7_);
            }
            if(param1.type.indexOf(§?!T§.§^!3§) != -1)
            {
               if(_loc8_ = param1 as §8"r§)
               {
                  if(!_loc5_)
                  {
                     throw new Error("Can\'t find gravity sensor definition for \'" + param1.type + "\'");
                  }
                  _loc9_ = §]""§.backgroundTextureManager.getTexture(this.§&!P§);
                  _loc10_ = §]""§.backgroundTextureManager.getTexture(this.§%!B§);
                  return new §?!T§(param2,§]""§.mLevelEngine.mWorld,param1,_loc5_ as §=4§,§3t§(_loc8_.shape).radius,_loc8_.§?#0§,_loc8_.§0"l§,_loc8_.§"d§,_loc9_,_loc10_);
               }
            }
            else if(param1.type.indexOf("SENSOR_PIG") != -1)
            {
               return new §1_§(param2,§]""§.mLevelEngine.mWorld,_loc5_,_loc5_.shape,param1);
            }
            if(_loc6_.substr(0,13) == "BLOCK_STATIC_")
            {
               return super.createObjectInstance(param1,param2,param3,param4);
            }
            if(_loc6_.substr(0,7) == "BUBBLE_")
            {
               return new §4!3§(param2,_loc7_,§]""§.mLevelEngine.mWorld,_loc5_,param1,param4);
            }
            if(_loc5_ is §;+§)
            {
               if(param1 is §""r§)
               {
                  return this.createBombBlockInstance(param1,param2,_loc7_,_loc5_,§<!<§.§+D§,param4);
               }
               return this.createObjectBlockSpace(param2,_loc7_,§]""§.mLevelEngine.mWorld,_loc5_,param1,param4);
            }
         }
         return super.createObjectInstance(param1,param2,param3,param4);
      }
      
      protected function createObjectBlockSpace(param1:Sprite, param2:§[a§, param3:b2World, param4:§=!,§, param5:§^d§, param6:Number) : §6"1§
      {
         return new §6"1§(param1,param2,param3,param4,param5,param6);
      }
      
      override protected function addObjectPig(param1:§^d§, param2:Sprite, param3:§[a§, param4:§=!,§, param5:Number = 1.0) : §-#'§
      {
         if(param3.hasSubAnimation(§&"T§.§%!3§))
         {
            return new §[!R§(param2,param3,§]""§.mLevelEngine.mWorld,param4,param1,param5);
         }
         return super.addObjectPig(param1,param2,param3,param4,param5);
      }
      
      override protected function createBombBlockInstance(param1:§^d§, param2:Sprite, param3:§[a§, param4:§=!,§, param5:int, param6:Number = 1.0) : §!z§
      {
         var _loc7_:§=4§ = null;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:§""r§ = null;
         if(param4 is §=4§)
         {
            _loc8_ = (_loc7_ = param4 as §=4§).getNumberProperty("explosionRadius");
            _loc9_ = _loc7_.getNumberProperty("explosionForce");
            _loc10_ = _loc7_.getNumberProperty("explosionDamageRadius");
            _loc11_ = _loc7_.getNumberProperty("explosionDamage");
            if(param1 is §""r§)
            {
               _loc12_ = param1 as §""r§;
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
            return new §3=§(param2,param3,§]""§.mLevelEngine.mWorld,param4,param1,_loc8_,_loc9_,_loc10_,_loc11_,param6);
         }
         return super.createBombBlockInstance(param1,param2,param3,param4,param5,param6);
      }
      
      override public function renderObjects(param1:Number, param2:Number, param3:Number) : void
      {
         super.renderObjects(param1,param2,param3);
         if(this.§=P§)
         {
            this.§=P§.§8!7§(param1,this);
         }
      }
      
      override protected function getExplosionDamageMultiplier(param1:Number, param2:Number) : Number
      {
         return 1 - param1 / param2;
      }
      
      protected function §3L§(param1:Number, param2:Number) : Number
      {
         return super.getExplosionDamageMultiplier(param1,param2);
      }
      
      override protected function getExplosionDistanceToObject(param1:Number, param2:Number, param3:§4!w§) : §<!x§
      {
         var _loc4_:Number = param3.§?"Z§().GetPosition().x;
         var _loc5_:Number = param3.§?"Z§().GetPosition().y;
         var _loc6_:Number = param3.levelItem.shape.getWidth();
         var _loc7_:Number = param3.levelItem.shape.getHeight();
         var _loc8_:Number = param3.§?"Z§().GetAngle();
         return §0!9§.§7"3§(_loc4_,_loc5_,_loc6_,_loc7_,_loc8_,param1,param2);
      }
      
      protected function §@[§(param1:Number, param2:Number, param3:§4!w§) : §<!x§
      {
         return super.getExplosionDistanceToObject(param1,param2,param3);
      }
      
      public function §^"L§(param1:String, param2:Number, param3:Number, param4:Number, param5:Number, param6:Boolean) : void
      {
         var _loc8_:Number = NaN;
         var _loc9_:Sprite = null;
         var _loc10_:§[a§ = null;
         var _loc7_:§;+§;
         if(_loc7_ = §]""§.levelItemManager.getItem(param1) as §;+§)
         {
            _loc8_ = _loc7_.scale;
            if(param6)
            {
               _loc8_ = 1;
            }
            _loc8_ *= 1.5;
            _loc9_ = new Sprite();
            _loc10_ = §]""§.animationManager.getAnimation(param1);
            this.§=P§.§^"L§(param2,param3,param4,param5,_loc7_,_loc9_,_loc10_,_loc8_,param6);
            §1"A§.addChild(_loc9_);
         }
      }
      
      public function §5H§(param1:Number, param2:Number) : §[!R§
      {
         var _loc7_:§[!R§ = null;
         var _loc8_:b2Vec2 = null;
         var _loc9_:Number = NaN;
         var _loc3_:§[!R§ = null;
         var _loc4_:Number = 0;
         var _loc5_:int = §,z§.length;
         var _loc6_:int = 0;
         while(_loc6_ < _loc5_)
         {
            if((_loc7_ = §,z§[_loc6_] as §[!R§) && _loc7_.health > 0 && !_loc7_.§4"n§)
            {
               _loc8_ = _loc7_.§?"Z§().GetPosition();
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
      
      public function §8#3§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         §]""§.setSlowMotion(param1,param2,param3,param4);
      }
      
      override public function getForceAtPoint(param1:Number, param2:Number, param3:Number, param4:b2Vec2) : b2Vec2
      {
         var _loc5_:§-t§ = null;
         var _loc6_:§?!T§ = null;
         if(this.§8<§)
         {
            return super.getForceAtPoint(param1,param2,param3,param4);
         }
         if(!param4)
         {
            param4 = new b2Vec2();
         }
         param4.x = 0;
         param4.y = 0;
         for each(_loc5_ in §["M§)
         {
            if(_loc6_ = _loc5_ as §?!T§)
            {
               this.§%!F§.x = param1;
               this.§%!F§.y = param2;
               _loc6_.§,X§(this.§%!F§,param3,this.§ "h§);
               param4.§%#3§(this.§ "h§);
            }
         }
         return param4;
      }
      
      override protected function updateExplosionEffects(param1:§<!<§, param2:Number, param3:Number, param4:Number) : void
      {
      }
      
      protected function §8# §(param1:§<!<§, param2:Number, param3:Number, param4:Number) : void
      {
         super.updateExplosionEffects(param1,param2,param3,param4);
      }
      
      override protected function hasMinimumCollisionSpeed(param1:§!z§, param2:§!z§) : Boolean
      {
         return true;
      }
      
      protected function §@3§(param1:§4!w§, param2:§4!w§) : Number
      {
         return super.getCollisionDamageFactor(param1,param2);
      }
      
      override protected function getCollisionDamageFactor(param1:§4!w§, param2:§4!w§) : Number
      {
         var _loc3_:Number = NaN;
         if(param1 is §%!0§)
         {
            return 1;
         }
         if(param2 is §%!0§)
         {
            return 0;
         }
         return Number(param1.§2!^§(param2.§,T§()));
      }
      
      protected function §=?§(param1:§4!w§, param2:§4!w§) : Number
      {
         return super.getCollisionForceFactor(param1,param2);
      }
      
      override protected function getCollisionForceFactor(param1:§4!w§, param2:§4!w§) : Number
      {
         var _loc3_:Number = NaN;
         if(param1 is §%!0§)
         {
            return Number(param1.§2!^§(param2.§,T§()));
         }
         return 1;
      }
      
      public function get §[H§() : Boolean
      {
         var _loc1_:§-t§ = null;
         if(§["M§.length > 0)
         {
            for each(_loc1_ in §["M§)
            {
               if(_loc1_ is §?!T§)
               {
                  return true;
               }
            }
         }
         return false;
      }
   }
}
