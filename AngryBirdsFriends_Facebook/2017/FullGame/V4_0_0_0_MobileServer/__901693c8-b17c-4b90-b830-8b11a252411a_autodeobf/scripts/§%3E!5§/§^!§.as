package §>!5§
{
   import §%!9§.b2Vec2;
   import §&!v§.Sprite;
   import §1!+§.b2Body;
   import §1!+§.b2BodyDef;
   import §1!+§.b2FilterData;
   import §1!+§.b2Fixture;
   import §1!+§.b2World;
   import §1#W§.§!#&§;
   import §6"r§.§!#A§;
   import §6$"§.§]"o§;
   import §7!j§.§8#B§;
   import §7"&§.§!"v§;
   import §7"&§.§;"x§;
   import §^$1§.§2"^§;
   import §^$1§.§7"6§;
   import flash.geom.Point;
   
   public class §^!§ extends §;"i§
   {
      
      private static const §5#w§:Number = 1;
      
      private static const §3b§:int = 2;
       
      
      private var §2$!§:Number;
      
      private var §2#n§:Vector.<Object>;
      
      private var §;7§:Object;
      
      private var §"$6§:§^!§;
      
      private var §7V§:Boolean;
      
      public function §^!§(param1:Sprite, param2:§8#B§, param3:b2World, param4:§!"v§, param5:§]"o§, param6:Number)
      {
         super(param1,param2,param3,param4,param5,param6);
         §0#l§ = true;
         this.init();
      }
      
      override protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = null;
         _loc3_ = new b2BodyDef();
         _loc3_.position.x = param1;
         _loc3_.position.y = param2;
         _loc3_.type = b2Body.b2_staticBody;
         return _loc3_;
      }
      
      override protected function createFixture() : b2Fixture
      {
         var _loc1_:b2Fixture = super.createFixture();
         _loc1_.§9!`§(true);
         return _loc1_;
      }
      
      override public function applyDamage(param1:Number, param2:§-!S§, param3:§^"9§, param4:Boolean = true) : Number
      {
         return health;
      }
      
      protected function init() : void
      {
         this.§2$!§ = Number((levelItem as §;"x§).§=#a§("portal","minSpeedOut"));
         this.§2#n§ = new Vector.<Object>();
         this.§;7§ = new Object();
         this.§7V§ = false;
      }
      
      public function §-#D§(param1:§#-§) : Boolean
      {
         if(!param1)
         {
            return false;
         }
         if(this.§?#1§(param1 as §^"9§) && !this.§0!t§(param1 as §^"9§))
         {
            this.§6"6§(param1 as §^"9§);
         }
         else
         {
            this.§;7§["" + (param1 as §^"9§).id] = §5#w§ * 1000;
         }
         return true;
      }
      
      public function §?!3§(param1:§#-§) : void
      {
         delete this.§;7§["" + (param1 as §^"9§).id];
      }
      
      private function §?#1§(param1:§^"9§) : Boolean
      {
         var _loc2_:Number = param1.getBody().GetLinearVelocity().x;
         var _loc3_:Number = param1.getBody().GetLinearVelocity().y;
         var _loc4_:Object = {
            "x":Math.cos(§%D§() + Math.PI),
            "y":Math.sin(§%D§() + Math.PI)
         };
         var _loc5_:Number = _loc2_ * _loc4_.x + _loc3_ * _loc4_.y;
         var _loc6_:Number = param1.§?%§();
         var _loc7_:Number;
         return (_loc7_ = Math.acos(_loc5_ / _loc6_)) > Math.PI * 0.5;
      }
      
      private function §0!t§(param1:§^"9§) : Boolean
      {
         return this.§2#n§.indexOf(param1) > -1;
      }
      
      private function §6"6§(param1:§^"9§, param2:Point = null) : void
      {
         param1.§%t§(true);
         var _loc3_:Number = param1.getBody().GetLinearVelocity().x;
         var _loc4_:Number = param1.getBody().GetLinearVelocity().y;
         var _loc5_:Object = {
            "object":param1,
            "oldVelocity":(!!param2 ? param2 : new Point(_loc3_,_loc4_)),
            "oldFilterData":param1.§`"q§(),
            "updateCounter":0,
            "oldGravityFilter":param1.§>#j§
         };
         var _loc6_:b2FilterData;
         (_loc6_ = new b2FilterData()).§4"?§ = 0;
         param1.§+!Q§(_loc6_);
         param1.getBody().SetLinearVelocity(new b2Vec2(0,0));
         param1.§>#j§ = §4@§.§+!4§;
         this.§2#n§.push(_loc5_);
      }
      
      public function §"!G§(param1:§^!§) : void
      {
         this.§"$6§ = param1;
      }
      
      public function §!%§() : Boolean
      {
         return this.§"$6§ != null;
      }
      
      private function §?g§() : Boolean
      {
         var _loc1_:Number = NaN;
         var _loc2_:Number = NaN;
         var _loc4_:Number = NaN;
         if(!§!#A§.§#F§.objects)
         {
            return false;
         }
         _loc1_ = getBody().GetPosition().x;
         _loc2_ = getBody().GetPosition().y;
         var _loc3_:Point = new Point(_loc1_,_loc2_);
         _loc4_ = §8"3§.shape.getWidth() * 1.1;
         var _loc6_:Number = (§8"3§.getItemWidth() - _loc4_) * 0.5;
         var _loc7_:String = "TeleportSide";
         var _loc8_:Point = new Point(_loc1_ + _loc6_,_loc2_ + §8"3§.getItemHeight() * 0.5 + 0.6 * 0.5);
         this.§8X§(_loc7_,_loc8_,§%D§(),_loc3_);
         _loc7_ = "TeleportSide";
         _loc8_ = new Point(_loc1_ + _loc6_,_loc2_ - §8"3§.getItemHeight() * 0.5 - 0.6 * 0.5);
         this.§8X§(_loc7_,_loc8_,§%D§(),_loc3_);
         _loc7_ = "TeleportBack";
         _loc8_ = new Point(_loc1_ + §8"3§.getItemWidth() * 0.5 + 2.3 * 0.5,_loc2_);
         this.§8X§(_loc7_,_loc8_,§%D§(),_loc3_);
         _loc8_ = new Point(_loc1_ + §8"3§.getItemWidth() * 0.5,_loc2_);
         this.§;!0§(_loc8_,§%D§(),_loc3_);
         return true;
      }
      
      private function §8X§(param1:String, param2:Point, param3:Number, param4:Point) : void
      {
         var _loc5_:Point = this.§6$1§(param2,param4,param3);
         var _loc6_:§^"9§;
         (_loc6_ = §!#A§.§#F§.objects.addObject(param1,_loc5_.x,_loc5_.y,0,§6#-§.ID_NEXT_FREE,false,false,false) as §^"9§).§"#o§(param3);
      }
      
      private function §;!0§(param1:Point, param2:Number, param3:Point) : void
      {
         var _loc4_:Point = this.§6$1§(param1,param3,param2);
         var _loc5_:§^"9§;
         (_loc5_ = §!#A§.§#F§.objects.addObject("TELEPORT_STATIC_MASK",_loc4_.x,_loc4_.y,0,§6#-§.ID_NEXT_FREE,false,false,false) as §^"9§).§"#o§(param2);
      }
      
      private function §6$1§(param1:Point, param2:Point, param3:Number) : Point
      {
         var _loc4_:Number = param2.x + (param1.x - param2.x) * Math.cos(param3) - (param1.y - param2.y) * Math.sin(param3);
         var _loc5_:Number = param2.y + (param1.x - param2.x) * Math.sin(param3) + (param1.y - param2.y) * Math.cos(param3);
         return new Point(_loc4_,_loc5_);
      }
      
      override public function update(param1:Number, param2:§-!S§) : void
      {
         super.update(param1,param2);
         if(§!#A§.§#F§.§-#O§)
         {
            this.§>b§(param2);
            this.§##1§(param1);
            if(!this.§7V§)
            {
               this.§7V§ = this.§?g§();
            }
         }
         else if(this.§7V§)
         {
            this.§7V§ = false;
         }
      }
      
      private function §>b§(param1:§-!S§) : void
      {
         var _loc2_:Object = null;
         var _loc3_:§^!§ = null;
         var _loc4_:§^"9§ = null;
         var _loc5_:b2Vec2 = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Point = null;
         var _loc9_:Point = null;
         var _loc10_:Number = NaN;
         var _loc11_:Point = null;
         var _loc12_:Point = null;
         var _loc13_:Number = NaN;
         var _loc14_:Point = null;
         var _loc15_:* = null;
         if(!this.§2#n§)
         {
            return;
         }
         if(!this.§!%§())
         {
            _loc3_ = (param1 as §<j§).§5K§(this);
            if(_loc3_ != null)
            {
               this.§"!G§(_loc3_);
               _loc3_.§"!G§(this);
            }
         }
         for each(_loc2_ in this.§2#n§)
         {
            if((_loc4_ = _loc2_.object) && !_loc4_.§]$&§)
            {
               if(!this.§!%§())
               {
                  param1.removeObject(_loc4_,true,true);
               }
               else
               {
                  if(_loc2_.updateCounter == 0)
                  {
                     §!#A§.§#F§.objects.§]!u§(_loc4_);
                     _loc5_ = _loc4_.getBody().GetPosition();
                     this.§6!p§(_loc5_.x,_loc5_.y);
                     _loc6_ = §%D§() + Math.PI;
                     _loc7_ = this.§"$6§.§%D§() + Math.PI;
                     _loc8_ = new Point(Math.cos(_loc7_),Math.sin(_loc7_));
                     _loc9_ = new Point(Math.cos(_loc6_),Math.sin(_loc6_));
                     _loc10_ = Math.acos(_loc9_.x * _loc8_.x + _loc9_.y * _loc8_.y);
                     _loc11_ = new Point(_loc5_.x - getBody().GetPosition().x,_loc5_.y - getBody().GetPosition().y);
                     _loc12_ = new Point(this.§"$6§.getBody().GetPosition().x,this.§"$6§.getBody().GetPosition().y);
                     _loc13_ = §8"3§.shape.getHeight() * 0.3;
                     _loc14_ = this.§8#`§(_loc11_,_loc9_,_loc8_,_loc10_,_loc12_,_loc13_);
                     _loc4_.getBody().SetPosition(new b2Vec2(_loc14_.x,_loc14_.y));
                     _loc2_.newVelocity = this.§,!h§(_loc2_.oldVelocity,_loc10_,_loc9_,_loc6_,_loc7_,this.§2$!§);
                     §!#&§.§2!A§("portal_exit_0" + Math.round(Math.random() * 1 + 1),"ChannelMisc");
                  }
                  else if(_loc2_.updateCounter >= §3b§)
                  {
                     _loc4_.§+!Q§(_loc2_.oldFilterData);
                     _loc4_.§%t§(false);
                     _loc4_.getBody().SetLinearVelocity(new b2Vec2(_loc2_.newVelocity.x,_loc2_.newVelocity.y));
                     _loc4_.§>#j§ = _loc2_.oldGravityFilter;
                     _loc5_ = _loc4_.getBody().GetPosition();
                     this.§6!p§(_loc5_.x,_loc5_.y);
                     for(_loc15_ in this.§;7§)
                     {
                        if(_loc15_ == "" + _loc4_.id)
                        {
                           delete this.§;7§[_loc15_];
                           break;
                        }
                     }
                     this.§2#n§.splice(this.§2#n§.indexOf(_loc2_),1);
                     continue;
                  }
                  ++_loc2_.updateCounter;
               }
            }
         }
      }
      
      private function §##1§(param1:Number) : void
      {
         var _loc3_:* = null;
         var _loc4_:String = null;
         var _loc5_:§^"9§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Point = null;
         var _loc2_:Array = [];
         for(_loc3_ in this.§;7§)
         {
            this.§;7§[_loc3_] -= param1;
            if(!(_loc5_ = §!#A§.§#F§.objects.§0" §(int(_loc3_))) || _loc5_.§]$&§)
            {
               _loc2_.push(_loc3_);
            }
            else if(this.§;7§[_loc3_] <= 0)
            {
               if(this.§!%§())
               {
                  _loc6_ = this.§"$6§.§%D§() + Math.PI;
                  _loc7_ = new Point(Math.cos(_loc6_),Math.sin(_loc6_));
                  this.§6"6§(_loc5_,_loc7_);
               }
               else
               {
                  this.§6"6§(_loc5_);
               }
               _loc2_.push(_loc3_);
            }
         }
         for each(_loc4_ in _loc2_)
         {
            delete this.§;7§[_loc4_];
         }
      }
      
      private function §6!p§(param1:Number, param2:Number) : void
      {
         var _loc11_:Number = NaN;
         var _loc12_:int = 0;
         var _loc13_:int = 0;
         var _loc14_:int = 0;
         var _loc3_:* = levelItem.itemName == "PortalRed";
         var _loc4_:String = !!_loc3_ ? "NEW24_PORTAL_RED_PUFF" : "NEW24_PORTAL_BLUE_PUFF";
         §!#A§.§#F§.particles.addSimpleParticle(_loc4_,§2"^§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§7"6§.PARTICLE_GROUP_GAME_EFFECTS,§2"^§.PARTICLE_TYPE_STATIC_PARTICLE,param1,param2,750,"",§2"^§.§5#y§,0,0,0,0,1,8,true);
         _loc4_ = !!_loc3_ ? "NEW24_PORTAL_RED_PARTICLE_" : "NEW24_PORTAL_BLUE_PARTICLE_";
         var _loc10_:int = 0;
         while(_loc10_ < 10)
         {
            _loc11_ = 36 * _loc10_ * Math.PI / 180;
            _loc12_ = 10 + Math.random() * 10;
            _loc13_ = 200 + Math.random() * 200;
            _loc14_ = 1 + Math.random() * 4;
            §!#A§.§#F§.particles.addSimpleParticle(_loc4_ + _loc14_,§2"^§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§7"6§.PARTICLE_GROUP_GAME_EFFECTS,§2"^§.PARTICLE_TYPE_KINETIC_PARTICLE,param1,param2,_loc13_,"",§2"^§.§5#y§,_loc12_ * Math.cos(_loc11_),-_loc12_ * Math.sin(_loc11_),0,0);
            _loc10_++;
         }
      }
      
      private function §8#`§(param1:Point, param2:Point, param3:Point, param4:Number, param5:Point, param6:Number) : Point
      {
         var _loc7_:Number = Math.sqrt(param1.x * param1.x + param1.y * param1.y);
         var _loc8_:Point = new Point(param5.x + param3.x * param6,param5.y + param3.y * param6);
         var _loc9_:Number = Math.atan2(param2.y,param2.x) + Math.atan2(param1.y,param1.x);
         var _loc10_:Number = Math.PI * 0.5;
         if(_loc9_ > _loc10_)
         {
            _loc9_ -= 2 * (_loc9_ - _loc10_);
         }
         else if(_loc9_ < -_loc10_)
         {
            _loc9_ += 2 * (-_loc9_ - _loc10_);
         }
         if(param4 < _loc10_)
         {
            _loc9_ = -_loc9_;
         }
         _loc8_.x = _loc8_.x + Math.cos(_loc9_) * _loc7_ * param3.x + Math.sin(_loc9_) * _loc7_ * param3.y;
         _loc8_.y = _loc8_.y - Math.sin(_loc9_) * _loc7_ * param3.x + Math.cos(_loc9_) * _loc7_ * param3.y;
         return _loc8_;
      }
      
      private function §,!h§(param1:Point, param2:Number, param3:Point, param4:Number, param5:Number, param6:Number) : Point
      {
         var _loc9_:Number = NaN;
         var _loc10_:Point = null;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc7_:Number = Math.sqrt(param1.x * param1.x + param1.y * param1.y);
         var _loc8_:Point = new Point(0,0);
         if(param2 <= 0.5 * Math.PI)
         {
            _loc9_ = param1.x * param3.x + param1.y * param3.y;
            _loc10_ = new Point(param1.x - 2 * _loc9_ * param3.x,param1.y - 2 * _loc9_ * param3.y);
            if(param5 < param4 && param4 - param5 < Math.PI)
            {
               _loc11_ = param2;
            }
            else
            {
               _loc11_ = -param2;
            }
            _loc8_.x = Math.cos(_loc11_) * _loc10_.x + Math.sin(_loc11_) * _loc10_.y;
            _loc8_.y = -Math.sin(_loc11_) * _loc10_.x + Math.cos(_loc11_) * _loc10_.y;
         }
         else
         {
            _loc13_ = (_loc12_ = Math.atan2(param1.y,param1.x)) + Math.PI - (param4 - param5);
            _loc8_.x = Math.cos(_loc13_) * _loc7_;
            _loc8_.y = Math.sin(_loc13_) * _loc7_;
         }
         if(_loc7_ < param6)
         {
            _loc8_.x = _loc8_.x / _loc7_ * param6;
            _loc8_.y = _loc8_.y / _loc7_ * param6;
         }
         return _loc8_;
      }
      
      public function get §'^§() : Boolean
      {
         return this.§7V§;
      }
   }
}
