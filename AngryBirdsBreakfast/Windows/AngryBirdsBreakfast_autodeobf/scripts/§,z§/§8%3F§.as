package §,z§
{
   import § ! §.§5!v§;
   import §"y§.b2CircleShape;
   import §&v§.§,4§;
   import §&v§.§9B§;
   import §1T§.§'!c§;
   import §3!`§.b2Body;
   import §3!`§.b2Fixture;
   import §3!`§.b2World;
   import §6![§.Sprite;
   import §6Z§.b2Vec2;
   import §>!Z§.§!u§;
   import §>!Z§.§2_§;
   import §?s§.§8K§;
   import §@L§.§?!'§;
   
   public class §8?§ extends §?!z§
   {
      
      public static const §+P§:int = 241 * §?!'§.§'!i§ / 2;
      
      private static const §&!!§:int = 200;
       
      
      private const §4!y§:Number = -5;
      
      private const §"K§:int = 1500;
      
      private const §]O§:int = 3500;
      
      private const §3!Z§:int = 1500;
      
      private var §@!5§:Boolean = false;
      
      private var §'!`§:Boolean = false;
      
      private var §,!]§:Boolean = false;
      
      private var §#3§:Boolean = false;
      
      private var §0<§:Number = -5;
      
      private var §&!8§:Number = -5;
      
      private var §<!h§:Number = -5;
      
      private var §"!p§:Number = 0;
      
      private var §'!m§:int = 0;
      
      private var §;j§:Number = 0;
      
      private var §@!T§:Number = 0;
      
      private var §^! §:Number = 0;
      
      private var §=!y§:Number = 1000;
      
      private var §6!k§:Boolean = false;
      
      public function §8?§(param1:Sprite, param2:§5!v§, param3:b2World, param4:§9B§, param5:§8K§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
         this.§^! § = 0;
      }
      
      private function get §!%§() : Number
      {
         return §+P§ * scale;
      }
      
      override public function addDamageParticles(param1:§3!#§, param2:int) : void
      {
         if(param2 < 2 || this.§=!y§ < §&!!§)
         {
            return;
         }
         if(this.§&!8§ != this.§4!y§ || param2 > 20)
         {
            this.§`!z§(param1,1,param2 > 20);
         }
         this.§=!y§ = 0;
      }
      
      override public function activateSpecialPower(param1:§3!#§, param2:Number, param3:Number) : Boolean
      {
         if(!this.§2!v§(param1))
         {
            return false;
         }
         var _loc4_:Number = §^`§().GetPosition().x;
         var _loc5_:Number = §^`§().GetPosition().y;
         param1.§-!,§(§2_§.§'l§,§!u§.§%c§,§2_§.§,!R§,_loc4_,_loc5_,-1,"",§2_§.§7!=§);
         this.§-!E§(param1,0);
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:§3!#§, param3:§"_§, param4:Boolean = true) : Number
      {
         var _loc5_:Number = NaN;
         if(!specialPowerUsed && this.§0<§ == this.§4!y§)
         {
            this.§-!E§(param2);
         }
         if(param1 < 12 && param1 > 5 && this.§@!5§)
         {
            §]Y§(§,4§.§-!A§);
            _loc5_ = health;
         }
         else
         {
            _loc5_ = super.applyDamage(param1,param2,param3,param4);
         }
         this.§@!5§ = true;
         return _loc5_;
      }
      
      protected function §21§(param1:§3!#§) : Boolean
      {
         if(!specialPowerUsed)
         {
            this.§2!v§(null);
            this.§-!E§(param1,0);
            return true;
         }
         return false;
      }
      
      private function §-!E§(param1:§3!#§, param2:Number = -1) : void
      {
         this.§'!`§ = true;
         if(param2 == 0)
         {
            this.§0<§ = 0;
            this.update(0,param1);
         }
         else if(param2 > 0)
         {
            this.§0<§ = param2;
         }
         else
         {
            this.§0<§ = this.§"K§;
         }
      }
      
      override public function update(param1:Number, param2:§3!#§) : void
      {
         if(!param2)
         {
            return;
         }
         super.update(param1,param2);
         this.§=!y§ += param1;
         if(this.§'!`§)
         {
            this.§#>§(param1,param2);
         }
         else if(this.§&!8§ != this.§4!y§)
         {
            if(this.§@!5§)
            {
               this.§&!8§ -= param1;
               if(this.§&!8§ < 0)
               {
                  this.§,!]§ = true;
                  this.§&!8§ = this.§4!y§;
                  this.§<!h§ = this.§3!Z§;
                  §]Y§(§,4§.§ !x§);
               }
            }
         }
         else if(this.§,!]§)
         {
            this.§8!8§(param1,param2);
         }
      }
      
      protected function §#>§(param1:Number, param2:§3!#§) : void
      {
         this.§0<§ -= param1;
         if(this.§0<§ <= 0)
         {
            if(!this.§#3§)
            {
               param2.§ !%§(§@q§.§2!q§,§^`§().GetPosition().x,§^`§().GetPosition().y,id);
               this.§2!v§(null);
               §?",§(param2.§9?§("BIRD_ORANGE_BIG"));
               sprite.scaleX = this.§^! §;
               sprite.scaleY = this.§^! §;
               this.§#3§ = true;
               return;
            }
            if(this.§^! § >= 1)
            {
               this.§'!`§ = false;
               this.§^! § = 1;
               this.§5w§(this.§!%§);
               this.§&!8§ = this.§]O§;
            }
            else
            {
               this.§^! § += 0.2;
            }
            this.§5w§(this.§!%§ * this.§^! §,§%-§.getItemDensity(),§%-§.getItemFriction(),§%-§.getItemRestitution());
            §`!f§.setScale(this.§^! § * scale);
         }
      }
      
      protected function §8!8§(param1:Number, param2:§3!#§) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:b2Body = null;
         var _loc5_:b2Vec2 = null;
         if(this.§<!h§ > 0)
         {
            this.§<!h§ -= param1;
            this.§"!p§ -= param1;
            if(this.§"!p§ <= 0)
            {
               this.§"!p§ = this.§3!Z§ / 5;
               this.§;j§ = (Math.random() * 100 - 50) * 10;
               this.§@!T§ = (Math.random() * 100 - 50) * 10;
            }
            _loc3_ = this.§<!h§ / this.§3!Z§;
            if(_loc3_ > 1)
            {
               _loc3_ = 1;
            }
            ++this.§'!m§;
            if(this.§'!m§ % 3 == 0)
            {
               §`!f§.setScale(_loc3_ * _loc3_);
               this.§5w§(this.§!%§ * _loc3_,0.00001,0,0);
               _loc5_ = (_loc4_ = §^`§()).GetLinearVelocity();
               _loc4_.ApplyImpulse(new b2Vec2(this.§;j§,this.§@!T§),§^`§().GetPosition());
               _loc4_.SetAngle(Math.atan2(-_loc5_.x,_loc5_.y) - Math.PI / 2);
               this.§`!z§(param2,0.02,true);
            }
         }
         else
         {
            this.§6!k§ = true;
            param2.removeObject(this);
         }
      }
      
      private function §5w§(param1:Number, param2:Number = -1, param3:Number = -1, param4:Number = -1) : void
      {
         var _loc6_:b2Fixture;
         var _loc5_:b2Body;
         var _loc7_:b2CircleShape = (_loc6_ = (_loc5_ = §^`§()).GetFixtureList()).GetShape() as b2CircleShape;
         _loc5_.SetAwake(true);
         _loc7_.§>!w§(param1);
         if(param2 >= 0)
         {
            _loc6_.§[r§(param2);
            _loc5_.§5!Z§();
         }
         if(param3 >= 0)
         {
            _loc6_.§^X§(param3);
         }
         if(param4 >= 0)
         {
            _loc6_.§'N§(param4);
         }
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
      
      override protected function addTrail(param1:§3!#§) : Boolean
      {
         if(!specialPowerUsed)
         {
            return super.addTrail(param1);
         }
         return false;
      }
      
      private function §`!z§(param1:§3!#§, param2:Number = 1, param3:Boolean = false) : void
      {
         var _loc9_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc4_:Number = (§^`§().GetFixtureList().GetShape() as b2CircleShape).§5!W§();
         var _loc5_:Number = §^`§().GetLinearVelocity().Length() / 40;
         var _loc6_:int = 1 + _loc5_ * §[z§(true) * 0.9;
         var _loc7_:Number = Math.PI / 2;
         var _loc8_:Number = _loc4_ / this.§!%§;
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
            _loc9_ = (Math.random() * this.§!%§ - this.§!%§ / 2) * 2 * _loc8_;
            param1.§-!,§(§2_§.§5§,§!u§.§54§,§2_§.§4d§,§^`§().GetPosition().x + Math.cos(_loc7_) * _loc9_,§^`§().GetPosition().y + Math.sin(_loc7_) * _loc9_,1000,"",0,0,0,5,_loc5_ * 5,Math.random() * 0.75 + 0.25);
            _loc10_++;
         }
         _loc10_ = 0;
         while(_loc10_ < _loc6_)
         {
            _loc7_ += Math.random() * (Math.PI * 4 / _loc6_);
            _loc9_ = (Math.random() * this.§!%§ - this.§!%§ / 2) * 2 * _loc8_;
            _loc11_ = 0.5 * _loc5_ + _loc5_ * (Math.random() * 0.5);
            param1.§-!,§(§2_§.§0!2§,§!u§.§54§,§2_§.§4d§,§^`§().GetPosition().x + Math.cos(_loc7_) * _loc9_,§^`§().GetPosition().y + Math.sin(_loc7_) * _loc9_,1250,"",§2_§.§%!l§,_loc11_ * Math.cos(_loc7_) * _loc8_,-_loc11_ * Math.sin(_loc7_) * _loc8_,5,_loc11_ * 20,1);
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
      
      private function §2!v§(param1:§3!#§) : Boolean
      {
         if(§!"$§)
         {
            return false;
         }
         §'!c§.§"V§("Globe_Bird_Special_Activation_" + Math.round(Math.random() * 2 + 1),"ChannelOrangeBird");
         §!"$§ = true;
         return true;
      }
   }
}
