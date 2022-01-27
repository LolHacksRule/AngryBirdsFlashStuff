package §6"R§
{
   import §1"s§.Sprite;
   import §1x§.b2World;
   import §2!`§.§#"m§;
   import §2!`§.§;6§;
   import §3"$§.§[a§;
   import §4"F§.§^d§;
   import §>P§.§&"§;
   import §>P§.§28§;
   import §>P§.§?[§;
   import flash.geom.Point;
   
   public class §8E§ extends §4_§
   {
      
      public static const §5!7§:String = "timer";
       
      
      protected var §2t§:Boolean = false;
      
      protected var § !4§:§28§;
      
      protected var §8B§:Number = 0;
      
      protected var §[!v§:Boolean = false;
      
      protected var §1$§:Point;
      
      protected var §#Y§:int;
      
      private var §=M§:Boolean;
      
      private var §6!y§:Boolean;
      
      public function §8E§(param1:Sprite, param2:§[a§, param3:b2World, param4:§&"§, param5:§^d§, param6:Number = 1.0, param7:Boolean = true)
      {
         this.§ !4§ = param4 as §28§;
         this.§=M§ = Math.random() > 0.5 ? true : false;
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      override protected function playCollisionSound() : void
      {
         var _loc1_:String = this.§ !4§.§+!B§(§?[§.§[h§);
         this.§ !4§.§0#+§(_loc1_);
      }
      
      override public function scream() : void
      {
         super.scream();
         var _loc1_:String = this.§ !4§.§+!B§(§?[§.§?!d§);
         this.§ !4§.§0#+§(_loc1_);
      }
      
      override protected function addTrail(param1:§""M§) : Boolean
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         if(!isLeavingTrail)
         {
            return false;
         }
         if(param1)
         {
            if(!this.§6!y§)
            {
               _loc2_ = §?"Z§().GetPosition().x;
               _loc3_ = §?"Z§().GetPosition().y;
               param1.§[#$§(this.§ !4§.normalTrailSprite,§#"m§.§["A§,§;6§.§3!1§,_loc2_,_loc3_,-1,"",§;6§.§+![§);
            }
            this.§6!y§ = !this.§6!y§;
         }
         return true;
      }
      
      override public function enteredSensor(param1:§-t§) : void
      {
         super.enteredSensor(param1);
         if(param1 is §?!T§)
         {
            ++this.§#Y§;
            if(this.§#Y§ == 1)
            {
               this.§[!v§ = true;
               this.§ !4§.§0#+§(§?[§.§^r§);
            }
            this.§1$§ = new Point(§?"Z§().GetPosition().x,§?"Z§().GetPosition().y);
         }
      }
      
      override public function leftSensor(param1:§-t§) : void
      {
         super.leftSensor(param1);
         if(param1 is §?!T§)
         {
            --this.§#Y§;
            if(this.§#Y§ == 0 && !param1.§^#!§)
            {
               this.§ !4§.§0#+§(§?[§.§%##§);
            }
         }
      }
      
      protected function get hasTargetedSpecialPowerParticles() : Boolean
      {
         return false;
      }
      
      override public function activateSpecialPower(param1:§""M§, param2:Number, param3:Number) : Boolean
      {
         var _loc5_:Number = NaN;
         var _loc6_:String = null;
         var _loc4_:Boolean;
         if(_loc4_ = super.activateSpecialPower(param1,param2,param3))
         {
            _loc5_ = 0;
            if(this.hasTargetedSpecialPowerParticles)
            {
               _loc5_ = this.§3!+§(param2,param3);
            }
            this.spawnParticlesOnSpecial(param1,_loc5_);
            _loc6_ = this.§ !4§.§+!B§(§?[§.§]"<§);
            this.§ !4§.§0#+§(_loc6_);
         }
         return _loc4_;
      }
      
      protected function spawnParticlesOnSpecial(param1:§""M§, param2:Number = 0.0) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:int = 0;
         var _loc6_:String = null;
         if(this.§ !4§.§4!W§ > 0)
         {
            _loc3_ = §?"Z§().GetPosition().x;
            _loc4_ = §?"Z§().GetPosition().y;
            _loc5_ = 0;
            while(_loc5_ < this.§ !4§.§4!W§)
            {
               _loc6_ = this.§ !4§.§6,§(_loc5_);
               param1.addObject(_loc6_,_loc3_,_loc4_,param2,§super§.§4"D§,false,true,false);
               _loc5_++;
            }
         }
      }
      
      override protected function addDestructionParticles(param1:§""M§) : void
      {
         var _loc5_:String = null;
         if(!param1)
         {
            return;
         }
         var _loc2_:Number = §?"Z§().GetPosition().x;
         var _loc3_:Number = §?"Z§().GetPosition().y;
         var _loc4_:int = 0;
         while(_loc4_ < this.§ !4§.§,=§)
         {
            if(_loc5_ = this.§ !4§.§ " §(_loc4_))
            {
               param1.addObject(_loc5_,_loc2_,_loc3_,0,§super§.§4"D§,false,true,false,1,true);
            }
            _loc4_++;
         }
      }
      
      override public function applyDamage(param1:Number, param2:§""M§, param3:§4!w§, param4:Boolean = true) : Number
      {
         var _loc5_:Number = super.applyDamage(param1,param2,param3,param4);
         if(param1 >= 5)
         {
            this.addDamageParticles(param2,param1);
         }
         return _loc5_;
      }
      
      override public function addDamageParticles(param1:§""M§, param2:int) : void
      {
         var _loc5_:int = 0;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc3_:Number = §?"Z§().GetPosition().x;
         var _loc4_:Number = §?"Z§().GetPosition().y;
         if(this.§ !4§.§+#$§ > 0)
         {
            _loc5_ = 0;
            while(_loc5_ < this.§ !4§.§,=§)
            {
               if(_loc6_ = this.§ !4§.§9"V§(_loc5_))
               {
                  param1.addObject(_loc6_,_loc3_,_loc4_,0,§super§.§4"D§,false,true,false,1,true);
               }
               _loc5_++;
            }
         }
         else
         {
            _loc5_ = 0;
            while(_loc5_ < this.§ !4§.§,=§)
            {
               if(_loc7_ = this.§ !4§.§ " §(_loc5_))
               {
                  param1.addObject(_loc7_,_loc3_,_loc4_,0,§super§.§4"D§,false,true,false);
               }
               _loc5_++;
            }
         }
      }
      
      override public function get removeOnNextUpdate() : Boolean
      {
         return this.§2t§;
      }
      
      override public function update(param1:Number, param2:§""M§) : void
      {
         if(this.§=M§ && param2)
         {
            param2.addObject(this.§ !4§.enterGravitationParticles,this.§?"Z§().GetPosition().x,this.§?"Z§().GetPosition().y,0,§super§.§4"D§,false,true,false);
            this.§=M§ = false;
         }
         if(isReadyToBeRemoved(param1))
         {
            this.§2t§ = true;
         }
         super.update(param1,param2);
         this.§8B§ += param1;
         if(§@"e§)
         {
            if(this.§8B§ > 1000 / 60)
            {
               this.§8B§ = 0;
               this.§?U§(param2);
            }
         }
         if(this.§[!v§)
         {
            this.§[!v§ = false;
            if(param2)
            {
               param2.addObject(this.§ !4§.enterGravitationParticles,this.§1$§.x,this.§1$§.y,0,§super§.§4"D§,false,true,false);
            }
         }
      }
      
      private function §?U§(param1:§""M§) : void
      {
         var _loc2_:String = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(param1 && this.§ !4§)
         {
            if(this.§#Y§ > 0 && this.§ !4§.atmosphereTailParticles)
            {
               _loc2_ = this.§ !4§.atmosphereTailParticles;
            }
            else
            {
               _loc2_ = this.§ !4§.normalTailParticles;
            }
            if(_loc2_)
            {
               _loc3_ = §?"Z§().GetPosition().x;
               _loc4_ = §?"Z§().GetPosition().y;
               _loc5_ = §?"Z§().GetAngle();
               param1.§ "p§(_loc2_,_loc3_,_loc4_,_loc5_,§super§.§4"D§,1,3);
            }
         }
      }
      
      protected function §3!+§(param1:Number, param2:Number) : Number
      {
         var _loc3_:Number = §?"Z§().GetPosition().x;
         var _loc4_:Number = §?"Z§().GetPosition().y;
         var _loc5_:Number;
         if((_loc5_ = Math.atan2(param2 - _loc4_,param1 - _loc3_)) < 0)
         {
            _loc5_ += Math.PI * 2;
         }
         return _loc5_;
      }
   }
}
