package §[,§
{
   import §#!X§.b2World;
   import §&!S§.b2Vec2;
   import §'!&§.Sprite;
   import §-!b§.§#q§;
   import §8o§.§!">§;
   import §8o§.§]!U§;
   import §;!0§.§!!#§;
   import §;!0§.§!!X§;
   import §;"=§.§!!O§;
   import §;"=§.§+C§;
   import §;"=§.§-'§;
   import §;"=§.§9!B§;
   import §;"=§.§]"<§;
   import §;"=§.§return§;
   import §>"-§.§=x§;
   import §?!<§.§'!1§;
   import §[!v§.§!e§;
   import §[!v§.§9!6§;
   import §[!v§.§;!c§;
   import flash.geom.Point;
   
   public class §%Y§ extends §]j§ implements §5r§
   {
       
      
      protected var §7^§:String;
      
      protected var §%!_§:String;
      
      protected var §%o§:b2Vec2;
      
      protected var §&d§:b2Vec2;
      
      protected var §"o§:Boolean = true;
      
      protected var §[[§:§=x§;
      
      public function §%Y§(param1:§'!1§, param2:§!!#§, param3:Sprite, param4:String, param5:String = "", param6:String = "")
      {
         var _loc7_:§!!#§ = null;
         this.§%o§ = new b2Vec2();
         this.§&d§ = new b2Vec2();
         this.§7^§ = param5;
         this.§%!_§ = param6;
         super(param1,param2,param3,param4);
         if(param2 is §!!#§)
         {
            if((_loc7_ = param2 as §!!#§).§5!L§ > 0)
            {
               this.§"o§ = false;
            }
         }
         this.§[[§ = new §=x§(param1.mLevelEngine.mWorld);
      }
      
      override public function dispose() : void
      {
         super.dispose();
         if(this.§[[§)
         {
            this.§[[§.dispose();
            this.§[[§ = null;
         }
      }
      
      override protected function getLevelTextureScale() : Number
      {
         var _loc1_:§#q§ = §1!3§.background as §#q§;
         if(_loc1_)
         {
            return _loc1_.textureScale;
         }
         return super.getLevelTextureScale();
      }
      
      override protected function shouldShowScoreText(param1:§5,§) : Boolean
      {
         var _loc2_:§!!O§ = null;
         if(param1)
         {
            _loc2_ = param1.levelItem as §!!O§;
            if(_loc2_ && _loc2_.spriteScore)
            {
               return false;
            }
         }
         return super.shouldShowScoreText(param1);
      }
      
      override protected function getScoreTextPosition(param1:§5,§) : Point
      {
         var _loc2_:Number = param1.§ <§().GetPosition().x;
         var _loc3_:Number = param1.§ <§().GetPosition().y;
         return new Point(_loc2_,_loc3_);
      }
      
      override protected function addLevelObjects(param1:§!!X§) : void
      {
         var _loc3_:int = 0;
         var _loc4_:Number = NaN;
         var _loc5_:§;!c§ = null;
         var _loc2_:§!!#§ = param1 as §!!#§;
         if(_loc2_)
         {
            _loc3_ = 0;
            while(_loc3_ < _loc2_.§5!L§)
            {
               _loc4_ = 1;
               _loc5_ = _loc2_.§>!2§(_loc3_);
               §"e§(_loc5_,_loc5_.id,false,false,false,_loc4_);
               _loc3_++;
            }
         }
         super.addLevelObjects(param1);
      }
      
      protected function addParticleSpace(param1:§!e§, param2:Sprite, param3:§]!U§) : §1d§
      {
         return null;
      }
      
      override protected function createObjectInstance(param1:§!e§, param2:Sprite, param3:Boolean = true, param4:Number = 1.0) : §1d§
      {
         var _loc8_:§;!c§ = null;
         var _loc9_:§!">§ = null;
         var _loc10_:§!">§ = null;
         var _loc5_:§+C§;
         var _loc6_:String = (_loc5_ = §1!3§.levelItemManager.getItem(param1.type) as §+C§).itemName;
         var _loc7_:§]!U§ = §1!3§.animationManager.getAnimation(_loc6_);
         if(_loc5_ is §return§)
         {
            return this.addParticleSpace(param1,param2,_loc7_);
         }
         if(param1.type.indexOf(§9!q§.§2_§) != -1)
         {
            if(_loc8_ = param1 as §;!c§)
            {
               if(!_loc5_)
               {
                  throw new Error("Can\'t find gravity sensor definition for \'" + param1.type + "\'");
               }
               _loc9_ = §1!3§.backgroundTextureManager.getTexture(this.§7^§);
               _loc10_ = §1!3§.backgroundTextureManager.getTexture(this.§%!_§);
               return new §9!q§(param2,§1!3§.mLevelEngine.mWorld,param1.x,param1.y,_loc5_,§9!B§(_loc8_.shape).radius,_loc8_.§]!5§,_loc8_.§2"2§,_loc8_.§?S§,_loc9_,_loc10_);
            }
         }
         else if(param1.type.indexOf("SENSOR_PIG") != -1)
         {
            return new §>e§(param2,§1!3§.mLevelEngine.mWorld,_loc5_,_loc5_.shape,param1.x,param1.y);
         }
         if(_loc6_.substr(0,13) == "BLOCK_STATIC_")
         {
            return super.createObjectInstance(param1,param2,param3,param4);
         }
         if(_loc5_ is §!!O§)
         {
            if(param1 is §9!6§)
            {
               return this.createBombBlockInstance(param1,param2,_loc7_,_loc5_,§7!+§.§>4§,param4);
            }
            return this.createObjectBlockSpace(param2,_loc7_,§1!3§.mLevelEngine.mWorld,_loc5_,param1.x,param1.y,param1.angle,param4);
         }
         return super.createObjectInstance(param1,param2,param3,param4);
      }
      
      protected function createObjectBlockSpace(param1:Sprite, param2:§]!U§, param3:b2World, param4:§]"<§, param5:Number, param6:Number, param7:Number, param8:Number) : §#a§
      {
         return new §#a§(param1,param2,param3,param4,param5,param6,param7,param8);
      }
      
      override protected function addObjectPig(param1:§!e§, param2:Sprite, param3:§]!U§, param4:§]"<§, param5:Number = 1.0) : §<!f§
      {
         if(param3.hasSubAnimation(§-'§.§4M§))
         {
            return new §0l§(param2,param3,§1!3§.mLevelEngine.mWorld,param4,param1.x,param1.y,param1.angle,param5);
         }
         return super.addObjectPig(param1,param2,param3,param4,param5);
      }
      
      override protected function createBombBlockInstance(param1:§!e§, param2:Sprite, param3:§]!U§, param4:§]"<§, param5:int, param6:Number = 1.0) : §1d§
      {
         var _loc7_:§+C§ = null;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:§9!6§ = null;
         if(param4 is §+C§)
         {
            _loc8_ = (_loc7_ = param4 as §+C§).§0f§("explosionRadius");
            _loc9_ = _loc7_.§0f§("explosionForce");
            _loc10_ = _loc7_.§0f§("explosionDamageRadius");
            _loc11_ = _loc7_.§0f§("explosionDamage");
            if(param1 is §9!6§)
            {
               _loc12_ = param1 as §9!6§;
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
            return new §,m§(param2,param3,§1!3§.mLevelEngine.mWorld,param4,param1.x,param1.y,param1.angle,_loc8_,_loc9_,_loc10_,_loc11_,param6);
         }
         return super.createBombBlockInstance(param1,param2,param3,param4,param5,param6);
      }
      
      override public function renderObjects(param1:Number, param2:Number, param3:Number) : void
      {
         super.renderObjects(param1,param2,param3);
         if(this.§[[§)
         {
            this.§[[§.§#[§(param1,this);
         }
      }
      
      public function §8"5§(param1:String, param2:Number, param3:Number, param4:Number, param5:Number, param6:Boolean) : void
      {
         var _loc8_:Number = NaN;
         var _loc9_:Sprite = null;
         var _loc10_:§]!U§ = null;
         var _loc7_:§!!O§;
         if(_loc7_ = §1!3§.levelItemManager.getItem(param1) as §!!O§)
         {
            _loc8_ = _loc7_.scale;
            if(param6)
            {
               _loc8_ = 1;
            }
            _loc8_ *= 1.5;
            _loc9_ = new Sprite();
            _loc10_ = §1!3§.animationManager.getAnimation(param1);
            this.§[[§.§8"5§(param2,param3,param4,param5,_loc7_,_loc9_,_loc10_,_loc8_,param6);
            overlaySprite.addChild(_loc9_);
         }
      }
      
      public function §'!6§(param1:Number, param2:Number) : §0l§
      {
         var _loc7_:§0l§ = null;
         var _loc8_:b2Vec2 = null;
         var _loc9_:Number = NaN;
         var _loc3_:§0l§ = null;
         var _loc4_:Number = 0;
         var _loc5_:int = §0Y§.length;
         var _loc6_:int = 0;
         while(_loc6_ < _loc5_)
         {
            if((_loc7_ = §0Y§[_loc6_] as §0l§) && _loc7_.health > 0 && !_loc7_.§-z§)
            {
               _loc8_ = _loc7_.§ <§().GetPosition();
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
      
      public function §5T§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         §1!3§.setSlowMotion(param1,param2,param3,param4);
      }
      
      override public function getForceAtPoint(param1:Number, param2:Number, param3:Number, param4:b2Vec2) : b2Vec2
      {
         var _loc5_:§8!a§ = null;
         var _loc6_:§9!q§ = null;
         if(this.§"o§)
         {
            return super.getForceAtPoint(param1,param2,param3,param4);
         }
         if(!param4)
         {
            param4 = new b2Vec2();
         }
         param4.x = 0;
         param4.y = 0;
         for each(_loc5_ in §"!`§)
         {
            if(_loc6_ = _loc5_ as §9!q§)
            {
               this.§%o§.x = param1;
               this.§%o§.y = param2;
               _loc6_.§%!u§(this.§%o§,param3,this.§&d§);
               param4.§7-§(this.§&d§);
            }
         }
         return param4;
      }
      
      override protected function updateExplosionEffects(param1:§7!+§, param2:Number, param3:Number, param4:Number) : void
      {
      }
      
      override protected function hasMinimumCollisionSpeed(param1:§1d§, param2:§1d§) : Boolean
      {
         return true;
      }
   }
}
