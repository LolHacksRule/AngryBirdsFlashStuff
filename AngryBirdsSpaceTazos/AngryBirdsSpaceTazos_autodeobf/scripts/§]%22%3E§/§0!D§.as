package §]">§
{
   import §"!&§.§%F§;
   import §"!&§.§3",§;
   import §"!&§.§8X§;
   import §"!&§.§="A§;
   import §"!&§.§]!C§;
   import §"!&§.§`D§;
   import §'!&§.b2World;
   import §'4§.§^g§;
   import §4&§.§#r§;
   import §4&§.§'!"§;
   import §7!8§.Sprite;
   import §9t§.b2Vec2;
   import §<!o§.§32§;
   import §@"2§.§@!4§;
   import §@w§.§&"<§;
   import §@w§.§[!!§;
   import §@w§.§`a§;
   import §`!j§.§#b§;
   import §`!j§.§2!7§;
   import flash.geom.Point;
   
   public class §0!D§ extends §-%§ implements §&"4§
   {
       
      
      protected var §-L§:String;
      
      protected var §^%§:String;
      
      protected var §4!r§:b2Vec2;
      
      protected var §do§:b2Vec2;
      
      protected var §'! §:Boolean = true;
      
      protected var §,G§:§@!4§;
      
      public function §0!D§(param1:§^g§, param2:§2!7§, param3:Sprite, param4:String, param5:String = "", param6:String = "")
      {
         var _loc7_:§2!7§ = null;
         this.§4!r§ = new b2Vec2();
         this.§do§ = new b2Vec2();
         this.§-L§ = param5;
         this.§^%§ = param6;
         super(param1,param2,param3,param4);
         if(param2 is §2!7§)
         {
            if((_loc7_ = param2 as §2!7§).§ H§ > 0)
            {
               this.§'! § = false;
            }
         }
         this.§,G§ = new §@!4§(param1.mLevelEngine.mWorld);
      }
      
      override public function dispose() : void
      {
         super.dispose();
         if(this.§,G§)
         {
            this.§,G§.dispose();
            this.§,G§ = null;
         }
      }
      
      override protected function getLevelTextureScale() : Number
      {
         var _loc1_:§32§ = §?>§.background as §32§;
         if(_loc1_)
         {
            return _loc1_.textureScale;
         }
         return super.getLevelTextureScale();
      }
      
      override protected function shouldShowScoreText(param1:§1!0§) : Boolean
      {
         var _loc2_:§]!C§ = null;
         if(param1)
         {
            _loc2_ = param1.levelItem as §]!C§;
            if(_loc2_ && _loc2_.spriteScore)
            {
               return false;
            }
         }
         return super.shouldShowScoreText(param1);
      }
      
      override protected function getScoreTextPosition(param1:§1!0§) : Point
      {
         var _loc2_:Number = param1.§^!z§().GetPosition().x;
         var _loc3_:Number = param1.§^!z§().GetPosition().y;
         return new Point(_loc2_,_loc3_);
      }
      
      override protected function addLevelObjects(param1:§#b§) : void
      {
         var _loc3_:int = 0;
         var _loc4_:Number = NaN;
         var _loc5_:§&"<§ = null;
         var _loc2_:§2!7§ = param1 as §2!7§;
         if(_loc2_)
         {
            _loc3_ = 0;
            while(_loc3_ < _loc2_.§ H§)
            {
               _loc4_ = 1;
               _loc5_ = _loc2_.§!"?§(_loc3_);
               §%"F§(_loc5_,_loc5_.id,false,false,false,_loc4_);
               _loc3_++;
            }
         }
         super.addLevelObjects(param1);
      }
      
      protected function addParticleSpace(param1:§`a§, param2:Sprite, param3:§#r§) : §<!=§
      {
         return null;
      }
      
      override protected function createObjectInstance(param1:§`a§, param2:Sprite, param3:Boolean = true, param4:Number = 1.0) : §<!=§
      {
         var _loc8_:§&"<§ = null;
         var _loc9_:§'!"§ = null;
         var _loc10_:§'!"§ = null;
         var _loc5_:§`D§;
         var _loc6_:String = (_loc5_ = §?>§.levelItemManager.getItem(param1.type) as §`D§).itemName;
         var _loc7_:§#r§ = §?>§.animationManager.getAnimation(_loc6_);
         if(_loc5_ is §%F§)
         {
            return this.addParticleSpace(param1,param2,_loc7_);
         }
         if(param1.type.indexOf(§5a§.§!!p§) != -1)
         {
            if(_loc8_ = param1 as §&"<§)
            {
               if(!_loc5_)
               {
                  throw new Error("Can\'t find gravity sensor definition for \'" + param1.type + "\'");
               }
               _loc9_ = §?>§.backgroundTextureManager.getTexture(this.§-L§);
               _loc10_ = §?>§.backgroundTextureManager.getTexture(this.§^%§);
               return new §5a§(param2,§?>§.mLevelEngine.mWorld,param1.x,param1.y,_loc5_,§="A§(_loc8_.shape).radius,_loc8_.§&G§,_loc8_.§1^§,_loc8_.§^!_§,_loc9_,_loc10_);
            }
         }
         else if(param1.type.indexOf("SENSOR_PIG") != -1)
         {
            return new §[!m§(param2,§?>§.mLevelEngine.mWorld,_loc5_,_loc5_.shape,param1.x,param1.y);
         }
         if(_loc6_.substr(0,13) == "BLOCK_STATIC_")
         {
            return super.createObjectInstance(param1,param2,param3,param4);
         }
         if(_loc5_ is §]!C§)
         {
            if(param1 is §[!!§)
            {
               return this.createBombBlockInstance(param1,param2,_loc7_,_loc5_,§5&§.§-!Y§,param4);
            }
            return this.createObjectBlockSpace(param2,_loc7_,§?>§.mLevelEngine.mWorld,_loc5_,param1.x,param1.y,param1.angle,param4);
         }
         return super.createObjectInstance(param1,param2,param3,param4);
      }
      
      protected function createObjectBlockSpace(param1:Sprite, param2:§#r§, param3:b2World, param4:§8X§, param5:Number, param6:Number, param7:Number, param8:Number) : §-"A§
      {
         return new §-"A§(param1,param2,param3,param4,param5,param6,param7,param8);
      }
      
      override protected function addObjectPig(param1:§`a§, param2:Sprite, param3:§#r§, param4:§8X§, param5:Number = 1.0) : §50§
      {
         if(param3.hasSubAnimation(§3",§.§#"B§))
         {
            return new §?!`§(param2,param3,§?>§.mLevelEngine.mWorld,param4,param1.x,param1.y,param1.angle,param5);
         }
         return super.addObjectPig(param1,param2,param3,param4,param5);
      }
      
      override protected function createBombBlockInstance(param1:§`a§, param2:Sprite, param3:§#r§, param4:§8X§, param5:int, param6:Number = 1.0) : §<!=§
      {
         var _loc7_:§`D§ = null;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:§[!!§ = null;
         if(param4 is §`D§)
         {
            _loc8_ = (_loc7_ = param4 as §`D§).§=c§("explosionRadius");
            _loc9_ = _loc7_.§=c§("explosionForce");
            _loc10_ = _loc7_.§=c§("explosionDamageRadius");
            _loc11_ = _loc7_.§=c§("explosionDamage");
            if(param1 is §[!!§)
            {
               _loc12_ = param1 as §[!!§;
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
            return new §3U§(param2,param3,§?>§.mLevelEngine.mWorld,param4,param1.x,param1.y,param1.angle,_loc8_,_loc9_,_loc10_,_loc11_,param6);
         }
         return super.createBombBlockInstance(param1,param2,param3,param4,param5,param6);
      }
      
      override public function renderObjects(param1:Number, param2:Number, param3:Number) : void
      {
         super.renderObjects(param1,param2,param3);
         if(this.§,G§)
         {
            this.§,G§.§<"<§(param1,this);
         }
      }
      
      public function §,"C§(param1:String, param2:Number, param3:Number, param4:Number, param5:Number, param6:Boolean) : void
      {
         var _loc8_:Number = NaN;
         var _loc9_:Sprite = null;
         var _loc10_:§#r§ = null;
         var _loc7_:§]!C§;
         if(_loc7_ = §?>§.levelItemManager.getItem(param1) as §]!C§)
         {
            _loc8_ = _loc7_.scale;
            if(param6)
            {
               _loc8_ = 1;
            }
            _loc8_ *= 1.5;
            _loc9_ = new Sprite();
            _loc10_ = §?>§.animationManager.getAnimation(param1);
            this.§,G§.§,"C§(param2,param3,param4,param5,_loc7_,_loc9_,_loc10_,_loc8_,param6);
            overlaySprite.addChild(_loc9_);
         }
      }
      
      public function §@[§(param1:Number, param2:Number) : §?!`§
      {
         var _loc7_:§?!`§ = null;
         var _loc8_:b2Vec2 = null;
         var _loc9_:Number = NaN;
         var _loc3_:§?!`§ = null;
         var _loc4_:Number = 0;
         var _loc5_:int = §-`§.length;
         var _loc6_:int = 0;
         while(_loc6_ < _loc5_)
         {
            if((_loc7_ = §-`§[_loc6_] as §?!`§) && _loc7_.health > 0 && !_loc7_.§@k§)
            {
               _loc8_ = _loc7_.§^!z§().GetPosition();
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
      
      public function §9!b§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         §?>§.setSlowMotion(param1,param2,param3,param4);
      }
      
      override public function getForceAtPoint(param1:Number, param2:Number, param3:Number, param4:b2Vec2) : b2Vec2
      {
         var _loc5_:§3=§ = null;
         var _loc6_:§5a§ = null;
         if(this.§'! §)
         {
            return super.getForceAtPoint(param1,param2,param3,param4);
         }
         if(!param4)
         {
            param4 = new b2Vec2();
         }
         param4.x = 0;
         param4.y = 0;
         for each(_loc5_ in §0!<§)
         {
            if(_loc6_ = _loc5_ as §5a§)
            {
               this.§4!r§.x = param1;
               this.§4!r§.y = param2;
               _loc6_.§?!N§(this.§4!r§,param3,this.§do§);
               param4.§]!H§(this.§do§);
            }
         }
         return param4;
      }
      
      override protected function updateExplosionEffects(param1:§5&§, param2:Number, param3:Number, param4:Number) : void
      {
      }
      
      override protected function hasMinimumCollisionSpeed(param1:§<!=§, param2:§<!=§) : Boolean
      {
         return true;
      }
   }
}
