package §!r§
{
   import §!!k§.§1!^§;
   import §#g§.§11§;
   import §#g§.§?B§;
   import §#g§.§`"[§;
   import §=G§.§9v§;
   import §>"_§.b2World;
   import §^9§.§?"E§;
   import §^9§.§^#'§;
   import flash.geom.Point;
   import §use§.Sprite;
   
   public class §3f§ extends §4"O§
   {
      
      public static const §>"s§:String = "timer";
       
      
      protected var §!N§:Boolean = false;
      
      protected var §7!d§:§`"[§;
      
      protected var §&"8§:Number = 0;
      
      protected var §8A§:Boolean = false;
      
      protected var §?!>§:Point;
      
      protected var §="8§:int;
      
      private var §-t§:Boolean;
      
      private var §=O§:Boolean;
      
      public function §3f§(param1:Sprite, param2:§1!^§, param3:b2World, param4:§11§, param5:§9v§, param6:Number = 1.0, param7:Boolean = true)
      {
         this.§7!d§ = param4 as §`"[§;
         this.§-t§ = Math.random() > 0.5 ? true : false;
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      override protected function playCollisionSound() : void
      {
         var _loc1_:String = this.§7!d§.§-#,§(§?B§.§-@§);
         this.§7!d§.§]"J§(_loc1_);
      }
      
      override public function scream() : void
      {
         super.scream();
         var _loc1_:String = this.§7!d§.§-#,§(§?B§.§%!r§);
         this.§7!d§.§]"J§(_loc1_);
      }
      
      override protected function addTrail(param1:§'=§) : Boolean
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         if(!isLeavingTrail)
         {
            return false;
         }
         if(param1)
         {
            if(!this.§=O§)
            {
               _loc2_ = §3"s§().GetPosition().x;
               _loc3_ = §3"s§().GetPosition().y;
               param1.§>#1§(this.§7!d§.normalTrailSprite,§^#'§.§set §,§?"E§.§["4§,_loc2_,_loc3_,-1,"",§?"E§.§0!P§);
            }
            this.§=O§ = !this.§=O§;
         }
         return true;
      }
      
      override public function enteredSensor(param1:§03§) : void
      {
         super.enteredSensor(param1);
         if(param1 is §["Z§)
         {
            ++this.§="8§;
            if(this.§="8§ == 1)
            {
               this.§8A§ = true;
               this.§7!d§.§]"J§(§?B§.§'!]§);
            }
            this.§?!>§ = new Point(§3"s§().GetPosition().x,§3"s§().GetPosition().y);
         }
      }
      
      override public function leftSensor(param1:§03§) : void
      {
         super.leftSensor(param1);
         if(param1 is §["Z§)
         {
            --this.§="8§;
            if(this.§="8§ == 0 && !param1.§'b§)
            {
               this.§7!d§.§]"J§(§?B§.§<"y§);
            }
         }
      }
      
      protected function get hasTargetedSpecialPowerParticles() : Boolean
      {
         return false;
      }
      
      override public function activateSpecialPower(param1:§'=§, param2:Number, param3:Number) : Boolean
      {
         var _loc5_:Number = NaN;
         var _loc6_:String = null;
         var _loc4_:Boolean;
         if(_loc4_ = super.activateSpecialPower(param1,param2,param3))
         {
            _loc5_ = 0;
            if(this.hasTargetedSpecialPowerParticles)
            {
               _loc5_ = this.§'#7§(param2,param3);
            }
            this.spawnParticlesOnSpecial(param1,_loc5_);
            _loc6_ = this.§7!d§.§-#,§(§?B§.§@!x§);
            this.§7!d§.§]"J§(_loc6_);
         }
         return _loc4_;
      }
      
      protected function spawnParticlesOnSpecial(param1:§'=§, param2:Number = 0.0) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:int = 0;
         var _loc6_:String = null;
         if(this.§7!d§.§=#+§ > 0)
         {
            _loc3_ = §3"s§().GetPosition().x;
            _loc4_ = §3"s§().GetPosition().y;
            _loc5_ = 0;
            while(_loc5_ < this.§7!d§.§=#+§)
            {
               _loc6_ = this.§7!d§.§3"8§(_loc5_);
               param1.addObject(_loc6_,_loc3_,_loc4_,param2,§9"f§.§["_§,false,true,false);
               _loc5_++;
            }
         }
      }
      
      override protected function addDestructionParticles(param1:§'=§) : void
      {
         var _loc5_:String = null;
         if(!param1)
         {
            return;
         }
         var _loc2_:Number = §3"s§().GetPosition().x;
         var _loc3_:Number = §3"s§().GetPosition().y;
         var _loc4_:int = 0;
         while(_loc4_ < this.§7!d§.§<! §)
         {
            if(_loc5_ = this.§7!d§.§+!&§(_loc4_))
            {
               param1.addObject(_loc5_,_loc2_,_loc3_,0,§9"f§.§["_§,false,true,false,1,true);
            }
            _loc4_++;
         }
      }
      
      override public function applyDamage(param1:Number, param2:§'=§, param3:§0N§, param4:Boolean = true) : Number
      {
         var _loc5_:Number = super.applyDamage(param1,param2,param3,param4);
         if(param1 >= 5)
         {
            this.addDamageParticles(param2,param1);
         }
         return _loc5_;
      }
      
      override public function addDamageParticles(param1:§'=§, param2:int) : void
      {
         var _loc5_:int = 0;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc3_:Number = §3"s§().GetPosition().x;
         var _loc4_:Number = §3"s§().GetPosition().y;
         if(this.§7!d§.§&">§ > 0)
         {
            _loc5_ = 0;
            while(_loc5_ < this.§7!d§.§<! §)
            {
               if(_loc6_ = this.§7!d§.§1!`§(_loc5_))
               {
                  param1.addObject(_loc6_,_loc3_,_loc4_,0,§9"f§.§["_§,false,true,false,1,true);
               }
               _loc5_++;
            }
         }
         else
         {
            _loc5_ = 0;
            while(_loc5_ < this.§7!d§.§<! §)
            {
               if(_loc7_ = this.§7!d§.§+!&§(_loc5_))
               {
                  param1.addObject(_loc7_,_loc3_,_loc4_,0,§9"f§.§["_§,false,true,false);
               }
               _loc5_++;
            }
         }
      }
      
      override public function get removeOnNextUpdate() : Boolean
      {
         return this.§!N§;
      }
      
      override public function update(param1:Number, param2:§'=§) : void
      {
         if(this.§-t§ && param2)
         {
            param2.addObject(this.§7!d§.enterGravitationParticles,this.§3"s§().GetPosition().x,this.§3"s§().GetPosition().y,0,§9"f§.§["_§,false,true,false);
            this.§-t§ = false;
         }
         if(isReadyToBeRemoved(param1))
         {
            this.§!N§ = true;
         }
         super.update(param1,param2);
         this.§&"8§ += param1;
         if(§[X§)
         {
            if(this.§&"8§ > 1000 / 60)
            {
               this.§&"8§ = 0;
               this.§="<§(param2);
            }
         }
         if(this.§8A§)
         {
            this.§8A§ = false;
            if(param2)
            {
               param2.addObject(this.§7!d§.enterGravitationParticles,this.§?!>§.x,this.§?!>§.y,0,§9"f§.§["_§,false,true,false);
            }
         }
      }
      
      private function §="<§(param1:§'=§) : void
      {
         var _loc2_:String = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(param1 && this.§7!d§)
         {
            if(this.§="8§ > 0 && this.§7!d§.atmosphereTailParticles)
            {
               _loc2_ = this.§7!d§.atmosphereTailParticles;
            }
            else
            {
               _loc2_ = this.§7!d§.normalTailParticles;
            }
            if(_loc2_)
            {
               _loc3_ = §3"s§().GetPosition().x;
               _loc4_ = §3"s§().GetPosition().y;
               _loc5_ = §3"s§().GetAngle();
               param1.§]1§(_loc2_,_loc3_,_loc4_,_loc5_,§9"f§.§["_§,1,3);
            }
         }
      }
      
      protected function §'#7§(param1:Number, param2:Number) : Number
      {
         var _loc3_:Number = §3"s§().GetPosition().x;
         var _loc4_:Number = §3"s§().GetPosition().y;
         var _loc5_:Number;
         if((_loc5_ = Math.atan2(param2 - _loc4_,param1 - _loc3_)) < 0)
         {
            _loc5_ += Math.PI * 2;
         }
         return _loc5_;
      }
   }
}
