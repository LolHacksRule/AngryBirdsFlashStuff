package §^0§
{
   import § "v§.§4$4§;
   import §#Z§.Sprite;
   import §%$0§.§2#Z§;
   import §%$0§.§`#I§;
   import §+!n§.§+!p§;
   import §-!j§.§-"8§;
   import §-!j§.§[#e§;
   import §3#h§.b2Body;
   import §3#h§.b2BodyDef;
   import §3#h§.b2FilterData;
   import §3#h§.b2Fixture;
   import §3#h§.b2World;
   import §6!R§.b2Vec2;
   import §9#M§.§,`§;
   import §@"v§.§@$<§;
   import flash.geom.Point;
   
   public class §2!o§ extends §%N§
   {
      
      private static const §,!I§:Number = 1;
      
      private static const §5"C§:int = 2;
       
      
      private var §2!;§:Number;
      
      private var §@y§:Vector.<Object>;
      
      private var §'#o§:Object;
      
      private var §1"t§:§2!o§;
      
      private var §0"=§:Boolean;
      
      public function §2!o§(param1:Sprite, param2:§,`§, param3:b2World, param4:§-"8§, param5:§@$<§, param6:Number)
      {
         super(param1,param2,param3,param4,param5,param6);
         §@"<§ = true;
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
         _loc1_.§3# §(true);
         return _loc1_;
      }
      
      override public function applyDamage(param1:Number, param2:§>"T§, param3:§=Q§, param4:Boolean = true, param5:Boolean = false) : Number
      {
         return health;
      }
      
      protected function init() : void
      {
         this.§2!;§ = Number((levelItem as §[#e§).§0'§("portal","minSpeedOut"));
         this.§@y§ = new Vector.<Object>();
         this.§'#o§ = new Object();
         this.§0"=§ = false;
      }
      
      public function §=!W§(param1:§4!t§) : Boolean
      {
         if(!param1)
         {
            return false;
         }
         if(this.§3!s§(param1 as §=Q§) && !this.§@#$§(param1 as §=Q§))
         {
            this.§3#I§(param1 as §=Q§);
         }
         else
         {
            this.§'#o§["" + (param1 as §=Q§).id] = §,!I§ * 1000;
         }
         return true;
      }
      
      public function §;$!§(param1:§4!t§) : void
      {
         delete this.§'#o§["" + (param1 as §=Q§).id];
      }
      
      private function §3!s§(param1:§=Q§) : Boolean
      {
         var _loc2_:Number = param1.getBody().GetLinearVelocity().x;
         var _loc3_:Number = param1.getBody().GetLinearVelocity().y;
         var _loc4_:Object = {
            "x":Math.cos(§<!C§() + Math.PI),
            "y":Math.sin(§<!C§() + Math.PI)
         };
         var _loc5_:Number = _loc2_ * _loc4_.x + _loc3_ * _loc4_.y;
         var _loc6_:Number = param1.§,$<§();
         return Number(Math.acos(_loc5_ / _loc6_)) > Math.PI * 0.5;
      }
      
      private function §@#$§(param1:§=Q§) : Boolean
      {
         return this.§@y§.indexOf(param1) > -1;
      }
      
      private function §3#I§(param1:§=Q§, param2:Point = null) : void
      {
         param1.§=#s§(true);
         var _loc3_:Number = param1.getBody().GetLinearVelocity().x;
         var _loc4_:Number = param1.getBody().GetLinearVelocity().y;
         var _loc5_:Object = {
            "object":param1,
            "oldVelocity":(!!param2 ? param2 : new Point(_loc3_,_loc4_)),
            "oldFilterData":param1.§@5§(),
            "updateCounter":0,
            "oldGravityFilter":param1.§<!x§
         };
         var _loc6_:b2FilterData;
         (_loc6_ = new b2FilterData()).§@>§ = 0;
         param1.§,z§(_loc6_);
         param1.getBody().SetLinearVelocity(new b2Vec2(0,0));
         param1.§<!x§ = §`"p§.§6$6§;
         this.§@y§.push(_loc5_);
      }
      
      public function §^$1§(param1:§2!o§) : void
      {
         this.§1"t§ = param1;
      }
      
      public function §;j§() : Boolean
      {
         return this.§1"t§ != null;
      }
      
      private function §4!>§() : Boolean
      {
         var _loc1_:Number = NaN;
         var _loc2_:Number = NaN;
         var _loc4_:Number = NaN;
         if(!§+!p§.§`?§.objects)
         {
            return false;
         }
         _loc1_ = getBody().GetPosition().x;
         _loc2_ = getBody().GetPosition().y;
         var _loc3_:Point = new Point(_loc1_,_loc2_);
         _loc4_ = §8!'§.shape.getWidth() * 1.1;
         var _loc6_:Number = (§8!'§.getItemWidth() - _loc4_) * 0.5;
         var _loc7_:String = "TeleportSide";
         var _loc8_:Point = new Point(_loc1_ + _loc6_,_loc2_ + §8!'§.getItemHeight() * 0.5 + 0.6 * 0.5);
         this.§46§(_loc7_,_loc8_,§<!C§(),_loc3_);
         _loc7_ = "TeleportSide";
         _loc8_ = new Point(_loc1_ + _loc6_,_loc2_ - §8!'§.getItemHeight() * 0.5 - 0.6 * 0.5);
         this.§46§(_loc7_,_loc8_,§<!C§(),_loc3_);
         _loc7_ = "TeleportBack";
         _loc8_ = new Point(_loc1_ + §8!'§.getItemWidth() * 0.5 + 2.3 * 0.5,_loc2_);
         this.§46§(_loc7_,_loc8_,§<!C§(),_loc3_);
         _loc8_ = new Point(_loc1_ + §8!'§.getItemWidth() * 0.5,_loc2_);
         this.§?"H§(_loc8_,§<!C§(),_loc3_);
         return true;
      }
      
      private function §46§(param1:String, param2:Point, param3:Number, param4:Point) : void
      {
         var _loc5_:Point = this.§>"D§(param2,param4,param3);
         (§+!p§.§`?§.objects.addObject(param1,_loc5_.x,_loc5_.y,0,§%"^§.ID_NEXT_FREE,false,false,false) as §=Q§).§%"C§(param3);
      }
      
      private function §?"H§(param1:Point, param2:Number, param3:Point) : void
      {
         var _loc4_:Point = this.§>"D§(param1,param3,param2);
         (§+!p§.§`?§.objects.addObject("TELEPORT_STATIC_MASK",_loc4_.x,_loc4_.y,0,§%"^§.ID_NEXT_FREE,false,false,false) as §=Q§).§%"C§(param2);
      }
      
      private function §>"D§(param1:Point, param2:Point, param3:Number) : Point
      {
         var _loc4_:Number = param2.x + (param1.x - param2.x) * Math.cos(param3) - (param1.y - param2.y) * Math.sin(param3);
         var _loc5_:Number = param2.y + (param1.x - param2.x) * Math.sin(param3) + (param1.y - param2.y) * Math.cos(param3);
         return new Point(_loc4_,_loc5_);
      }
      
      override public function update(param1:Number, param2:§>"T§) : void
      {
         super.update(param1,param2);
         if(§+!p§.§`?§.§`"A§)
         {
            this.§,!w§(param2);
            this.§="v§(param1);
            if(!this.§0"=§)
            {
               this.§0"=§ = this.§4!>§();
            }
         }
         else if(this.§0"=§)
         {
            this.§0"=§ = false;
         }
      }
      
      private function §,!w§(param1:§>"T§) : void
      {
         var _loc2_:Object = null;
         var _loc3_:§2!o§ = null;
         var _loc4_:§=Q§ = null;
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
         if(!this.§@y§)
         {
            return;
         }
         if(!this.§;j§())
         {
            _loc3_ = (param1 as §3!U§).§!!E§(this);
            if(_loc3_ != null)
            {
               this.§^$1§(_loc3_);
               _loc3_.§^$1§(this);
            }
         }
         for each(_loc2_ in this.§@y§)
         {
            if((_loc4_ = _loc2_.object) && !_loc4_.§%1§)
            {
               if(!this.§;j§())
               {
                  param1.removeObject(_loc4_,true,true);
               }
               else
               {
                  if(_loc2_.updateCounter == 0)
                  {
                     §+!p§.§`?§.objects.§;m§(_loc4_);
                     _loc5_ = _loc4_.getBody().GetPosition();
                     this.§2#8§(_loc5_.x,_loc5_.y);
                     _loc6_ = §<!C§() + Math.PI;
                     _loc7_ = this.§1"t§.§<!C§() + Math.PI;
                     _loc8_ = new Point(Math.cos(_loc7_),Math.sin(_loc7_));
                     _loc9_ = new Point(Math.cos(_loc6_),Math.sin(_loc6_));
                     _loc10_ = Math.acos(_loc9_.x * _loc8_.x + _loc9_.y * _loc8_.y);
                     _loc11_ = new Point(_loc5_.x - getBody().GetPosition().x,_loc5_.y - getBody().GetPosition().y);
                     _loc12_ = new Point(this.§1"t§.getBody().GetPosition().x,this.§1"t§.getBody().GetPosition().y);
                     _loc13_ = §8!'§.shape.getHeight() * 0.3;
                     _loc14_ = this.§,x§(_loc11_,_loc9_,_loc8_,_loc10_,_loc12_,_loc13_);
                     _loc4_.getBody().SetPosition(new b2Vec2(_loc14_.x,_loc14_.y));
                     _loc2_.newVelocity = this.§?#O§(_loc2_.oldVelocity,_loc10_,_loc9_,_loc6_,_loc7_,this.§2!;§);
                     §4$4§.§'"j§("portal_exit_0" + Math.round(Math.random() * 1 + 1),"ChannelMisc");
                  }
                  else if(_loc2_.updateCounter >= §5"C§)
                  {
                     _loc4_.§,z§(_loc2_.oldFilterData);
                     _loc4_.§=#s§(false);
                     _loc4_.getBody().SetLinearVelocity(new b2Vec2(_loc2_.newVelocity.x,_loc2_.newVelocity.y));
                     _loc4_.§<!x§ = _loc2_.oldGravityFilter;
                     _loc5_ = _loc4_.getBody().GetPosition();
                     this.§2#8§(_loc5_.x,_loc5_.y);
                     for(_loc15_ in this.§'#o§)
                     {
                        if(_loc15_ == "" + _loc4_.id)
                        {
                           delete this.§'#o§[_loc15_];
                           break;
                        }
                     }
                     this.§@y§.splice(this.§@y§.indexOf(_loc2_),1);
                     continue;
                  }
                  ++_loc2_.updateCounter;
               }
            }
         }
      }
      
      private function §="v§(param1:Number) : void
      {
         var _loc3_:* = null;
         var _loc4_:String = null;
         var _loc5_:§=Q§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Point = null;
         var _loc2_:Array = [];
         for(_loc3_ in this.§'#o§)
         {
            this.§'#o§[_loc3_] -= param1;
            if(!(_loc5_ = §+!p§.§`?§.objects.§8#L§(int(_loc3_))) || _loc5_.§%1§)
            {
               _loc2_.push(_loc3_);
            }
            else if(this.§'#o§[_loc3_] <= 0)
            {
               if(this.§;j§())
               {
                  _loc6_ = this.§1"t§.§<!C§() + Math.PI;
                  _loc7_ = new Point(Math.cos(_loc6_),Math.sin(_loc6_));
                  this.§3#I§(_loc5_,_loc7_);
               }
               else
               {
                  this.§3#I§(_loc5_);
               }
               _loc2_.push(_loc3_);
            }
         }
         for each(_loc4_ in _loc2_)
         {
            delete this.§'#o§[_loc4_];
         }
      }
      
      private function §2#8§(param1:Number, param2:Number) : void
      {
         var _loc11_:Number = NaN;
         var _loc12_:int = 0;
         var _loc13_:int = 0;
         var _loc14_:int = 0;
         var _loc3_:* = levelItem.itemName == "PortalRed";
         var _loc4_:String = !!_loc3_ ? "NEW24_PORTAL_RED_PUFF" : "NEW24_PORTAL_BLUE_PUFF";
         §+!p§.§`?§.particles.addSimpleParticle(_loc4_,§`#I§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§2#Z§.PARTICLE_GROUP_GAME_EFFECTS,§`#I§.PARTICLE_TYPE_STATIC_PARTICLE,param1,param2,750,"",§`#I§.§@!T§,0,0,0,0,1,8,true);
         var _loc9_:Number = 360 / 10;
         _loc4_ = !!_loc3_ ? "NEW24_PORTAL_RED_PARTICLE_" : "NEW24_PORTAL_BLUE_PARTICLE_";
         var _loc10_:int = 0;
         while(_loc10_ < 10)
         {
            _loc11_ = _loc9_ * _loc10_ * Math.PI / 180;
            _loc12_ = 10 + Math.random() * 10;
            _loc13_ = 200 + Math.random() * 200;
            _loc14_ = 1 + Math.random() * 4;
            §+!p§.§`?§.particles.addSimpleParticle(_loc4_ + _loc14_,§`#I§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§2#Z§.PARTICLE_GROUP_GAME_EFFECTS,§`#I§.PARTICLE_TYPE_KINETIC_PARTICLE,param1,param2,_loc13_,"",§`#I§.§@!T§,_loc12_ * Math.cos(_loc11_),-_loc12_ * Math.sin(_loc11_),0,0);
            _loc10_++;
         }
      }
      
      private function §,x§(param1:Point, param2:Point, param3:Point, param4:Number, param5:Point, param6:Number) : Point
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
      
      private function §?#O§(param1:Point, param2:Number, param3:Point, param4:Number, param5:Number, param6:Number) : Point
      {
         var _loc9_:Number = NaN;
         var _loc10_:Point = null;
         var _loc11_:Number = NaN;
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
            _loc13_ = Number(Math.atan2(param1.y,param1.x)) + Math.PI - (param4 - param5);
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
      
      public function get §3#J§() : Boolean
      {
         return this.§0"=§;
      }
   }
}
