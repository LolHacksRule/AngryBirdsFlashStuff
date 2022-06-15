package §;!=§
{
   import § !N§.§5"?§;
   import §'#K§.b2World;
   import §,#e§.Sprite;
   import §7"T§.§7b§;
   import §7"o§.§##P§;
   import §7"o§.§=,§;
   import §8#K§.§ !q§;
   import §8#K§.§<#`§;
   import §8#K§.§[#!§;
   import flash.geom.Point;
   
   public class §-!e§ extends §4"4§
   {
      
      public static const §8#@§:String = "timer";
       
      
      protected var §-p§:Boolean = false;
      
      protected var §0"^§:§<#`§;
      
      protected var §2"T§:Number = 0;
      
      protected var §,![§:Boolean = false;
      
      protected var §9J§:Point;
      
      protected var §`$@§:int;
      
      private var §'#c§:Boolean;
      
      private var §6#p§:Boolean;
      
      public function §-!e§(param1:Sprite, param2:§7b§, param3:b2World, param4:§[#!§, param5:§5"?§, param6:Number = 1.0, param7:Boolean = true)
      {
         this.§0"^§ = param4 as §<#`§;
         this.§'#c§ = Math.random() > 0.5 ? true : false;
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      override protected function playCollisionSound() : void
      {
         var _loc1_:String = this.§0"^§.§[l§(§ !q§.§6"D§);
         this.§0"^§.playSoundLua(_loc1_);
      }
      
      override public function scream() : void
      {
         super.scream();
         var _loc1_:String = this.§0"^§.§[l§(§ !q§.§>#,§);
         this.§0"^§.playSoundLua(_loc1_);
      }
      
      override protected function addTrail(param1:§]!m§) : Boolean
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         if(!isLeavingTrail)
         {
            return false;
         }
         if(param1)
         {
            if(!this.§6#p§)
            {
               _loc2_ = getBody().GetPosition().x;
               _loc3_ = getBody().GetPosition().y;
               param1.addParticle(this.§0"^§.normalTrailSprite,§##P§.§`#q§,§=,§.§;!0§,_loc2_,_loc3_,-1,"",§=,§.§'!H§);
            }
            this.§6#p§ = !this.§6#p§;
         }
         return true;
      }
      
      override public function enteredSensor(param1:§`"4§) : void
      {
         super.enteredSensor(param1);
         if(param1 is §@s§)
         {
            ++this.§`$@§;
            if(this.§`$@§ == 1)
            {
               this.§,![§ = true;
               this.§0"^§.playSoundLua(§ !q§.§-!q§);
            }
            this.§9J§ = new Point(getBody().GetPosition().x,getBody().GetPosition().y);
         }
      }
      
      override public function leftSensor(param1:§`"4§) : void
      {
         super.leftSensor(param1);
         if(param1 is §@s§)
         {
            --this.§`$@§;
            if(this.§`$@§ == 0 && !param1.§!#T§)
            {
               this.§0"^§.playSoundLua(§ !q§.§-G§);
            }
         }
      }
      
      protected function get §7$3§() : Boolean
      {
         return false;
      }
      
      override public function activateSpecialPower(param1:§]!m§, param2:Number, param3:Number) : Boolean
      {
         var _loc5_:Number = NaN;
         var _loc6_:String = null;
         var _loc4_:Boolean;
         if(_loc4_ = super.activateSpecialPower(param1,param2,param3))
         {
            _loc5_ = 0;
            if(this.§7$3§)
            {
               _loc5_ = this.§@#v§(param2,param3);
            }
            this.§<"M§(param1,_loc5_);
            _loc6_ = this.§0"^§.§[l§(§ !q§.SPECIAL);
            this.§0"^§.playSoundLua(_loc6_);
         }
         return _loc4_;
      }
      
      protected function §<"M§(param1:§]!m§, param2:Number = 0.0) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:int = 0;
         var _loc6_:String = null;
         if(this.§0"^§.§5w§ > 0)
         {
            _loc3_ = getBody().GetPosition().x;
            _loc4_ = getBody().GetPosition().y;
            _loc5_ = 0;
            while(_loc5_ < this.§0"^§.§5w§)
            {
               _loc6_ = this.§0"^§.§9#v§(_loc5_);
               param1.addObject(_loc6_,_loc3_,_loc4_,param2,§ !i§.ID_NEXT_FREE,false,true,false);
               _loc5_++;
            }
         }
      }
      
      override protected function addDestructionParticles(param1:§]!m§) : void
      {
         var _loc5_:String = null;
         if(!param1)
         {
            return;
         }
         var _loc2_:Number = getBody().GetPosition().x;
         var _loc3_:Number = getBody().GetPosition().y;
         var _loc4_:int = 0;
         while(_loc4_ < this.§0"^§.§2"a§)
         {
            if(_loc5_ = this.§0"^§.§;!e§(_loc4_))
            {
               param1.addObject(_loc5_,_loc2_,_loc3_,0,§ !i§.ID_NEXT_FREE,false,true,false,1,true);
            }
            _loc4_++;
         }
      }
      
      override public function applyDamage(param1:Number, param2:§]!m§, param3:§>"G§, param4:Boolean = true, param5:Boolean = false) : Number
      {
         var _loc6_:Number = super.applyDamage(param1,param2,param3,param4,param5);
         if(param1 >= 5)
         {
            this.addDamageParticles(param2,param1);
         }
         return _loc6_;
      }
      
      override public function addDamageParticles(param1:§]!m§, param2:int) : void
      {
         var _loc5_:int = 0;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc3_:Number = getBody().GetPosition().x;
         var _loc4_:Number = getBody().GetPosition().y;
         if(this.§0"^§.§5!P§ > 0)
         {
            _loc5_ = 0;
            while(_loc5_ < this.§0"^§.§2"a§)
            {
               if(_loc6_ = this.§0"^§.§"#Z§(_loc5_))
               {
                  param1.addObject(_loc6_,_loc3_,_loc4_,0,§ !i§.ID_NEXT_FREE,false,true,false,1,true);
               }
               _loc5_++;
            }
         }
         else
         {
            _loc5_ = 0;
            while(_loc5_ < this.§0"^§.§2"a§)
            {
               if(_loc7_ = this.§0"^§.§;!e§(_loc5_))
               {
                  param1.addObject(_loc7_,_loc3_,_loc4_,0,§ !i§.ID_NEXT_FREE,false,true,false);
               }
               _loc5_++;
            }
         }
      }
      
      override public function get removeOnNextUpdate() : Boolean
      {
         return this.§-p§;
      }
      
      override public function update(param1:Number, param2:§]!m§) : void
      {
         if(this.§'#c§ && param2)
         {
            param2.addObject(this.§0"^§.enterGravitationParticles,this.getBody().GetPosition().x,this.getBody().GetPosition().y,0,§ !i§.ID_NEXT_FREE,false,true,false);
            this.§'#c§ = false;
         }
         if(isReadyToBeRemoved(param1))
         {
            this.§-p§ = true;
         }
         super.update(param1,param2);
         this.§2"T§ += param1;
         if(isFlying)
         {
            if(this.§2"T§ > 1000 / 60)
            {
               this.§2"T§ = 0;
               this.§9#`§(param2);
            }
         }
         if(this.§,![§)
         {
            this.§,![§ = false;
            if(param2)
            {
               param2.addObject(this.§0"^§.enterGravitationParticles,this.§9J§.x,this.§9J§.y,0,§ !i§.ID_NEXT_FREE,false,true,false);
            }
         }
      }
      
      private function §9#`§(param1:§]!m§) : void
      {
         var _loc2_:String = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(param1 && this.§0"^§)
         {
            if(this.§`$@§ > 0 && this.§0"^§.atmosphereTailParticles)
            {
               _loc2_ = this.§0"^§.atmosphereTailParticles;
            }
            else
            {
               _loc2_ = this.§0"^§.normalTailParticles;
            }
            if(_loc2_)
            {
               _loc3_ = getBody().GetPosition().x;
               _loc4_ = getBody().GetPosition().y;
               _loc5_ = getBody().GetAngle();
               param1.§-"k§(_loc2_,_loc3_,_loc4_,_loc5_,§ !i§.ID_NEXT_FREE,1,3);
            }
         }
      }
      
      protected function §@#v§(param1:Number, param2:Number) : Number
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
