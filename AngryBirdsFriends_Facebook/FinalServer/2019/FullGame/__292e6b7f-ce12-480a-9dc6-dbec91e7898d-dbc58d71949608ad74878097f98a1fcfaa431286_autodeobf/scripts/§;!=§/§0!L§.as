package §;!=§
{
   import § !N§.§2>§;
   import § !N§.§3§;
   import § !N§.§5"?§;
   import §#g§.§8§;
   import §'#K§.b2World;
   import §,#e§.Sprite;
   import §04§.b2Vec2;
   import §6"u§.§?"T§;
   import §7"T§.§4!L§;
   import §7"T§.§7b§;
   import §7"o§.§ "5§;
   import §7"o§.§3§;
   import §7"o§.§7"L§;
   import §7"o§.§8#n§;
   import §7"o§.§>§;
   import §7#$§.§6"]§;
   import §7#$§.§?# §;
   import §8#K§.§ !=§;
   import §8#K§.§&2§;
   import §8#K§.§<5§;
   import §8#K§.§=$'§;
   import §8#K§.§?!t§;
   import §8#K§.§?"L§;
   import §9#G§.§[$#§;
   import §9#G§.§var§;
   import §@#b§.§"#F§;
   import flash.geom.Point;
   
   public class §0!L§ extends § !i§ implements §-$ §
   {
       
      
      protected var §,_§:String;
      
      protected var §[Q§:String;
      
      protected var §0!h§:b2Vec2;
      
      protected var §<#6§:b2Vec2;
      
      protected var §!!0§:Boolean = true;
      
      protected var §<$ §:§?"T§;
      
      public function §0!L§(param1:§8#3§, param2:§?# §, param3:Sprite, param4:String, param5:String = "", param6:String = "")
      {
         var _loc7_:§6"]§ = null;
         this.§0!h§ = new b2Vec2();
         this.§<#6§ = new b2Vec2();
         this.§,_§ = param5;
         this.§[Q§ = param6;
         super(param1,param2,param3,param4);
         if(param2 is §6"]§)
         {
            if((_loc7_ = param2 as §6"]§).§'"`§ > 0)
            {
               this.§!!0§ = false;
            }
         }
         this.§<$ § = new §?"T§(param1.mLevelEngine.mWorld);
      }
      
      override public function dispose() : void
      {
         super.dispose();
         if(this.§<$ §)
         {
            this.§<$ §.dispose();
            this.§<$ § = null;
         }
      }
      
      override protected function getLevelTextureScale() : Number
      {
         var _loc1_:§"#F§ = §9!E§.background as §"#F§;
         if(_loc1_)
         {
            return _loc1_.§!#Z§;
         }
         return super.getLevelTextureScale();
      }
      
      override protected function shouldShowScoreText(param1:§>"G§) : Boolean
      {
         var _loc2_:§ !=§ = null;
         if(param1)
         {
            _loc2_ = param1.levelItem as § !=§;
            if(_loc2_ && _loc2_.spriteScore)
            {
               return false;
            }
         }
         return super.shouldShowScoreText(param1);
      }
      
      override protected function getScoreTextPosition(param1:§>"G§) : Point
      {
         var _loc2_:Number = param1.getBody().GetPosition().x;
         var _loc3_:Number = param1.getBody().GetPosition().y;
         return new Point(_loc2_,_loc3_);
      }
      
      override protected function addLevelObjects(param1:§?# §) : void
      {
         var _loc3_:int = 0;
         var _loc4_:Number = NaN;
         var _loc5_:§ !N§.§3#3§ = null;
         var _loc2_:§6"]§ = param1 as §6"]§;
         if(_loc2_)
         {
            _loc3_ = 0;
            while(_loc3_ < _loc2_.§'"`§)
            {
               _loc4_ = 1;
               _loc5_ = _loc2_.§1!x§(_loc3_);
               addObjectFromModel(_loc5_,_loc5_.id,false,false,false,_loc4_);
               _loc3_++;
            }
         }
         super.addLevelObjects(param1);
      }
      
      protected function §%#h§(param1:§5"?§, param2:Sprite, param3:§7b§) : §'#N§
      {
         var _loc11_:§4!L§ = null;
         var _loc4_:String;
         if((_loc4_ = param1.type).indexOf("SCORE") != -1)
         {
            _loc4_ = §7"L§.§@!4§;
         }
         var _loc5_:Number = param1.x;
         var _loc6_:Number = param1.y;
         var _loc7_:Number = param1.angle;
         var _loc8_:Number = param1.§1-§;
         var _loc9_:Number = param1.§-9§;
         var _loc10_:§?!t§;
         if(!(_loc10_ = §9!E§.levelItemManager.getItem(_loc4_) as §?!t§))
         {
            return null;
         }
         if(_loc10_.§>"t§)
         {
            return new §8#n§(param2,param3,§9!E§.mLevelEngine.mWorld,_loc10_,_loc5_,_loc6_);
         }
         if(_loc4_ == §7"L§.§@!4§)
         {
            _loc11_ = §9!E§.textureManager.getTexture(param1.type);
            return new §7"L§(_loc11_,param2,§9!E§.mLevelEngine.mWorld,_loc10_,_loc5_,_loc6_);
         }
         if(_loc4_.indexOf("Trail") != -1)
         {
            return new § "5§(param2,param3,§9!E§.mLevelEngine.mWorld,_loc10_,_loc5_,_loc6_,_loc7_,_loc8_,_loc9_);
         }
         if(_loc10_.amount <= 3)
         {
            return new §>#5§(param2,param3,§9!E§.mLevelEngine.mWorld,_loc10_,_loc5_,_loc6_,_loc7_,_loc8_,_loc9_);
         }
         return new §7"o§.§3§(param2,param3,§9!E§.mLevelEngine.mWorld,_loc10_,_loc5_,_loc6_,_loc7_,_loc8_,_loc9_);
      }
      
      override protected function createObjectInstance(param1:§5"?§, param2:Sprite, param3:Boolean = true, param4:Number = 1.0) : §'#N§
      {
         var _loc6_:String = null;
         var _loc7_:§7b§ = null;
         var _loc8_:§ !N§.§3#3§ = null;
         var _loc9_:§4!L§ = null;
         var _loc10_:§4!L§ = null;
         var _loc5_:§&2§;
         if((_loc5_ = §9!E§.levelItemManager.getItem(param1.type)) is §<5§)
         {
            _loc6_ = _loc5_.itemName;
            _loc7_ = §9!E§.animationManager.getAnimation(_loc6_);
            if(_loc5_ is §?!t§)
            {
               return this.§%#h§(param1,param2,_loc7_);
            }
            if(param1.type.indexOf(§@s§.§@!4§) != -1)
            {
               if(_loc8_ = param1 as § !N§.§3#3§)
               {
                  if(!_loc5_)
                  {
                     throw new Error("Can\'t find gravity sensor definition for \'" + param1.type + "\'");
                  }
                  _loc9_ = §9!E§.backgroundTextureManager.getTexture(this.§,_§);
                  _loc10_ = §9!E§.backgroundTextureManager.getTexture(this.§[Q§);
                  return new §@s§(param2,§9!E§.mLevelEngine.mWorld,param1,_loc5_ as §<5§,§=$'§(_loc8_.shape).radius,_loc8_.§^Y§,_loc8_.§^"P§,_loc8_.§^"e§,_loc9_,_loc10_);
               }
            }
            else if(param1.type.indexOf("SENSOR_PIG") != -1)
            {
               return new § $C§(param2,§9!E§.mLevelEngine.mWorld,_loc5_,_loc5_.shape,param1);
            }
            if(_loc6_.substr(0,13) == "BLOCK_STATIC_")
            {
               return super.createObjectInstance(param1,param2,param3,param4);
            }
            if(_loc6_.substr(0,7) == "BUBBLE_")
            {
               return new §2",§(param2,_loc7_,§9!E§.mLevelEngine.mWorld,_loc5_,param1,param4);
            }
            if(_loc5_ is § !=§)
            {
               if(param1 is §2>§)
               {
                  return this.createBombBlockInstance(param1,param2,_loc7_,_loc5_,§-!J§.§-!7§,param4);
               }
               return this.§,$E§(param2,_loc7_,§9!E§.mLevelEngine.mWorld,_loc5_,param1,param4);
            }
         }
         return super.createObjectInstance(param1,param2,param3,param4);
      }
      
      protected function §,$E§(param1:Sprite, param2:§7b§, param3:b2World, param4:§&2§, param5:§5"?§, param6:Number) : §^!8§
      {
         return new §^!8§(param1,param2,param3,param4,param5,param6);
      }
      
      override protected function addObjectPig(param1:§5"?§, param2:Sprite, param3:§7b§, param4:§&2§, param5:Number = 1.0) : §#!m§
      {
         if(param3.hasSubAnimation(§?"L§.§]B§))
         {
            return new §-#+§(param2,param3,§9!E§.mLevelEngine.mWorld,param4,param1,param5);
         }
         return super.addObjectPig(param1,param2,param3,param4,param5);
      }
      
      override protected function createBombBlockInstance(param1:§5"?§, param2:Sprite, param3:§7b§, param4:§&2§, param5:int, param6:Number = 1.0) : §'#N§
      {
         var _loc7_:§<5§ = null;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:§2>§ = null;
         if(param4 is §<5§)
         {
            _loc8_ = (_loc7_ = param4 as §<5§).§!! §("explosionRadius");
            _loc9_ = _loc7_.§!! §("explosionForce");
            _loc10_ = _loc7_.§!! §("explosionDamageRadius");
            _loc11_ = _loc7_.§!! §("explosionDamage");
            if(param1 is §2>§)
            {
               _loc12_ = param1 as §2>§;
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
            return new §,#H§(param2,param3,§9!E§.mLevelEngine.mWorld,param4,param1,_loc8_,_loc9_,_loc10_,_loc11_,param6);
         }
         return super.createBombBlockInstance(param1,param2,param3,param4,param5,param6);
      }
      
      override public function renderObjects(param1:Number, param2:Number, param3:Number) : void
      {
         super.renderObjects(param1,param2,param3);
         if(this.§<$ §)
         {
            this.§<$ §.§?$7§(param1,this);
         }
      }
      
      override protected function getExplosionDamageMultiplier(param1:Number, param2:Number) : Number
      {
         return 1 - param1 / param2;
      }
      
      protected function §=![§(param1:Number, param2:Number) : Number
      {
         return super.getExplosionDamageMultiplier(param1,param2);
      }
      
      override protected function getExplosionDistanceToObject(param1:Number, param2:Number, param3:§>"G§) : §[$#§
      {
         var _loc4_:Number = param3.getBody().GetPosition().x;
         var _loc5_:Number = param3.getBody().GetPosition().y;
         var _loc6_:Number = param3.levelItem.shape.getWidth();
         var _loc7_:Number = param3.levelItem.shape.getHeight();
         var _loc8_:Number = param3.getBody().GetAngle();
         return §var§.§[!F§(_loc4_,_loc5_,_loc6_,_loc7_,_loc8_,param1,param2);
      }
      
      protected function §2#L§(param1:Number, param2:Number, param3:§>"G§) : §[$#§
      {
         return super.getExplosionDistanceToObject(param1,param2,param3);
      }
      
      public function §&#Y§(param1:String, param2:Number, param3:Number, param4:Number, param5:Number, param6:Boolean) : void
      {
         var _loc8_:Number = NaN;
         var _loc9_:Sprite = null;
         var _loc10_:§7b§ = null;
         var _loc7_:§ !=§;
         if(_loc7_ = §9!E§.levelItemManager.getItem(param1) as § !=§)
         {
            _loc8_ = _loc7_.scale;
            if(param6)
            {
               _loc8_ = 1;
            }
            _loc8_ *= 1.5;
            _loc9_ = new Sprite();
            _loc10_ = §9!E§.animationManager.getAnimation(param1);
            this.§<$ §.§&#Y§(param2,param3,param4,param5,_loc7_,_loc9_,_loc10_,_loc8_,param6);
            §`"%§.addChild(_loc9_);
         }
      }
      
      public function §8##§(param1:Number, param2:Number) : §-#+§
      {
         var _loc7_:§-#+§ = null;
         var _loc8_:b2Vec2 = null;
         var _loc9_:Number = NaN;
         var _loc3_:§-#+§ = null;
         var _loc4_:Number = 0;
         var _loc5_:int = §1#s§.length;
         var _loc6_:int = 0;
         while(_loc6_ < _loc5_)
         {
            if((_loc7_ = §1#s§[_loc6_] as §-#+§) && _loc7_.health > 0 && !_loc7_.§;"W§)
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
      
      public function §0#j§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         §9!E§.setSlowMotion(param1,param2,param3,param4);
      }
      
      override public function getForceAtPoint(param1:Number, param2:Number, param3:Number, param4:b2Vec2) : b2Vec2
      {
         var _loc5_:§`"4§ = null;
         var _loc6_:§@s§ = null;
         if(this.§!!0§)
         {
            return super.getForceAtPoint(param1,param2,param3,param4);
         }
         if(!param4)
         {
            param4 = new b2Vec2();
         }
         param4.x = 0;
         param4.y = 0;
         for each(_loc5_ in §`"]§)
         {
            if(_loc6_ = _loc5_ as §@s§)
            {
               this.§0!h§.x = param1;
               this.§0!h§.y = param2;
               _loc6_.§4#a§(this.§0!h§,param3,this.§<#6§);
               param4.§0#3§(this.§<#6§);
            }
         }
         return param4;
      }
      
      override protected function updateExplosionEffects(param1:§-!J§, param2:Number, param3:Number, param4:Number) : void
      {
      }
      
      protected function §&#i§(param1:§-!J§, param2:Number, param3:Number, param4:Number) : void
      {
         super.updateExplosionEffects(param1,param2,param3,param4);
      }
      
      override protected function hasMinimumCollisionSpeed(param1:§'#N§, param2:§'#N§) : Boolean
      {
         return true;
      }
      
      protected function §2#f§(param1:§>"G§, param2:§>"G§) : Number
      {
         return super.getCollisionDamageFactor(param1,param2);
      }
      
      override protected function getCollisionDamageFactor(param1:§>"G§, param2:§>"G§) : Number
      {
         var _loc3_:Number = NaN;
         if(param1 is §[!k§)
         {
            return 1;
         }
         if(param2 is §[!k§)
         {
            return 0;
         }
         return Number(param1.§-#§(param2.§=#a§()));
      }
      
      protected function §!!<§(param1:§>"G§, param2:§>"G§) : Number
      {
         return super.getCollisionForceFactor(param1,param2);
      }
      
      override protected function getCollisionForceFactor(param1:§>"G§, param2:§>"G§) : Number
      {
         var _loc3_:Number = NaN;
         if(param1 is §[!k§)
         {
            return Number(param1.§-#§(param2.§=#a§()));
         }
         return 1;
      }
      
      public function get §?k§() : Boolean
      {
         var _loc1_:§`"4§ = null;
         if(§`"]§.length > 0)
         {
            for each(_loc1_ in §`"]§)
            {
               if(_loc1_ is §@s§)
               {
                  return true;
               }
            }
         }
         return false;
      }
   }
}
