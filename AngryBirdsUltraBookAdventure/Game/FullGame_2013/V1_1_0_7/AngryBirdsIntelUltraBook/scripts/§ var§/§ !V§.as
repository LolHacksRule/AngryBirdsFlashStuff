package § var§
{
   import § ! §.§=!%§;
   import § ! §.§>p§;
   import §#I§.b2Body;
   import §#I§.b2Fixture;
   import §#I§.b2World;
   import §&H§.b2Vec2;
   import §0S§.§ L§;
   import §0S§.§6!D§;
   import §0S§.§7!Z§;
   import §3b§.b2CircleShape;
   import §40§.§5G§;
   import §48§.§3!K§;
   import §;!y§.§,!s§;
   import §[!b§.§-!Q§;
   import §`g§.Sprite;
   
   public class § !V§ extends §3!5§
   {
      
      public static const §<a§:int = 241 * §5G§.§6+§ / 2;
      
      private static const §9!g§:int = 200;
       
      
      private const § !u§:Number = -5;
      
      private const §?!"§:int = 1500;
      
      private const §+W§:int = 3500;
      
      private const §!!W§:int = 1500;
      
      private var §2!h§:Boolean = false;
      
      private var §5!!§:Boolean = false;
      
      private var §^U§:Number = -5;
      
      private var §!!t§:Number = -5;
      
      private var §2C§:Number = -5;
      
      private var §+!v§:Number = 0;
      
      private var §@!'§:int = 0;
      
      private var §#!Y§:Number = 0;
      
      private var §#!h§:Number = 0;
      
      private var §4^§:Number = 0;
      
      private var § !^§:Number = 1000;
      
      private var §&!X§:Boolean = false;
      
      private var §3B§:§ 4§;
      
      public function § !V§(param1:§ 4§, param2:Sprite, param3:b2World, param4:§5G§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         this.§3B§ = param1;
         §+!j§.mTryToFly = true;
         this.§4^§ = 0;
      }
      
      private function get §[!I§() : Number
      {
         return §<a§ * scale;
      }
      
      override public function addDamageParticles(param1:§=!%§, param2:int) : void
      {
         if(param2 < 2 || this.§ !^§ < §9!g§)
         {
            return;
         }
         if(this.§!!t§ != this.§ !u§ || param2 > 20)
         {
            this.§<!!§(1,param2 > 20);
         }
         this.§ !^§ = 0;
      }
      
      override public function activateSpecialPower(param1:§ 4§) : Boolean
      {
         if(!this.§=!b§(param1))
         {
            return false;
         }
         §,!s§.§=!I§.particles.§-M§(§>p§.§@=§,§=!%§.§#,§,§>p§.§?-§,§63§().GetPosition().x,§63§().GetPosition().y,-1,"",§>p§.§9§);
         this.§@h§(0);
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Number = NaN;
         if(!§2!K§ && this.§^U§ == this.§ !u§)
         {
            this.§@h§();
         }
         if(param1 < 12 && param1 > 5 && this.§2!h§)
         {
            §'!S§(§6!D§.§@""§);
            _loc7_ = §0M§;
         }
         else
         {
            _loc7_ = super.applyDamage(param1,param2,param3,param4,param5,param6);
         }
         this.§2!h§ = true;
         return _loc7_;
      }
      
      override public function explode() : Boolean
      {
         if(!§2!K§)
         {
            this.§=!b§(null);
            §,![§ = true;
            this.§@h§(0);
            return true;
         }
         return false;
      }
      
      private function §@h§(param1:Number = -1) : void
      {
         if(param1 == 0)
         {
            this.§^U§ = 0;
            this.update(0);
         }
         else if(param1 > 0)
         {
            this.§^U§ = param1;
         }
         else
         {
            this.§^U§ = this.§?!"§;
         }
      }
      
      override public function update(param1:Number) : void
      {
         var _loc2_:Vector.<§!u§> = null;
         var _loc3_:Number = NaN;
         var _loc4_:b2Body = null;
         var _loc5_:b2Vec2 = null;
         this.§ !^§ += param1;
         §,![§ = true;
         if(this.§^U§ != this.§ !u§)
         {
            this.§^U§ -= param1;
            if(this.§^U§ < 0)
            {
               if(this.§4^§ >= 1)
               {
                  this.§^U§ = this.§ !u§;
                  this.§4^§ = 1;
                  this.§]!O§(this.§[!I§);
                  this.§!!t§ = this.§+W§;
                  §3!K§.§ !8§(false);
               }
               else
               {
                  this.§4^§ += 0.2;
               }
               this.§]!O§(this.§[!I§ * this.§4^§,§,!;§.material.mValues[§ L§.§@q§],§,!;§.material.mValues[§ L§.§82§],§,!;§.material.mValues[§ L§.§'!x§]);
               §+!j§.setScale(this.§4^§ * scale);
            }
            else if(this.§^U§ <= param1)
            {
               _loc2_ = new Vector.<§!u§>(1,true);
               _loc2_[0] = this;
               §^!W§.addExplosions(§3!b§.§]!-§,§63§().GetPosition().x,§63§().GetPosition().y,_loc2_);
               this.§=!b§(null);
               §-!>§ = "BIRD_ORANGE_BIG";
               §,!;§ = §7!Z§.§`!H§(§-!>§);
               sprite.scaleX = this.§4^§;
               sprite.scaleY = this.§4^§;
            }
         }
         else if(this.§!!t§ != this.§ !u§)
         {
            if(this.§2!h§)
            {
               this.§!!t§ -= param1;
               if(this.§!!t§ < 0)
               {
                  this.§5!!§ = true;
                  this.§!!t§ = this.§ !u§;
                  this.§2C§ = this.§!!W§;
                  §'!S§(§6!D§.§84§);
               }
            }
         }
         else if(this.§5!!§)
         {
            if(this.§2C§ > 0)
            {
               this.§2C§ -= param1;
               this.§+!v§ -= param1;
               if(this.§+!v§ <= 0)
               {
                  this.§+!v§ = this.§!!W§ / 5;
                  this.§#!Y§ = (Math.random() * 100 - 50) * 10;
                  this.§#!h§ = (Math.random() * 100 - 50) * 10;
               }
               _loc3_ = this.§2C§ / this.§!!W§;
               if(_loc3_ > 1)
               {
                  _loc3_ = 1;
               }
               ++this.§@!'§;
               if(this.§@!'§ % 3 == 0)
               {
                  §+!j§.setScale(_loc3_ * scale);
                  this.§]!O§(this.§[!I§ * _loc3_,0.00001,0,0);
                  _loc5_ = (_loc4_ = §63§()).GetLinearVelocity();
                  _loc4_.ApplyImpulse(new b2Vec2(this.§#!Y§,this.§#!h§),§63§().GetPosition());
                  _loc4_.§?!=§(Math.atan2(-_loc5_.x,_loc5_.y) - Math.PI / 2);
                  this.§<!!§(0.02,true);
               }
            }
            else
            {
               this.§&!X§ = true;
               this.§3B§.§&!l§(this);
            }
         }
      }
      
      private function §]!O§(param1:Number, param2:Number = -1, param3:Number = -1, param4:Number = -1) : void
      {
         var _loc6_:b2Fixture;
         var _loc5_:b2Body;
         var _loc7_:b2CircleShape = (_loc6_ = (_loc5_ = §63§()).GetFixtureList()).GetShape() as b2CircleShape;
         _loc5_.SetAwake(true);
         _loc7_.§8&§(param1);
         if(param2 >= 0)
         {
            _loc6_.§!!F§(param2);
            _loc5_.§'!d§();
         }
         if(param3 >= 0)
         {
            _loc6_.§+k§(param3);
         }
         if(param4 >= 0)
         {
            _loc6_.§5!,§(param4);
         }
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
      
      override public function addTrail() : void
      {
         if(!§2!K§)
         {
            super.addTrail();
         }
      }
      
      private function §<!!§(param1:Number = 1, param2:Boolean = false) : void
      {
         var _loc8_:Number = NaN;
         var _loc9_:int = 0;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc3_:Number = (§63§().GetFixtureList().GetShape() as b2CircleShape).§4!Y§();
         var _loc4_:Number = §6!E§() / 40;
         var _loc5_:int = 1 + _loc4_ * §^!e§(true) * 0.9;
         var _loc6_:Number = Math.PI / 2;
         var _loc7_:Number = _loc3_ / this.§[!I§;
         if((_loc5_ *= _loc7_ * 3 * param1) > 30)
         {
            _loc5_ = 30;
         }
         if(param2)
         {
            _loc5_ = 8;
            _loc4_ = 8;
         }
         _loc9_ = 0;
         while(_loc9_ < _loc5_ / 3)
         {
            _loc6_ += Math.random() * (720 / _loc5_);
            _loc8_ = (Math.random() * this.§[!I§ - this.§[!I§ / 2) * 2 * _loc7_;
            §,!s§.§=!I§.particles.§-M§(§>p§.§'f§,§=!%§.§2k§,§>p§.§%§,§63§().GetPosition().x + Math.cos(_loc6_) * _loc8_,§63§().GetPosition().y + Math.sin(_loc6_) * _loc8_,1000,"",0,0,0,5,_loc4_ * 5,Math.random() * 0.75 + 0.25);
            _loc9_++;
         }
         _loc9_ = 0;
         while(_loc9_ < _loc5_)
         {
            _loc10_ = (_loc6_ += §[!R§(Math.random() * (720 / _loc5_))) / (180 / Math.PI);
            _loc8_ = (Math.random() * this.§[!I§ - this.§[!I§ / 2) * 2 * _loc7_;
            _loc11_ = 0.5 * _loc4_ + _loc4_ * (Math.random() * 0.5);
            §,!s§.§=!I§.particles.§-M§(§>p§.§&@§,§=!%§.§2k§,§>p§.§%§,§63§().GetPosition().x + Math.cos(_loc6_) * _loc8_,§63§().GetPosition().y + Math.sin(_loc6_) * _loc8_,1250,"",§>p§.§1>§,_loc11_ * Math.cos(_loc10_) * _loc7_,-_loc11_ * Math.sin(_loc10_) * _loc7_,5,_loc11_ * 20,1);
            _loc9_++;
         }
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         if(§2!K§)
         {
            return 1;
         }
         return -1;
      }
      
      private function §=!b§(param1:§ 4§) : Boolean
      {
         if(§[A§)
         {
            return false;
         }
         §-!Q§.§7"$§("Globe_Bird_Special_Activation_" + Math.round(Math.random() * 2 + 1),"ChannelOrangeBird");
         §[A§ = true;
         return true;
      }
   }
}
