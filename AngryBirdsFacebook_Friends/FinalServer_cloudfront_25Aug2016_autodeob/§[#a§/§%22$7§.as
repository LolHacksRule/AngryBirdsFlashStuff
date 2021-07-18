package §[#a§
{
   import §,#L§.§!#%§;
   import §0m§.b2Vec2;
   import §8§.§#$+§;
   import §9$§.Sprite;
   import §=!7§.§5"6§;
   import §=!7§.§=$4§;
   import §=#n§.b2Body;
   import §=#n§.b2Fixture;
   import §=#n§.b2World;
   import §?!c§.b2CircleShape;
   import §@"§.§`"W§;
   import §`#C§.§0!y§;
   import §`#C§.§8K§;
   
   public class §"$7§ extends §-k§
   {
      
      public static const §?!o§:Number = 7.5;
      
      private static const §=#f§:int = 200;
       
      
      private const §&"d§:Number = -5;
      
      private const §%#?§:int = 1500;
      
      private const §^#§:int = 1500;
      
      private const §-#S§:int = 1500;
      
      private var §"#A§:Boolean = false;
      
      private var §<#I§:Boolean = false;
      
      private var §?"$§:Boolean = false;
      
      private var §[#J§:Boolean = false;
      
      private var §+"U§:Number = -5;
      
      private var §6"_§:Number = -5;
      
      private var §##T§:Number = -5;
      
      private var §]!A§:Number = 0;
      
      private var §4!p§:int = 0;
      
      private var §9!!§:Number = 0;
      
      private var §>#j§:Number = 0;
      
      private var §0"m§:Number = 1000;
      
      private var §`!P§:Boolean = false;
      
      public function §"$7§(param1:Sprite, param2:§`"W§, param3:b2World, param4:§8K§, param5:§!#%§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      private function get §2"z§() : Number
      {
         return §?!o§ * scale;
      }
      
      override public function addDamageParticles(param1:§7!O§, param2:int) : void
      {
         if(param2 < 2 || this.§0"m§ < §=#f§)
         {
            return;
         }
         if(this.§6"_§ != this.§&"d§ || param2 > 20)
         {
            this.§1F§(param1,1,param2 > 20);
         }
         this.§0"m§ = 0;
      }
      
      override public function activateSpecialPower(param1:§7!O§, param2:Number, param3:Number) : Boolean
      {
         if(!this.§#!g§(param1))
         {
            return false;
         }
         var _loc4_:Number = getBody().GetPosition().x;
         var _loc5_:Number = getBody().GetPosition().y;
         param1.addParticle(§=$4§.§[!q§,§5"6§.§5"B§,§=$4§.§9"J§,_loc4_,_loc5_,-1,"",§=$4§.§8$8§);
         this.§%!e§(param1,0);
         return true;
      }
      
      override public function get canActivateSpecialPower() : Boolean
      {
         return !specialPowerUsed;
      }
      
      override public function applyDamage(param1:Number, param2:§7!O§, param3:§="@§, param4:Boolean = true) : Number
      {
         var _loc5_:Number = NaN;
         if(!specialPowerUsed && this.§+"U§ == this.§&"d§)
         {
            this.§%!e§(param2);
         }
         if(param1 < 12 && param1 > 5 && this.§"#A§)
         {
            §&!N§(§0!y§.§5#u§);
            _loc5_ = health;
         }
         else
         {
            _loc5_ = super.applyDamage(param1,param2,param3,param4);
         }
         this.§"#A§ = true;
         return _loc5_;
      }
      
      protected function §&'§(param1:§7!O§) : Boolean
      {
         if(!specialPowerUsed)
         {
            this.§#!g§(null);
            this.§%!e§(param1,0);
            return true;
         }
         return false;
      }
      
      private function §%!e§(param1:§7!O§, param2:Number = -1) : void
      {
         this.§<#I§ = true;
         if(param2 == 0)
         {
            this.§+"U§ = 0;
         }
         else if(param2 > 0)
         {
            this.§+"U§ = param2;
         }
         else
         {
            this.§+"U§ = this.§%#?§;
         }
      }
      
      override public function update(param1:Number, param2:§7!O§) : void
      {
         if(!param2)
         {
            return;
         }
         super.update(param1,param2);
         this.§0"m§ += param1;
         if(this.§<#I§)
         {
            this.§;# §(param1,param2);
         }
         else if(this.§6"_§ != this.§&"d§)
         {
            if(this.§"#A§)
            {
               this.§6"_§ -= param1;
               if(this.§6"_§ < 0)
               {
                  this.§?"$§ = true;
                  this.§6"_§ = this.§&"d§;
                  this.§##T§ = this.§-#S§;
                  §&!N§(§0!y§.§#5§);
               }
            }
         }
         else if(this.§?"$§)
         {
            this.§^#%§(param1,param2);
         }
      }
      
      protected function §;# §(param1:Number, param2:§7!O§) : void
      {
         this.§+"U§ -= param1;
         if(this.§+"U§ <= 0)
         {
            if(!this.§[#J§)
            {
               param2.§#Q§(§<#;§.§;#]§,getBody().GetPosition().x,getBody().GetPosition().y,id);
               this.§#!g§(null);
               §#]§(param2.§[!`§("BIRD_ORANGE_BIG"));
               this.§[#J§ = true;
               this.§<#I§ = false;
               this.§%y§(this.§2"z§);
               this.§6"_§ = this.§^#§;
               this.§%y§(this.§2"z§,§`!w§.getItemDensity(),§`!w§.getItemFriction(),§`!w§.getItemRestitution());
               sprite.scaleY = 1;
               sprite.scaleX = 1;
               §'"s§.setScale(scale);
            }
         }
      }
      
      protected function §^#%§(param1:Number, param2:§7!O§) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:b2Body = null;
         var _loc5_:b2Vec2 = null;
         if(this.§##T§ > 0)
         {
            this.§##T§ -= param1;
            this.§]!A§ -= param1;
            if(this.§]!A§ <= 0)
            {
               this.§]!A§ = this.§-#S§ / 5;
               this.§9!!§ = (Math.random() * 100 - 50) * 10;
               this.§>#j§ = (Math.random() * 100 - 50) * 10;
            }
            _loc3_ = this.§##T§ / this.§-#S§;
            if(_loc3_ > 1)
            {
               _loc3_ = 1;
            }
            ++this.§4!p§;
            if(this.§4!p§ % 3 == 0)
            {
               §'"s§.setScale(_loc3_ * _loc3_);
               this.§%y§(this.§2"z§ * _loc3_,0.00001,0,0);
               _loc5_ = (_loc4_ = getBody()).GetLinearVelocity();
               _loc4_.ApplyImpulse(new b2Vec2(this.§9!!§,this.§>#j§),getBody().GetPosition());
               _loc4_.SetAngle(Math.atan2(-_loc5_.x,_loc5_.y) - Math.PI / 2);
               this.§1F§(param2,0.02,true);
            }
         }
         else
         {
            this.§`!P§ = true;
            param2.removeObject(this);
         }
      }
      
      private function §%y§(param1:Number, param2:Number = -1, param3:Number = -1, param4:Number = -1) : void
      {
         var _loc6_:b2Fixture;
         var _loc5_:b2Body;
         var _loc7_:b2CircleShape = (_loc6_ = (_loc5_ = getBody()).GetFixtureList()).GetShape() as b2CircleShape;
         _loc5_.SetAwake(true);
         _loc7_.§<#$§(param1);
         if(param2 >= 0)
         {
            _loc6_.SetDensity(param2);
            _loc5_.ResetMassData();
         }
         if(param3 >= 0)
         {
            _loc6_.SetFriction(param3);
         }
         if(param4 >= 0)
         {
            _loc6_.SetRestitution(param4);
         }
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
      
      override protected function addTrail(param1:§7!O§) : Boolean
      {
         if(!specialPowerUsed)
         {
            return super.addTrail(param1);
         }
         return false;
      }
      
      private function §1F§(param1:§7!O§, param2:Number = 1, param3:Boolean = false) : void
      {
         var _loc9_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc4_:Number = (getBody().GetFixtureList().GetShape() as b2CircleShape).§'![§();
         var _loc5_:Number = getBody().GetLinearVelocity().Length() / 40;
         var _loc6_:int = 1 + _loc5_ * §[r§(true) * 0.9;
         var _loc7_:Number = Math.PI / 2;
         var _loc8_:Number = _loc4_ / this.§2"z§;
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
            _loc9_ = (Math.random() * this.§2"z§ - this.§2"z§ / 2) * 2 * _loc8_;
            param1.addParticle(§ #J§,§5"6§.PARTICLE_GROUP_GAME_EFFECTS,§=$4§.PARTICLE_TYPE_KINETIC_PARTICLE,getBody().GetPosition().x + Math.cos(_loc7_) * _loc9_,getBody().GetPosition().y + Math.sin(_loc7_) * _loc9_,1000,"",0,0,0,5,_loc5_ * 5,Math.random() * 0.75 + 0.25);
            _loc10_++;
         }
         _loc10_ = 0;
         while(_loc10_ < _loc6_)
         {
            _loc7_ += Math.random() * (Math.PI * 4 / _loc6_);
            _loc9_ = (Math.random() * this.§2"z§ - this.§2"z§ / 2) * 2 * _loc8_;
            _loc11_ = 0.5 * _loc5_ + _loc5_ * (Math.random() * 0.5);
            param1.addParticle(§=$4§.§9J§,§5"6§.PARTICLE_GROUP_GAME_EFFECTS,§=$4§.PARTICLE_TYPE_KINETIC_PARTICLE,getBody().GetPosition().x + Math.cos(_loc7_) * _loc9_,getBody().GetPosition().y + Math.sin(_loc7_) * _loc9_,1250,"",§=$4§.§`!R§,_loc11_ * Math.cos(_loc7_) * _loc8_,-_loc11_ * Math.sin(_loc7_) * _loc8_,5,_loc11_ * 20,1);
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
      
      private function §#!g§(param1:§7!O§) : Boolean
      {
         if(§%A§)
         {
            return false;
         }
         §#$+§.§=#P§("Globe_Bird_Special_Activation_" + Math.round(Math.random() * 2 + 1),"ChannelOrangeBird");
         §%A§ = true;
         return true;
      }
   }
}
