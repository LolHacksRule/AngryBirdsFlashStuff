package §7P§
{
   import §!!U§.Sprite;
   import §+#$§.b2Body;
   import §+#$§.b2Fixture;
   import §+#$§.b2World;
   import §2"Y§.§"t§;
   import §2"Y§.§'§;
   import §4!$§.b2CircleShape;
   import §7!F§.§>"G§;
   import §<"B§.§94§;
   import §="2§.§?!r§;
   import §[R§.b2Vec2;
   import §^#>§.§#_§;
   import §`!r§.§ U§;
   import §`!r§.§,!w§;
   
   public class §6#+§ extends §?"N§
   {
      
      public static const §]"a§:int = 241 * §#_§.§8]§ / 2;
      
      private static const §@d§:int = 200;
       
      
      private const §&#8§:Number = -5;
      
      private const §?M§:int = 1500;
      
      private const §5#X§:int = 3500;
      
      private const §^#6§:int = 1500;
      
      private var §1,§:Boolean = false;
      
      private var §>!N§:Boolean = false;
      
      private var § i§:Boolean = false;
      
      private var §4"y§:Boolean = false;
      
      private var §'#>§:Number = -5;
      
      private var §,#6§:Number = -5;
      
      private var §"#M§:Number = -5;
      
      private var §'j§:Number = 0;
      
      private var §<!?§:int = 0;
      
      private var §@m§:Number = 0;
      
      private var §>!E§:Number = 0;
      
      private var §^!@§:Number = 0;
      
      private var §4t§:Number = 1000;
      
      private var §2#,§:Boolean = false;
      
      public function §6#+§(param1:Sprite, param2:§>"G§, param3:b2World, param4:§"t§, param5:§94§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
         this.§^!@§ = 0;
      }
      
      private function get §0#>§() : Number
      {
         return §]"a§ * scale;
      }
      
      override public function addDamageParticles(param1:§;$§, param2:int) : void
      {
         if(param2 < 2 || this.§4t§ < §@d§)
         {
            return;
         }
         if(this.§,#6§ != this.§&#8§ || param2 > 20)
         {
            this.§<#@§(param1,1,param2 > 20);
         }
         this.§4t§ = 0;
      }
      
      override public function activateSpecialPower(param1:§;$§, param2:Number, param3:Number) : Boolean
      {
         if(!this.§>!h§(param1))
         {
            return false;
         }
         var _loc4_:Number = §3!t§().GetPosition().x;
         var _loc5_:Number = §3!t§().GetPosition().y;
         param1.§;!0§(§ U§.§[#"§,§,!w§.§9F§,§ U§.§+!Q§,_loc4_,_loc5_,-1,"",§ U§.§9"W§);
         this.§8"§(param1,0);
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:§;$§, param3:§&#=§, param4:Boolean = true) : Number
      {
         var _loc5_:Number = NaN;
         if(!specialPowerUsed && this.§'#>§ == this.§&#8§)
         {
            this.§8"§(param2);
         }
         if(param1 < 12 && param1 > 5 && this.§1,§)
         {
            §[v§(§'#2§.§@N§);
            _loc5_ = health;
         }
         else
         {
            _loc5_ = super.applyDamage(param1,param2,param3,param4);
         }
         this.§1,§ = true;
         return _loc5_;
      }
      
      protected function §0f§(param1:§;$§) : Boolean
      {
         if(!specialPowerUsed)
         {
            this.§>!h§(null);
            this.§8"§(param1,0);
            return true;
         }
         return false;
      }
      
      private function §8"§(param1:§;$§, param2:Number = -1) : void
      {
         this.§>!N§ = true;
         if(param2 == 0)
         {
            this.§'#>§ = 0;
            this.update(0,param1);
         }
         else if(param2 > 0)
         {
            this.§'#>§ = param2;
         }
         else
         {
            this.§'#>§ = this.§?M§;
         }
      }
      
      override public function update(param1:Number, param2:§;$§) : void
      {
         if(!param2)
         {
            return;
         }
         super.update(param1,param2);
         this.§4t§ += param1;
         if(this.§>!N§)
         {
            this.§0d§(param1,param2);
         }
         else if(this.§,#6§ != this.§&#8§)
         {
            if(this.§1,§)
            {
               this.§,#6§ -= param1;
               if(this.§,#6§ < 0)
               {
                  this.§ i§ = true;
                  this.§,#6§ = this.§&#8§;
                  this.§"#M§ = this.§^#6§;
                  §[v§(§'#2§.§&x§);
               }
            }
         }
         else if(this.§ i§)
         {
            this.§,!f§(param1,param2);
         }
      }
      
      protected function §0d§(param1:Number, param2:§;$§) : void
      {
         this.§'#>§ -= param1;
         if(this.§'#>§ <= 0)
         {
            if(!this.§4"y§)
            {
               param2.§1!R§(§>"_§.§4D§,§3!t§().GetPosition().x,§3!t§().GetPosition().y,id);
               this.§>!h§(null);
               §?#V§(param2.§0"I§("BIRD_ORANGE_BIG"));
               sprite.scaleX = this.§^!@§;
               sprite.scaleY = this.§^!@§;
               this.§4"y§ = true;
               return;
            }
            if(this.§^!@§ >= 1)
            {
               this.§>!N§ = false;
               this.§^!@§ = 1;
               this.§]!F§(this.§0#>§);
               this.§,#6§ = this.§5#X§;
            }
            else
            {
               this.§^!@§ += 0.2;
            }
            this.§]!F§(this.§0#>§ * this.§^!@§,§;B§.getItemDensity(),§;B§.getItemFriction(),§;B§.getItemRestitution());
            §2N§.setScale(this.§^!@§ * scale);
         }
      }
      
      protected function §,!f§(param1:Number, param2:§;$§) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:b2Body = null;
         var _loc5_:b2Vec2 = null;
         if(this.§"#M§ > 0)
         {
            this.§"#M§ -= param1;
            this.§'j§ -= param1;
            if(this.§'j§ <= 0)
            {
               this.§'j§ = this.§^#6§ / 5;
               this.§@m§ = (Math.random() * 100 - 50) * 10;
               this.§>!E§ = (Math.random() * 100 - 50) * 10;
            }
            _loc3_ = this.§"#M§ / this.§^#6§;
            if(_loc3_ > 1)
            {
               _loc3_ = 1;
            }
            ++this.§<!?§;
            if(this.§<!?§ % 3 == 0)
            {
               §2N§.setScale(_loc3_ * _loc3_);
               this.§]!F§(this.§0#>§ * _loc3_,0.00001,0,0);
               _loc5_ = (_loc4_ = §3!t§()).GetLinearVelocity();
               _loc4_.ApplyImpulse(new b2Vec2(this.§@m§,this.§>!E§),§3!t§().GetPosition());
               _loc4_.SetAngle(Math.atan2(-_loc5_.x,_loc5_.y) - Math.PI / 2);
               this.§<#@§(param2,0.02,true);
            }
         }
         else
         {
            this.§2#,§ = true;
            param2.removeObject(this);
         }
      }
      
      private function §]!F§(param1:Number, param2:Number = -1, param3:Number = -1, param4:Number = -1) : void
      {
         var _loc6_:b2Fixture;
         var _loc5_:b2Body;
         var _loc7_:b2CircleShape = (_loc6_ = (_loc5_ = §3!t§()).GetFixtureList()).GetShape() as b2CircleShape;
         _loc5_.SetAwake(true);
         _loc7_.§>#X§(param1);
         if(param2 >= 0)
         {
            _loc6_.SetDensity(param2);
            _loc5_.ResetMassData();
         }
         if(param3 >= 0)
         {
            _loc6_.§"Y§(param3);
         }
         if(param4 >= 0)
         {
            _loc6_.§5q§(param4);
         }
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
      
      override protected function addTrail(param1:§;$§) : Boolean
      {
         if(!specialPowerUsed)
         {
            return super.addTrail(param1);
         }
         return false;
      }
      
      private function §<#@§(param1:§;$§, param2:Number = 1, param3:Boolean = false) : void
      {
         var _loc9_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc4_:Number = (§3!t§().GetFixtureList().GetShape() as b2CircleShape).§[p§();
         var _loc5_:Number = §3!t§().GetLinearVelocity().Length() / 40;
         var _loc6_:int = 1 + _loc5_ * §0"X§(true) * 0.9;
         var _loc7_:Number = Math.PI / 2;
         var _loc8_:Number = _loc4_ / this.§0#>§;
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
            _loc9_ = (Math.random() * this.§0#>§ - this.§0#>§ / 2) * 2 * _loc8_;
            param1.§;!0§(§ U§.§?#;§,§,!w§.§ !B§,§ U§.§'# §,§3!t§().GetPosition().x + Math.cos(_loc7_) * _loc9_,§3!t§().GetPosition().y + Math.sin(_loc7_) * _loc9_,1000,"",0,0,0,5,_loc5_ * 5,Math.random() * 0.75 + 0.25);
            _loc10_++;
         }
         _loc10_ = 0;
         while(_loc10_ < _loc6_)
         {
            _loc7_ += Math.random() * (Math.PI * 4 / _loc6_);
            _loc9_ = (Math.random() * this.§0#>§ - this.§0#>§ / 2) * 2 * _loc8_;
            _loc11_ = 0.5 * _loc5_ + _loc5_ * (Math.random() * 0.5);
            param1.§;!0§(§ U§.§7!i§,§,!w§.§ !B§,§ U§.§'# §,§3!t§().GetPosition().x + Math.cos(_loc7_) * _loc9_,§3!t§().GetPosition().y + Math.sin(_loc7_) * _loc9_,1250,"",§ U§.§-"W§,_loc11_ * Math.cos(_loc7_) * _loc8_,-_loc11_ * Math.sin(_loc7_) * _loc8_,5,_loc11_ * 20,1);
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
      
      private function §>!h§(param1:§;$§) : Boolean
      {
         if(§[!o§)
         {
            return false;
         }
         §?!r§.§]!H§("Globe_Bird_Special_Activation_" + Math.round(Math.random() * 2 + 1),"ChannelOrangeBird");
         §[!o§ = true;
         return true;
      }
   }
}
