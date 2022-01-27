package §5"D§
{
   import §#!5§.§@"8§;
   import §3R§.§1!R§;
   import §4",§.§3v§;
   import §4",§.§;"%§;
   import §4"@§.Sprite;
   import §5!<§.§+b§;
   import §5!<§.§2" §;
   import §5!<§.§5!l§;
   import §6!M§.§%h§;
   import §6!M§.§3!@§;
   import §6!M§.§74§;
   import §6!M§.§;!4§;
   import §6!M§.§<!r§;
   import §6!M§.§[]§;
   import §;`§.b2World;
   import §?"9§.§<O§;
   import §[!f§.b2Vec2;
   import §^e§.§7!R§;
   import §^e§.§^5§;
   import flash.geom.Point;
   
   public class §6g§ extends §3!3§ implements §-d§
   {
       
      
      protected var §[k§:String;
      
      protected var §4d§:String;
      
      protected var §-!Y§:b2Vec2;
      
      protected var §&!Z§:b2Vec2;
      
      protected var §#"C§:Boolean = true;
      
      protected var §>!8§:§<O§;
      
      public function §6g§(param1:§1!R§, param2:§;"%§, param3:Sprite, param4:String, param5:String = "", param6:String = "")
      {
         var _loc7_:§;"%§ = null;
         this.§-!Y§ = new b2Vec2();
         this.§&!Z§ = new b2Vec2();
         this.§[k§ = param5;
         this.§4d§ = param6;
         super(param1,param2,param3,param4);
         if(param2 is §;"%§)
         {
            if((_loc7_ = param2 as §;"%§).§9-§ > 0)
            {
               this.§#"C§ = false;
            }
         }
         this.§>!8§ = new §<O§(param1.mLevelEngine.mWorld);
      }
      
      override public function dispose() : void
      {
         super.dispose();
         if(this.§>!8§)
         {
            this.§>!8§.dispose();
            this.§>!8§ = null;
         }
      }
      
      override protected function getLevelTextureScale() : Number
      {
         var _loc1_:§@"8§ = §;H§.background as §@"8§;
         if(_loc1_)
         {
            return _loc1_.textureScale;
         }
         return super.getLevelTextureScale();
      }
      
      override protected function shouldShowScoreText(param1:§6!!§) : Boolean
      {
         var _loc2_:§;!4§ = null;
         if(param1)
         {
            _loc2_ = param1.levelItem as §;!4§;
            if(_loc2_ && _loc2_.spriteScore)
            {
               return false;
            }
         }
         return super.shouldShowScoreText(param1);
      }
      
      override protected function getScoreTextPosition(param1:§6!!§) : Point
      {
         var _loc2_:Number = param1.§9B§().GetPosition().x;
         var _loc3_:Number = param1.§9B§().GetPosition().y;
         return new Point(_loc2_,_loc3_);
      }
      
      override protected function addLevelObjects(param1:§3v§) : void
      {
         var _loc3_:int = 0;
         var _loc4_:Number = NaN;
         var _loc5_:§+b§ = null;
         var _loc2_:§;"%§ = param1 as §;"%§;
         if(_loc2_)
         {
            _loc3_ = 0;
            while(_loc3_ < _loc2_.§9-§)
            {
               _loc4_ = 1;
               _loc5_ = _loc2_.§?![§(_loc3_);
               §^Q§(_loc5_,_loc5_.id,false,false,false,_loc4_);
               _loc3_++;
            }
         }
         super.addLevelObjects(param1);
      }
      
      protected function addParticleSpace(param1:§5!l§, param2:Sprite, param3:§^5§) : §>q§
      {
         return null;
      }
      
      override protected function createObjectInstance(param1:§5!l§, param2:Sprite, param3:Boolean = true, param4:Number = 1.0) : §>q§
      {
         var _loc8_:§+b§ = null;
         var _loc9_:§7!R§ = null;
         var _loc10_:§7!R§ = null;
         var _loc5_:§%h§;
         var _loc6_:String = (_loc5_ = §;H§.levelItemManager.getItem(param1.type) as §%h§).itemName;
         var _loc7_:§^5§ = §;H§.animationManager.getAnimation(_loc6_);
         if(_loc5_ is §[]§)
         {
            return this.addParticleSpace(param1,param2,_loc7_);
         }
         if(param1.type.indexOf(§7P§.§8p§) != -1)
         {
            if(_loc8_ = param1 as §+b§)
            {
               if(!_loc5_)
               {
                  throw new Error("Can\'t find gravity sensor definition for \'" + param1.type + "\'");
               }
               _loc9_ = §;H§.backgroundTextureManager.getTexture(this.§[k§);
               _loc10_ = §;H§.backgroundTextureManager.getTexture(this.§4d§);
               return new §7P§(param2,§;H§.mLevelEngine.mWorld,param1.x,param1.y,_loc5_,§3!@§(_loc8_.shape).radius,_loc8_.§,!T§,_loc8_.§&"1§,_loc8_.§7]§,_loc9_,_loc10_);
            }
         }
         else if(param1.type.indexOf("SENSOR_PIG") != -1)
         {
            return new §?Z§(param2,§;H§.mLevelEngine.mWorld,_loc5_,_loc5_.shape,param1.x,param1.y);
         }
         if(_loc6_.substr(0,13) == "BLOCK_STATIC_")
         {
            return super.createObjectInstance(param1,param2,param3,param4);
         }
         if(_loc5_ is §;!4§)
         {
            if(param1 is §2" §)
            {
               return this.createBombBlockInstance(param1,param2,_loc7_,_loc5_,§09§.§,"@§,param4);
            }
            return this.createObjectBlockSpace(param2,_loc7_,§;H§.mLevelEngine.mWorld,_loc5_,param1.x,param1.y,param1.angle,param4);
         }
         return super.createObjectInstance(param1,param2,param3,param4);
      }
      
      protected function createObjectBlockSpace(param1:Sprite, param2:§^5§, param3:b2World, param4:§<!r§, param5:Number, param6:Number, param7:Number, param8:Number) : §"Z§
      {
         return new §"Z§(param1,param2,param3,param4,param5,param6,param7,param8);
      }
      
      override protected function addObjectPig(param1:§5!l§, param2:Sprite, param3:§^5§, param4:§<!r§, param5:Number = 1.0) : §9V§
      {
         if(param3.hasSubAnimation(§74§.§6"E§))
         {
            return new §2!k§(param2,param3,§;H§.mLevelEngine.mWorld,param4,param1.x,param1.y,param1.angle,param5);
         }
         return super.addObjectPig(param1,param2,param3,param4,param5);
      }
      
      override protected function createBombBlockInstance(param1:§5!l§, param2:Sprite, param3:§^5§, param4:§<!r§, param5:int, param6:Number = 1.0) : §>q§
      {
         var _loc7_:§%h§ = null;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:§2" § = null;
         if(param4 is §%h§)
         {
            _loc8_ = (_loc7_ = param4 as §%h§).§2"@§("explosionRadius");
            _loc9_ = _loc7_.§2"@§("explosionForce");
            _loc10_ = _loc7_.§2"@§("explosionDamageRadius");
            _loc11_ = _loc7_.§2"@§("explosionDamage");
            if(param1 is §2" §)
            {
               _loc12_ = param1 as §2" §;
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
            return new §+#§(param2,param3,§;H§.mLevelEngine.mWorld,param4,param1.x,param1.y,param1.angle,_loc8_,_loc9_,_loc10_,_loc11_,param6);
         }
         return super.createBombBlockInstance(param1,param2,param3,param4,param5,param6);
      }
      
      override public function renderObjects(param1:Number, param2:Number, param3:Number) : void
      {
         super.renderObjects(param1,param2,param3);
         if(this.§>!8§)
         {
            this.§>!8§.§7e§(param1,this);
         }
      }
      
      public function §]!u§(param1:String, param2:Number, param3:Number, param4:Number, param5:Number, param6:Boolean) : void
      {
         var _loc8_:Number = NaN;
         var _loc9_:Sprite = null;
         var _loc10_:§^5§ = null;
         var _loc7_:§;!4§;
         if(_loc7_ = §;H§.levelItemManager.getItem(param1) as §;!4§)
         {
            _loc8_ = _loc7_.scale;
            if(param6)
            {
               _loc8_ = 1;
            }
            _loc8_ *= 1.5;
            _loc9_ = new Sprite();
            _loc10_ = §;H§.animationManager.getAnimation(param1);
            this.§>!8§.§]!u§(param2,param3,param4,param5,_loc7_,_loc9_,_loc10_,_loc8_,param6);
            overlaySprite.addChild(_loc9_);
         }
      }
      
      public function §?"8§(param1:Number, param2:Number) : §2!k§
      {
         var _loc7_:§2!k§ = null;
         var _loc8_:b2Vec2 = null;
         var _loc9_:Number = NaN;
         var _loc3_:§2!k§ = null;
         var _loc4_:Number = 0;
         var _loc5_:int = §%!§.length;
         var _loc6_:int = 0;
         while(_loc6_ < _loc5_)
         {
            if((_loc7_ = §%!§[_loc6_] as §2!k§) && _loc7_.health > 0 && !_loc7_.§&!h§)
            {
               _loc8_ = _loc7_.§9B§().GetPosition();
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
      
      public function §!"B§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         §;H§.setSlowMotion(param1,param2,param3,param4);
      }
      
      override public function getForceAtPoint(param1:Number, param2:Number, param3:Number, param4:b2Vec2) : b2Vec2
      {
         var _loc5_:§<!&§ = null;
         var _loc6_:§7P§ = null;
         if(this.§#"C§)
         {
            return super.getForceAtPoint(param1,param2,param3,param4);
         }
         if(!param4)
         {
            param4 = new b2Vec2();
         }
         param4.x = 0;
         param4.y = 0;
         for each(_loc5_ in §1"2§)
         {
            if(_loc6_ = _loc5_ as §7P§)
            {
               this.§-!Y§.x = param1;
               this.§-!Y§.y = param2;
               _loc6_.§do§(this.§-!Y§,param3,this.§&!Z§);
               param4.§ ,§(this.§&!Z§);
            }
         }
         return param4;
      }
      
      override protected function updateExplosionEffects(param1:§09§, param2:Number, param3:Number, param4:Number) : void
      {
      }
      
      override protected function hasMinimumCollisionSpeed(param1:§>q§, param2:§>q§) : Boolean
      {
         return true;
      }
   }
}
