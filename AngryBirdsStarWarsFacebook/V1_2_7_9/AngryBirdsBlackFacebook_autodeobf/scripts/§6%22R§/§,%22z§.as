package §6"R§
{
   import §%!#§.b2AABB;
   import §+!,§.b2Contact;
   import §,#+§.§="l§;
   import §1"s§.§-i§;
   import §1"s§.Sprite;
   import §1x§.b2Body;
   import §1x§.b2Fixture;
   import §2!`§.§%!l§;
   import §2!`§.§,"g§;
   import §2!`§.§-!L§;
   import §2!`§.§0!&§;
   import §2!`§.§5[§;
   import §2",§.b2JointEdge;
   import §3"$§.§[a§;
   import §3"$§.§]!h§;
   import §4"F§.§&!l§;
   import §4"F§.§'!=§;
   import §4"F§.§^d§;
   import §4=§.§=!s§;
   import §5!q§.§3"X§;
   import §5i§.§+M§;
   import §;[§.§0!9§;
   import §;[§.§<!x§;
   import §>P§.§&"§;
   import §>P§.§&"T§;
   import §>P§.§+"o§;
   import §>P§.§;+§;
   import §>P§.§=!,§;
   import §>P§.§=4§;
   import §>P§.§^#'§;
   import §^>§.b2Vec2;
   import flash.geom.Point;
   
   public class §,"z§ extends §"!n§ implements §4"d§
   {
       
      
      protected var §2#-§:Vector.<§7"7§>;
      
      protected var §?b§:Vector.<§<![§>;
      
      public function §,"z§(param1:§3"X§, param2:§="l§, param3:Sprite, param4:String, param5:String = "", param6:String = "")
      {
         this.§2#-§ = new Vector.<§7"7§>();
         this.§?b§ = new Vector.<§<![§>();
         super(param1,param2,param3,param4,param5,param6);
      }
      
      override public function dispose() : void
      {
         var _loc1_:§<![§ = null;
         super.dispose();
         if(this.§?b§)
         {
            if(this.§?b§.length > 0)
            {
               _loc1_ = this.§?b§.pop();
               _loc1_.dispose();
            }
            this.§?b§ = null;
         }
         this.§2#-§ = null;
      }
      
      override protected function getCommonTextureName() : String
      {
         return §+"o§.§2!8§;
      }
      
      override protected function createObjectInstance(param1:§^d§, param2:Sprite, param3:Boolean = true, param4:Number = 1.0) : §!z§
      {
         var _loc6_:String = null;
         var _loc7_:§[a§ = null;
         var _loc8_:String = null;
         var _loc9_:int = 0;
         var _loc10_:§'!=§ = null;
         var _loc11_:§;+§ = null;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc5_:§=4§;
         if(!(_loc5_ = §]""§.levelItemManager.getItem(param1.type) as §=4§))
         {
            if((_loc8_ = param1.type).indexOf("SCORE") != -1)
            {
               _loc8_ = §,"g§.§^!3§;
            }
            if(!(_loc5_ = §]""§.levelItemManager.getItem(_loc8_) as §=4§))
            {
               throw new Error("Can\'t find definition for name: \'" + param1.type + "\'");
            }
            _loc6_ = _loc5_.itemName;
            _loc7_ = §]""§.animationManager.getAnimation(_loc6_);
            return this.addParticleSpace(param1,param2,_loc7_);
         }
         _loc6_ = _loc5_.itemName;
         _loc7_ = §]""§.animationManager.getAnimation(_loc6_);
         if(_loc5_ is §&"§)
         {
            return this.§9R§(this.addObjectBird(param1,param2,_loc7_,_loc5_,param4,param3));
         }
         if(_loc5_.itemType == §=!,§.§="!§)
         {
            return this.§9R§(this.addObjectPig(param1,param2,_loc7_,_loc5_,param4));
         }
         if(param1.type.indexOf(§3!R§.§^!3§) != -1)
         {
            if(!_loc5_)
            {
               throw new Error("Can\'t find light saber definition for \'" + param1.type + "\'");
            }
            return new §3!R§(param2,_loc7_,§]""§.mLevelEngine.mWorld,_loc5_,param1);
         }
         if(param1.type.indexOf(§=y§.§^!3§) != -1)
         {
            _loc9_ = 1;
            if(_loc10_ = param1 as §'!=§)
            {
               _loc9_ = _loc10_.shotPattern;
            }
            if(!_loc5_)
            {
               throw new Error("Can\'t find laser gun definition for \'" + param1.type + "\'");
            }
            return new §=y§(param2,_loc7_,§]""§.mLevelEngine.mWorld,_loc5_,param1,param4,_loc9_);
         }
         if(param1.type == §^"!§.§^!3§)
         {
            _loc11_ = §]""§.levelItemManager.getItem(param1.type) as §;+§;
            if(!_loc5_)
            {
               throw new Error("Can\'t find MF definition");
            }
            _loc12_ = §]""§.slingshot.x;
            _loc13_ = §]""§.slingshot.y;
            §]""§.camera.setAction(§+M§.§&R§);
            return new §^"!§(param2,_loc7_,§]""§.mLevelEngine.mWorld,_loc11_,param1,_loc12_,_loc13_,param4);
         }
         return this.§9R§(super.createObjectInstance(param1,param2,param3,param4));
      }
      
      protected function §9R§(param1:§!z§) : §!z§
      {
         var _loc2_:§4!w§ = null;
         if(param1 is §4!w§)
         {
            _loc2_ = §4!w§(param1);
            switch(_loc2_.§+s§)
            {
               case GravityFilterCategory.FORCE_OBJECT:
                  this.§]o§(_loc2_,"RED",-1);
                  break;
               case GravityFilterCategory.YODA_FORCE_OBJECT:
                  this.§]o§(_loc2_,"GREEN",-1);
            }
         }
         return param1;
      }
      
      override protected function addObjectBird(param1:§^d§, param2:Sprite, param3:§[a§, param4:§=!,§, param5:Number = 1.0, param6:Boolean = true) : §%!0§
      {
         var _loc7_:String = param1.type;
         var _loc8_:§&"§ = param4 as §&"§;
         if(_loc7_.indexOf(§7h§.§^!3§) == 0)
         {
            return new §7h§(param2,param3,§]""§.mLevelEngine.mWorld,_loc8_,param1,param5,param6);
         }
         if(_loc7_.indexOf(§<"D§.§^!3§) == 0)
         {
            return new §<"D§(param2,param3,§]""§.mLevelEngine.mWorld,_loc8_,param1,param5,param6);
         }
         if(_loc7_.indexOf(§!!V§.§^!3§) == 0)
         {
            return new §!!V§(param2,param3,§]""§.mLevelEngine.mWorld,_loc8_,param1,param5,param6);
         }
         if(_loc7_.indexOf(§8!t§.§^!3§) == 0)
         {
            return new §8!t§(param2,param3,§]""§.mLevelEngine.mWorld,_loc8_,param1,param5,param6);
         }
         if(_loc7_.indexOf(§'u§.§^!3§) == 0)
         {
            return new §'u§(param2,param3,§]""§.mLevelEngine.mWorld,_loc8_,param1,param5,param6);
         }
         if(_loc7_.indexOf(§3#+§.§^!3§) == 0)
         {
            return new §3#+§(param2,param3,§]""§.mLevelEngine.mWorld,_loc8_,param1,param5,param6);
         }
         if(_loc7_.indexOf(§7#"§.§^!3§) == 0)
         {
            return new §7#"§(param2,param3,§]""§.mLevelEngine.mWorld,_loc8_,param1,param5,param6);
         }
         return super.addObjectBird(param1,param2,param3,param4,param5,param6);
      }
      
      override protected function addParticleSpace(param1:§^d§, param2:Sprite, param3:§[a§) : §!z§
      {
         var _loc11_:§]!h§ = null;
         var _loc4_:String;
         if((_loc4_ = param1.type).indexOf("SCORE") != -1)
         {
            _loc4_ = §,"g§.§^!3§;
         }
         var _loc5_:Number = param1.x;
         var _loc6_:Number = param1.y;
         var _loc7_:Number = param1.angle;
         var _loc8_:Number = param1.§5<§;
         var _loc9_:Number = param1.§4#'§;
         var _loc10_:§^#'§;
         if(!(_loc10_ = §]""§.levelItemManager.getItem(_loc4_) as §^#'§))
         {
            return null;
         }
         if(_loc10_.§=!V§)
         {
            return new §%!l§(param2,param3,§]""§.mLevelEngine.mWorld,_loc10_,_loc5_,_loc6_);
         }
         if(_loc4_ == §,"g§.§^!3§)
         {
            _loc11_ = §]""§.textureManager.getTexture(param1.type);
            return new §,"g§(_loc11_,param2,§]""§.mLevelEngine.mWorld,_loc10_,_loc5_,_loc6_);
         }
         if(_loc4_.indexOf("Trail") != -1)
         {
            return new §0!&§(param2,param3,§]""§.mLevelEngine.mWorld,_loc10_,_loc5_,_loc6_,_loc7_,_loc8_,_loc9_);
         }
         if(_loc10_.amount <= 3)
         {
            return new §5[§(param2,param3,§]""§.mLevelEngine.mWorld,_loc10_,_loc5_,_loc6_,_loc7_,_loc8_,_loc9_);
         }
         return new §-!L§(param2,param3,§]""§.mLevelEngine.mWorld,_loc10_,_loc5_,_loc6_,_loc7_,_loc8_,_loc9_);
      }
      
      override protected function addObjectPig(param1:§^d§, param2:Sprite, param3:§[a§, param4:§=!,§, param5:Number = 1.0) : §-#'§
      {
         var _loc6_:§-#'§ = null;
         if(param3.hasSubAnimation(§&"T§.§%!3§))
         {
            _loc6_ = new §;h§(param2,param3,§]""§.mLevelEngine.mWorld,param4,param1,param5);
         }
         else
         {
            _loc6_ = super.addObjectPig(param1,param2,param3,param4,param5);
         }
         if(param1.type == "PIG_KING")
         {
            this.§0!Q§(_loc6_,1.5,"FORCE_GLOW_RED_CIRCLE_L",-1);
         }
         return _loc6_;
      }
      
      public function §-!c§(param1:§7"7§) : void
      {
         this.§2#-§.push(param1);
      }
      
      override public function updateObjects(param1:Number) : void
      {
         super.updateObjects(param1);
         this.§1"@§();
      }
      
      override public function renderObjects(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc5_:§<![§ = null;
         super.renderObjects(param1,param2,param3);
         var _loc4_:int = this.§?b§.length - 1;
         while(_loc4_ >= 0)
         {
            if(!(_loc5_ = this.§?b§[_loc4_]).update(param1 / §]""§.timeSpeedMultiplier))
            {
               _loc5_.dispose();
               this.§?b§.splice(_loc4_,1);
            }
            _loc4_--;
         }
      }
      
      public function §<>§(param1:Number, param2:b2Body) : void
      {
         var _loc3_:§&!l§ = null;
         var _loc4_:b2JointEdge = null;
         for each(_loc3_ in §%#-§)
         {
            if(_loc3_.isBreakable && param1 >= _loc3_.minBreakForce)
            {
               if((_loc4_ = param2.GetJointList()) != null && _loc4_.§^P§ == _loc3_.§ "A§)
               {
                  §+@§(_loc3_);
               }
            }
         }
      }
      
      private function §#"x§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:§7"7§) : §,!;§
      {
         var _loc7_:§<!x§ = null;
         var _loc8_:Number = (_loc7_ = §0!9§.§7"3§(param1,param2,param3,param4,param5,param6.x,param6.y)).§'"V§;
         var _loc9_:Point = new Point(0,0);
         if(_loc8_ == 0)
         {
            _loc9_.y = -1;
         }
         else
         {
            _loc9_.x = _loc7_.§&#%§.x - param6.x;
            _loc9_.y = _loc7_.§&#%§.y - param6.y;
            _loc9_.normalize(1);
         }
         var _loc10_:Number = Math.atan2(_loc9_.y,_loc9_.x);
         var _loc11_:Number = param6.angle;
         var _loc12_:Number = param6.§-"e§ / 2;
         var _loc13_:Number;
         if((_loc13_ = _loc11_ - _loc10_) < -Math.PI)
         {
            _loc13_ = Math.abs(_loc11_ - _loc10_ + Math.PI * 2);
         }
         else if(_loc13_ > Math.PI)
         {
            _loc13_ = Math.abs(_loc11_ - _loc10_ - Math.PI * 2);
         }
         _loc13_ = Math.abs(_loc13_);
         var _loc14_:Boolean = false;
         if(_loc13_ <= _loc12_)
         {
            _loc14_ = true;
         }
         var _loc15_:§,!;§;
         (_loc15_ = new §,!;§()).§'"V§ = _loc8_;
         _loc15_.§&#%§ = _loc7_.§&#%§;
         _loc15_.§8c§ = _loc9_;
         _loc15_.§@!S§ = _loc14_;
         return _loc15_;
      }
      
      private function §1"@§() : void
      {
         var _loc1_:§7"7§ = null;
         while(this.§2#-§.length > 0)
         {
            _loc1_ = this.§2#-§.pop();
            this.§7!4§(_loc1_);
            this.§4"X§(_loc1_);
         }
      }
      
      private function §4"X§(param1:§7"7§) : void
      {
         var _loc3_:§=!s§ = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:§,!;§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < §=P§.laserCount)
         {
            _loc3_ = §=P§.getLaser(_loc2_);
            _loc4_ = _loc3_.width;
            _loc5_ = _loc3_.height;
            _loc6_ = _loc3_.x;
            _loc7_ = _loc3_.y;
            _loc8_ = _loc3_.angle;
            _loc9_ = this.§#"x§(_loc6_,_loc7_,_loc4_,_loc5_,_loc8_,param1);
            this.§@5§(param1,_loc9_,_loc3_);
            _loc2_++;
         }
      }
      
      private function §@5§(param1:§7"7§, param2:§,!;§, param3:§=!s§) : void
      {
         var _loc4_:Number = NaN;
         if(param2.§'"V§ < param1.explosionRadius && param2.§@!S§)
         {
            _loc4_ = Math.atan2(param3.y - param1.y,param3.x - param1.x);
            param3.reflectToAngle(_loc4_,param3.speed);
         }
      }
      
      private function §7!4§(param1:§7"7§) : void
      {
         var _loc2_:Vector.<§4!w§> = null;
         var _loc5_:§4!w§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:§,!;§ = null;
         var _loc12_:Number = NaN;
         var _loc3_:Number = Math.max(param1.explosionRadius,param1.explosionDamageRadius,param1.smallExplosionRadius);
         _loc2_ = this.§9"%§(param1.x,param1.y,-_loc3_,_loc3_,-_loc3_,_loc3_);
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_.length)
         {
            if(!((_loc5_ = _loc2_[_loc4_]) is §-t§ || _loc5_ is §%!0§ || _loc5_.levelItem.isMaterialStatic))
            {
               _loc6_ = _loc5_.levelItem.shape.getWidth();
               _loc7_ = _loc5_.levelItem.shape.getHeight();
               _loc8_ = _loc5_.§?"Z§().GetPosition().x;
               _loc9_ = _loc5_.§?"Z§().GetPosition().y;
               _loc10_ = _loc5_.§?"Z§().GetAngle();
               _loc11_ = this.§#"x§(_loc8_,_loc9_,_loc6_,_loc7_,_loc10_,param1);
               if(_loc5_ is §4!3§ && _loc11_.§@!S§)
               {
                  (_loc5_ as §4!3§).§,"I§();
               }
               _loc12_ = this.§'!e§(param1,_loc11_,_loc5_);
               this.§<>§(_loc12_,_loc5_.§?"Z§());
            }
            _loc4_++;
         }
      }
      
      private function §'!e§(param1:§7"7§, param2:§,!;§, param3:§4!w§) : Number
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(param2.§'"V§ < param1.smallExplosionRadius)
         {
            _loc5_ = 1 - param2.§'"V§ / param1.smallExplosionRadius;
            _loc4_ = (_loc4_ = param1.smallExplosionMinForce + (param1.smallExplosionForce - param1.smallExplosionMinForce) * _loc5_) * §3"X§.§;"l§;
            this.§&S§(param3,param2.§8c§,_loc4_,param2.§&#%§);
         }
         if(param2.§'"V§ < param1.explosionRadius && param2.§@!S§)
         {
            _loc5_ = 1 - param2.§'"V§ / param1.explosionRadius;
            _loc4_ = (_loc4_ = param1.explosionMinForce + (param1.explosionForce - param1.explosionMinForce) * _loc5_) * §3"X§.§;"l§;
            this.§&S§(param3,param2.§8c§,_loc4_,param2.§&#%§);
         }
         return _loc4_;
      }
      
      private function §&S§(param1:§4!w§, param2:Point, param3:Number, param4:Point) : void
      {
         var _loc5_:b2Vec2 = new b2Vec2(param2.x * param3,param2.y * param3);
         var _loc6_:b2Vec2 = new b2Vec2(param4.x,param4.y);
         param1.§?"Z§().ApplyImpulse(_loc5_,_loc6_);
         if(param1.§+s§ != GravityFilterCategory.FORCE_OBJECT && param1.§+s§ != GravityFilterCategory.YODA_FORCE_OBJECT)
         {
            this.§]o§(param1);
         }
      }
      
      public function §9"%§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number) : Vector.<§4!w§>
      {
         var objects:Vector.<§4!w§> = null;
         var x:Number = param1;
         var y:Number = param2;
         var left:Number = param3;
         var right:Number = param4;
         var down:Number = param5;
         var up:Number = param6;
         objects = new Vector.<§4!w§>();
         var aabb:b2AABB = new b2AABB();
         aabb.§5-§.Set(x + left,y + down);
         aabb.§ "M§.Set(x + right,y + up);
         var callBack:Function = function aabbCallback(param1:b2Fixture):Boolean
         {
            var _loc2_:§4!w§ = param1.GetBody().GetUserData() as §4!w§;
            if(_loc2_ != null)
            {
               objects.push(§4!w§(_loc2_));
            }
            return true;
         };
         §]""§.mLevelEngine.mWorld.QueryAABB(callBack,aabb);
         return objects;
      }
      
      public function §]o§(param1:§4!w§, param2:String = "BLUE", param3:Number = 1500) : void
      {
         var _loc4_:§=4§;
         if(_loc4_ = param1.levelItem as §=4§)
         {
            this.§0!Q§(param1,Number(_loc4_.getNumberProperty("glowScale")) || Number(1),_loc4_.§?"A§(param2),param3);
         }
      }
      
      protected function §0!Q§(param1:§4!w§, param2:Number, param3:String, param4:Number) : void
      {
         var _loc7_:§]!h§ = null;
         this.§"2§(param1);
         var _loc5_:§-i§ = null;
         var _loc6_:§=4§;
         if(_loc6_ = param1.levelItem as §=4§)
         {
            if(_loc7_ = §]""§.textureManager.getTexture(param3))
            {
               (_loc5_ = new §-i§(_loc7_.texture)).pivotX = -_loc7_.pivotX;
               _loc5_.pivotY = -_loc7_.pivotY;
               _loc5_.scaleX = param2;
               _loc5_.scaleY = param2;
               _loc5_.rotation = _loc6_.§60§() / 180 * Math.PI;
            }
         }
         if(_loc5_)
         {
            this.§?b§.push(new §<![§(param1,_loc5_,param4));
         }
      }
      
      protected function §"2§(param1:§4!w§) : void
      {
         var _loc2_:int = 0;
         var _loc3_:§<![§ = null;
         if(param1)
         {
            _loc2_ = this.§?b§.length - 1;
            while(_loc2_ >= 0)
            {
               _loc3_ = this.§?b§[_loc2_];
               if(_loc3_.§^=§ == param1)
               {
                  _loc3_.dispose();
                  this.§?b§.splice(_loc2_,1);
               }
               _loc2_--;
            }
         }
      }
      
      override protected function performTriggerActionOnObject(param1:§4!w§, param2:String, param3:String) : void
      {
         var _loc4_:§<![§ = null;
         if(param2 == "removeGravityFilterCategory")
         {
            for each(_loc4_ in this.§?b§)
            {
               if(_loc4_.§^=§ == param1)
               {
                  _loc4_.§4W§(300);
                  break;
               }
            }
         }
         super.performTriggerActionOnObject(param1,param2,param3);
      }
      
      override public function removeObject(param1:§!z§, param2:Boolean = false) : void
      {
         this.§"2§(param1 as §4!w§);
         super.removeObject(param1,param2);
      }
      
      override protected function shakeCameraOnCollision(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(param1 > 50)
         {
            _loc4_ = Math.max(param2,param3);
            param1 = Math.min(param1,_loc4_);
            _loc5_ = 3000000;
            param1 = Math.min(param1 * param1 * param1,_loc5_);
            §6X§(true,0.2,5 * param1 / _loc5_,param1 / _loc5_ * 500);
         }
      }
      
      override protected function shakeCameraOnExplosion(param1:Number) : void
      {
         §6X§(true,0.2,param1 / 900 * 4,param1 / 900 * 400);
      }
      
      override public function objectCollision(param1:§!z§, param2:§!z§, param3:b2Contact) : Boolean
      {
         if(param1 is §!!V§ || param2 is §!!V§)
         {
            if(param1 is §4!w§ && param2 is §4!w§)
            {
               return this.§3"W§(param1 as §4!w§,param2 as §4!w§,param3);
            }
         }
         return super.objectCollision(param1,param2,param3);
      }
      
      public function §3"W§(param1:§4!w§, param2:§4!w§, param3:b2Contact) : Boolean
      {
         var _loc4_:Number = param1.health;
         var _loc5_:Number = param2.health;
         var _loc6_:Boolean = super.objectCollision(param1,param2,param3);
         if(param1.health > 0 && param2.health > 0)
         {
            if(_loc5_ - param2.health > param2.healthMax / 3 || _loc4_ - param1.health > param1.healthMax / 3)
            {
               param3.reset();
               return true;
            }
         }
         return _loc6_;
      }
      
      override protected function updateObject(param1:§!z§, param2:Number) : void
      {
         super.updateObject(param1,param2);
      }
   }
}
