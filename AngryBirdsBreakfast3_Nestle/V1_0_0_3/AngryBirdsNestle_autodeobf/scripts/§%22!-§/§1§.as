package §"!-§
{
   import §!!<§.§>"4§;
   import §!!<§.§[!L§;
   import §,!k§.b2Vec2;
   import §0!Y§.Sprite;
   import §6!?§.§7!t§;
   import §82§.§%v§;
   import §82§.§8W§;
   import §9![§.§1!i§;
   import §;'§.b2Body;
   import §;'§.b2Fixture;
   import §;'§.b2World;
   import §?m§.b2CircleShape;
   import §@"1§.§"h§;
   
   public class §1§ extends § !§
   {
      
      public static const §>!`§:int = 241 * §"h§.§4<§ / 2;
      
      private static const §&"#§:int = 200;
       
      
      private const §-!=§:Number = -5;
      
      private const §?j§:int = 1500;
      
      private const §#!0§:int = 3500;
      
      private const §continue§:int = 1500;
      
      private var §3v§:Boolean = false;
      
      private var §?N§:Boolean = false;
      
      private var §-0§:Boolean = false;
      
      private var §<3§:Boolean = false;
      
      private var §!!u§:Number = -5;
      
      private var §0"!§:Number = -5;
      
      private var §,t§:Number = -5;
      
      private var §!!N§:Number = 0;
      
      private var §6!G§:int = 0;
      
      private var §9!x§:Number = 0;
      
      private var §9o§:Number = 0;
      
      private var §5e§:Number = 0;
      
      private var §@!]§:Number = 1000;
      
      private var §0O§:Boolean = false;
      
      public function §1§(param1:Sprite, param2:§7!t§, param3:b2World, param4:§>"4§, param5:Number, param6:Number, param7:Number, param8:Number = 1.0, param9:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9);
         this.§5e§ = 0;
      }
      
      private function get §'f§() : Number
      {
         return §>!`§ * scale;
      }
      
      override public function addDamageParticles(param1:§!l§, param2:int) : void
      {
         if(param2 < 2 || this.§@!]§ < §&"#§)
         {
            return;
         }
         if(this.§0"!§ != this.§-!=§ || param2 > 20)
         {
            this.§&o§(param1,1,param2 > 20);
         }
         this.§@!]§ = 0;
      }
      
      override public function activateSpecialPower(param1:§!l§, param2:Number, param3:Number) : Boolean
      {
         if(!this.§3X§(param1))
         {
            return false;
         }
         var _loc4_:Number = §9l§().GetPosition().x;
         var _loc5_:Number = §9l§().GetPosition().y;
         param1.§;!9§(§%v§.§#r§,§8W§.§,!A§,§%v§.§0!O§,_loc4_,_loc5_,-1,"",§%v§.§5!§);
         this.§9B§(param1,0);
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:§!l§, param3:§[-§, param4:Boolean = true) : Number
      {
         var _loc5_:Number = NaN;
         if(!specialPowerUsed && this.§!!u§ == this.§-!=§)
         {
            this.§9B§(param2);
         }
         if(param1 < 12 && param1 > 5 && this.§3v§)
         {
            §0z§(§[!L§.§#!R§);
            _loc5_ = health;
         }
         else
         {
            _loc5_ = super.applyDamage(param1,param2,param3,param4);
         }
         this.§3v§ = true;
         return _loc5_;
      }
      
      protected function §+§(param1:§!l§) : Boolean
      {
         if(!specialPowerUsed)
         {
            this.§3X§(null);
            this.§9B§(param1,0);
            return true;
         }
         return false;
      }
      
      private function §9B§(param1:§!l§, param2:Number = -1) : void
      {
         this.§?N§ = true;
         if(param2 == 0)
         {
            this.§!!u§ = 0;
            this.update(0,param1);
         }
         else if(param2 > 0)
         {
            this.§!!u§ = param2;
         }
         else
         {
            this.§!!u§ = this.§?j§;
         }
      }
      
      override public function update(param1:Number, param2:§!l§) : void
      {
         if(!param2)
         {
            return;
         }
         super.update(param1,param2);
         this.§@!]§ += param1;
         if(this.§?N§)
         {
            this.§"%§(param1,param2);
         }
         else if(this.§0"!§ != this.§-!=§)
         {
            if(this.§3v§)
            {
               this.§0"!§ -= param1;
               if(this.§0"!§ < 0)
               {
                  this.§-0§ = true;
                  this.§0"!§ = this.§-!=§;
                  this.§,t§ = this.§continue§;
                  §0z§(§[!L§.§<!S§);
               }
            }
         }
         else if(this.§-0§)
         {
            this.§%[§(param1,param2);
         }
      }
      
      protected function §"%§(param1:Number, param2:§!l§) : void
      {
         this.§!!u§ -= param1;
         if(this.§!!u§ <= 0)
         {
            if(!this.§<3§)
            {
               param2.§4!K§(§,m§.§38§,§9l§().GetPosition().x,§9l§().GetPosition().y,id);
               this.§3X§(null);
               §6!-§(param2.§89§("BIRD_ORANGE_BIG"));
               sprite.scaleX = this.§5e§;
               sprite.scaleY = this.§5e§;
               this.§<3§ = true;
               return;
            }
            if(this.§5e§ >= 1)
            {
               this.§?N§ = false;
               this.§5e§ = 1;
               this.§`z§(this.§'f§);
               this.§0"!§ = this.§#!0§;
            }
            else
            {
               this.§5e§ += 0.2;
            }
            this.§`z§(this.§'f§ * this.§5e§,§1!0§.getItemDensity(),§1!0§.getItemFriction(),§1!0§.getItemRestitution());
            §[c§.setScale(this.§5e§ * scale);
         }
      }
      
      protected function §%[§(param1:Number, param2:§!l§) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:b2Body = null;
         var _loc5_:b2Vec2 = null;
         if(this.§,t§ > 0)
         {
            this.§,t§ -= param1;
            this.§!!N§ -= param1;
            if(this.§!!N§ <= 0)
            {
               this.§!!N§ = this.§continue§ / 5;
               this.§9!x§ = (Math.random() * 100 - 50) * 10;
               this.§9o§ = (Math.random() * 100 - 50) * 10;
            }
            _loc3_ = this.§,t§ / this.§continue§;
            if(_loc3_ > 1)
            {
               _loc3_ = 1;
            }
            ++this.§6!G§;
            if(this.§6!G§ % 3 == 0)
            {
               §[c§.setScale(_loc3_ * _loc3_);
               this.§`z§(this.§'f§ * _loc3_,0.00001,0,0);
               _loc5_ = (_loc4_ = §9l§()).GetLinearVelocity();
               _loc4_.ApplyImpulse(new b2Vec2(this.§9!x§,this.§9o§),§9l§().GetPosition());
               _loc4_.SetAngle(Math.atan2(-_loc5_.x,_loc5_.y) - Math.PI / 2);
               this.§&o§(param2,0.02,true);
            }
         }
         else
         {
            this.§0O§ = true;
            param2.removeObject(this);
         }
      }
      
      private function §`z§(param1:Number, param2:Number = -1, param3:Number = -1, param4:Number = -1) : void
      {
         var _loc6_:b2Fixture;
         var _loc5_:b2Body;
         var _loc7_:b2CircleShape = (_loc6_ = (_loc5_ = §9l§()).GetFixtureList()).GetShape() as b2CircleShape;
         _loc5_.SetAwake(true);
         _loc7_.§=5§(param1);
         if(param2 >= 0)
         {
            _loc6_.§>!P§(param2);
            _loc5_.§`R§();
         }
         if(param3 >= 0)
         {
            _loc6_.§ E§(param3);
         }
         if(param4 >= 0)
         {
            _loc6_.§,S§(param4);
         }
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
      
      override protected function addTrail(param1:§!l§) : Boolean
      {
         if(!specialPowerUsed)
         {
            return super.addTrail(param1);
         }
         return false;
      }
      
      private function §&o§(param1:§!l§, param2:Number = 1, param3:Boolean = false) : void
      {
         var _loc9_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc4_:Number = (§9l§().GetFixtureList().GetShape() as b2CircleShape).§^?§();
         var _loc5_:Number = §9l§().GetLinearVelocity().Length() / 40;
         var _loc6_:int = 1 + _loc5_ * §'J§(true) * 0.9;
         var _loc7_:Number = Math.PI / 2;
         var _loc8_:Number = _loc4_ / this.§'f§;
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
            _loc9_ = (Math.random() * this.§'f§ - this.§'f§ / 2) * 2 * _loc8_;
            param1.§;!9§(§%v§.§'"$§,§8W§.§8!C§,§%v§.§!-§,§9l§().GetPosition().x + Math.cos(_loc7_) * _loc9_,§9l§().GetPosition().y + Math.sin(_loc7_) * _loc9_,1000,"",0,0,0,5,_loc5_ * 5,Math.random() * 0.75 + 0.25);
            _loc10_++;
         }
         _loc10_ = 0;
         while(_loc10_ < _loc6_)
         {
            _loc7_ += Math.random() * (Math.PI * 4 / _loc6_);
            _loc9_ = (Math.random() * this.§'f§ - this.§'f§ / 2) * 2 * _loc8_;
            _loc11_ = 0.5 * _loc5_ + _loc5_ * (Math.random() * 0.5);
            param1.§;!9§(§%v§.§!"3§,§8W§.§8!C§,§%v§.§!-§,§9l§().GetPosition().x + Math.cos(_loc7_) * _loc9_,§9l§().GetPosition().y + Math.sin(_loc7_) * _loc9_,1250,"",§%v§.§>!@§,_loc11_ * Math.cos(_loc7_) * _loc8_,-_loc11_ * Math.sin(_loc7_) * _loc8_,5,_loc11_ * 20,1);
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
      
      private function §3X§(param1:§!l§) : Boolean
      {
         if(§6"§)
         {
            return false;
         }
         §1!i§.§1!t§("Globe_Bird_Special_Activation_" + Math.round(Math.random() * 2 + 1),"ChannelOrangeBird");
         §6"§ = true;
         return true;
      }
   }
}
