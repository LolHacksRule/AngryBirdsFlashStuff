package §7P§
{
   import §!!U§.§#"t§;
   import §!!U§.Sprite;
   import §!"+§.§'!L§;
   import §+#$§.b2Body;
   import §+#$§.b2Fixture;
   import §-!_§.§,#Q§;
   import §1!2§.b2JointEdge;
   import §2"Y§.§"#`§;
   import §2"Y§.§"t§;
   import §2"Y§.§%#@§;
   import §2"Y§.§2"q§;
   import §2"Y§.§8!D§;
   import §2"Y§.§=+§;
   import §2"Y§.§["$§;
   import §3"5§.b2AABB;
   import §7!F§.§8!W§;
   import §7!F§.§>"G§;
   import §8[§.b2Contact;
   import §<"B§.§-!5§;
   import §<"B§.§94§;
   import §<"B§.§]§;
   import §?m§.§=!z§;
   import §[""§.§##W§;
   import §[""§.§3!2§;
   import §[R§.b2Vec2;
   import §^#>§.§#_§;
   import §`!r§.§#!j§;
   import §`!r§.§&#I§;
   import §`!r§.§7!w§;
   import §`!r§.§7O§;
   import §`!r§.§^"g§;
   import flash.geom.Point;
   
   public class §^!K§ extends §," § implements § [§
   {
       
      
      protected var §2!W§:Vector.<§+c§>;
      
      protected var §<0§:Vector.<§9c§>;
      
      public function §^!K§(param1:§#_§, param2:§=!z§, param3:Sprite, param4:String, param5:String = "", param6:String = "")
      {
         this.§2!W§ = new Vector.<§+c§>();
         this.§<0§ = new Vector.<§9c§>();
         super(param1,param2,param3,param4,param5,param6);
      }
      
      override public function dispose() : void
      {
         var _loc1_:§9c§ = null;
         super.dispose();
         if(this.§<0§)
         {
            if(this.§<0§.length > 0)
            {
               _loc1_ = this.§<0§.pop();
               _loc1_.dispose();
            }
            this.§<0§ = null;
         }
         this.§2!W§ = null;
      }
      
      override protected function getCommonTextureName() : String
      {
         return §"#`§.§[c§;
      }
      
      override protected function createObjectInstance(param1:§94§, param2:Sprite, param3:Boolean = true, param4:Number = 1.0) : §7B§
      {
         var _loc6_:String = null;
         var _loc7_:§>"G§ = null;
         var _loc8_:String = null;
         var _loc9_:int = 0;
         var _loc10_:§]#3§ = null;
         var _loc11_:§8!D§ = null;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc5_:§["$§;
         if(!(_loc5_ = §2#G§.levelItemManager.getItem(param1.type) as §["$§))
         {
            if((_loc8_ = param1.type).indexOf("SCORE") != -1)
            {
               _loc8_ = §&#I§.§+"§;
            }
            if(!(_loc5_ = §2#G§.levelItemManager.getItem(_loc8_) as §["$§))
            {
               throw new Error("Can\'t find definition for name: \'" + param1.type + "\'");
            }
            _loc6_ = _loc5_.itemName;
            _loc7_ = §2#G§.animationManager.getAnimation(_loc6_);
            return this.addParticleSpace(param1,param2,_loc7_);
         }
         _loc6_ = _loc5_.itemName;
         _loc7_ = §2#G§.animationManager.getAnimation(_loc6_);
         if(_loc5_ is §=+§)
         {
            return this.§5"W§(this.addObjectBird(param1,param2,_loc7_,_loc5_,param4,param3));
         }
         if(_loc5_.itemType == §"t§.§5s§)
         {
            return this.§5"W§(this.addObjectPig(param1,param2,_loc7_,_loc5_,param4));
         }
         if(param1.type.indexOf(§@!W§.§+"§) != -1)
         {
            if(!_loc5_)
            {
               throw new Error("Can\'t find light saber definition for \'" + param1.type + "\'");
            }
            return new §@!W§(param2,_loc7_,§2#G§.mLevelEngine.mWorld,_loc5_,param1);
         }
         if(param1.type.indexOf(§1#U§.§+"§) != -1)
         {
            _loc9_ = 1;
            if(_loc10_ = param1 as §]#3§)
            {
               _loc9_ = _loc10_.shotPattern;
            }
            if(!_loc5_)
            {
               throw new Error("Can\'t find laser gun definition for \'" + param1.type + "\'");
            }
            return new §1#U§(param2,_loc7_,§2#G§.mLevelEngine.mWorld,_loc5_,param1,param4,_loc9_);
         }
         if(param1.type == §7#"§.§+"§)
         {
            _loc11_ = §2#G§.levelItemManager.getItem(param1.type) as §8!D§;
            if(!_loc5_)
            {
               throw new Error("Can\'t find MF definition");
            }
            _loc12_ = §2#G§.slingshot.x;
            _loc13_ = §2#G§.slingshot.y;
            §2#G§.camera.setAction(§,#Q§.§[#H§);
            return new §7#"§(param2,_loc7_,§2#G§.mLevelEngine.mWorld,_loc11_,param1,_loc12_,_loc13_,param4);
         }
         return this.§5"W§(super.createObjectInstance(param1,param2,param3,param4));
      }
      
      protected function §5"W§(param1:§7B§) : §7B§
      {
         var _loc2_:§&#=§ = null;
         if(param1 is §&#=§)
         {
            _loc2_ = §&#=§(param1);
            switch(_loc2_.§=G§)
            {
               case GravityFilterCategory.FORCE_OBJECT:
                  this.§ a§(_loc2_,"RED",-1);
                  break;
               case GravityFilterCategory.YODA_FORCE_OBJECT:
                  this.§ a§(_loc2_,"GREEN",-1);
            }
         }
         return param1;
      }
      
      override protected function addObjectBird(param1:§94§, param2:Sprite, param3:§>"G§, param4:§"t§, param5:Number = 1.0, param6:Boolean = true) : §?"N§
      {
         var _loc7_:String = param1.type;
         var _loc8_:§=+§ = param4 as §=+§;
         if(_loc7_.indexOf(§-!F§.§+"§) == 0)
         {
            return new §-!F§(param2,param3,§2#G§.mLevelEngine.mWorld,_loc8_,param1,param5,param6);
         }
         if(_loc7_.indexOf(§@!8§.§+"§) == 0)
         {
            return new §@!8§(param2,param3,§2#G§.mLevelEngine.mWorld,_loc8_,param1,param5,param6);
         }
         if(_loc7_.indexOf(§]!-§.§+"§) == 0)
         {
            return new §]!-§(param2,param3,§2#G§.mLevelEngine.mWorld,_loc8_,param1,param5,param6);
         }
         if(_loc7_.indexOf(§-E§.§+"§) == 0)
         {
            return new §-E§(param2,param3,§2#G§.mLevelEngine.mWorld,_loc8_,param1,param5,param6);
         }
         if(_loc7_.indexOf(§9"J§.§+"§) == 0)
         {
            return new §9"J§(param2,param3,§2#G§.mLevelEngine.mWorld,_loc8_,param1,param5,param6);
         }
         if(_loc7_.indexOf(§8!?§.§+"§) == 0)
         {
            return new §8!?§(param2,param3,§2#G§.mLevelEngine.mWorld,_loc8_,param1,param5,param6);
         }
         if(_loc7_.indexOf(§=1§.§+"§) == 0)
         {
            return new §=1§(param2,param3,§2#G§.mLevelEngine.mWorld,_loc8_,param1,param5,param6);
         }
         return super.addObjectBird(param1,param2,param3,param4,param5,param6);
      }
      
      override protected function addParticleSpace(param1:§94§, param2:Sprite, param3:§>"G§) : §7B§
      {
         var _loc11_:§8!W§ = null;
         var _loc4_:String;
         if((_loc4_ = param1.type).indexOf("SCORE") != -1)
         {
            _loc4_ = §&#I§.§+"§;
         }
         var _loc5_:Number = param1.x;
         var _loc6_:Number = param1.y;
         var _loc7_:Number = param1.angle;
         var _loc8_:Number = param1.§2"5§;
         var _loc9_:Number = param1.§`#Y§;
         var _loc10_:§2"q§;
         if(!(_loc10_ = §2#G§.levelItemManager.getItem(_loc4_) as §2"q§))
         {
            return null;
         }
         if(_loc10_.§<#B§)
         {
            return new §#!j§(param2,param3,§2#G§.mLevelEngine.mWorld,_loc10_,_loc5_,_loc6_);
         }
         if(_loc4_ == §&#I§.§+"§)
         {
            _loc11_ = §2#G§.textureManager.getTexture(param1.type);
            return new §&#I§(_loc11_,param2,§2#G§.mLevelEngine.mWorld,_loc10_,_loc5_,_loc6_);
         }
         if(_loc4_.indexOf("Trail") != -1)
         {
            return new §^"g§(param2,param3,§2#G§.mLevelEngine.mWorld,_loc10_,_loc5_,_loc6_,_loc7_,_loc8_,_loc9_);
         }
         if(_loc10_.amount <= 3)
         {
            return new §7O§(param2,param3,§2#G§.mLevelEngine.mWorld,_loc10_,_loc5_,_loc6_,_loc7_,_loc8_,_loc9_);
         }
         return new §7!w§(param2,param3,§2#G§.mLevelEngine.mWorld,_loc10_,_loc5_,_loc6_,_loc7_,_loc8_,_loc9_);
      }
      
      override protected function addObjectPig(param1:§94§, param2:Sprite, param3:§>"G§, param4:§"t§, param5:Number = 1.0) : §<!2§
      {
         var _loc6_:§<!2§ = null;
         if(param3.hasSubAnimation(§%#@§.§2#'§))
         {
            _loc6_ = new §%3§(param2,param3,§2#G§.mLevelEngine.mWorld,param4,param1,param5);
         }
         else
         {
            _loc6_ = super.addObjectPig(param1,param2,param3,param4,param5);
         }
         if(param1.type == "PIG_KING")
         {
            this.§>q§(_loc6_,1.5,"FORCE_GLOW_RED_CIRCLE_L",-1);
         }
         return _loc6_;
      }
      
      public function §4#>§(param1:§+c§) : void
      {
         this.§2!W§.push(param1);
      }
      
      override public function updateObjects(param1:Number) : void
      {
         super.updateObjects(param1);
         this.§]!C§();
      }
      
      override public function renderObjects(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc5_:§9c§ = null;
         super.renderObjects(param1,param2,param3);
         var _loc4_:int = this.§<0§.length - 1;
         while(_loc4_ >= 0)
         {
            if(!(_loc5_ = this.§<0§[_loc4_]).update(param1 / §2#G§.timeSpeedMultiplier))
            {
               _loc5_.dispose();
               this.§<0§.splice(_loc4_,1);
            }
            _loc4_--;
         }
      }
      
      public function §`2§(param1:Number, param2:b2Body) : void
      {
         var _loc3_:§-!5§ = null;
         var _loc4_:b2JointEdge = null;
         for each(_loc3_ in §6!Z§)
         {
            if(_loc3_.isBreakable && param1 >= _loc3_.minBreakForce)
            {
               if((_loc4_ = param2.GetJointList()) != null && _loc4_.joint == _loc3_.§##>§)
               {
                  §`"S§(_loc3_);
               }
            }
         }
      }
      
      private function §`#S§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:§+c§) : §!!"§
      {
         var _loc7_:§3!2§ = null;
         var _loc8_:Number = (_loc7_ = §##W§.§`!5§(param1,param2,param3,param4,param5,param6.x,param6.y)).distance;
         var _loc9_:Point = new Point(0,0);
         if(_loc8_ == 0)
         {
            _loc9_.y = -1;
         }
         else
         {
            _loc9_.x = _loc7_.§>"6§.x - param6.x;
            _loc9_.y = _loc7_.§>"6§.y - param6.y;
            _loc9_.normalize(1);
         }
         var _loc10_:Number = Math.atan2(_loc9_.y,_loc9_.x);
         var _loc11_:Number = param6.angle;
         var _loc12_:Number = param6.§5e§ / 2;
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
         var _loc15_:§!!"§;
         (_loc15_ = new §!!"§()).distance = _loc8_;
         _loc15_.§>"6§ = _loc7_.§>"6§;
         _loc15_.§>!j§ = _loc9_;
         _loc15_.§2+§ = _loc14_;
         return _loc15_;
      }
      
      private function §]!C§() : void
      {
         var _loc1_:§+c§ = null;
         while(this.§2!W§.length > 0)
         {
            _loc1_ = this.§2!W§.pop();
            this.§-@§(_loc1_);
            this.§6A§(_loc1_);
         }
      }
      
      private function §6A§(param1:§+c§) : void
      {
         var _loc3_:§'!L§ = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:§!!"§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < §'J§.laserCount)
         {
            _loc3_ = §'J§.getLaser(_loc2_);
            _loc4_ = _loc3_.width;
            _loc5_ = _loc3_.height;
            _loc6_ = _loc3_.x;
            _loc7_ = _loc3_.y;
            _loc8_ = _loc3_.angle;
            _loc9_ = this.§`#S§(_loc6_,_loc7_,_loc4_,_loc5_,_loc8_,param1);
            this.§-"v§(param1,_loc9_,_loc3_);
            _loc2_++;
         }
      }
      
      private function §-"v§(param1:§+c§, param2:§!!"§, param3:§'!L§) : void
      {
         var _loc4_:Number = NaN;
         if(param2.distance < param1.explosionRadius && param2.§2+§)
         {
            _loc4_ = Math.atan2(param3.y - param1.y,param3.x - param1.x);
            param3.reflectToAngle(_loc4_,param3.speed);
         }
      }
      
      private function §-@§(param1:§+c§) : void
      {
         var _loc2_:Vector.<§&#=§> = null;
         var _loc5_:§&#=§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:§!!"§ = null;
         var _loc12_:Number = NaN;
         var _loc3_:Number = Math.max(param1.explosionRadius,param1.explosionDamageRadius,param1.smallExplosionRadius);
         _loc2_ = this.§-!f§(param1.x,param1.y,-_loc3_,_loc3_,-_loc3_,_loc3_);
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_.length)
         {
            if(!((_loc5_ = _loc2_[_loc4_]) is §1#E§ || _loc5_ is §?"N§ || _loc5_.levelItem.isMaterialStatic))
            {
               _loc6_ = _loc5_.levelItem.shape.getWidth();
               _loc7_ = _loc5_.levelItem.shape.getHeight();
               _loc8_ = _loc5_.§3!t§().GetPosition().x;
               _loc9_ = _loc5_.§3!t§().GetPosition().y;
               _loc10_ = _loc5_.§3!t§().GetAngle();
               _loc11_ = this.§`#S§(_loc8_,_loc9_,_loc6_,_loc7_,_loc10_,param1);
               if(_loc5_ is §1!K§ && _loc11_.§2+§)
               {
                  (_loc5_ as §1!K§).§0!v§();
               }
               _loc12_ = this.§=c§(param1,_loc11_,_loc5_);
               this.§`2§(_loc12_,_loc5_.§3!t§());
            }
            _loc4_++;
         }
      }
      
      private function §=c§(param1:§+c§, param2:§!!"§, param3:§&#=§) : Number
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(param2.distance < param1.smallExplosionRadius)
         {
            _loc5_ = 1 - param2.distance / param1.smallExplosionRadius;
            _loc4_ = (_loc4_ = param1.smallExplosionMinForce + (param1.smallExplosionForce - param1.smallExplosionMinForce) * _loc5_) * §#_§.§8]§;
            this.§]#L§(param3,param2.§>!j§,_loc4_,param2.§>"6§);
         }
         if(param2.distance < param1.explosionRadius && param2.§2+§)
         {
            _loc5_ = 1 - param2.distance / param1.explosionRadius;
            _loc4_ = (_loc4_ = param1.explosionMinForce + (param1.explosionForce - param1.explosionMinForce) * _loc5_) * §#_§.§8]§;
            this.§]#L§(param3,param2.§>!j§,_loc4_,param2.§>"6§);
         }
         return _loc4_;
      }
      
      private function §]#L§(param1:§&#=§, param2:Point, param3:Number, param4:Point) : void
      {
         var _loc5_:b2Vec2 = new b2Vec2(param2.x * param3,param2.y * param3);
         var _loc6_:b2Vec2 = new b2Vec2(param4.x,param4.y);
         param1.§3!t§().ApplyImpulse(_loc5_,_loc6_);
         if(param1.§=G§ != GravityFilterCategory.FORCE_OBJECT && param1.§=G§ != GravityFilterCategory.YODA_FORCE_OBJECT)
         {
            this.§ a§(param1);
         }
      }
      
      public function §-!f§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number) : Vector.<§&#=§>
      {
         var objects:Vector.<§&#=§> = null;
         var x:Number = param1;
         var y:Number = param2;
         var left:Number = param3;
         var right:Number = param4;
         var down:Number = param5;
         var up:Number = param6;
         objects = new Vector.<§&#=§>();
         var aabb:b2AABB = new b2AABB();
         aabb.§1!,§.Set(x + left,y + down);
         aabb.§ D§.Set(x + right,y + up);
         var callBack:Function = function aabbCallback(param1:b2Fixture):Boolean
         {
            var _loc2_:§&#=§ = param1.GetBody().GetUserData() as §&#=§;
            if(_loc2_ != null)
            {
               objects.push(§&#=§(_loc2_));
            }
            return true;
         };
         §2#G§.mLevelEngine.mWorld.QueryAABB(callBack,aabb);
         return objects;
      }
      
      public function § a§(param1:§&#=§, param2:String = "BLUE", param3:Number = 1500) : void
      {
         var _loc4_:§["$§;
         if(_loc4_ = param1.levelItem as §["$§)
         {
            this.§>q§(param1,Number(_loc4_.getNumberProperty("glowScale")) || Number(1),_loc4_.§@"y§(param2),param3);
         }
      }
      
      protected function §>q§(param1:§&#=§, param2:Number, param3:String, param4:Number) : void
      {
         var _loc7_:§8!W§ = null;
         this.§5"[§(param1);
         var _loc5_:§#"t§ = null;
         var _loc6_:§["$§;
         if(_loc6_ = param1.levelItem as §["$§)
         {
            if(_loc7_ = §2#G§.textureManager.getTexture(param3))
            {
               (_loc5_ = new §#"t§(_loc7_.texture)).pivotX = -_loc7_.pivotX;
               _loc5_.pivotY = -_loc7_.pivotY;
               _loc5_.scaleX = param2;
               _loc5_.scaleY = param2;
               _loc5_.rotation = _loc6_.§'!o§() / 180 * Math.PI;
            }
         }
         if(_loc5_)
         {
            this.§<0§.push(new §9c§(param1,_loc5_,param4));
         }
      }
      
      protected function §5"[§(param1:§&#=§) : void
      {
         var _loc2_:int = 0;
         var _loc3_:§9c§ = null;
         if(param1)
         {
            _loc2_ = this.§<0§.length - 1;
            while(_loc2_ >= 0)
            {
               _loc3_ = this.§<0§[_loc2_];
               if(_loc3_.§[!@§ == param1)
               {
                  _loc3_.dispose();
                  this.§<0§.splice(_loc2_,1);
               }
               _loc2_--;
            }
         }
      }
      
      override protected function performTriggerActionOnObject(param1:§&#=§, param2:String, param3:String) : void
      {
         var _loc4_:§9c§ = null;
         if(param2 == "removeGravityFilterCategory")
         {
            for each(_loc4_ in this.§<0§)
            {
               if(_loc4_.§[!@§ == param1)
               {
                  _loc4_.§1#T§(300);
                  break;
               }
            }
         }
         super.performTriggerActionOnObject(param1,param2,param3);
      }
      
      override public function removeObject(param1:§7B§, param2:Boolean = false) : void
      {
         this.§5"[§(param1 as §&#=§);
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
            §&!G§(true,0.2,5 * param1 / _loc5_,param1 / _loc5_ * 500);
         }
      }
      
      override protected function shakeCameraOnExplosion(param1:Number) : void
      {
         §&!G§(true,0.2,param1 / 900 * 4,param1 / 900 * 400);
      }
      
      override public function objectCollision(param1:§7B§, param2:§7B§, param3:b2Contact) : Boolean
      {
         if(param1 is §]!-§ || param2 is §]!-§)
         {
            if(param1 is §&#=§ && param2 is §&#=§)
            {
               return this.§="R§(param1 as §&#=§,param2 as §&#=§,param3);
            }
         }
         return super.objectCollision(param1,param2,param3);
      }
      
      public function §="R§(param1:§&#=§, param2:§&#=§, param3:b2Contact) : Boolean
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
      
      override protected function updateObject(param1:§7B§, param2:Number) : void
      {
         super.updateObject(param1,param2);
      }
   }
}
