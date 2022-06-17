package §^0§
{
   import §#Z§.Sprite;
   import §%$0§.§2#Z§;
   import §%$0§.§`#I§;
   import §-!j§.§'$#§;
   import §-!j§.§4"-§;
   import §-!j§.§>!g§;
   import §3#h§.b2World;
   import §9#M§.§,`§;
   import §@"v§.§@$<§;
   import flash.geom.Point;
   
   public class §2!`§ extends §`j§
   {
      
      public static const §;#M§:String = "timer";
       
      
      protected var §<#l§:Boolean = false;
      
      protected var §>$5§:§'$#§;
      
      protected var §["h§:Number = 0;
      
      protected var §]!^§:Boolean = false;
      
      protected var § j§:Point;
      
      protected var §%#@§:int;
      
      private var §#!_§:Boolean;
      
      private var §'"P§:Boolean;
      
      public function §2!`§(param1:Sprite, param2:§,`§, param3:b2World, param4:§>!g§, param5:§@$<§, param6:Number = 1.0, param7:Boolean = true)
      {
         this.§>$5§ = param4 as §'$#§;
         this.§#!_§ = Math.random() > 0.5 ? true : false;
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      override protected function playCollisionSound() : void
      {
         var _loc1_:String = this.§>$5§.§&#w§(§4"-§.§<#^§);
         this.§>$5§.playSoundLua(_loc1_);
      }
      
      override public function scream() : void
      {
         super.scream();
         var _loc1_:String = this.§>$5§.§&#w§(§4"-§.§,?§);
         this.§>$5§.playSoundLua(_loc1_);
      }
      
      override protected function addTrail(param1:§>"T§) : Boolean
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         if(!isLeavingTrail)
         {
            return false;
         }
         if(param1)
         {
            if(!this.§'"P§)
            {
               _loc2_ = getBody().GetPosition().x;
               _loc3_ = getBody().GetPosition().y;
               param1.addParticle(this.§>$5§.normalTrailSprite,§2#Z§.§,!]§,§`#I§.§%"D§,_loc2_,_loc3_,-1,"",§`#I§.§!!6§);
            }
            this.§'"P§ = !this.§'"P§;
         }
         return true;
      }
      
      override public function enteredSensor(param1:§5;§) : void
      {
         super.enteredSensor(param1);
         if(param1 is §&F§)
         {
            ++this.§%#@§;
            if(this.§%#@§ == 1)
            {
               this.§]!^§ = true;
               this.§>$5§.playSoundLua(§4"-§.§9#$§);
            }
            this.§ j§ = new Point(getBody().GetPosition().x,getBody().GetPosition().y);
         }
      }
      
      override public function leftSensor(param1:§5;§) : void
      {
         super.leftSensor(param1);
         if(param1 is §&F§)
         {
            --this.§%#@§;
            if(this.§%#@§ == 0 && !param1.§%1§)
            {
               this.§>$5§.playSoundLua(§4"-§.§"!§);
            }
         }
      }
      
      protected function get §8#X§() : Boolean
      {
         return false;
      }
      
      override public function activateSpecialPower(param1:§>"T§, param2:Number, param3:Number) : Boolean
      {
         var _loc5_:Number = NaN;
         var _loc6_:String = null;
         var _loc4_:Boolean;
         if(_loc4_ = super.activateSpecialPower(param1,param2,param3))
         {
            _loc5_ = 0;
            if(this.§8#X§)
            {
               _loc5_ = this.§3y§(param2,param3);
            }
            this.§%!$§(param1,_loc5_);
            _loc6_ = this.§>$5§.§&#w§(§4"-§.SPECIAL);
            this.§>$5§.playSoundLua(_loc6_);
         }
         return _loc4_;
      }
      
      protected function §%!$§(param1:§>"T§, param2:Number = 0.0) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:int = 0;
         var _loc6_:String = null;
         if(this.§>$5§.§ $8§ > 0)
         {
            _loc3_ = getBody().GetPosition().x;
            _loc4_ = getBody().GetPosition().y;
            _loc5_ = 0;
            while(_loc5_ < this.§>$5§.§ $8§)
            {
               _loc6_ = this.§>$5§.§=N§(_loc5_);
               param1.addObject(_loc6_,_loc3_,_loc4_,param2,§%"^§.ID_NEXT_FREE,false,true,false);
               _loc5_++;
            }
         }
      }
      
      override protected function addDestructionParticles(param1:§>"T§) : void
      {
         var _loc5_:String = null;
         if(!param1)
         {
            return;
         }
         var _loc2_:Number = getBody().GetPosition().x;
         var _loc3_:Number = getBody().GetPosition().y;
         var _loc4_:int = 0;
         while(_loc4_ < this.§>$5§.§="J§)
         {
            if(_loc5_ = this.§>$5§.§+"x§(_loc4_))
            {
               param1.addObject(_loc5_,_loc2_,_loc3_,0,§%"^§.ID_NEXT_FREE,false,true,false,1,true);
            }
            _loc4_++;
         }
      }
      
      override public function applyDamage(param1:Number, param2:§>"T§, param3:§=Q§, param4:Boolean = true, param5:Boolean = false) : Number
      {
         var _loc6_:Number = super.applyDamage(param1,param2,param3,param4,param5);
         if(param1 >= 5)
         {
            this.addDamageParticles(param2,param1);
         }
         return _loc6_;
      }
      
      override public function addDamageParticles(param1:§>"T§, param2:int) : void
      {
         var _loc5_:int = 0;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc3_:Number = getBody().GetPosition().x;
         var _loc4_:Number = getBody().GetPosition().y;
         if(this.§>$5§.§]"%§ > 0)
         {
            _loc5_ = 0;
            while(_loc5_ < this.§>$5§.§="J§)
            {
               if(_loc6_ = this.§>$5§.§,!<§(_loc5_))
               {
                  param1.addObject(_loc6_,_loc3_,_loc4_,0,§%"^§.ID_NEXT_FREE,false,true,false,1,true);
               }
               _loc5_++;
            }
         }
         else
         {
            _loc5_ = 0;
            while(_loc5_ < this.§>$5§.§="J§)
            {
               if(_loc7_ = this.§>$5§.§+"x§(_loc5_))
               {
                  param1.addObject(_loc7_,_loc3_,_loc4_,0,§%"^§.ID_NEXT_FREE,false,true,false);
               }
               _loc5_++;
            }
         }
      }
      
      override public function get removeOnNextUpdate() : Boolean
      {
         return this.§<#l§;
      }
      
      override public function update(param1:Number, param2:§>"T§) : void
      {
         if(this.§#!_§ && param2)
         {
            param2.addObject(this.§>$5§.enterGravitationParticles,this.getBody().GetPosition().x,this.getBody().GetPosition().y,0,§%"^§.ID_NEXT_FREE,false,true,false);
            this.§#!_§ = false;
         }
         if(isReadyToBeRemoved(param1))
         {
            this.§<#l§ = true;
         }
         super.update(param1,param2);
         this.§["h§ += param1;
         if(isFlying)
         {
            if(this.§["h§ > 1000 / 60)
            {
               this.§["h§ = 0;
               this.§&#l§(param2);
            }
         }
         if(this.§]!^§)
         {
            this.§]!^§ = false;
            if(param2)
            {
               param2.addObject(this.§>$5§.enterGravitationParticles,this.§ j§.x,this.§ j§.y,0,§%"^§.ID_NEXT_FREE,false,true,false);
            }
         }
      }
      
      private function §&#l§(param1:§>"T§) : void
      {
         var _loc2_:String = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(param1 && this.§>$5§)
         {
            if(this.§%#@§ > 0 && this.§>$5§.atmosphereTailParticles)
            {
               _loc2_ = this.§>$5§.atmosphereTailParticles;
            }
            else
            {
               _loc2_ = this.§>$5§.normalTailParticles;
            }
            if(_loc2_)
            {
               _loc3_ = getBody().GetPosition().x;
               _loc4_ = getBody().GetPosition().y;
               _loc5_ = getBody().GetAngle();
               param1.§;$>§(_loc2_,_loc3_,_loc4_,_loc5_,§%"^§.ID_NEXT_FREE,1,3);
            }
         }
      }
      
      protected function §3y§(param1:Number, param2:Number) : Number
      {
         var _loc3_:Number = getBody().GetPosition().x;
         var _loc4_:Number = getBody().GetPosition().y;
         var _loc5_:Number;
         if((_loc5_ = Math.atan2(param2 - _loc4_,param1 - _loc3_)) < 0)
         {
            _loc5_ += Math.PI * 2;
         }
         return _loc5_;
      }
   }
}
