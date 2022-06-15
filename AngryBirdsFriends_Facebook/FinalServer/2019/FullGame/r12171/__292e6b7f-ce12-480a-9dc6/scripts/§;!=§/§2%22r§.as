package §;!=§
{
   import § !N§.§5"?§;
   import §'#K§.b2Body;
   import §'#K§.b2BodyDef;
   import §'#K§.b2FilterData;
   import §'#K§.b2Fixture;
   import §'#K§.b2World;
   import §,#e§.Sprite;
   import §04§.b2Vec2;
   import §3"V§.§ b§;
   import §7"T§.§7b§;
   import §7"o§.§##P§;
   import §7"o§.§=,§;
   import §8#K§.§&2§;
   import §8#K§.§0"p§;
   import §?#z§.§]$?§;
   import flash.geom.Point;
   
   public class §2"r§ extends §1!y§
   {
      
      private static const §!#<§:Number = 1;
      
      private static const §1!3§:int = 2;
       
      
      private var §-!r§:Number;
      
      private var §1]§:Vector.<Object>;
      
      private var §6r§:Object;
      
      private var §]$D§:§2"r§;
      
      private var §0">§:Boolean;
      
      public function §2"r§(param1:Sprite, param2:§7b§, param3:b2World, param4:§&2§, param5:§5"?§, param6:Number)
      {
         super(param1,param2,param3,param4,param5,param6);
         §-##§ = true;
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
         _loc1_.§`R§(true);
         return _loc1_;
      }
      
      override public function applyDamage(param1:Number, param2:§]!m§, param3:§>"G§, param4:Boolean = true, param5:Boolean = false) : Number
      {
         return health;
      }
      
      protected function init() : void
      {
         this.§-!r§ = Number((levelItem as §0"p§).§2!t§("portal","minSpeedOut"));
         this.§1]§ = new Vector.<Object>();
         this.§6r§ = new Object();
         this.§0">§ = false;
      }
      
      public function § #D§(param1:§'#N§) : Boolean
      {
         if(!param1)
         {
            return false;
         }
         if(this.§^-§(param1 as §>"G§) && !this.§<$0§(param1 as §>"G§))
         {
            this.§ "z§(param1 as §>"G§);
         }
         else
         {
            this.§6r§["" + (param1 as §>"G§).id] = §!#<§ * 1000;
         }
         return true;
      }
      
      public function §9"Y§(param1:§'#N§) : void
      {
         delete this.§6r§["" + (param1 as §>"G§).id];
      }
      
      private function §^-§(param1:§>"G§) : Boolean
      {
         var _loc2_:Number = param1.getBody().GetLinearVelocity().x;
         var _loc3_:Number = param1.getBody().GetLinearVelocity().y;
         var _loc4_:Object = {
            "x":Math.cos(§3"W§() + Math.PI),
            "y":Math.sin(§3"W§() + Math.PI)
         };
         var _loc5_:Number = _loc2_ * _loc4_.x + _loc3_ * _loc4_.y;
         var _loc6_:Number = param1.§2#z§();
         var _loc7_:Number;
         return (_loc7_ = Math.acos(_loc5_ / _loc6_)) > Math.PI * 0.5;
      }
      
      private function §<$0§(param1:§>"G§) : Boolean
      {
         return this.§1]§.indexOf(param1) > -1;
      }
      
      private function § "z§(param1:§>"G§, param2:Point = null) : void
      {
         param1.§<!M§(true);
         var _loc3_:Number = param1.getBody().GetLinearVelocity().x;
         var _loc4_:Number = param1.getBody().GetLinearVelocity().y;
         var _loc5_:Object = {
            "object":param1,
            "oldVelocity":(!!param2 ? param2 : new Point(_loc3_,_loc4_)),
            "oldFilterData":param1.§]!n§(),
            "updateCounter":0,
            "oldGravityFilter":param1.§@#z§
         };
         var _loc6_:b2FilterData;
         (_loc6_ = new b2FilterData()).§<L§ = 0;
         param1.§`"=§(_loc6_);
         param1.getBody().SetLinearVelocity(new b2Vec2(0,0));
         param1.§@#z§ = §"#-§.§@"z§;
         this.§1]§.push(_loc5_);
      }
      
      public function §-4§(param1:§2"r§) : void
      {
         this.§]$D§ = param1;
      }
      
      public function §]$%§() : Boolean
      {
         return this.§]$D§ != null;
      }
      
      private function §=#l§() : Boolean
      {
         var _loc1_:Number = NaN;
         var _loc2_:Number = NaN;
         var _loc4_:Number = NaN;
         if(!§]$?§.§2#§.objects)
         {
            return false;
         }
         _loc1_ = getBody().GetPosition().x;
         _loc2_ = getBody().GetPosition().y;
         var _loc3_:Point = new Point(_loc1_,_loc2_);
         _loc4_ = §]h§.shape.getWidth() * 1.1;
         var _loc6_:Number = (§]h§.getItemWidth() - _loc4_) * 0.5;
         var _loc7_:String = "TeleportSide";
         var _loc8_:Point = new Point(_loc1_ + _loc6_,_loc2_ + §]h§.getItemHeight() * 0.5 + 0.6 * 0.5);
         this.§-#Q§(_loc7_,_loc8_,§3"W§(),_loc3_);
         _loc7_ = "TeleportSide";
         _loc8_ = new Point(_loc1_ + _loc6_,_loc2_ - §]h§.getItemHeight() * 0.5 - 0.6 * 0.5);
         this.§-#Q§(_loc7_,_loc8_,§3"W§(),_loc3_);
         _loc7_ = "TeleportBack";
         _loc8_ = new Point(_loc1_ + §]h§.getItemWidth() * 0.5 + 2.3 * 0.5,_loc2_);
         this.§-#Q§(_loc7_,_loc8_,§3"W§(),_loc3_);
         _loc8_ = new Point(_loc1_ + §]h§.getItemWidth() * 0.5,_loc2_);
         this.§4!!§(_loc8_,§3"W§(),_loc3_);
         return true;
      }
      
      private function §-#Q§(param1:String, param2:Point, param3:Number, param4:Point) : void
      {
         var _loc5_:Point = this.§=c§(param2,param4,param3);
         var _loc6_:§>"G§;
         (_loc6_ = §]$?§.§2#§.objects.addObject(param1,_loc5_.x,_loc5_.y,0,§ !i§.ID_NEXT_FREE,false,false,false) as §>"G§).§#"&§(param3);
      }
      
      private function §4!!§(param1:Point, param2:Number, param3:Point) : void
      {
         var _loc4_:Point = this.§=c§(param1,param3,param2);
         var _loc5_:§>"G§;
         (_loc5_ = §]$?§.§2#§.objects.addObject("TELEPORT_STATIC_MASK",_loc4_.x,_loc4_.y,0,§ !i§.ID_NEXT_FREE,false,false,false) as §>"G§).§#"&§(param2);
      }
      
      private function §=c§(param1:Point, param2:Point, param3:Number) : Point
      {
         var _loc4_:Number = param2.x + (param1.x - param2.x) * Math.cos(param3) - (param1.y - param2.y) * Math.sin(param3);
         var _loc5_:Number = param2.y + (param1.x - param2.x) * Math.sin(param3) + (param1.y - param2.y) * Math.cos(param3);
         return new Point(_loc4_,_loc5_);
      }
      
      override public function update(param1:Number, param2:§]!m§) : void
      {
         super.update(param1,param2);
         if(§]$?§.§2#§.§>#Y§)
         {
            this.§!F§(param2);
            this.§0#t§(param1);
            if(!this.§0">§)
            {
               this.§0">§ = this.§=#l§();
            }
         }
         else if(this.§0">§)
         {
            this.§0">§ = false;
         }
      }
      
      private function §!F§(param1:§]!m§) : void
      {
         var _loc2_:Object = null;
         var _loc3_:§2"r§ = null;
         var _loc4_:§>"G§ = null;
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
         if(!this.§1]§)
         {
            return;
         }
         if(!this.§]$%§())
         {
            _loc3_ = (param1 as §&"^§).§^#e§(this);
            if(_loc3_ != null)
            {
               this.§-4§(_loc3_);
               _loc3_.§-4§(this);
            }
         }
         for each(_loc2_ in this.§1]§)
         {
            if((_loc4_ = _loc2_.object) && !_loc4_.§!#T§)
            {
               if(!this.§]$%§())
               {
                  param1.removeObject(_loc4_,true,true);
               }
               else
               {
                  if(_loc2_.updateCounter == 0)
                  {
                     §]$?§.§2#§.objects.§?"0§(_loc4_);
                     _loc5_ = _loc4_.getBody().GetPosition();
                     this.§7#@§(_loc5_.x,_loc5_.y);
                     _loc6_ = §3"W§() + Math.PI;
                     _loc7_ = this.§]$D§.§3"W§() + Math.PI;
                     _loc8_ = new Point(Math.cos(_loc7_),Math.sin(_loc7_));
                     _loc9_ = new Point(Math.cos(_loc6_),Math.sin(_loc6_));
                     _loc10_ = Math.acos(_loc9_.x * _loc8_.x + _loc9_.y * _loc8_.y);
                     _loc11_ = new Point(_loc5_.x - getBody().GetPosition().x,_loc5_.y - getBody().GetPosition().y);
                     _loc12_ = new Point(this.§]$D§.getBody().GetPosition().x,this.§]$D§.getBody().GetPosition().y);
                     _loc13_ = §]h§.shape.getHeight() * 0.3;
                     _loc14_ = this.§1#F§(_loc11_,_loc9_,_loc8_,_loc10_,_loc12_,_loc13_);
                     _loc4_.getBody().SetPosition(new b2Vec2(_loc14_.x,_loc14_.y));
                     _loc2_.newVelocity = this.§7#7§(_loc2_.oldVelocity,_loc10_,_loc9_,_loc6_,_loc7_,this.§-!r§);
                     § b§.§^"8§("portal_exit_0" + Math.round(Math.random() * 1 + 1),"ChannelMisc");
                  }
                  else if(_loc2_.updateCounter >= §1!3§)
                  {
                     _loc4_.§`"=§(_loc2_.oldFilterData);
                     _loc4_.§<!M§(false);
                     _loc4_.getBody().SetLinearVelocity(new b2Vec2(_loc2_.newVelocity.x,_loc2_.newVelocity.y));
                     _loc4_.§@#z§ = _loc2_.oldGravityFilter;
                     _loc5_ = _loc4_.getBody().GetPosition();
                     this.§7#@§(_loc5_.x,_loc5_.y);
                     for(_loc15_ in this.§6r§)
                     {
                        if(_loc15_ == "" + _loc4_.id)
                        {
                           delete this.§6r§[_loc15_];
                           break;
                        }
                     }
                     this.§1]§.splice(this.§1]§.indexOf(_loc2_),1);
                     continue;
                  }
                  ++_loc2_.updateCounter;
               }
            }
         }
      }
      
      private function §0#t§(param1:Number) : void
      {
         var _loc3_:* = null;
         var _loc4_:String = null;
         var _loc5_:§>"G§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Point = null;
         var _loc2_:Array = [];
         for(_loc3_ in this.§6r§)
         {
            this.§6r§[_loc3_] -= param1;
            if(!(_loc5_ = §]$?§.§2#§.objects.§^"1§(int(_loc3_))) || _loc5_.§!#T§)
            {
               _loc2_.push(_loc3_);
            }
            else if(this.§6r§[_loc3_] <= 0)
            {
               if(this.§]$%§())
               {
                  _loc6_ = this.§]$D§.§3"W§() + Math.PI;
                  _loc7_ = new Point(Math.cos(_loc6_),Math.sin(_loc6_));
                  this.§ "z§(_loc5_,_loc7_);
               }
               else
               {
                  this.§ "z§(_loc5_);
               }
               _loc2_.push(_loc3_);
            }
         }
         for each(_loc4_ in _loc2_)
         {
            delete this.§6r§[_loc4_];
         }
      }
      
      private function §7#@§(param1:Number, param2:Number) : void
      {
         var _loc11_:Number = NaN;
         var _loc12_:int = 0;
         var _loc13_:int = 0;
         var _loc14_:int = 0;
         var _loc3_:* = levelItem.itemName == "PortalRed";
         var _loc4_:String = !!_loc3_ ? "NEW24_PORTAL_RED_PUFF" : "NEW24_PORTAL_BLUE_PUFF";
         §]$?§.§2#§.particles.addSimpleParticle(_loc4_,§=,§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§##P§.PARTICLE_GROUP_GAME_EFFECTS,§=,§.PARTICLE_TYPE_STATIC_PARTICLE,param1,param2,750,"",§=,§.§?E§,0,0,0,0,1,8,true);
         _loc4_ = !!_loc3_ ? "NEW24_PORTAL_RED_PARTICLE_" : "NEW24_PORTAL_BLUE_PARTICLE_";
         var _loc10_:int = 0;
         while(_loc10_ < 10)
         {
            _loc11_ = 36 * _loc10_ * Math.PI / 180;
            _loc12_ = 10 + Math.random() * 10;
            _loc13_ = 200 + Math.random() * 200;
            _loc14_ = 1 + Math.random() * 4;
            §]$?§.§2#§.particles.addSimpleParticle(_loc4_ + _loc14_,§=,§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§##P§.PARTICLE_GROUP_GAME_EFFECTS,§=,§.PARTICLE_TYPE_KINETIC_PARTICLE,param1,param2,_loc13_,"",§=,§.§?E§,_loc12_ * Math.cos(_loc11_),-_loc12_ * Math.sin(_loc11_),0,0);
            _loc10_++;
         }
      }
      
      private function §1#F§(param1:Point, param2:Point, param3:Point, param4:Number, param5:Point, param6:Number) : Point
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
      
      private function §7#7§(param1:Point, param2:Number, param3:Point, param4:Number, param5:Number, param6:Number) : Point
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
      
      public function get §'$<§() : Boolean
      {
         return this.§0">§;
      }
   }
}
