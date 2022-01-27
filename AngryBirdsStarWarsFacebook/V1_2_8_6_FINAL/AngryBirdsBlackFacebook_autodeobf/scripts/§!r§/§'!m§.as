package §!r§
{
   import §!!k§.§1!^§;
   import §"§.§;!E§;
   import §#g§.§["%§;
   import §#g§.§^i§;
   import §1!2§.b2CircleShape;
   import §7"A§.b2Vec2;
   import §=G§.§9v§;
   import §>"_§.b2Body;
   import §>"_§.b2Fixture;
   import §>"_§.b2World;
   import §^9§.§?"E§;
   import §^9§.§^#'§;
   import §`"1§.§=Q§;
   import §use§.Sprite;
   
   public class §'!m§ extends §;!T§
   {
      
      public static const §2Y§:int = 241 * §;!E§.§0"?§ / 2;
      
      private static const §,"l§:int = 200;
       
      
      private const §'3§:Number = -5;
      
      private const §5K§:int = 1500;
      
      private const §>"F§:int = 3500;
      
      private const §0§:int = 1500;
      
      private var native:Boolean = false;
      
      private var §5"U§:Boolean = false;
      
      private var §32§:Boolean = false;
      
      private var §6#5§:Boolean = false;
      
      private var §^R§:Number = -5;
      
      private var §"#&§:Number = -5;
      
      private var §2N§:Number = -5;
      
      private var §,#5§:Number = 0;
      
      private var §?"[§:int = 0;
      
      private var §4P§:Number = 0;
      
      private var § l§:Number = 0;
      
      private var §[L§:Number = 0;
      
      private var §;"2§:Number = 1000;
      
      private var §="9§:Boolean = false;
      
      public function §'!m§(param1:Sprite, param2:§1!^§, param3:b2World, param4:§["%§, param5:§9v§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
         this.§[L§ = 0;
      }
      
      private function get §=!q§() : Number
      {
         return §2Y§ * scale;
      }
      
      override public function addDamageParticles(param1:§'=§, param2:int) : void
      {
         if(param2 < 2 || this.§;"2§ < §,"l§)
         {
            return;
         }
         if(this.§"#&§ != this.§'3§ || param2 > 20)
         {
            this.§!!@§(param1,1,param2 > 20);
         }
         this.§;"2§ = 0;
      }
      
      override public function activateSpecialPower(param1:§'=§, param2:Number, param3:Number) : Boolean
      {
         if(!this.§<"X§(param1))
         {
            return false;
         }
         var _loc4_:Number = §3"s§().GetPosition().x;
         var _loc5_:Number = §3"s§().GetPosition().y;
         param1.§>#1§(§?"E§.§]"B§,§^#'§.§set §,§?"E§.§["4§,_loc4_,_loc5_,-1,"",§?"E§.§0!P§);
         this.§2"a§(param1,0);
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:§'=§, param3:§0N§, param4:Boolean = true) : Number
      {
         var _loc5_:Number = NaN;
         if(!specialPowerUsed && this.§^R§ == this.§'3§)
         {
            this.§2"a§(param2);
         }
         if(param1 < 12 && param1 > 5 && this.native)
         {
            §!5§(§^i§.§ #+§);
            _loc5_ = health;
         }
         else
         {
            _loc5_ = super.applyDamage(param1,param2,param3,param4);
         }
         this.native = true;
         return _loc5_;
      }
      
      protected function §+!M§(param1:§'=§) : Boolean
      {
         if(!specialPowerUsed)
         {
            this.§<"X§(null);
            this.§2"a§(param1,0);
            return true;
         }
         return false;
      }
      
      private function §2"a§(param1:§'=§, param2:Number = -1) : void
      {
         this.§5"U§ = true;
         if(param2 == 0)
         {
            this.§^R§ = 0;
            this.update(0,param1);
         }
         else if(param2 > 0)
         {
            this.§^R§ = param2;
         }
         else
         {
            this.§^R§ = this.§5K§;
         }
      }
      
      override public function update(param1:Number, param2:§'=§) : void
      {
         if(!param2)
         {
            return;
         }
         super.update(param1,param2);
         this.§;"2§ += param1;
         if(this.§5"U§)
         {
            this.§7"R§(param1,param2);
         }
         else if(this.§"#&§ != this.§'3§)
         {
            if(this.native)
            {
               this.§"#&§ -= param1;
               if(this.§"#&§ < 0)
               {
                  this.§32§ = true;
                  this.§"#&§ = this.§'3§;
                  this.§2N§ = this.§0§;
                  §!5§(§^i§.§=`§);
               }
            }
         }
         else if(this.§32§)
         {
            this.§4M§(param1,param2);
         }
      }
      
      protected function §7"R§(param1:Number, param2:§'=§) : void
      {
         this.§^R§ -= param1;
         if(this.§^R§ <= 0)
         {
            if(!this.§6#5§)
            {
               param2.§6!C§(§3c§.§-A§,§3"s§().GetPosition().x,§3"s§().GetPosition().y,id);
               this.§<"X§(null);
               §&"U§(param2.§%"@§("BIRD_ORANGE_BIG"));
               sprite.scaleX = this.§[L§;
               sprite.scaleY = this.§[L§;
               this.§6#5§ = true;
               return;
            }
            if(this.§[L§ >= 1)
            {
               this.§5"U§ = false;
               this.§[L§ = 1;
               this.§;"o§(this.§=!q§);
               this.§"#&§ = this.§>"F§;
            }
            else
            {
               this.§[L§ += 0.2;
            }
            this.§;"o§(this.§=!q§ * this.§[L§,§+!j§.getItemDensity(),§+!j§.getItemFriction(),§+!j§.getItemRestitution());
            §]!g§.setScale(this.§[L§ * scale);
         }
      }
      
      protected function §4M§(param1:Number, param2:§'=§) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:b2Body = null;
         var _loc5_:b2Vec2 = null;
         if(this.§2N§ > 0)
         {
            this.§2N§ -= param1;
            this.§,#5§ -= param1;
            if(this.§,#5§ <= 0)
            {
               this.§,#5§ = this.§0§ / 5;
               this.§4P§ = (Math.random() * 100 - 50) * 10;
               this.§ l§ = (Math.random() * 100 - 50) * 10;
            }
            _loc3_ = this.§2N§ / this.§0§;
            if(_loc3_ > 1)
            {
               _loc3_ = 1;
            }
            ++this.§?"[§;
            if(this.§?"[§ % 3 == 0)
            {
               §]!g§.setScale(_loc3_ * _loc3_);
               this.§;"o§(this.§=!q§ * _loc3_,0.00001,0,0);
               _loc5_ = (_loc4_ = §3"s§()).GetLinearVelocity();
               _loc4_.ApplyImpulse(new b2Vec2(this.§4P§,this.§ l§),§3"s§().GetPosition());
               _loc4_.SetAngle(Math.atan2(-_loc5_.x,_loc5_.y) - Math.PI / 2);
               this.§!!@§(param2,0.02,true);
            }
         }
         else
         {
            this.§="9§ = true;
            param2.removeObject(this);
         }
      }
      
      private function §;"o§(param1:Number, param2:Number = -1, param3:Number = -1, param4:Number = -1) : void
      {
         var _loc6_:b2Fixture;
         var _loc5_:b2Body;
         var _loc7_:b2CircleShape = (_loc6_ = (_loc5_ = §3"s§()).GetFixtureList()).GetShape() as b2CircleShape;
         _loc5_.SetAwake(true);
         _loc7_.§'"l§(param1);
         if(param2 >= 0)
         {
            _loc6_.SetDensity(param2);
            _loc5_.ResetMassData();
         }
         if(param3 >= 0)
         {
            _loc6_.§#!O§(param3);
         }
         if(param4 >= 0)
         {
            _loc6_.§4"K§(param4);
         }
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
      
      override protected function addTrail(param1:§'=§) : Boolean
      {
         if(!specialPowerUsed)
         {
            return super.addTrail(param1);
         }
         return false;
      }
      
      private function §!!@§(param1:§'=§, param2:Number = 1, param3:Boolean = false) : void
      {
         var _loc9_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc4_:Number = (§3"s§().GetFixtureList().GetShape() as b2CircleShape).§8"c§();
         var _loc5_:Number = §3"s§().GetLinearVelocity().Length() / 40;
         var _loc6_:int = 1 + _loc5_ * §0"-§(true) * 0.9;
         var _loc7_:Number = Math.PI / 2;
         var _loc8_:Number = _loc4_ / this.§=!q§;
         if((_loc6_ *= _loc8_ * 3 * param2) > 30)
         {
            _loc6_ = 30;
         }
         if(param3)
         {
            _loc6_ = 8;
            _loc5_ = 8;
         }
         var _loc10_:int = 0;
         _loc10_ = 0;
         while(_loc10_ < _loc6_ / 3)
         {
            _loc7_ += Math.random() * (Math.PI * 4 / _loc6_);
            _loc9_ = (Math.random() * this.§=!q§ - this.§=!q§ / 2) * 2 * _loc8_;
            param1.§>#1§(§?"E§.§+"1§,§^#'§.§&5§,§?"E§.§3y§,§3"s§().GetPosition().x + Math.cos(_loc7_) * _loc9_,§3"s§().GetPosition().y + Math.sin(_loc7_) * _loc9_,1000,"",0,0,0,5,_loc5_ * 5,Math.random() * 0.75 + 0.25);
            _loc10_++;
         }
         _loc10_ = 0;
         while(_loc10_ < _loc6_)
         {
            _loc7_ += Math.random() * (Math.PI * 4 / _loc6_);
            _loc9_ = (Math.random() * this.§=!q§ - this.§=!q§ / 2) * 2 * _loc8_;
            _loc11_ = 0.5 * _loc5_ + _loc5_ * (Math.random() * 0.5);
            param1.§>#1§(§?"E§.§[J§,§^#'§.§&5§,§?"E§.§3y§,§3"s§().GetPosition().x + Math.cos(_loc7_) * _loc9_,§3"s§().GetPosition().y + Math.sin(_loc7_) * _loc9_,1250,"",§?"E§.§>#6§,_loc11_ * Math.cos(_loc7_) * _loc8_,-_loc11_ * Math.sin(_loc7_) * _loc8_,5,_loc11_ * 20,1);
            _loc10_++;
         }
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         if(specialPowerUsed)
         {
            return 1;
         }
         return -1;
      }
      
      private function §<"X§(param1:§'=§) : Boolean
      {
         if(§63§)
         {
            return false;
         }
         §=Q§.§5"w§("Globe_Bird_Special_Activation_" + Math.round(Math.random() * 2 + 1),"ChannelOrangeBird");
         §63§ = true;
         return true;
      }
   }
}
