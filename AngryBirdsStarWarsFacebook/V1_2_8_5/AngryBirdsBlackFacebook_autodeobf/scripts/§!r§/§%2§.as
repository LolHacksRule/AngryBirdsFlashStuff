package §!r§
{
   import §!!k§.§'!j§;
   import §!!k§.§1!^§;
   import §"§.§;!E§;
   import §#g§.§11§;
   import §#g§.§5!M§;
   import §#g§.§[!F§;
   import §#g§.§["%§;
   import §#g§.§]4§;
   import §#g§.§]_§;
   import §#g§.§^"y§;
   import §7"A§.b2Vec2;
   import §7§.§8[§;
   import §8"-§.§@"W§;
   import §;"E§.§>"§;
   import §;"E§.§]T§;
   import §=![§.b2JointEdge;
   import §=G§.§%H§;
   import §=G§.§0"Z§;
   import §=G§.§9v§;
   import §>"_§.b2Body;
   import §>"_§.b2Fixture;
   import §>r§.b2AABB;
   import §^9§.§"§;
   import §^9§.§0!X§;
   import §^9§.§7!f§;
   import §^9§.§["N§;
   import §^9§.§^S§;
   import flash.geom.Point;
   import §null §.§'!k§;
   import §use§.§,!u§;
   import §use§.Sprite;
   
   public class §%2§ extends §'!4§ implements §;"9§
   {
       
      
      protected var §!# §:Vector.<§`!7§>;
      
      protected var §&"z§:Vector.<§]#6§>;
      
      public function §%2§(param1:§;!E§, param2:§'!k§, param3:Sprite, param4:String, param5:String = "", param6:String = "")
      {
         this.§!# § = new Vector.<§`!7§>();
         this.§&"z§ = new Vector.<§]#6§>();
         super(param1,param2,param3,param4,param5,param6);
      }
      
      override public function dispose() : void
      {
         var _loc1_:§]#6§ = null;
         super.dispose();
         if(this.§&"z§)
         {
            if(this.§&"z§.length > 0)
            {
               _loc1_ = this.§&"z§.pop();
               _loc1_.dispose();
            }
            this.§&"z§ = null;
         }
         this.§!# § = null;
      }
      
      override protected function getCommonTextureName() : String
      {
         return §]4§.§3M§;
      }
      
      override protected function createObjectInstance(param1:§9v§, param2:Sprite, param3:Boolean = true, param4:Number = 1.0) : §?!x§
      {
         var _loc6_:String = null;
         var _loc7_:§1!^§ = null;
         var _loc8_:String = null;
         var _loc9_:int = 0;
         var _loc10_:§%H§ = null;
         var _loc11_:§5!M§ = null;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc5_:§[!F§;
         if(!(_loc5_ = §+!E§.levelItemManager.getItem(param1.type) as §[!F§))
         {
            if((_loc8_ = param1.type).indexOf("SCORE") != -1)
            {
               _loc8_ = §["N§.§5!L§;
            }
            if(!(_loc5_ = §+!E§.levelItemManager.getItem(_loc8_) as §[!F§))
            {
               throw new Error("Can\'t find definition for name: \'" + param1.type + "\'");
            }
            _loc6_ = _loc5_.itemName;
            _loc7_ = §+!E§.animationManager.getAnimation(_loc6_);
            return this.addParticleSpace(param1,param2,_loc7_);
         }
         _loc6_ = _loc5_.itemName;
         _loc7_ = §+!E§.animationManager.getAnimation(_loc6_);
         if(_loc5_ is §11§)
         {
            return this.§7!%§(this.addObjectBird(param1,param2,_loc7_,_loc5_,param4,param3));
         }
         if(_loc5_.itemType == §["%§.§7##§)
         {
            return this.§7!%§(this.addObjectPig(param1,param2,_loc7_,_loc5_,param4));
         }
         if(param1.type.indexOf(§#2§.§5!L§) != -1)
         {
            if(!_loc5_)
            {
               throw new Error("Can\'t find light saber definition for \'" + param1.type + "\'");
            }
            return new §#2§(param2,_loc7_,§+!E§.mLevelEngine.mWorld,_loc5_,param1);
         }
         if(param1.type.indexOf(§?!d§.§5!L§) != -1)
         {
            _loc9_ = 1;
            if(_loc10_ = param1 as §%H§)
            {
               _loc9_ = _loc10_.shotPattern;
            }
            if(!_loc5_)
            {
               throw new Error("Can\'t find laser gun definition for \'" + param1.type + "\'");
            }
            return new §?!d§(param2,_loc7_,§+!E§.mLevelEngine.mWorld,_loc5_,param1,param4,_loc9_);
         }
         if(param1.type == §["0§.§5!L§)
         {
            _loc11_ = §+!E§.levelItemManager.getItem(param1.type) as §5!M§;
            if(!_loc5_)
            {
               throw new Error("Can\'t find MF definition");
            }
            _loc12_ = §+!E§.slingshot.x;
            _loc13_ = §+!E§.slingshot.y;
            §+!E§.camera.setAction(§8[§.§%!B§);
            return new §["0§(param2,_loc7_,§+!E§.mLevelEngine.mWorld,_loc11_,param1,_loc12_,_loc13_,param4);
         }
         return this.§7!%§(super.createObjectInstance(param1,param2,param3,param4));
      }
      
      protected function §7!%§(param1:§?!x§) : §?!x§
      {
         var _loc2_:§0N§ = null;
         if(param1 is §0N§)
         {
            _loc2_ = §0N§(param1);
            switch(_loc2_.§1!E§)
            {
               case GravityFilterCategory.FORCE_OBJECT:
                  this.§'"X§(_loc2_,"RED",-1);
                  break;
               case GravityFilterCategory.YODA_FORCE_OBJECT:
                  this.§'"X§(_loc2_,"GREEN",-1);
            }
         }
         return param1;
      }
      
      override protected function addObjectBird(param1:§9v§, param2:Sprite, param3:§1!^§, param4:§["%§, param5:Number = 1.0, param6:Boolean = true) : §;!T§
      {
         var _loc7_:String = param1.type;
         var _loc8_:§11§ = param4 as §11§;
         if(_loc7_.indexOf(§3J§.§5!L§) == 0)
         {
            return new §3J§(param2,param3,§+!E§.mLevelEngine.mWorld,_loc8_,param1,param5,param6);
         }
         if(_loc7_.indexOf(§`"w§.§5!L§) == 0)
         {
            return new §`"w§(param2,param3,§+!E§.mLevelEngine.mWorld,_loc8_,param1,param5,param6);
         }
         if(_loc7_.indexOf(§6;§.§5!L§) == 0)
         {
            return new §6;§(param2,param3,§+!E§.mLevelEngine.mWorld,_loc8_,param1,param5,param6);
         }
         if(_loc7_.indexOf(§71§.§5!L§) == 0)
         {
            return new §71§(param2,param3,§+!E§.mLevelEngine.mWorld,_loc8_,param1,param5,param6);
         }
         if(_loc7_.indexOf(§;" §.§5!L§) == 0)
         {
            return new §;" §(param2,param3,§+!E§.mLevelEngine.mWorld,_loc8_,param1,param5,param6);
         }
         if(_loc7_.indexOf(§@]§.§5!L§) == 0)
         {
            return new §@]§(param2,param3,§+!E§.mLevelEngine.mWorld,_loc8_,param1,param5,param6);
         }
         if(_loc7_.indexOf(§&$§.§5!L§) == 0)
         {
            return new §&$§(param2,param3,§+!E§.mLevelEngine.mWorld,_loc8_,param1,param5,param6);
         }
         return super.addObjectBird(param1,param2,param3,param4,param5,param6);
      }
      
      override protected function addParticleSpace(param1:§9v§, param2:Sprite, param3:§1!^§) : §?!x§
      {
         var _loc11_:§'!j§ = null;
         var _loc4_:String;
         if((_loc4_ = param1.type).indexOf("SCORE") != -1)
         {
            _loc4_ = §["N§.§5!L§;
         }
         var _loc5_:Number = param1.x;
         var _loc6_:Number = param1.y;
         var _loc7_:Number = param1.angle;
         var _loc8_:Number = param1.§;"?§;
         var _loc9_:Number = param1.§9"g§;
         var _loc10_:§^"y§;
         if(!(_loc10_ = §+!E§.levelItemManager.getItem(_loc4_) as §^"y§))
         {
            return null;
         }
         if(_loc10_.§4"A§)
         {
            return new §0!X§(param2,param3,§+!E§.mLevelEngine.mWorld,_loc10_,_loc5_,_loc6_);
         }
         if(_loc4_ == §["N§.§5!L§)
         {
            _loc11_ = §+!E§.textureManager.getTexture(param1.type);
            return new §["N§(_loc11_,param2,§+!E§.mLevelEngine.mWorld,_loc10_,_loc5_,_loc6_);
         }
         if(_loc4_.indexOf("Trail") != -1)
         {
            return new §"#5§(param2,param3,§+!E§.mLevelEngine.mWorld,_loc10_,_loc5_,_loc6_,_loc7_,_loc8_,_loc9_);
         }
         if(_loc10_.amount <= 3)
         {
            return new §^S§(param2,param3,§+!E§.mLevelEngine.mWorld,_loc10_,_loc5_,_loc6_,_loc7_,_loc8_,_loc9_);
         }
         return new §7!f§(param2,param3,§+!E§.mLevelEngine.mWorld,_loc10_,_loc5_,_loc6_,_loc7_,_loc8_,_loc9_);
      }
      
      override protected function addObjectPig(param1:§9v§, param2:Sprite, param3:§1!^§, param4:§["%§, param5:Number = 1.0) : §4%§
      {
         var _loc6_:§4%§ = null;
         if(param3.hasSubAnimation(§]_§.§'!r§))
         {
            _loc6_ = new §#"T§(param2,param3,§+!E§.mLevelEngine.mWorld,param4,param1,param5);
         }
         else
         {
            _loc6_ = super.addObjectPig(param1,param2,param3,param4,param5);
         }
         if(param1.type == "PIG_KING")
         {
            this.§<!E§(_loc6_,1.5,"FORCE_GLOW_RED_CIRCLE_L",-1);
         }
         return _loc6_;
      }
      
      public function §,!m§(param1:§`!7§) : void
      {
         this.§!# §.push(param1);
      }
      
      override public function updateObjects(param1:Number) : void
      {
         super.updateObjects(param1);
         this.§1#0§();
      }
      
      override public function renderObjects(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc5_:§]#6§ = null;
         super.renderObjects(param1,param2,param3);
         var _loc4_:int = this.§&"z§.length - 1;
         while(_loc4_ >= 0)
         {
            if(!(_loc5_ = this.§&"z§[_loc4_]).update(param1 / §+!E§.timeSpeedMultiplier))
            {
               _loc5_.dispose();
               this.§&"z§.splice(_loc4_,1);
            }
            _loc4_--;
         }
      }
      
      public function §^,§(param1:Number, param2:b2Body) : void
      {
         var _loc3_:§0"Z§ = null;
         var _loc4_:b2JointEdge = null;
         for each(_loc3_ in §2"?§)
         {
            if(_loc3_.isBreakable && param1 >= _loc3_.minBreakForce)
            {
               if((_loc4_ = param2.GetJointList()) != null && _loc4_.§6!_§ == _loc3_.§ !7§)
               {
                  §'#+§(_loc3_);
               }
            }
         }
      }
      
      private function §if §(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:§`!7§) : §06§
      {
         var _loc7_:§>"§ = null;
         var _loc8_:Number = (_loc7_ = §]T§.§8"3§(param1,param2,param3,param4,param5,param6.x,param6.y)).§4!4§;
         var _loc9_:Point = new Point(0,0);
         if(_loc8_ == 0)
         {
            _loc9_.y = -1;
         }
         else
         {
            _loc9_.x = _loc7_.§;!@§.x - param6.x;
            _loc9_.y = _loc7_.§;!@§.y - param6.y;
            _loc9_.normalize(1);
         }
         var _loc10_:Number = Math.atan2(_loc9_.y,_loc9_.x);
         var _loc11_:Number = param6.angle;
         var _loc12_:Number = param6.§0#'§ / 2;
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
         var _loc15_:§06§;
         (_loc15_ = new §06§()).§4!4§ = _loc8_;
         _loc15_.§;!@§ = _loc7_.§;!@§;
         _loc15_.§3!3§ = _loc9_;
         _loc15_.§,"$§ = _loc14_;
         return _loc15_;
      }
      
      private function §1#0§() : void
      {
         var _loc1_:§`!7§ = null;
         while(this.§!# §.length > 0)
         {
            _loc1_ = this.§!# §.pop();
            this.§6"$§(_loc1_);
            this.§4!G§(_loc1_);
         }
      }
      
      private function §4!G§(param1:§`!7§) : void
      {
         var _loc3_:§@"W§ = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:§06§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < §@"6§.laserCount)
         {
            _loc3_ = §@"6§.getLaser(_loc2_);
            _loc4_ = _loc3_.width;
            _loc5_ = _loc3_.height;
            _loc6_ = _loc3_.x;
            _loc7_ = _loc3_.y;
            _loc8_ = _loc3_.angle;
            _loc9_ = this.§if §(_loc6_,_loc7_,_loc4_,_loc5_,_loc8_,param1);
            this.§+I§(param1,_loc9_,_loc3_);
            _loc2_++;
         }
      }
      
      private function §+I§(param1:§`!7§, param2:§06§, param3:§@"W§) : void
      {
         var _loc4_:Number = NaN;
         if(param2.§4!4§ < param1.explosionRadius && param2.§,"$§)
         {
            _loc4_ = Math.atan2(param3.y - param1.y,param3.x - param1.x);
            param3.reflectToAngle(_loc4_,param3.speed);
         }
      }
      
      private function §6"$§(param1:§`!7§) : void
      {
         var _loc2_:Vector.<§0N§> = null;
         var _loc5_:§0N§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:§06§ = null;
         var _loc12_:Number = NaN;
         var _loc3_:Number = Math.max(param1.explosionRadius,param1.explosionDamageRadius,param1.smallExplosionRadius);
         _loc2_ = this.§@"t§(param1.x,param1.y,-_loc3_,_loc3_,-_loc3_,_loc3_);
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_.length)
         {
            if(!((_loc5_ = _loc2_[_loc4_]) is §03§ || _loc5_ is §;!T§ || _loc5_.levelItem.isMaterialStatic))
            {
               _loc6_ = _loc5_.levelItem.shape.getWidth();
               _loc7_ = _loc5_.levelItem.shape.getHeight();
               _loc8_ = _loc5_.§3"s§().GetPosition().x;
               _loc9_ = _loc5_.§3"s§().GetPosition().y;
               _loc10_ = _loc5_.§3"s§().GetAngle();
               _loc11_ = this.§if §(_loc8_,_loc9_,_loc6_,_loc7_,_loc10_,param1);
               if(_loc5_ is §2G§ && _loc11_.§,"$§)
               {
                  (_loc5_ as §2G§).§<!>§();
               }
               _loc12_ = this.§1]§(param1,_loc11_,_loc5_);
               this.§^,§(_loc12_,_loc5_.§3"s§());
            }
            _loc4_++;
         }
      }
      
      private function §1]§(param1:§`!7§, param2:§06§, param3:§0N§) : Number
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(param2.§4!4§ < param1.smallExplosionRadius)
         {
            _loc5_ = 1 - param2.§4!4§ / param1.smallExplosionRadius;
            _loc4_ = (_loc4_ = param1.smallExplosionMinForce + (param1.smallExplosionForce - param1.smallExplosionMinForce) * _loc5_) * §;!E§.§0"?§;
            this.§%j§(param3,param2.§3!3§,_loc4_,param2.§;!@§);
         }
         if(param2.§4!4§ < param1.explosionRadius && param2.§,"$§)
         {
            _loc5_ = 1 - param2.§4!4§ / param1.explosionRadius;
            _loc4_ = (_loc4_ = param1.explosionMinForce + (param1.explosionForce - param1.explosionMinForce) * _loc5_) * §;!E§.§0"?§;
            this.§%j§(param3,param2.§3!3§,_loc4_,param2.§;!@§);
         }
         return _loc4_;
      }
      
      private function §%j§(param1:§0N§, param2:Point, param3:Number, param4:Point) : void
      {
         var _loc5_:b2Vec2 = new b2Vec2(param2.x * param3,param2.y * param3);
         var _loc6_:b2Vec2 = new b2Vec2(param4.x,param4.y);
         param1.§3"s§().ApplyImpulse(_loc5_,_loc6_);
         if(param1.§1!E§ != GravityFilterCategory.FORCE_OBJECT && param1.§1!E§ != GravityFilterCategory.YODA_FORCE_OBJECT)
         {
            this.§'"X§(param1);
         }
      }
      
      public function §@"t§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number) : Vector.<§0N§>
      {
         var objects:Vector.<§0N§> = null;
         var x:Number = param1;
         var y:Number = param2;
         var left:Number = param3;
         var right:Number = param4;
         var down:Number = param5;
         var up:Number = param6;
         objects = new Vector.<§0N§>();
         var aabb:b2AABB = new b2AABB();
         aabb.§-"^§.Set(x + left,y + down);
         aabb.§%!n§.Set(x + right,y + up);
         var callBack:Function = function aabbCallback(param1:b2Fixture):Boolean
         {
            var _loc2_:§0N§ = param1.GetBody().GetUserData() as §0N§;
            if(_loc2_ != null)
            {
               objects.push(§0N§(_loc2_));
            }
            return true;
         };
         §+!E§.mLevelEngine.mWorld.QueryAABB(callBack,aabb);
         return objects;
      }
      
      public function §'"X§(param1:§0N§, param2:String = "BLUE", param3:Number = 1500) : void
      {
         var _loc4_:§[!F§;
         if(_loc4_ = param1.levelItem as §[!F§)
         {
            this.§<!E§(param1,Number(_loc4_.getNumberProperty("glowScale")) || Number(1),_loc4_.§6i§(param2),param3);
         }
      }
      
      protected function §<!E§(param1:§0N§, param2:Number, param3:String, param4:Number) : void
      {
         var _loc7_:§'!j§ = null;
         this.§@#5§(param1);
         var _loc5_:§,!u§ = null;
         var _loc6_:§[!F§;
         if(_loc6_ = param1.levelItem as §[!F§)
         {
            if(_loc7_ = §+!E§.textureManager.getTexture(param3))
            {
               (_loc5_ = new §,!u§(_loc7_.texture)).pivotX = -_loc7_.pivotX;
               _loc5_.pivotY = -_loc7_.pivotY;
               _loc5_.scaleX = param2;
               _loc5_.scaleY = param2;
               _loc5_.rotation = _loc6_.§<"-§() / 180 * Math.PI;
            }
         }
         if(_loc5_)
         {
            this.§&"z§.push(new §]#6§(param1,_loc5_,param4));
         }
      }
      
      protected function §@#5§(param1:§0N§) : void
      {
         var _loc2_:int = 0;
         var _loc3_:§]#6§ = null;
         if(param1)
         {
            _loc2_ = this.§&"z§.length - 1;
            while(_loc2_ >= 0)
            {
               _loc3_ = this.§&"z§[_loc2_];
               if(_loc3_.§-"G§ == param1)
               {
                  _loc3_.dispose();
                  this.§&"z§.splice(_loc2_,1);
               }
               _loc2_--;
            }
         }
      }
      
      override protected function performTriggerActionOnObject(param1:§0N§, param2:String, param3:String) : void
      {
         var _loc4_:§]#6§ = null;
         if(param2 == "removeGravityFilterCategory")
         {
            for each(_loc4_ in this.§&"z§)
            {
               if(_loc4_.§-"G§ == param1)
               {
                  _loc4_.§,@§(300);
                  break;
               }
            }
         }
         super.performTriggerActionOnObject(param1,param2,param3);
      }
      
      override public function removeObject(param1:§?!x§, param2:Boolean = false) : void
      {
         this.§@#5§(param1 as §0N§);
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
            §6!m§(true,0.2,5 * param1 / _loc5_,param1 / _loc5_ * 500);
         }
      }
      
      override protected function shakeCameraOnExplosion(param1:Number) : void
      {
         §6!m§(true,0.2,param1 / 900 * 4,param1 / 900 * 400);
      }
      
      override public function objectCollision(param1:§?!x§, param2:§?!x§, param3:b2Contact) : Boolean
      {
         if(param1 is §6;§ || param2 is §6;§)
         {
            if(param1 is §0N§ && param2 is §0N§)
            {
               return this.§5!I§(param1 as §0N§,param2 as §0N§,param3);
            }
         }
         return super.objectCollision(param1,param2,param3);
      }
      
      public function §5!I§(param1:§0N§, param2:§0N§, param3:b2Contact) : Boolean
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
      
      override protected function updateObject(param1:§?!x§, param2:Number) : void
      {
         super.updateObject(param1,param2);
      }
   }
}
