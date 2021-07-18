package §[#a§
{
   import §,#L§.§!#%§;
   import §9$§.Sprite;
   import §=!7§.§5"6§;
   import §=!7§.§=$4§;
   import §=#n§.b2World;
   import §@"§.§`"W§;
   import §`#C§.§8!h§;
   import §`#C§.§@"-§;
   import §`#C§.§`$9§;
   import flash.geom.Point;
   
   public class §8$9§ extends §"!R§
   {
      
      public static const §@#4§:String = "timer";
       
      
      protected var §5"m§:Boolean = false;
      
      protected var §?";§:§@"-§;
      
      protected var §]#^§:Number = 0;
      
      protected var §<i§:Boolean = false;
      
      protected var §,# §:Point;
      
      protected var §3",§:int;
      
      private var §1!O§:Boolean;
      
      private var §3$7§:Boolean;
      
      public function §8$9§(param1:Sprite, param2:§`"W§, param3:b2World, param4:§`$9§, param5:§!#%§, param6:Number = 1.0, param7:Boolean = true)
      {
         this.§?";§ = param4 as §@"-§;
         this.§1!O§ = Math.random() > 0.5 ? true : false;
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      override protected function playCollisionSound() : void
      {
         var _loc1_:String = this.§?";§.§3y§(§8!h§.§ $$§);
         this.§?";§.§6!s§(_loc1_);
      }
      
      override public function scream() : void
      {
         super.scream();
         var _loc1_:String = this.§?";§.§3y§(§8!h§.§%#`§);
         this.§?";§.§6!s§(_loc1_);
      }
      
      override protected function addTrail(param1:§7!O§) : Boolean
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         if(!isLeavingTrail)
         {
            return false;
         }
         if(param1)
         {
            if(!this.§3$7§)
            {
               _loc2_ = getBody().GetPosition().x;
               _loc3_ = getBody().GetPosition().y;
               param1.addParticle(this.§?";§.normalTrailSprite,§5"6§.§5"B§,§=$4§.§9"J§,_loc2_,_loc3_,-1,"",§=$4§.§8$8§);
            }
            this.§3$7§ = !this.§3$7§;
         }
         return true;
      }
      
      override public function enteredSensor(param1:§%#T§) : void
      {
         super.enteredSensor(param1);
         if(param1 is §!$"§)
         {
            ++this.§3",§;
            if(this.§3",§ == 1)
            {
               this.§<i§ = true;
               this.§?";§.§6!s§(§8!h§.§;§);
            }
            this.§,# § = new Point(getBody().GetPosition().x,getBody().GetPosition().y);
         }
      }
      
      override public function leftSensor(param1:§%#T§) : void
      {
         super.leftSensor(param1);
         if(param1 is §!$"§)
         {
            --this.§3",§;
            if(this.§3",§ == 0 && !param1.§0!%§)
            {
               this.§?";§.§6!s§(§8!h§.§9"G§);
            }
         }
      }
      
      protected function get §,!p§() : Boolean
      {
         return false;
      }
      
      override public function activateSpecialPower(param1:§7!O§, param2:Number, param3:Number) : Boolean
      {
         var _loc5_:Number = NaN;
         var _loc6_:String = null;
         var _loc4_:Boolean;
         if(_loc4_ = super.activateSpecialPower(param1,param2,param3))
         {
            _loc5_ = 0;
            if(this.§,!p§)
            {
               _loc5_ = this.§<#y§(param2,param3);
            }
            this.§!$8§(param1,_loc5_);
            _loc6_ = this.§?";§.§3y§(§8!h§.SPECIAL);
            this.§?";§.§6!s§(_loc6_);
         }
         return _loc4_;
      }
      
      protected function §!$8§(param1:§7!O§, param2:Number = 0.0) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:int = 0;
         var _loc6_:String = null;
         if(this.§?";§.§8!&§ > 0)
         {
            _loc3_ = getBody().GetPosition().x;
            _loc4_ = getBody().GetPosition().y;
            _loc5_ = 0;
            while(_loc5_ < this.§?";§.§8!&§)
            {
               _loc6_ = this.§?";§.§7F§(_loc5_);
               param1.addObject(_loc6_,_loc3_,_loc4_,param2,§6"[§.ID_NEXT_FREE,false,true,false);
               _loc5_++;
            }
         }
      }
      
      override protected function addDestructionParticles(param1:§7!O§) : void
      {
         var _loc5_:String = null;
         if(!param1)
         {
            return;
         }
         var _loc2_:Number = getBody().GetPosition().x;
         var _loc3_:Number = getBody().GetPosition().y;
         var _loc4_:int = 0;
         while(_loc4_ < this.§?";§.§8v§)
         {
            if(_loc5_ = this.§?";§.§ !E§(_loc4_))
            {
               param1.addObject(_loc5_,_loc2_,_loc3_,0,§6"[§.ID_NEXT_FREE,false,true,false,1,true);
            }
            _loc4_++;
         }
      }
      
      override public function applyDamage(param1:Number, param2:§7!O§, param3:§="@§, param4:Boolean = true) : Number
      {
         var _loc5_:Number = super.applyDamage(param1,param2,param3,param4);
         if(param1 >= 5)
         {
            this.addDamageParticles(param2,param1);
         }
         return _loc5_;
      }
      
      override public function addDamageParticles(param1:§7!O§, param2:int) : void
      {
         var _loc5_:int = 0;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc3_:Number = getBody().GetPosition().x;
         var _loc4_:Number = getBody().GetPosition().y;
         if(this.§?";§.§ r§ > 0)
         {
            _loc5_ = 0;
            while(_loc5_ < this.§?";§.§8v§)
            {
               if(_loc6_ = this.§?";§.§8"T§(_loc5_))
               {
                  param1.addObject(_loc6_,_loc3_,_loc4_,0,§6"[§.ID_NEXT_FREE,false,true,false,1,true);
               }
               _loc5_++;
            }
         }
         else
         {
            _loc5_ = 0;
            while(_loc5_ < this.§?";§.§8v§)
            {
               if(_loc7_ = this.§?";§.§ !E§(_loc5_))
               {
                  param1.addObject(_loc7_,_loc3_,_loc4_,0,§6"[§.ID_NEXT_FREE,false,true,false);
               }
               _loc5_++;
            }
         }
      }
      
      override public function get removeOnNextUpdate() : Boolean
      {
         return this.§5"m§;
      }
      
      override public function update(param1:Number, param2:§7!O§) : void
      {
         if(this.§1!O§ && param2)
         {
            param2.addObject(this.§?";§.enterGravitationParticles,this.getBody().GetPosition().x,this.getBody().GetPosition().y,0,§6"[§.ID_NEXT_FREE,false,true,false);
            this.§1!O§ = false;
         }
         if(isReadyToBeRemoved(param1))
         {
            this.§5"m§ = true;
         }
         super.update(param1,param2);
         this.§]#^§ += param1;
         if(§>6§)
         {
            if(this.§]#^§ > 1000 / 60)
            {
               this.§]#^§ = 0;
               this.§^"i§(param2);
            }
         }
         if(this.§<i§)
         {
            this.§<i§ = false;
            if(param2)
            {
               param2.addObject(this.§?";§.enterGravitationParticles,this.§,# §.x,this.§,# §.y,0,§6"[§.ID_NEXT_FREE,false,true,false);
            }
         }
      }
      
      private function §^"i§(param1:§7!O§) : void
      {
         var _loc2_:String = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(param1 && this.§?";§)
         {
            if(this.§3",§ > 0 && this.§?";§.atmosphereTailParticles)
            {
               _loc2_ = this.§?";§.atmosphereTailParticles;
            }
            else
            {
               _loc2_ = this.§?";§.normalTailParticles;
            }
            if(_loc2_)
            {
               _loc3_ = getBody().GetPosition().x;
               _loc4_ = getBody().GetPosition().y;
               _loc5_ = getBody().GetAngle();
               param1.§%!0§(_loc2_,_loc3_,_loc4_,_loc5_,§6"[§.ID_NEXT_FREE,1,3);
            }
         }
      }
      
      protected function §<#y§(param1:Number, param2:Number) : Number
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
