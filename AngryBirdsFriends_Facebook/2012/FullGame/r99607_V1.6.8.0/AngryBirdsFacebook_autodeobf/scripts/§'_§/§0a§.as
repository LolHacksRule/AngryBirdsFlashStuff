package §'_§
{
   import § !k§.b2Body;
   import § !k§.b2Fixture;
   import § !k§.b2World;
   import §!"8§.b2Vec2;
   import §&I§.b2CircleShape;
   import §+I§.§9!%§;
   import §3!Z§.§,>§;
   import §3!Z§.§5!$§;
   import §3,§.§[!;§;
   import §]&§.Sprite;
   
   public class §0a§ extends §5!P§
   {
       
      
      private const §'!h§:int = 6;
      
      private const §7!3§:Number = -5;
      
      private const § !m§:int = 1500;
      
      private const §%]§:int = 3500;
      
      private const §-!%§:int = 1500;
      
      private var §4!V§:Boolean = false;
      
      private var §?+§:Boolean = false;
      
      private var §5!o§:Number = -5;
      
      private var §;!O§:Number = -5;
      
      private var §1S§:Number = -5;
      
      private var §6c§:Number = 0;
      
      private var §8j§:int = 0;
      
      private var §>m§:Number = 0;
      
      private var each:Number = 0;
      
      private var §7!W§:Boolean = false;
      
      private var §>"&§:Boolean = false;
      
      private var §`!§:§=!&§;
      
      public function §0a§(param1:§=!&§, param2:Sprite, param3:b2World, param4:§[!;§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         this.§`!§ = param1;
      }
      
      private function get §#!&§() : Number
      {
         return this.§'!h§ * scale;
      }
      
      override public function addDamageParticles(param1:§,>§, param2:int) : void
      {
         if(param2 < 6)
         {
            return;
         }
         if(this.§;!O§ != this.§7!3§)
         {
            this.§9!o§();
         }
      }
      
      override public function activateSpecialPower(param1:§=!&§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         §9!%§.§!!M§.particles.§&!J§(§5!$§.§]!'§,§,>§.§2"=§,§5!$§.§`"1§,§2"7§().GetPosition().x,§2"7§().GetPosition().y,-1,"",§5!$§.§6!'§);
         this.§^!e§(0);
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Number = super.applyDamage(param1,param2,param3,param4,param5,param6);
         if(!§ p§)
         {
            this.§^!e§();
         }
         this.§4!V§ = true;
         return _loc7_;
      }
      
      override public function explode() : Boolean
      {
         if(!§ p§)
         {
            this.§^!e§(0);
            return true;
         }
         return false;
      }
      
      private function §^!e§(param1:Number = -1) : void
      {
         if(param1 == 0)
         {
            this.§5!o§ = 0;
            this.update(0);
         }
         else if(param1 > 0)
         {
            this.§5!o§ = param1;
         }
         else
         {
            this.§5!o§ = this.§ !m§;
         }
      }
      
      override public function update(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:b2Body = null;
         var _loc4_:b2Vec2 = null;
         §6"%§ = true;
         if(this.§5!o§ != this.§7!3§)
         {
            this.§5!o§ -= param1;
            if(this.§5!o§ < 0)
            {
               this.§^" §(this.§#!&§);
               this.§5!o§ = this.§7!3§;
               this.§;!O§ = this.§%]§;
               sprite.scaleX = 1;
               sprite.scaleY = 1;
               §@!'§.setScale(1 * scale);
            }
            else if(this.§5!o§ <= param1)
            {
               super.activateSpecialPower(null);
               super.activateSpecialPower(null);
               this.§^" §(this.§#!&§ * 0.5);
               §@!'§.setScale(0.5 * scale);
            }
         }
         else if(this.§;!O§ != this.§7!3§)
         {
            §6"%§ = false;
            if(this.§4!V§)
            {
               this.§;!O§ -= param1;
               if(this.§;!O§ < 0)
               {
                  this.§?+§ = true;
                  this.§;!O§ = this.§7!3§;
                  this.§1S§ = this.§-!%§;
               }
            }
         }
         else if(this.§?+§)
         {
            if(this.§1S§ > 0)
            {
               this.§1S§ -= param1;
               this.§6c§ -= param1;
               if(this.§6c§ <= 0)
               {
                  this.§6c§ = this.§-!%§ / 5;
                  this.§>m§ = (Math.random() * 100 - 50) * 10;
                  this.each = (Math.random() * 100 - 50) * 10;
               }
               _loc2_ = this.§1S§ / this.§-!%§;
               if(_loc2_ > 1)
               {
                  _loc2_ = 1;
               }
               ++this.§8j§;
               if(this.§8j§ % 3 == 0)
               {
                  §@!'§.setScale(_loc2_ * scale);
                  this.§^" §(this.§#!&§ * _loc2_,0.1,0.5,0);
                  _loc3_ = §2"7§();
                  _loc4_ = _loc3_.GetLinearVelocity();
                  _loc3_.ApplyImpulse(new b2Vec2(this.§>m§,this.each),§2"7§().GetPosition());
                  _loc3_.§-!H§(Math.atan2(-_loc4_.x,_loc4_.y) - Math.PI / 2);
                  this.§9!o§(0.02);
               }
            }
            else
            {
               this.§7!W§ = true;
            }
         }
      }
      
      private function §^" §(param1:Number, param2:Number = -1, param3:Number = -1, param4:Number = -1) : void
      {
         var _loc6_:b2Fixture;
         var _loc5_:b2Body;
         var _loc7_:b2CircleShape = (_loc6_ = (_loc5_ = §2"7§()).GetFixtureList()).GetShape() as b2CircleShape;
         _loc5_.SetAwake(true);
         _loc7_.§&<§(param1);
         if(param2 >= 0)
         {
            _loc6_.§`!D§(param2);
            _loc5_.§3x§();
         }
         if(param3 >= 0)
         {
            _loc6_.§@" §(param3);
         }
         if(param4 >= 0)
         {
            _loc6_.§6i§(param4);
         }
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return this.§7!W§;
      }
      
      override public function addTrail() : void
      {
         if(!§ p§)
         {
            super.addTrail();
         }
      }
      
      private function §9!o§(param1:Number = 1) : void
      {
         var _loc6_:int = 0;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc2_:Number = §5y§() / 40;
         var _loc3_:int = 1 + _loc2_ * §+"9§(false) * 1;
         var _loc4_:Number = 90;
         var _loc5_:Number = (§2"7§().GetFixtureList().GetShape() as b2CircleShape).§ "5§() / this.§#!&§;
         _loc3_ *= _loc5_ * 3 * param1;
         if(_loc3_ > 30)
         {
            _loc3_ = 30;
         }
         _loc6_ = 0;
         while(_loc6_ < _loc3_ / 3)
         {
            _loc4_ += Math.random() * (720 / _loc3_);
            §9!%§.§!!M§.particles.§&!J§(§5!$§.§>!z§,§,>§.§^!<§,§5!$§.§2!&§,§2"7§().GetPosition().x + (Math.random() * this.§#!&§ - this.§#!&§ / 2) * 2 * _loc5_,§2"7§().GetPosition().y + (Math.random() * this.§#!&§ - this.§#!&§ / 2) * 2 * _loc5_,1000,"",0,0,0,5,_loc2_ * 5,Math.random() * 0.75 + 0.25);
            _loc6_++;
         }
         _loc6_ = 0;
         while(_loc6_ < _loc3_)
         {
            _loc7_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc8_ = 0.5 * _loc2_ + _loc2_ * (Math.random() * 0.5);
            §9!%§.§!!M§.particles.§&!J§(§5!$§.§2M§,§,>§.§^!<§,§5!$§.§2!&§,§2"7§().GetPosition().x + (Math.random() * this.§#!&§ - this.§#!&§ / 2) * 2 * _loc5_,§2"7§().GetPosition().y + (Math.random() * this.§#!&§ - this.§#!&§ / 2) * 2 * _loc5_,1250,"",§5!$§.§9!Z§(§+%§),_loc8_ * Math.cos(_loc7_) * _loc5_,-_loc8_ * Math.sin(_loc7_) * _loc5_,5,_loc8_ * 20,1);
            _loc6_++;
         }
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         if(§ p§)
         {
            return 1;
         }
         return -1;
      }
      
      override public function getSpecialAnimationTimeLeft() : Number
      {
         if(§ p§)
         {
            return 101;
         }
         return 0;
      }
   }
}
