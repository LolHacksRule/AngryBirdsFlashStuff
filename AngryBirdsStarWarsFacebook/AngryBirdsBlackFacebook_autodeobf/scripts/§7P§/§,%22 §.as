package §7P§
{
   import §!!U§.Sprite;
   import §!"+§.§%!R§;
   import §+#$§.b2World;
   import §2"Y§.§"t§;
   import §2"Y§.§%#@§;
   import §2"Y§.§2"q§;
   import §2"Y§.§8!D§;
   import §2"Y§.§?#Q§;
   import §2"Y§.§["$§;
   import §7!F§.§8!W§;
   import §7!F§.§>"G§;
   import §9#@§.§1"6§;
   import §<"B§.§7"B§;
   import §<"B§.§94§;
   import §<"B§.§>"l§;
   import §?m§.§8!B§;
   import §?m§.§=!z§;
   import §[""§.§##W§;
   import §[""§.§3!2§;
   import §[R§.b2Vec2;
   import §^#>§.§#_§;
   import flash.geom.Point;
   
   public class §," § extends §;=§ implements §,#Z§
   {
       
      
      protected var § !F§:String;
      
      protected var §+6§:String;
      
      protected var §&#'§:b2Vec2;
      
      protected var §^§:b2Vec2;
      
      protected var §<m§:Boolean = true;
      
      protected var §'J§:§%!R§;
      
      public function §," §(param1:§#_§, param2:§8!B§, param3:Sprite, param4:String, param5:String = "", param6:String = "")
      {
         var _loc7_:§=!z§ = null;
         this.§&#'§ = new b2Vec2();
         this.§^§ = new b2Vec2();
         this.§ !F§ = param5;
         this.§+6§ = param6;
         super(param1,param2,param3,param4);
         if(param2 is §=!z§)
         {
            if((_loc7_ = param2 as §=!z§).§?u§ > 0)
            {
               this.§<m§ = false;
            }
         }
         this.§'J§ = new §%!R§(param1.mLevelEngine.mWorld);
      }
      
      override public function dispose() : void
      {
         super.dispose();
         if(this.§'J§)
         {
            this.§'J§.dispose();
            this.§'J§ = null;
         }
      }
      
      override protected function getLevelTextureScale() : Number
      {
         var _loc1_:§1"6§ = §2#G§.background as §1"6§;
         if(_loc1_)
         {
            return _loc1_.textureScale;
         }
         return super.getLevelTextureScale();
      }
      
      override protected function shouldShowScoreText(param1:§&#=§) : Boolean
      {
         var _loc2_:§8!D§ = null;
         if(param1)
         {
            _loc2_ = param1.levelItem as §8!D§;
            if(_loc2_ && _loc2_.spriteScore)
            {
               return false;
            }
         }
         return super.shouldShowScoreText(param1);
      }
      
      override protected function getScoreTextPosition(param1:§&#=§) : Point
      {
         var _loc2_:Number = param1.§3!t§().GetPosition().x;
         var _loc3_:Number = param1.§3!t§().GetPosition().y;
         return new Point(_loc2_,_loc3_);
      }
      
      override protected function addLevelObjects(param1:§8!B§) : void
      {
         var _loc3_:int = 0;
         var _loc4_:Number = NaN;
         var _loc5_:§>"l§ = null;
         var _loc2_:§=!z§ = param1 as §=!z§;
         if(_loc2_)
         {
            _loc3_ = 0;
            while(_loc3_ < _loc2_.§?u§)
            {
               _loc4_ = 1;
               _loc5_ = _loc2_.§=!8§(_loc3_);
               §<#1§(_loc5_,_loc5_.id,false,false,false,_loc4_);
               _loc3_++;
            }
         }
         super.addLevelObjects(param1);
      }
      
      protected function addParticleSpace(param1:§94§, param2:Sprite, param3:§>"G§) : §7B§
      {
         return null;
      }
      
      override protected function createObjectInstance(param1:§94§, param2:Sprite, param3:Boolean = true, param4:Number = 1.0) : §7B§
      {
         var _loc6_:String = null;
         var _loc7_:§>"G§ = null;
         var _loc8_:§>"l§ = null;
         var _loc9_:§8!W§ = null;
         var _loc10_:§8!W§ = null;
         var _loc5_:§"t§;
         if((_loc5_ = §2#G§.levelItemManager.getItem(param1.type)) is §["$§)
         {
            _loc6_ = _loc5_.itemName;
            _loc7_ = §2#G§.animationManager.getAnimation(_loc6_);
            if(_loc5_ is §2"q§)
            {
               return this.addParticleSpace(param1,param2,_loc7_);
            }
            if(param1.type.indexOf(§"M§.§+"§) != -1)
            {
               if(_loc8_ = param1 as §>"l§)
               {
                  if(!_loc5_)
                  {
                     throw new Error("Can\'t find gravity sensor definition for \'" + param1.type + "\'");
                  }
                  _loc9_ = §2#G§.backgroundTextureManager.getTexture(this.§ !F§);
                  _loc10_ = §2#G§.backgroundTextureManager.getTexture(this.§+6§);
                  return new §"M§(param2,§2#G§.mLevelEngine.mWorld,param1,_loc5_ as §["$§,§?#Q§(_loc8_.shape).radius,_loc8_.§?#_§,_loc8_.§8!i§,_loc8_.§=5§,_loc9_,_loc10_);
               }
            }
            else if(param1.type.indexOf("SENSOR_PIG") != -1)
            {
               return new § "=§(param2,§2#G§.mLevelEngine.mWorld,_loc5_,_loc5_.shape,param1);
            }
            if(_loc6_.substr(0,13) == "BLOCK_STATIC_")
            {
               return super.createObjectInstance(param1,param2,param3,param4);
            }
            if(_loc6_.substr(0,7) == "BUBBLE_")
            {
               return new §1!K§(param2,_loc7_,§2#G§.mLevelEngine.mWorld,_loc5_,param1,param4);
            }
            if(_loc5_ is §8!D§)
            {
               if(param1 is §7"B§)
               {
                  return this.createBombBlockInstance(param1,param2,_loc7_,_loc5_,§>"_§.§#!G§,param4);
               }
               return this.createObjectBlockSpace(param2,_loc7_,§2#G§.mLevelEngine.mWorld,_loc5_,param1,param4);
            }
         }
         return super.createObjectInstance(param1,param2,param3,param4);
      }
      
      protected function createObjectBlockSpace(param1:Sprite, param2:§>"G§, param3:b2World, param4:§"t§, param5:§94§, param6:Number) : §`#G§
      {
         return new §`#G§(param1,param2,param3,param4,param5,param6);
      }
      
      override protected function addObjectPig(param1:§94§, param2:Sprite, param3:§>"G§, param4:§"t§, param5:Number = 1.0) : §<!2§
      {
         if(param3.hasSubAnimation(§%#@§.§2#'§))
         {
            return new §]D§(param2,param3,§2#G§.mLevelEngine.mWorld,param4,param1,param5);
         }
         return super.addObjectPig(param1,param2,param3,param4,param5);
      }
      
      override protected function createBombBlockInstance(param1:§94§, param2:Sprite, param3:§>"G§, param4:§"t§, param5:int, param6:Number = 1.0) : §7B§
      {
         var _loc7_:§["$§ = null;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:§7"B§ = null;
         if(param4 is §["$§)
         {
            _loc8_ = (_loc7_ = param4 as §["$§).getNumberProperty("explosionRadius");
            _loc9_ = _loc7_.getNumberProperty("explosionForce");
            _loc10_ = _loc7_.getNumberProperty("explosionDamageRadius");
            _loc11_ = _loc7_.getNumberProperty("explosionDamage");
            if(param1 is §7"B§)
            {
               _loc12_ = param1 as §7"B§;
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
            return new §'"Y§(param2,param3,§2#G§.mLevelEngine.mWorld,param4,param1,_loc8_,_loc9_,_loc10_,_loc11_,param6);
         }
         return super.createBombBlockInstance(param1,param2,param3,param4,param5,param6);
      }
      
      override public function renderObjects(param1:Number, param2:Number, param3:Number) : void
      {
         super.renderObjects(param1,param2,param3);
         if(this.§'J§)
         {
            this.§'J§.§&a§(param1,this);
         }
      }
      
      override protected function getExplosionDamageMultiplier(param1:Number, param2:Number) : Number
      {
         return 1 - param1 / param2;
      }
      
      protected function §2?§(param1:Number, param2:Number) : Number
      {
         return super.getExplosionDamageMultiplier(param1,param2);
      }
      
      override protected function getExplosionDistanceToObject(param1:Number, param2:Number, param3:§&#=§) : §3!2§
      {
         var _loc4_:Number = param3.§3!t§().GetPosition().x;
         var _loc5_:Number = param3.§3!t§().GetPosition().y;
         var _loc6_:Number = param3.levelItem.shape.getWidth();
         var _loc7_:Number = param3.levelItem.shape.getHeight();
         var _loc8_:Number = param3.§3!t§().GetAngle();
         return §##W§.§`!5§(_loc4_,_loc5_,_loc6_,_loc7_,_loc8_,param1,param2);
      }
      
      protected function §""X§(param1:Number, param2:Number, param3:§&#=§) : §3!2§
      {
         return super.getExplosionDistanceToObject(param1,param2,param3);
      }
      
      public function §#!#§(param1:String, param2:Number, param3:Number, param4:Number, param5:Number, param6:Boolean) : void
      {
         var _loc8_:Number = NaN;
         var _loc9_:Sprite = null;
         var _loc10_:§>"G§ = null;
         var _loc7_:§8!D§;
         if(_loc7_ = §2#G§.levelItemManager.getItem(param1) as §8!D§)
         {
            _loc8_ = _loc7_.scale;
            if(param6)
            {
               _loc8_ = 1;
            }
            _loc8_ *= 1.5;
            _loc9_ = new Sprite();
            _loc10_ = §2#G§.animationManager.getAnimation(param1);
            this.§'J§.§#!#§(param2,param3,param4,param5,_loc7_,_loc9_,_loc10_,_loc8_,param6);
            §!'§.addChild(_loc9_);
         }
      }
      
      public function §+!U§(param1:Number, param2:Number) : §]D§
      {
         var _loc7_:§]D§ = null;
         var _loc8_:b2Vec2 = null;
         var _loc9_:Number = NaN;
         var _loc3_:§]D§ = null;
         var _loc4_:Number = 0;
         var _loc5_:int = §1!b§.length;
         var _loc6_:int = 0;
         while(_loc6_ < _loc5_)
         {
            if((_loc7_ = §1!b§[_loc6_] as §]D§) && _loc7_.health > 0 && !_loc7_.§3!$§)
            {
               _loc8_ = _loc7_.§3!t§().GetPosition();
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
      
      public function §&Q§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         §2#G§.setSlowMotion(param1,param2,param3,param4);
      }
      
      override public function getForceAtPoint(param1:Number, param2:Number, param3:Number, param4:b2Vec2) : b2Vec2
      {
         var _loc5_:§1#E§ = null;
         var _loc6_:§"M§ = null;
         if(this.§<m§)
         {
            return super.getForceAtPoint(param1,param2,param3,param4);
         }
         if(!param4)
         {
            param4 = new b2Vec2();
         }
         param4.x = 0;
         param4.y = 0;
         for each(_loc5_ in §63§)
         {
            if(_loc6_ = _loc5_ as §"M§)
            {
               this.§&#'§.x = param1;
               this.§&#'§.y = param2;
               _loc6_.§2E§(this.§&#'§,param3,this.§^§);
               param4.§ true§(this.§^§);
            }
         }
         return param4;
      }
      
      override protected function updateExplosionEffects(param1:§>"_§, param2:Number, param3:Number, param4:Number) : void
      {
      }
      
      protected function §1#;§(param1:§>"_§, param2:Number, param3:Number, param4:Number) : void
      {
         super.updateExplosionEffects(param1,param2,param3,param4);
      }
      
      override protected function hasMinimumCollisionSpeed(param1:§7B§, param2:§7B§) : Boolean
      {
         return true;
      }
      
      protected function §3!6§(param1:§&#=§, param2:§&#=§) : Number
      {
         return super.getCollisionDamageFactor(param1,param2);
      }
      
      override protected function getCollisionDamageFactor(param1:§&#=§, param2:§&#=§) : Number
      {
         var _loc3_:Number = NaN;
         if(param1 is §?"N§)
         {
            return 1;
         }
         if(param2 is §?"N§)
         {
            return 0;
         }
         return Number(param1.§!!>§(param2.§+"J§()));
      }
      
      protected function §=!#§(param1:§&#=§, param2:§&#=§) : Number
      {
         return super.getCollisionForceFactor(param1,param2);
      }
      
      override protected function getCollisionForceFactor(param1:§&#=§, param2:§&#=§) : Number
      {
         var _loc3_:Number = NaN;
         if(param1 is §?"N§)
         {
            return Number(param1.§!!>§(param2.§+"J§()));
         }
         return 1;
      }
      
      public function get §5#R§() : Boolean
      {
         var _loc1_:§1#E§ = null;
         if(§63§.length > 0)
         {
            for each(_loc1_ in §63§)
            {
               if(_loc1_ is §"M§)
               {
                  return true;
               }
            }
         }
         return false;
      }
   }
}
