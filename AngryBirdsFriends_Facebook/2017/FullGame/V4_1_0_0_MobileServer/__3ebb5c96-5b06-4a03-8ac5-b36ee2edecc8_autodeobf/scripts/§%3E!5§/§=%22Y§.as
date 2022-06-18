package §>!5§
{
   import §%!9§.b2Vec2;
   import §&!v§.Sprite;
   import §+!C§.§!!S§;
   import §+"r§.§%"P§;
   import §1!+§.b2World;
   import §3§.§^c§;
   import §3§.§try §;
   import §6$"§.§3#Z§;
   import §6$"§.§]"o§;
   import §6$"§.§`#w§;
   import §7!j§.§'#'§;
   import §7!j§.§8#B§;
   import §7"&§.§!"v§;
   import §7"&§.§##v§;
   import §7"&§.§+#p§;
   import §7"&§.§2p§;
   import §7"&§.§;"$§;
   import §7"&§.§>#H§;
   import §@#§.§6z§;
   import §@#§.§]#B§;
   import §]#m§.§0"?§;
   import §^$1§.§ §;
   import §^$1§.§!">§;
   import §^$1§.§4#_§;
   import §^$1§.§4D§;
   import §^$1§.§>;§;
   import flash.geom.Point;
   
   public class §="Y§ extends §6#-§ implements §]G§
   {
       
      
      protected var §&!S§:String;
      
      protected var §=#J§:String;
      
      protected var §!!o§:b2Vec2;
      
      protected var §&#B§:b2Vec2;
      
      protected var §5!'§:Boolean = true;
      
      protected var §"!§:§%"P§;
      
      public function §="Y§(param1:§!!S§, param2:§]#B§, param3:Sprite, param4:String, param5:String = "", param6:String = "")
      {
         var _loc7_:§6z§ = null;
         this.§!!o§ = new b2Vec2();
         this.§&#B§ = new b2Vec2();
         this.§&!S§ = param5;
         this.§=#J§ = param6;
         super(param1,param2,param3,param4);
         if(param2 is §6z§)
         {
            if((_loc7_ = param2 as §6z§).§ #d§ > 0)
            {
               this.§5!'§ = false;
            }
         }
         this.§"!§ = new §%"P§(param1.mLevelEngine.mWorld);
      }
      
      override public function dispose() : void
      {
         super.dispose();
         if(this.§"!§)
         {
            this.§"!§.dispose();
            this.§"!§ = null;
         }
      }
      
      override protected function getLevelTextureScale() : Number
      {
         var _loc1_:§0"?§ = §`=§.background as §0"?§;
         if(_loc1_)
         {
            return _loc1_.§@"o§;
         }
         return super.getLevelTextureScale();
      }
      
      override protected function shouldShowScoreText(param1:§^"9§) : Boolean
      {
         var _loc2_:§2p§ = null;
         if(param1)
         {
            _loc2_ = param1.levelItem as §2p§;
            if(_loc2_ && _loc2_.spriteScore)
            {
               return false;
            }
         }
         return super.shouldShowScoreText(param1);
      }
      
      override protected function getScoreTextPosition(param1:§^"9§) : Point
      {
         var _loc2_:Number = param1.getBody().GetPosition().x;
         var _loc3_:Number = param1.getBody().GetPosition().y;
         return new Point(_loc2_,_loc3_);
      }
      
      override protected function addLevelObjects(param1:§]#B§) : void
      {
         var _loc3_:int = 0;
         var _loc4_:Number = NaN;
         var _loc5_:§3#Z§ = null;
         var _loc2_:§6z§ = param1 as §6z§;
         if(_loc2_)
         {
            _loc3_ = 0;
            while(_loc3_ < _loc2_.§ #d§)
            {
               _loc4_ = 1;
               _loc5_ = _loc2_.§%#G§(_loc3_);
               addObjectFromModel(_loc5_,_loc5_.id,false,false,false,_loc4_);
               _loc3_++;
            }
         }
         super.addLevelObjects(param1);
      }
      
      protected function §=!>§(param1:§]"o§, param2:Sprite, param3:§8#B§) : §#-§
      {
         var _loc11_:§'#'§ = null;
         var _loc4_:String;
         if((_loc4_ = param1.type).indexOf("SCORE") != -1)
         {
            _loc4_ = §!">§.§["A§;
         }
         var _loc5_:Number = param1.x;
         var _loc6_:Number = param1.y;
         var _loc7_:Number = param1.angle;
         var _loc8_:Number = param1.§<"2§;
         var _loc9_:Number = param1.§##@§;
         var _loc10_:§;"$§;
         if(!(_loc10_ = §`=§.levelItemManager.getItem(_loc4_) as §;"$§))
         {
            return null;
         }
         if(_loc10_.§[#b§)
         {
            return new §4D§(param2,param3,§`=§.mLevelEngine.mWorld,_loc10_,_loc5_,_loc6_);
         }
         if(_loc4_ == §!">§.§["A§)
         {
            _loc11_ = §`=§.textureManager.getTexture(param1.type);
            return new §!">§(_loc11_,param2,§`=§.mLevelEngine.mWorld,_loc10_,_loc5_,_loc6_);
         }
         if(_loc4_.indexOf("Trail") != -1)
         {
            return new § #4§(param2,param3,§`=§.mLevelEngine.mWorld,_loc10_,_loc5_,_loc6_,_loc7_,_loc8_,_loc9_);
         }
         if(_loc10_.amount <= 3)
         {
            return new §4#_§(param2,param3,§`=§.mLevelEngine.mWorld,_loc10_,_loc5_,_loc6_,_loc7_,_loc8_,_loc9_);
         }
         return new §>;§(param2,param3,§`=§.mLevelEngine.mWorld,_loc10_,_loc5_,_loc6_,_loc7_,_loc8_,_loc9_);
      }
      
      override protected function createObjectInstance(param1:§]"o§, param2:Sprite, param3:Boolean = true, param4:Number = 1.0) : §#-§
      {
         var _loc6_:String = null;
         var _loc7_:§8#B§ = null;
         var _loc8_:§3#Z§ = null;
         var _loc9_:§'#'§ = null;
         var _loc10_:§'#'§ = null;
         var _loc5_:§!"v§;
         if((_loc5_ = §`=§.levelItemManager.getItem(param1.type)) is §+#p§)
         {
            _loc6_ = _loc5_.itemName;
            _loc7_ = §`=§.animationManager.getAnimation(_loc6_);
            if(_loc5_ is §;"$§)
            {
               return this.§=!>§(param1,param2,_loc7_);
            }
            if(param1.type.indexOf(§=P§.§["A§) != -1)
            {
               if(_loc8_ = param1 as §3#Z§)
               {
                  if(!_loc5_)
                  {
                     throw new Error("Can\'t find gravity sensor definition for \'" + param1.type + "\'");
                  }
                  _loc9_ = §`=§.backgroundTextureManager.getTexture(this.§&!S§);
                  _loc10_ = §`=§.backgroundTextureManager.getTexture(this.§=#J§);
                  return new §=P§(param2,§`=§.mLevelEngine.mWorld,param1,_loc5_ as §+#p§,§>#H§(_loc8_.shape).radius,_loc8_.§1#J§,_loc8_.§;#L§,_loc8_.§0P§,_loc9_,_loc10_);
               }
            }
            else if(param1.type.indexOf("SENSOR_PIG") != -1)
            {
               return new §^R§(param2,§`=§.mLevelEngine.mWorld,_loc5_,_loc5_.shape,param1);
            }
            if(_loc6_.substr(0,13) == "BLOCK_STATIC_")
            {
               return super.createObjectInstance(param1,param2,param3,param4);
            }
            if(_loc6_.substr(0,7) == "BUBBLE_")
            {
               return new §"#e§(param2,_loc7_,§`=§.mLevelEngine.mWorld,_loc5_,param1,param4);
            }
            if(_loc5_ is §2p§)
            {
               if(param1 is §`#w§)
               {
                  return this.createBombBlockInstance(param1,param2,_loc7_,_loc5_,§+!H§.§0!@§,param4);
               }
               return this.§3#7§(param2,_loc7_,§`=§.mLevelEngine.mWorld,_loc5_,param1,param4);
            }
         }
         return super.createObjectInstance(param1,param2,param3,param4);
      }
      
      protected function §3#7§(param1:Sprite, param2:§8#B§, param3:b2World, param4:§!"v§, param5:§]"o§, param6:Number) : §4#m§
      {
         return new §4#m§(param1,param2,param3,param4,param5,param6);
      }
      
      override protected function addObjectPig(param1:§]"o§, param2:Sprite, param3:§8#B§, param4:§!"v§, param5:Number = 1.0) : §76§
      {
         if(param3.hasSubAnimation(§##v§.§5x§))
         {
            return new §[3§(param2,param3,§`=§.mLevelEngine.mWorld,param4,param1,param5);
         }
         return super.addObjectPig(param1,param2,param3,param4,param5);
      }
      
      override protected function createBombBlockInstance(param1:§]"o§, param2:Sprite, param3:§8#B§, param4:§!"v§, param5:int, param6:Number = 1.0) : §#-§
      {
         var _loc7_:§+#p§ = null;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:§`#w§ = null;
         if(param4 is §+#p§)
         {
            _loc8_ = (_loc7_ = param4 as §+#p§).§6-§("explosionRadius");
            _loc9_ = _loc7_.§6-§("explosionForce");
            _loc10_ = _loc7_.§6-§("explosionDamageRadius");
            _loc11_ = _loc7_.§6-§("explosionDamage");
            if(param1 is §`#w§)
            {
               _loc12_ = param1 as §`#w§;
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
            return new §>!n§(param2,param3,§`=§.mLevelEngine.mWorld,param4,param1,_loc8_,_loc9_,_loc10_,_loc11_,param6);
         }
         return super.createBombBlockInstance(param1,param2,param3,param4,param5,param6);
      }
      
      override public function renderObjects(param1:Number, param2:Number, param3:Number) : void
      {
         super.renderObjects(param1,param2,param3);
         if(this.§"!§)
         {
            this.§"!§.§"!A§(param1,this);
         }
      }
      
      override protected function getExplosionDamageMultiplier(param1:Number, param2:Number) : Number
      {
         return 1 - param1 / param2;
      }
      
      protected function §]M§(param1:Number, param2:Number) : Number
      {
         return super.getExplosionDamageMultiplier(param1,param2);
      }
      
      override protected function getExplosionDistanceToObject(param1:Number, param2:Number, param3:§^"9§) : §try §
      {
         var _loc4_:Number = param3.getBody().GetPosition().x;
         var _loc5_:Number = param3.getBody().GetPosition().y;
         var _loc6_:Number = param3.levelItem.shape.getWidth();
         var _loc7_:Number = param3.levelItem.shape.getHeight();
         var _loc8_:Number = param3.getBody().GetAngle();
         return §^c§.§]t§(_loc4_,_loc5_,_loc6_,_loc7_,_loc8_,param1,param2);
      }
      
      protected function §"#G§(param1:Number, param2:Number, param3:§^"9§) : §try §
      {
         return super.getExplosionDistanceToObject(param1,param2,param3);
      }
      
      public function §,!W§(param1:String, param2:Number, param3:Number, param4:Number, param5:Number, param6:Boolean) : void
      {
         var _loc8_:Number = NaN;
         var _loc9_:Sprite = null;
         var _loc10_:§8#B§ = null;
         var _loc7_:§2p§;
         if(_loc7_ = §`=§.levelItemManager.getItem(param1) as §2p§)
         {
            _loc8_ = _loc7_.scale;
            if(param6)
            {
               _loc8_ = 1;
            }
            _loc8_ *= 1.5;
            _loc9_ = new Sprite();
            _loc10_ = §`=§.animationManager.getAnimation(param1);
            this.§"!§.§,!W§(param2,param3,param4,param5,_loc7_,_loc9_,_loc10_,_loc8_,param6);
            §="G§.addChild(_loc9_);
         }
      }
      
      public function §9#,§(param1:Number, param2:Number) : §[3§
      {
         var _loc7_:§[3§ = null;
         var _loc8_:b2Vec2 = null;
         var _loc9_:Number = NaN;
         var _loc3_:§[3§ = null;
         var _loc4_:Number = 0;
         var _loc5_:int = §2!E§.length;
         var _loc6_:int = 0;
         while(_loc6_ < _loc5_)
         {
            if((_loc7_ = §2!E§[_loc6_] as §[3§) && _loc7_.health > 0 && !_loc7_.§[!b§)
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
      
      public function §!#x§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         §`=§.setSlowMotion(param1,param2,param3,param4);
      }
      
      override public function getForceAtPoint(param1:Number, param2:Number, param3:Number, param4:b2Vec2) : b2Vec2
      {
         var _loc5_:§0S§ = null;
         var _loc6_:§=P§ = null;
         if(this.§5!'§)
         {
            return super.getForceAtPoint(param1,param2,param3,param4);
         }
         if(!param4)
         {
            param4 = new b2Vec2();
         }
         param4.x = 0;
         param4.y = 0;
         for each(_loc5_ in §0#"§)
         {
            if(_loc6_ = _loc5_ as §=P§)
            {
               this.§!!o§.x = param1;
               this.§!!o§.y = param2;
               _loc6_.§0#W§(this.§!!o§,param3,this.§&#B§);
               param4.§<+§(this.§&#B§);
            }
         }
         return param4;
      }
      
      override protected function updateExplosionEffects(param1:§+!H§, param2:Number, param3:Number, param4:Number) : void
      {
      }
      
      protected function §4""§(param1:§+!H§, param2:Number, param3:Number, param4:Number) : void
      {
         super.updateExplosionEffects(param1,param2,param3,param4);
      }
      
      override protected function hasMinimumCollisionSpeed(param1:§#-§, param2:§#-§) : Boolean
      {
         return true;
      }
      
      protected function §5U§(param1:§^"9§, param2:§^"9§) : Number
      {
         return super.getCollisionDamageFactor(param1,param2);
      }
      
      override protected function getCollisionDamageFactor(param1:§^"9§, param2:§^"9§) : Number
      {
         var _loc3_:Number = NaN;
         if(param1 is §"7§)
         {
            return 1;
         }
         if(param2 is §"7§)
         {
            return 0;
         }
         return Number(param1.§=!%§(param2.§0!C§()));
      }
      
      protected function §2"L§(param1:§^"9§, param2:§^"9§) : Number
      {
         return super.getCollisionForceFactor(param1,param2);
      }
      
      override protected function getCollisionForceFactor(param1:§^"9§, param2:§^"9§) : Number
      {
         var _loc3_:Number = NaN;
         if(param1 is §"7§)
         {
            return Number(param1.§=!%§(param2.§0!C§()));
         }
         return 1;
      }
      
      public function get §1u§() : Boolean
      {
         var _loc1_:§0S§ = null;
         if(§0#"§.length > 0)
         {
            for each(_loc1_ in §0#"§)
            {
               if(_loc1_ is §=P§)
               {
                  return true;
               }
            }
         }
         return false;
      }
   }
}
