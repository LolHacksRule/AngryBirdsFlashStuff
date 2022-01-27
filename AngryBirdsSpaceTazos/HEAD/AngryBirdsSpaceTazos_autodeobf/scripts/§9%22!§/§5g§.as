package §9"!§
{
   import §&!]§.Sprite;
   import §1z§.§!P§;
   import §1z§.§2#§;
   import §3"#§.§`"8§;
   import §3>§.§,!^§;
   import §3>§.§-"8§;
   import §3>§.§-f§;
   import §3>§.§34§;
   import §3>§.§3n§;
   import §3>§.§7!%§;
   import §6!n§.b2Vec2;
   import §9!K§.b2World;
   import §9!v§.§"[§;
   import §9!v§.§1!_§;
   import §<N§.§[b§;
   import §="+§.§&!i§;
   import §="+§.§5!+§;
   import §="+§.§`o§;
   import §?"@§.§0!T§;
   import flash.geom.Point;
   
   public class §5g§ extends §"" § implements §6!i§
   {
       
      
      protected var § !^§:String;
      
      protected var §]P§:String;
      
      protected var §,;§:b2Vec2;
      
      protected var §7d§:b2Vec2;
      
      protected var §06§:Boolean = true;
      
      protected var §->§:§[b§;
      
      public function §5g§(param1:§`"8§, param2:§!P§, param3:Sprite, param4:String, param5:String = "", param6:String = "")
      {
         var _loc7_:§!P§ = null;
         this.§,;§ = new b2Vec2();
         this.§7d§ = new b2Vec2();
         this.§ !^§ = param5;
         this.§]P§ = param6;
         super(param1,param2,param3,param4);
         if(param2 is §!P§)
         {
            if((_loc7_ = param2 as §!P§).§["-§ > 0)
            {
               this.§06§ = false;
            }
         }
         this.§->§ = new §[b§(param1.mLevelEngine.mWorld);
      }
      
      override public function dispose() : void
      {
         super.dispose();
         if(this.§->§)
         {
            this.§->§.dispose();
            this.§->§ = null;
         }
      }
      
      override protected function getLevelTextureScale() : Number
      {
         var _loc1_:§0!T§ = §'"9§.background as §0!T§;
         if(_loc1_)
         {
            return _loc1_.textureScale;
         }
         return super.getLevelTextureScale();
      }
      
      override protected function shouldShowScoreText(param1:§^"3§) : Boolean
      {
         var _loc2_:§-f§ = null;
         if(param1)
         {
            _loc2_ = param1.levelItem as §-f§;
            if(_loc2_ && _loc2_.spriteScore)
            {
               return false;
            }
         }
         return super.shouldShowScoreText(param1);
      }
      
      override protected function getScoreTextPosition(param1:§^"3§) : Point
      {
         var _loc2_:Number = param1.§`I§().GetPosition().x;
         var _loc3_:Number = param1.§`I§().GetPosition().y;
         return new Point(_loc2_,_loc3_);
      }
      
      override protected function addLevelObjects(param1:§2#§) : void
      {
         var _loc3_:int = 0;
         var _loc4_:Number = NaN;
         var _loc5_:§5!+§ = null;
         var _loc2_:§!P§ = param1 as §!P§;
         if(_loc2_)
         {
            _loc3_ = 0;
            while(_loc3_ < _loc2_.§["-§)
            {
               _loc4_ = 1;
               _loc5_ = _loc2_.§6x§(_loc3_);
               §#]§(_loc5_,_loc5_.id,false,false,false,_loc4_);
               _loc3_++;
            }
         }
         super.addLevelObjects(param1);
      }
      
      protected function addParticleSpace(param1:§&!i§, param2:Sprite, param3:§1!_§) : §,%§
      {
         return null;
      }
      
      override protected function createObjectInstance(param1:§&!i§, param2:Sprite, param3:Boolean = true, param4:Number = 1.0) : §,%§
      {
         var _loc8_:§5!+§ = null;
         var _loc9_:§"[§ = null;
         var _loc10_:§"[§ = null;
         var _loc5_:§3n§;
         var _loc6_:String = (_loc5_ = §'"9§.levelItemManager.getItem(param1.type) as §3n§).itemName;
         var _loc7_:§1!_§ = §'"9§.animationManager.getAnimation(_loc6_);
         if(_loc5_ is §7!%§)
         {
            return this.addParticleSpace(param1,param2,_loc7_);
         }
         if(param1.type.indexOf(§9"$§.§#!"§) != -1)
         {
            if(_loc8_ = param1 as §5!+§)
            {
               if(!_loc5_)
               {
                  throw new Error("Can\'t find gravity sensor definition for \'" + param1.type + "\'");
               }
               _loc9_ = §'"9§.backgroundTextureManager.getTexture(this.§ !^§);
               _loc10_ = §'"9§.backgroundTextureManager.getTexture(this.§]P§);
               return new §9"$§(param2,§'"9§.mLevelEngine.mWorld,param1.x,param1.y,_loc5_,§,!^§(_loc8_.shape).radius,_loc8_.§5!w§,_loc8_.§0j§,_loc8_.§3j§,_loc9_,_loc10_);
            }
         }
         else if(param1.type.indexOf("SENSOR_PIG") != -1)
         {
            return new §9H§(param2,§'"9§.mLevelEngine.mWorld,_loc5_,_loc5_.shape,param1.x,param1.y);
         }
         if(_loc6_.substr(0,13) == "BLOCK_STATIC_")
         {
            return super.createObjectInstance(param1,param2,param3,param4);
         }
         if(_loc5_ is §-f§)
         {
            if(param1 is §`o§)
            {
               return this.createBombBlockInstance(param1,param2,_loc7_,_loc5_,§8S§.§2"9§,param4);
            }
            return this.createObjectBlockSpace(param2,_loc7_,§'"9§.mLevelEngine.mWorld,_loc5_,param1.x,param1.y,param1.angle,param4);
         }
         return super.createObjectInstance(param1,param2,param3,param4);
      }
      
      protected function createObjectBlockSpace(param1:Sprite, param2:§1!_§, param3:b2World, param4:§-"8§, param5:Number, param6:Number, param7:Number, param8:Number) : §@!w§
      {
         return new §@!w§(param1,param2,param3,param4,param5,param6,param7,param8);
      }
      
      override protected function addObjectPig(param1:§&!i§, param2:Sprite, param3:§1!_§, param4:§-"8§, param5:Number = 1.0) : §,r§
      {
         if(param3.hasSubAnimation(§34§.§8"§))
         {
            return new §>![§(param2,param3,§'"9§.mLevelEngine.mWorld,param4,param1.x,param1.y,param1.angle,param5);
         }
         return super.addObjectPig(param1,param2,param3,param4,param5);
      }
      
      override protected function createBombBlockInstance(param1:§&!i§, param2:Sprite, param3:§1!_§, param4:§-"8§, param5:int, param6:Number = 1.0) : §,%§
      {
         var _loc7_:§3n§ = null;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:§`o§ = null;
         if(param4 is §3n§)
         {
            _loc8_ = (_loc7_ = param4 as §3n§).§,$§("explosionRadius");
            _loc9_ = _loc7_.§,$§("explosionForce");
            _loc10_ = _loc7_.§,$§("explosionDamageRadius");
            _loc11_ = _loc7_.§,$§("explosionDamage");
            if(param1 is §`o§)
            {
               _loc12_ = param1 as §`o§;
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
            return new §,!X§(param2,param3,§'"9§.mLevelEngine.mWorld,param4,param1.x,param1.y,param1.angle,_loc8_,_loc9_,_loc10_,_loc11_,param6);
         }
         return super.createBombBlockInstance(param1,param2,param3,param4,param5,param6);
      }
      
      override public function renderObjects(param1:Number, param2:Number, param3:Number) : void
      {
         super.renderObjects(param1,param2,param3);
         if(this.§->§)
         {
            this.§->§.§"!<§(param1,this);
         }
      }
      
      public function §""'§(param1:String, param2:Number, param3:Number, param4:Number, param5:Number, param6:Boolean) : void
      {
         var _loc8_:Number = NaN;
         var _loc9_:Sprite = null;
         var _loc10_:§1!_§ = null;
         var _loc7_:§-f§;
         if(_loc7_ = §'"9§.levelItemManager.getItem(param1) as §-f§)
         {
            _loc8_ = _loc7_.scale;
            if(param6)
            {
               _loc8_ = 1;
            }
            _loc8_ *= 1.5;
            _loc9_ = new Sprite();
            _loc10_ = §'"9§.animationManager.getAnimation(param1);
            this.§->§.§""'§(param2,param3,param4,param5,_loc7_,_loc9_,_loc10_,_loc8_,param6);
            overlaySprite.addChild(_loc9_);
         }
      }
      
      public function § ,§(param1:Number, param2:Number) : §>![§
      {
         var _loc7_:§>![§ = null;
         var _loc8_:b2Vec2 = null;
         var _loc9_:Number = NaN;
         var _loc3_:§>![§ = null;
         var _loc4_:Number = 0;
         var _loc5_:int = §9!S§.length;
         var _loc6_:int = 0;
         while(_loc6_ < _loc5_)
         {
            if((_loc7_ = §9!S§[_loc6_] as §>![§) && _loc7_.health > 0 && !_loc7_.§9!n§)
            {
               _loc8_ = _loc7_.§`I§().GetPosition();
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
      
      public function §8!-§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         §'"9§.setSlowMotion(param1,param2,param3,param4);
      }
      
      override public function getForceAtPoint(param1:Number, param2:Number, param3:Number, param4:b2Vec2) : b2Vec2
      {
         var _loc5_:§]#§ = null;
         var _loc6_:§9"$§ = null;
         if(this.§06§)
         {
            return super.getForceAtPoint(param1,param2,param3,param4);
         }
         if(!param4)
         {
            param4 = new b2Vec2();
         }
         param4.x = 0;
         param4.y = 0;
         for each(_loc5_ in §%n§)
         {
            if(_loc6_ = _loc5_ as §9"$§)
            {
               this.§,;§.x = param1;
               this.§,;§.y = param2;
               _loc6_.§2!r§(this.§,;§,param3,this.§7d§);
               param4.§=4§(this.§7d§);
            }
         }
         return param4;
      }
      
      override protected function updateExplosionEffects(param1:§8S§, param2:Number, param3:Number, param4:Number) : void
      {
      }
      
      override protected function hasMinimumCollisionSpeed(param1:§,%§, param2:§,%§) : Boolean
      {
         return true;
      }
   }
}
