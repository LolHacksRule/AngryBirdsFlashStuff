package §-!!§
{
   import §!6§.Sprite;
   import §%A§.§'Y§;
   import §%A§.§>F§;
   import §8#t§.b2Body;
   import §8#t§.b2BodyDef;
   import §8#t§.b2FilterData;
   import §8#t§.b2Fixture;
   import §8#t§.b2World;
   import §9$+§.§9"4§;
   import §=!2§.§%"T§;
   import §>"9§.§[#%§;
   import §?§.§,Y§;
   import §?§.§]# §;
   import §^"[§.§4!8§;
   import §`# §.b2Vec2;
   import flash.geom.Point;
   
   public class §""§ extends §,!h§
   {
      
      private static const §4!F§:Number = 1;
      
      private static const §="a§:int = 2;
       
      
      private var §]a§:Number;
      
      private var §#"e§:Vector.<Object>;
      
      private var §1p§:Object;
      
      private var §7#`§:§""§;
      
      private var §[B§:Boolean;
      
      public function §""§(param1:Sprite, param2:§4!8§, param3:b2World, param4:§,Y§, param5:§9"4§, param6:Number)
      {
         super(param1,param2,param3,param4,param5,param6);
         §^#v§ = true;
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
         _loc1_.§'" §(true);
         return _loc1_;
      }
      
      override public function applyDamage(param1:Number, param2:§ #'§, param3:§8"J§, param4:Boolean = true, param5:Boolean = false) : Number
      {
         return health;
      }
      
      protected function init() : void
      {
         this.§]a§ = Number((levelItem as §]# §).§3!i§("portal","minSpeedOut"));
         this.§#"e§ = new Vector.<Object>();
         this.§1p§ = new Object();
         this.§[B§ = false;
      }
      
      public function §`"$§(param1:§1#B§) : Boolean
      {
         if(!param1)
         {
            return false;
         }
         if(this.§&"c§(param1 as §8"J§) && !this.§""%§(param1 as §8"J§))
         {
            this.§ $0§(param1 as §8"J§);
         }
         else
         {
            this.§1p§["" + (param1 as §8"J§).id] = §4!F§ * 1000;
         }
         return true;
      }
      
      public function §`"e§(param1:§1#B§) : void
      {
         delete this.§1p§["" + (param1 as §8"J§).id];
      }
      
      private function §&"c§(param1:§8"J§) : Boolean
      {
         var _loc2_:Number = param1.getBody().GetLinearVelocity().x;
         var _loc3_:Number = param1.getBody().GetLinearVelocity().y;
         var _loc4_:Object = {
            "x":Math.cos(§30§() + Math.PI),
            "y":Math.sin(§30§() + Math.PI)
         };
         var _loc5_:Number = _loc2_ * _loc4_.x + _loc3_ * _loc4_.y;
         var _loc6_:Number = param1.§?#R§();
         return Number(Math.acos(_loc5_ / _loc6_)) > Math.PI * 0.5;
      }
      
      private function §""%§(param1:§8"J§) : Boolean
      {
         return this.§#"e§.indexOf(param1) > -1;
      }
      
      private function § $0§(param1:§8"J§, param2:Point = null) : void
      {
         param1.§5"-§(true);
         var _loc3_:Number = param1.getBody().GetLinearVelocity().x;
         var _loc4_:Number = param1.getBody().GetLinearVelocity().y;
         var _loc5_:Object = {
            "object":param1,
            "oldVelocity":(!!param2 ? param2 : new Point(_loc3_,_loc4_)),
            "oldFilterData":param1.§%#7§(),
            "updateCounter":0,
            "oldGravityFilter":param1.§&"X§
         };
         var _loc6_:b2FilterData;
         (_loc6_ = new b2FilterData()).§#"5§ = 0;
         param1.§5#y§(_loc6_);
         param1.getBody().SetLinearVelocity(new b2Vec2(0,0));
         param1.§&"X§ = §-#L§.§;"P§;
         this.§#"e§.push(_loc5_);
      }
      
      public function §@$-§(param1:§""§) : void
      {
         this.§7#`§ = param1;
      }
      
      public function §6#N§() : Boolean
      {
         return this.§7#`§ != null;
      }
      
      private function §'$@§() : Boolean
      {
         var _loc1_:Number = NaN;
         var _loc2_:Number = NaN;
         var _loc4_:Number = NaN;
         if(!§%"T§.§;`§.objects)
         {
            return false;
         }
         _loc1_ = getBody().GetPosition().x;
         _loc2_ = getBody().GetPosition().y;
         var _loc3_:Point = new Point(_loc1_,_loc2_);
         _loc4_ = §!!H§.shape.getWidth() * 1.1;
         var _loc6_:Number = (§!!H§.getItemWidth() - _loc4_) * 0.5;
         var _loc7_:String = "TeleportSide";
         var _loc8_:Point = new Point(_loc1_ + _loc6_,_loc2_ + §!!H§.getItemHeight() * 0.5 + 0.6 * 0.5);
         this.§7!-§(_loc7_,_loc8_,§30§(),_loc3_);
         _loc7_ = "TeleportSide";
         _loc8_ = new Point(_loc1_ + _loc6_,_loc2_ - §!!H§.getItemHeight() * 0.5 - 0.6 * 0.5);
         this.§7!-§(_loc7_,_loc8_,§30§(),_loc3_);
         _loc7_ = "TeleportBack";
         _loc8_ = new Point(_loc1_ + §!!H§.getItemWidth() * 0.5 + 2.3 * 0.5,_loc2_);
         this.§7!-§(_loc7_,_loc8_,§30§(),_loc3_);
         _loc8_ = new Point(_loc1_ + §!!H§.getItemWidth() * 0.5,_loc2_);
         this.§`u§(_loc8_,§30§(),_loc3_);
         return true;
      }
      
      private function §7!-§(param1:String, param2:Point, param3:Number, param4:Point) : void
      {
         var _loc5_:Point = this.§##]§(param2,param4,param3);
         (§%"T§.§;`§.objects.addObject(param1,_loc5_.x,_loc5_.y,0,§7S§.ID_NEXT_FREE,false,false,false) as §8"J§).§=z§(param3);
      }
      
      private function §`u§(param1:Point, param2:Number, param3:Point) : void
      {
         var _loc4_:Point = this.§##]§(param1,param3,param2);
         (§%"T§.§;`§.objects.addObject("TELEPORT_STATIC_MASK",_loc4_.x,_loc4_.y,0,§7S§.ID_NEXT_FREE,false,false,false) as §8"J§).§=z§(param2);
      }
      
      private function §##]§(param1:Point, param2:Point, param3:Number) : Point
      {
         var _loc4_:Number = param2.x + (param1.x - param2.x) * Math.cos(param3) - (param1.y - param2.y) * Math.sin(param3);
         var _loc5_:Number = param2.y + (param1.x - param2.x) * Math.sin(param3) + (param1.y - param2.y) * Math.cos(param3);
         return new Point(_loc4_,_loc5_);
      }
      
      override public function update(param1:Number, param2:§ #'§) : void
      {
         super.update(param1,param2);
         if(§%"T§.§;`§.§=#S§)
         {
            this.§1#E§(param2);
            this.§+!6§(param1);
            if(!this.§[B§)
            {
               this.§[B§ = this.§'$@§();
            }
         }
         else if(this.§[B§)
         {
            this.§[B§ = false;
         }
      }
      
      private function §1#E§(param1:§ #'§) : void
      {
         var _loc2_:Object = null;
         var _loc3_:§""§ = null;
         var _loc4_:§8"J§ = null;
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
         if(!this.§#"e§)
         {
            return;
         }
         if(!this.§6#N§())
         {
            _loc3_ = (param1 as §`h§).§=#Q§(this);
            if(_loc3_ != null)
            {
               this.§@$-§(_loc3_);
               _loc3_.§@$-§(this);
            }
         }
         for each(_loc2_ in this.§#"e§)
         {
            if((_loc4_ = _loc2_.object) && !_loc4_.§]"x§)
            {
               if(!this.§6#N§())
               {
                  param1.removeObject(_loc4_,true,true);
               }
               else
               {
                  if(_loc2_.updateCounter == 0)
                  {
                     §%"T§.§;`§.objects.§+K§(_loc4_);
                     _loc5_ = _loc4_.getBody().GetPosition();
                     this.§8$7§(_loc5_.x,_loc5_.y);
                     _loc6_ = §30§() + Math.PI;
                     _loc7_ = this.§7#`§.§30§() + Math.PI;
                     _loc8_ = new Point(Math.cos(_loc7_),Math.sin(_loc7_));
                     _loc9_ = new Point(Math.cos(_loc6_),Math.sin(_loc6_));
                     _loc10_ = Math.acos(_loc9_.x * _loc8_.x + _loc9_.y * _loc8_.y);
                     _loc11_ = new Point(_loc5_.x - getBody().GetPosition().x,_loc5_.y - getBody().GetPosition().y);
                     _loc12_ = new Point(this.§7#`§.getBody().GetPosition().x,this.§7#`§.getBody().GetPosition().y);
                     _loc13_ = §!!H§.shape.getHeight() * 0.3;
                     _loc14_ = this.§<$§(_loc11_,_loc9_,_loc8_,_loc10_,_loc12_,_loc13_);
                     _loc4_.getBody().SetPosition(new b2Vec2(_loc14_.x,_loc14_.y));
                     _loc2_.newVelocity = this.§9"S§(_loc2_.oldVelocity,_loc10_,_loc9_,_loc6_,_loc7_,this.§]a§);
                     §[#%§.§!"0§("portal_exit_0" + Math.round(Math.random() * 1 + 1),"ChannelMisc");
                  }
                  else if(_loc2_.updateCounter >= §="a§)
                  {
                     _loc4_.§5#y§(_loc2_.oldFilterData);
                     _loc4_.§5"-§(false);
                     _loc4_.getBody().SetLinearVelocity(new b2Vec2(_loc2_.newVelocity.x,_loc2_.newVelocity.y));
                     _loc4_.§&"X§ = _loc2_.oldGravityFilter;
                     _loc5_ = _loc4_.getBody().GetPosition();
                     this.§8$7§(_loc5_.x,_loc5_.y);
                     for(_loc15_ in this.§1p§)
                     {
                        if(_loc15_ == "" + _loc4_.id)
                        {
                           delete this.§1p§[_loc15_];
                           break;
                        }
                     }
                     this.§#"e§.splice(this.§#"e§.indexOf(_loc2_),1);
                     continue;
                  }
                  ++_loc2_.updateCounter;
               }
            }
         }
      }
      
      private function §+!6§(param1:Number) : void
      {
         var _loc3_:* = null;
         var _loc4_:String = null;
         var _loc5_:§8"J§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Point = null;
         var _loc2_:Array = [];
         for(_loc3_ in this.§1p§)
         {
            this.§1p§[_loc3_] -= param1;
            if(!(_loc5_ = §%"T§.§;`§.objects.§1!8§(int(_loc3_))) || _loc5_.§]"x§)
            {
               _loc2_.push(_loc3_);
            }
            else if(this.§1p§[_loc3_] <= 0)
            {
               if(this.§6#N§())
               {
                  _loc6_ = this.§7#`§.§30§() + Math.PI;
                  _loc7_ = new Point(Math.cos(_loc6_),Math.sin(_loc6_));
                  this.§ $0§(_loc5_,_loc7_);
               }
               else
               {
                  this.§ $0§(_loc5_);
               }
               _loc2_.push(_loc3_);
            }
         }
         for each(_loc4_ in _loc2_)
         {
            delete this.§1p§[_loc4_];
         }
      }
      
      private function §8$7§(param1:Number, param2:Number) : void
      {
         var _loc11_:Number = NaN;
         var _loc12_:int = 0;
         var _loc13_:int = 0;
         var _loc14_:int = 0;
         var _loc3_:* = levelItem.itemName == "PortalRed";
         var _loc4_:String = !!_loc3_ ? "NEW24_PORTAL_RED_PUFF" : "NEW24_PORTAL_BLUE_PUFF";
         §%"T§.§;`§.particles.addSimpleParticle(_loc4_,§'Y§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§>F§.PARTICLE_GROUP_GAME_EFFECTS,§'Y§.PARTICLE_TYPE_STATIC_PARTICLE,param1,param2,750,"",§'Y§.§2d§,0,0,0,0,1,8,true);
         var _loc9_:Number = 360 / 10;
         _loc4_ = !!_loc3_ ? "NEW24_PORTAL_RED_PARTICLE_" : "NEW24_PORTAL_BLUE_PARTICLE_";
         var _loc10_:int = 0;
         while(_loc10_ < 10)
         {
            _loc11_ = _loc9_ * _loc10_ * Math.PI / 180;
            _loc12_ = 10 + Math.random() * 10;
            _loc13_ = 200 + Math.random() * 200;
            _loc14_ = 1 + Math.random() * 4;
            §%"T§.§;`§.particles.addSimpleParticle(_loc4_ + _loc14_,§'Y§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§>F§.PARTICLE_GROUP_GAME_EFFECTS,§'Y§.PARTICLE_TYPE_KINETIC_PARTICLE,param1,param2,_loc13_,"",§'Y§.§2d§,_loc12_ * Math.cos(_loc11_),-_loc12_ * Math.sin(_loc11_),0,0);
            _loc10_++;
         }
      }
      
      private function §<$§(param1:Point, param2:Point, param3:Point, param4:Number, param5:Point, param6:Number) : Point
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
      
      private function §9"S§(param1:Point, param2:Number, param3:Point, param4:Number, param5:Number, param6:Number) : Point
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
      
      public function get §`"P§() : Boolean
      {
         return this.§[B§;
      }
   }
}
