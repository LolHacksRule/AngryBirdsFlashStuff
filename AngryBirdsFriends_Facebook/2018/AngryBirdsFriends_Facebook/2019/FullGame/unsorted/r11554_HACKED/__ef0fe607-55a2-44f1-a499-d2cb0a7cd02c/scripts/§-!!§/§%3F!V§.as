package §-!!§
{
   import §!6§.Sprite;
   import §%A§.§'Y§;
   import §%A§.§>F§;
   import §8#t§.b2World;
   import §9$+§.§9"4§;
   import §?§.§!#<§;
   import §?§.§@#K§;
   import §?§.§`"N§;
   import §^"[§.§4!8§;
   import flash.geom.Point;
   
   public class §?!V§ extends §&$5§
   {
      
      public static const §"!o§:String = "timer";
       
      
      protected var §#!k§:Boolean = false;
      
      protected var §<"<§:§@#K§;
      
      protected var §9!d§:Number = 0;
      
      protected var §0%§:Boolean = false;
      
      protected var §]Z§:Point;
      
      protected var §&",§:int;
      
      private var §8#K§:Boolean;
      
      private var §8#E§:Boolean;
      
      public function §?!V§(param1:Sprite, param2:§4!8§, param3:b2World, param4:§!#<§, param5:§9"4§, param6:Number = 1.0, param7:Boolean = true)
      {
         this.§<"<§ = param4 as §@#K§;
         this.§8#K§ = Math.random() > 0.5 ? true : false;
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      override protected function playCollisionSound() : void
      {
         var _loc1_:String = this.§<"<§.§+"&§(§`"N§.§^"z§);
         this.§<"<§.playSoundLua(_loc1_);
      }
      
      override public function scream() : void
      {
         super.scream();
         var _loc1_:String = this.§<"<§.§+"&§(§`"N§.§^$1§);
         this.§<"<§.playSoundLua(_loc1_);
      }
      
      override protected function addTrail(param1:§ #'§) : Boolean
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         if(!isLeavingTrail)
         {
            return false;
         }
         if(param1)
         {
            if(!this.§8#E§)
            {
               _loc2_ = getBody().GetPosition().x;
               _loc3_ = getBody().GetPosition().y;
               param1.addParticle(this.§<"<§.normalTrailSprite,§>F§.§ 4§,§'Y§.§1"J§,_loc2_,_loc3_,-1,"",§'Y§.§0=§);
            }
            this.§8#E§ = !this.§8#E§;
         }
         return true;
      }
      
      override public function enteredSensor(param1:§0!N§) : void
      {
         super.enteredSensor(param1);
         if(param1 is §3#X§)
         {
            ++this.§&",§;
            if(this.§&",§ == 1)
            {
               this.§0%§ = true;
               this.§<"<§.playSoundLua(§`"N§.§>"I§);
            }
            this.§]Z§ = new Point(getBody().GetPosition().x,getBody().GetPosition().y);
         }
      }
      
      override public function leftSensor(param1:§0!N§) : void
      {
         super.leftSensor(param1);
         if(param1 is §3#X§)
         {
            --this.§&",§;
            if(this.§&",§ == 0 && !param1.§]"x§)
            {
               this.§<"<§.playSoundLua(§`"N§.§>#W§);
            }
         }
      }
      
      protected function get §^#4§() : Boolean
      {
         return false;
      }
      
      override public function activateSpecialPower(param1:§ #'§, param2:Number, param3:Number) : Boolean
      {
         var _loc5_:Number = NaN;
         var _loc6_:String = null;
         var _loc4_:Boolean;
         if(_loc4_ = super.activateSpecialPower(param1,param2,param3))
         {
            _loc5_ = 0;
            if(this.§^#4§)
            {
               _loc5_ = this.§=!!§(param2,param3);
            }
            this.§[c§(param1,_loc5_);
            _loc6_ = this.§<"<§.§+"&§(§`"N§.SPECIAL);
            this.§<"<§.playSoundLua(_loc6_);
         }
         return _loc4_;
      }
      
      protected function §[c§(param1:§ #'§, param2:Number = 0.0) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:int = 0;
         var _loc6_:String = null;
         if(this.§<"<§.§<!X§ > 0)
         {
            _loc3_ = getBody().GetPosition().x;
            _loc4_ = getBody().GetPosition().y;
            _loc5_ = 0;
            while(_loc5_ < this.§<"<§.§<!X§)
            {
               _loc6_ = this.§<"<§.§@#3§(_loc5_);
               param1.addObject(_loc6_,_loc3_,_loc4_,param2,§7S§.ID_NEXT_FREE,false,true,false);
               _loc5_++;
            }
         }
      }
      
      override protected function addDestructionParticles(param1:§ #'§) : void
      {
         var _loc5_:String = null;
         if(!param1)
         {
            return;
         }
         var _loc2_:Number = getBody().GetPosition().x;
         var _loc3_:Number = getBody().GetPosition().y;
         var _loc4_:int = 0;
         while(_loc4_ < this.§<"<§.§@#h§)
         {
            if(_loc5_ = this.§<"<§.§%"U§(_loc4_))
            {
               param1.addObject(_loc5_,_loc2_,_loc3_,0,§7S§.ID_NEXT_FREE,false,true,false,1,true);
            }
            _loc4_++;
         }
      }
      
      override public function applyDamage(param1:Number, param2:§ #'§, param3:§8"J§, param4:Boolean = true, param5:Boolean = false) : Number
      {
         var _loc6_:Number = super.applyDamage(param1,param2,param3,param4,param5);
         if(param1 >= 5)
         {
            this.addDamageParticles(param2,param1);
         }
         return _loc6_;
      }
      
      override public function addDamageParticles(param1:§ #'§, param2:int) : void
      {
         var _loc5_:int = 0;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc3_:Number = getBody().GetPosition().x;
         var _loc4_:Number = getBody().GetPosition().y;
         if(this.§<"<§.§6"9§ > 0)
         {
            _loc5_ = 0;
            while(_loc5_ < this.§<"<§.§@#h§)
            {
               if(_loc6_ = this.§<"<§.§;"Q§(_loc5_))
               {
                  param1.addObject(_loc6_,_loc3_,_loc4_,0,§7S§.ID_NEXT_FREE,false,true,false,1,true);
               }
               _loc5_++;
            }
         }
         else
         {
            _loc5_ = 0;
            while(_loc5_ < this.§<"<§.§@#h§)
            {
               if(_loc7_ = this.§<"<§.§%"U§(_loc5_))
               {
                  param1.addObject(_loc7_,_loc3_,_loc4_,0,§7S§.ID_NEXT_FREE,false,true,false);
               }
               _loc5_++;
            }
         }
      }
      
      override public function get removeOnNextUpdate() : Boolean
      {
         return this.§#!k§;
      }
      
      override public function update(param1:Number, param2:§ #'§) : void
      {
         if(this.§8#K§ && param2)
         {
            param2.addObject(this.§<"<§.enterGravitationParticles,this.getBody().GetPosition().x,this.getBody().GetPosition().y,0,§7S§.ID_NEXT_FREE,false,true,false);
            this.§8#K§ = false;
         }
         if(isReadyToBeRemoved(param1))
         {
            this.§#!k§ = true;
         }
         super.update(param1,param2);
         this.§9!d§ += param1;
         if(isFlying)
         {
            if(this.§9!d§ > 1000 / 60)
            {
               this.§9!d§ = 0;
               this.§,!c§(param2);
            }
         }
         if(this.§0%§)
         {
            this.§0%§ = false;
            if(param2)
            {
               param2.addObject(this.§<"<§.enterGravitationParticles,this.§]Z§.x,this.§]Z§.y,0,§7S§.ID_NEXT_FREE,false,true,false);
            }
         }
      }
      
      private function §,!c§(param1:§ #'§) : void
      {
         var _loc2_:String = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(param1 && this.§<"<§)
         {
            if(this.§&",§ > 0 && this.§<"<§.atmosphereTailParticles)
            {
               _loc2_ = this.§<"<§.atmosphereTailParticles;
            }
            else
            {
               _loc2_ = this.§<"<§.normalTailParticles;
            }
            if(_loc2_)
            {
               _loc3_ = getBody().GetPosition().x;
               _loc4_ = getBody().GetPosition().y;
               _loc5_ = getBody().GetAngle();
               param1.§?#q§(_loc2_,_loc3_,_loc4_,_loc5_,§7S§.ID_NEXT_FREE,1,3);
            }
         }
      }
      
      protected function §=!!§(param1:Number, param2:Number) : Number
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
