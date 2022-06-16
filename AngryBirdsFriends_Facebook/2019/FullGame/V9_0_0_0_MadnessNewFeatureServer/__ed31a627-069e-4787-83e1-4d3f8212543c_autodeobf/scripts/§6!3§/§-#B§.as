package §6!3§
{
   import §'G§.§;D§;
   import §-#X§.§,!B§;
   import §6#H§.Sprite;
   import §7"p§.§6!9§;
   import §7"p§.§<#]§;
   import §?$<§.§5!<§;
   import §?$<§.§>#i§;
   import §?$<§.§^§;
   import §@!S§.b2World;
   import flash.geom.Point;
   
   public class §-#B§ extends §-8§
   {
      
      public static const §@!I§:String = "timer";
       
      
      protected var §!!3§:Boolean = false;
      
      protected var §4<§:§5!<§;
      
      protected var §9" §:Number = 0;
      
      protected var §<#q§:Boolean = false;
      
      protected var §;"T§:Point;
      
      protected var §6#u§:int;
      
      private var §!!,§:Boolean;
      
      private var §+$$§:Boolean;
      
      public function §-#B§(param1:Sprite, param2:§;D§, param3:b2World, param4:§>#i§, param5:§,!B§, param6:Number = 1.0, param7:Boolean = true)
      {
         this.§4<§ = param4 as §5!<§;
         this.§!!,§ = Math.random() > 0.5 ? true : false;
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      override protected function playCollisionSound() : void
      {
         var _loc1_:String = this.§4<§.§]3§(§^#1§.§1!v§);
         this.§4<§.playSoundLua(_loc1_);
      }
      
      override public function scream() : void
      {
         super.scream();
         var _loc1_:String = this.§4<§.§]3§(§^#1§.§%S§);
         this.§4<§.playSoundLua(_loc1_);
      }
      
      override protected function addTrail(param1:§8$B§) : Boolean
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         if(!isLeavingTrail)
         {
            return false;
         }
         if(param1)
         {
            if(!this.§+$$§)
            {
               _loc2_ = getBody().GetPosition().x;
               _loc3_ = getBody().GetPosition().y;
               param1.addParticle(this.§4<§.normalTrailSprite,§<#]§.§@"5§,§6!9§.§1"g§,_loc2_,_loc3_,-1,"",§6!9§.§`$ §);
            }
            this.§+$$§ = !this.§+$$§;
         }
         return true;
      }
      
      override public function enteredSensor(param1:§@#v§) : void
      {
         super.enteredSensor(param1);
         if(param1 is §7u§)
         {
            ++this.§6#u§;
            if(this.§6#u§ == 1)
            {
               this.§<#q§ = true;
               this.§4<§.playSoundLua(§^#1§.§[$=§);
            }
            this.§;"T§ = new Point(getBody().GetPosition().x,getBody().GetPosition().y);
         }
      }
      
      override public function leftSensor(param1:§@#v§) : void
      {
         super.leftSensor(param1);
         if(param1 is §7u§)
         {
            --this.§6#u§;
            if(this.§6#u§ == 0 && !param1.§8"k§)
            {
               this.§4<§.playSoundLua(§^#1§.§7#=§);
            }
         }
      }
      
      protected function get §9k§() : Boolean
      {
         return false;
      }
      
      override public function activateSpecialPower(param1:§8$B§, param2:Number, param3:Number) : Boolean
      {
         var _loc5_:Number = NaN;
         var _loc6_:String = null;
         var _loc4_:Boolean;
         if(_loc4_ = super.activateSpecialPower(param1,param2,param3))
         {
            _loc5_ = 0;
            if(this.§9k§)
            {
               _loc5_ = this.§&#8§(param2,param3);
            }
            this.§=#_§(param1,_loc5_);
            _loc6_ = this.§4<§.§]3§(§^#1§.SPECIAL);
            this.§4<§.playSoundLua(_loc6_);
         }
         return _loc4_;
      }
      
      protected function §=#_§(param1:§8$B§, param2:Number = 0.0) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:int = 0;
         var _loc6_:String = null;
         if(this.§4<§.§3"#§ > 0)
         {
            _loc3_ = getBody().GetPosition().x;
            _loc4_ = getBody().GetPosition().y;
            _loc5_ = 0;
            while(_loc5_ < this.§4<§.§3"#§)
            {
               _loc6_ = this.§4<§.§,$C§(_loc5_);
               param1.addObject(_loc6_,_loc3_,_loc4_,param2,§'!§.ID_NEXT_FREE,false,true,false);
               _loc5_++;
            }
         }
      }
      
      override protected function addDestructionParticles(param1:§8$B§) : void
      {
         var _loc5_:String = null;
         if(!param1)
         {
            return;
         }
         var _loc2_:Number = getBody().GetPosition().x;
         var _loc3_:Number = getBody().GetPosition().y;
         var _loc4_:int = 0;
         while(_loc4_ < this.§4<§.§1"N§)
         {
            if(_loc5_ = this.§4<§.§7;§(_loc4_))
            {
               param1.addObject(_loc5_,_loc2_,_loc3_,0,§'!§.ID_NEXT_FREE,false,true,false,1,true);
            }
            _loc4_++;
         }
      }
      
      override public function applyDamage(param1:Number, param2:§8$B§, param3:§;!U§, param4:Boolean = true, param5:Boolean = false) : Number
      {
         var _loc6_:Number = super.applyDamage(param1,param2,param3,param4,param5);
         if(param1 >= 5)
         {
            this.addDamageParticles(param2,param1);
         }
         return _loc6_;
      }
      
      override public function addDamageParticles(param1:§8$B§, param2:int) : void
      {
         var _loc5_:int = 0;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc3_:Number = getBody().GetPosition().x;
         var _loc4_:Number = getBody().GetPosition().y;
         if(this.§4<§.§'#[§ > 0)
         {
            _loc5_ = 0;
            while(_loc5_ < this.§4<§.§1"N§)
            {
               if(_loc6_ = this.§4<§.§@#D§(_loc5_))
               {
                  param1.addObject(_loc6_,_loc3_,_loc4_,0,§'!§.ID_NEXT_FREE,false,true,false,1,true);
               }
               _loc5_++;
            }
         }
         else
         {
            _loc5_ = 0;
            while(_loc5_ < this.§4<§.§1"N§)
            {
               if(_loc7_ = this.§4<§.§7;§(_loc5_))
               {
                  param1.addObject(_loc7_,_loc3_,_loc4_,0,§'!§.ID_NEXT_FREE,false,true,false);
               }
               _loc5_++;
            }
         }
      }
      
      override public function get removeOnNextUpdate() : Boolean
      {
         return this.§!!3§;
      }
      
      override public function update(param1:Number, param2:§8$B§) : void
      {
         if(this.§!!,§ && param2)
         {
            param2.addObject(this.§4<§.enterGravitationParticles,this.getBody().GetPosition().x,this.getBody().GetPosition().y,0,§'!§.ID_NEXT_FREE,false,true,false);
            this.§!!,§ = false;
         }
         if(isReadyToBeRemoved(param1))
         {
            this.§!!3§ = true;
         }
         super.update(param1,param2);
         this.§9" § += param1;
         if(isFlying)
         {
            if(this.§9" § > 1000 / 60)
            {
               this.§9" § = 0;
               this.§=$-§(param2);
            }
         }
         if(this.§<#q§)
         {
            this.§<#q§ = false;
            if(param2)
            {
               param2.addObject(this.§4<§.enterGravitationParticles,this.§;"T§.x,this.§;"T§.y,0,§'!§.ID_NEXT_FREE,false,true,false);
            }
         }
      }
      
      private function §=$-§(param1:§8$B§) : void
      {
         var _loc2_:String = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(param1 && this.§4<§)
         {
            if(this.§6#u§ > 0 && this.§4<§.atmosphereTailParticles)
            {
               _loc2_ = this.§4<§.atmosphereTailParticles;
            }
            else
            {
               _loc2_ = this.§4<§.normalTailParticles;
            }
            if(_loc2_)
            {
               _loc3_ = getBody().GetPosition().x;
               _loc4_ = getBody().GetPosition().y;
               _loc5_ = getBody().GetAngle();
               param1.§3P§(_loc2_,_loc3_,_loc4_,_loc5_,§'!§.ID_NEXT_FREE,1,3);
            }
         }
      }
      
      protected function §&#8§(param1:Number, param2:Number) : Number
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
