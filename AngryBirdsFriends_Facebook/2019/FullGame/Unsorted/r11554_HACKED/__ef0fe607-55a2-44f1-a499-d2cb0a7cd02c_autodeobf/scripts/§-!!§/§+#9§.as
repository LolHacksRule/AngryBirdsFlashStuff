package §-!!§
{
   import § !D§.§'"u§;
   import §!6§.Sprite;
   import §"$=§.§=$&§;
   import §"$=§.§?#Y§;
   import §%A§.§ #X§;
   import §%A§.§#!n§;
   import §%A§.§4"e§;
   import §%A§.§=#a§;
   import §%A§.§>#N§;
   import §4!c§.§package§;
   import §8#t§.b2World;
   import §9$+§.§&#;§;
   import §9$+§.§9"4§;
   import §9$+§.§9$#§;
   import §<#S§.§1$3§;
   import §?§.§+"%§;
   import §?§.§,!T§;
   import §?§.§,Y§;
   import §?§.§0F§;
   import §?§.§7E§;
   import §?§.§["+§;
   import §^"[§.§4!8§;
   import §^"[§.§^!8§;
   import §`# §.b2Vec2;
   import §`n§.§1!f§;
   import §`n§.§@#!§;
   import flash.geom.Point;
   
   public class §+#9§ extends §7S§ implements §`$&§
   {
       
      
      protected var §["^§:String;
      
      protected var §;"?§:String;
      
      protected var §4k§:b2Vec2;
      
      protected var §;"0§:b2Vec2;
      
      protected var §8#^§:Boolean = true;
      
      protected var §4!a§:§package§;
      
      public function §+#9§(param1:§'"u§, param2:§=$&§, param3:Sprite, param4:String, param5:String = "", param6:String = "")
      {
         this.§4k§ = new b2Vec2();
         this.§;"0§ = new b2Vec2();
         this.§["^§ = param5;
         this.§;"?§ = param6;
         super(param1,param2,param3,param4);
         if(param2 is §?#Y§)
         {
            if((param2 as §?#Y§).§+5§ > 0)
            {
               this.§8#^§ = false;
            }
         }
         this.§4!a§ = new §package§(param1.mLevelEngine.mWorld);
      }
      
      override public function dispose() : void
      {
         super.dispose();
         if(this.§4!a§)
         {
            this.§4!a§.dispose();
            this.§4!a§ = null;
         }
      }
      
      override protected function getLevelTextureScale() : Number
      {
         var _loc1_:§1$3§ = §&!g§.background as §1$3§;
         if(_loc1_)
         {
            return _loc1_.§%$&§;
         }
         return super.getLevelTextureScale();
      }
      
      override protected function shouldShowScoreText(param1:§8"J§) : Boolean
      {
         var _loc2_:§7E§ = null;
         if(param1)
         {
            _loc2_ = param1.levelItem as §7E§;
            if(_loc2_ && _loc2_.spriteScore)
            {
               return false;
            }
         }
         return super.shouldShowScoreText(param1);
      }
      
      override protected function getScoreTextPosition(param1:§8"J§) : Point
      {
         var _loc2_:Number = param1.getBody().GetPosition().x;
         var _loc3_:Number = param1.getBody().GetPosition().y;
         return new Point(_loc2_,_loc3_);
      }
      
      override protected function addLevelObjects(param1:§=$&§) : void
      {
         var _loc3_:int = 0;
         var _loc4_:Number = NaN;
         var _loc5_:§&#;§ = null;
         var _loc2_:§?#Y§ = param1 as §?#Y§;
         if(_loc2_)
         {
            _loc3_ = 0;
            while(_loc3_ < _loc2_.§+5§)
            {
               _loc4_ = 1;
               _loc5_ = _loc2_.§>$>§(_loc3_);
               addObjectFromModel(_loc5_,_loc5_.id,false,false,false,_loc4_);
               _loc3_++;
            }
         }
         super.addLevelObjects(param1);
      }
      
      protected function §]$8§(param1:§9"4§, param2:Sprite, param3:§4!8§) : §1#B§
      {
         var _loc11_:§^!8§ = null;
         var _loc4_:String;
         if((_loc4_ = param1.type).indexOf("SCORE") != -1)
         {
            _loc4_ = §>#N§.§9!O§;
         }
         var _loc5_:Number = param1.x;
         var _loc6_:Number = param1.y;
         var _loc7_:Number = param1.angle;
         var _loc8_:Number = param1.§@2§;
         var _loc9_:Number = param1.§?!@§;
         var _loc10_:§["+§;
         if(!(_loc10_ = §&!g§.levelItemManager.getItem(_loc4_) as §["+§))
         {
            return null;
         }
         if(_loc10_.§ P§)
         {
            return new §#!n§(param2,param3,§&!g§.mLevelEngine.mWorld,_loc10_,_loc5_,_loc6_);
         }
         if(_loc4_ == §>#N§.§9!O§)
         {
            _loc11_ = §&!g§.textureManager.getTexture(param1.type);
            return new §>#N§(_loc11_,param2,§&!g§.mLevelEngine.mWorld,_loc10_,_loc5_,_loc6_);
         }
         if(_loc4_.indexOf("Trail") != -1)
         {
            return new § #X§(param2,param3,§&!g§.mLevelEngine.mWorld,_loc10_,_loc5_,_loc6_,_loc7_,_loc8_,_loc9_);
         }
         if(_loc10_.amount <= 3)
         {
            return new §=#a§(param2,param3,§&!g§.mLevelEngine.mWorld,_loc10_,_loc5_,_loc6_,_loc7_,_loc8_,_loc9_);
         }
         return new §4"e§(param2,param3,§&!g§.mLevelEngine.mWorld,_loc10_,_loc5_,_loc6_,_loc7_,_loc8_,_loc9_);
      }
      
      override protected function createObjectInstance(param1:§9"4§, param2:Sprite, param3:Boolean = true, param4:Number = 1.0) : §1#B§
      {
         var _loc6_:String = null;
         var _loc7_:§4!8§ = null;
         var _loc8_:§&#;§ = null;
         var _loc9_:§^!8§ = null;
         var _loc10_:§^!8§ = null;
         var _loc5_:§,Y§;
         if((_loc5_ = §&!g§.levelItemManager.getItem(param1.type)) is §+"%§)
         {
            _loc6_ = _loc5_.itemName;
            _loc7_ = §&!g§.animationManager.getAnimation(_loc6_);
            if(_loc5_ is §["+§)
            {
               return this.§]$8§(param1,param2,_loc7_);
            }
            if(param1.type.indexOf(§3#X§.§9!O§) != -1)
            {
               if(_loc8_ = param1 as §&#;§)
               {
                  if(!_loc5_)
                  {
                     throw new Error("Can\'t find gravity sensor definition for \'" + param1.type + "\'");
                  }
                  _loc9_ = §&!g§.backgroundTextureManager.getTexture(this.§["^§);
                  _loc10_ = §&!g§.backgroundTextureManager.getTexture(this.§;"?§);
                  return new §3#X§(param2,§&!g§.mLevelEngine.mWorld,param1,_loc5_ as §+"%§,§0F§(_loc8_.shape).radius,_loc8_.§0!j§,_loc8_.§5$8§,_loc8_.§'!d§,_loc9_,_loc10_);
               }
            }
            else if(param1.type.indexOf("SENSOR_PIG") != -1)
            {
               return new §&"^§(param2,§&!g§.mLevelEngine.mWorld,_loc5_,_loc5_.shape,param1);
            }
            if(_loc6_.substr(0,13) == "BLOCK_STATIC_")
            {
               return super.createObjectInstance(param1,param2,param3,param4);
            }
            if(_loc6_.substr(0,7) == "BUBBLE_")
            {
               return new §7!g§(param2,_loc7_,§&!g§.mLevelEngine.mWorld,_loc5_,param1,param4);
            }
            if(_loc5_ is §7E§)
            {
               if(param1 is §9$#§)
               {
                  return this.createBombBlockInstance(param1,param2,_loc7_,_loc5_,§]" §.§^Y§,param4);
               }
               return this.§5#s§(param2,_loc7_,§&!g§.mLevelEngine.mWorld,_loc5_,param1,param4);
            }
         }
         return super.createObjectInstance(param1,param2,param3,param4);
      }
      
      protected function §5#s§(param1:Sprite, param2:§4!8§, param3:b2World, param4:§,Y§, param5:§9"4§, param6:Number) : §8!1§
      {
         return new §8!1§(param1,param2,param3,param4,param5,param6);
      }
      
      override protected function addObjectPig(param1:§9"4§, param2:Sprite, param3:§4!8§, param4:§,Y§, param5:Number = 1.0) : §1$<§
      {
         if(param3.hasSubAnimation(§,!T§.§8!+§))
         {
            return new §48§(param2,param3,§&!g§.mLevelEngine.mWorld,param4,param1,param5);
         }
         return super.addObjectPig(param1,param2,param3,param4,param5);
      }
      
      override protected function createBombBlockInstance(param1:§9"4§, param2:Sprite, param3:§4!8§, param4:§,Y§, param5:int, param6:Number = 1.0) : §1#B§
      {
         var _loc7_:§+"%§ = null;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:§9$#§ = null;
         if(param4 is §+"%§)
         {
            _loc8_ = (_loc7_ = param4 as §+"%§).§[$7§("explosionRadius");
            _loc9_ = _loc7_.§[$7§("explosionForce");
            _loc10_ = _loc7_.§[$7§("explosionDamageRadius");
            _loc11_ = _loc7_.§[$7§("explosionDamage");
            if(param1 is §9$#§)
            {
               _loc12_ = param1 as §9$#§;
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
            return new §8!M§(param2,param3,§&!g§.mLevelEngine.mWorld,param4,param1,_loc8_,_loc9_,_loc10_,_loc11_,param6);
         }
         return super.createBombBlockInstance(param1,param2,param3,param4,param5,param6);
      }
      
      override public function renderObjects(param1:Number, param2:Number, param3:Number) : void
      {
         super.renderObjects(param1,param2,param3);
         if(this.§4!a§)
         {
            this.§4!a§.§9!%§(param1,this);
         }
      }
      
      override protected function getExplosionDamageMultiplier(param1:Number, param2:Number) : Number
      {
         return 1 - param1 / param2;
      }
      
      protected function §^$<§(param1:Number, param2:Number) : Number
      {
         return super.getExplosionDamageMultiplier(param1,param2);
      }
      
      override protected function getExplosionDistanceToObject(param1:Number, param2:Number, param3:§8"J§) : §1!f§
      {
         var _loc4_:Number = param3.getBody().GetPosition().x;
         var _loc5_:Number = param3.getBody().GetPosition().y;
         var _loc6_:Number = param3.levelItem.shape.getWidth();
         var _loc7_:Number = param3.levelItem.shape.getHeight();
         var _loc8_:Number = param3.getBody().GetAngle();
         return §@#!§.§8"K§(_loc4_,_loc5_,_loc6_,_loc7_,_loc8_,param1,param2);
      }
      
      protected function §6"e§(param1:Number, param2:Number, param3:§8"J§) : §1!f§
      {
         return super.getExplosionDistanceToObject(param1,param2,param3);
      }
      
      public function §,"N§(param1:String, param2:Number, param3:Number, param4:Number, param5:Number, param6:Boolean) : void
      {
         var _loc8_:Number = NaN;
         var _loc9_:Sprite = null;
         var _loc10_:§4!8§ = null;
         var _loc7_:§7E§;
         if(_loc7_ = §&!g§.levelItemManager.getItem(param1) as §7E§)
         {
            _loc8_ = _loc7_.scale;
            if(param6)
            {
               _loc8_ = 1;
            }
            _loc8_ *= 1.5;
            _loc9_ = new Sprite();
            _loc10_ = §&!g§.animationManager.getAnimation(param1);
            this.§4!a§.§,"N§(param2,param3,param4,param5,_loc7_,_loc9_,_loc10_,_loc8_,param6);
            §]#D§.addChild(_loc9_);
         }
      }
      
      public function §8!2§(param1:Number, param2:Number) : §48§
      {
         var _loc7_:§48§ = null;
         var _loc8_:b2Vec2 = null;
         var _loc9_:Number = NaN;
         var _loc3_:§48§ = null;
         var _loc4_:Number = 0;
         var _loc5_:int = §3#$§.length;
         var _loc6_:int = 0;
         while(_loc6_ < _loc5_)
         {
            if((_loc7_ = §3#$§[_loc6_] as §48§) && _loc7_.health > 0 && !_loc7_.§1"S§)
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
      
      public function §]"r§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         §&!g§.setSlowMotion(param1,param2,param3,param4);
      }
      
      override public function getForceAtPoint(param1:Number, param2:Number, param3:Number, param4:b2Vec2) : b2Vec2
      {
         var _loc6_:§3#X§ = null;
         if(this.§8#^§)
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
         var _loc8_:* = §5"h§;
         while(§§hasnext(_loc8_,_loc7_))
         {
            if(_loc6_ = §§nextvalue(_loc7_,_loc8_) as §3#X§)
            {
               this.§4k§.x = param1;
               this.§4k§.y = param2;
               _loc6_.§4!+§(this.§4k§,param3,this.§;"0§);
               param4.§1!]§(this.§;"0§);
            }
         }
         return param4;
      }
      
      override protected function updateExplosionEffects(param1:§]" §, param2:Number, param3:Number, param4:Number) : void
      {
      }
      
      protected function §;!;§(param1:§]" §, param2:Number, param3:Number, param4:Number) : void
      {
         super.updateExplosionEffects(param1,param2,param3,param4);
      }
      
      override protected function hasMinimumCollisionSpeed(param1:§1#B§, param2:§1#B§) : Boolean
      {
         return true;
      }
      
      protected function §^#;§(param1:§8"J§, param2:§8"J§) : Number
      {
         return super.getCollisionDamageFactor(param1,param2);
      }
      
      override protected function getCollisionDamageFactor(param1:§8"J§, param2:§8"J§) : Number
      {
         var _loc3_:Number = NaN;
         if(param1 is §5"W§)
         {
            return 1;
         }
         if(param2 is §5"W§)
         {
            return 0;
         }
         return Number(param1.§7"C§(param2.§[#C§()));
      }
      
      protected function §3"-§(param1:§8"J§, param2:§8"J§) : Number
      {
         return super.getCollisionForceFactor(param1,param2);
      }
      
      override protected function getCollisionForceFactor(param1:§8"J§, param2:§8"J§) : Number
      {
         var _loc3_:Number = NaN;
         if(param1 is §5"W§)
         {
            return Number(param1.§7"C§(param2.§[#C§()));
         }
         return 1;
      }
      
      public function get §##L§() : Boolean
      {
         var _loc1_:§0!N§ = null;
         if(§5"h§.length > 0)
         {
            for each(_loc1_ in §5"h§)
            {
               if(_loc1_ is §3#X§)
               {
                  return true;
               }
            }
         }
         return false;
      }
   }
}
