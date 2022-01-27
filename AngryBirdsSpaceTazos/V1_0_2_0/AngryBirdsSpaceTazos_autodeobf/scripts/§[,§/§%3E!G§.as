package §[,§
{
   import §#!X§.b2World;
   import §'!&§.Sprite;
   import §,7§.§9!v§;
   import §,7§.§?L§;
   import §8o§.§]!U§;
   import §;"=§.§,]§;
   import §;"=§.§-_§;
   import §;"=§.§[e§;
   import flash.geom.Point;
   
   public class §>!G§ extends §?"7§
   {
      
      public static const §+a§:String = "timer";
       
      
      protected var §4!8§:Boolean = false;
      
      protected var §^B§:§,]§;
      
      protected var §@a§:Number = 0;
      
      protected var §1b§:Boolean = false;
      
      protected var §[u§:Point;
      
      protected var §=&§:int;
      
      private var § y§:Boolean;
      
      private var §"!"§:Boolean;
      
      public function §>!G§(param1:Sprite, param2:§]!U§, param3:b2World, param4:§[e§, param5:Number, param6:Number, param7:Number, param8:Number = 1.0, param9:Boolean = true)
      {
         this.§^B§ = param4 as §,]§;
         this.§ y§ = Math.random() > 0.5 ? true : false;
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      override protected function playCollisionSound() : void
      {
         var _loc1_:String = this.§^B§.getSound(§-_§.§]"C§);
         this.§^B§.playSoundLua(_loc1_);
      }
      
      override public function scream() : void
      {
         super.scream();
         var _loc1_:String = this.§^B§.getSound(§-_§.§ p§);
         this.§^B§.playSoundLua(_loc1_);
      }
      
      override protected function addTrail(param1:§class§) : Boolean
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         if(!isLeavingTrail)
         {
            return false;
         }
         if(param1)
         {
            if(!this.§"!"§)
            {
               _loc2_ = § <§().GetPosition().x;
               _loc3_ = § <§().GetPosition().y;
               param1.§=J§(this.§^B§.normalTrailSprite,§?L§.§!S§,§9!v§.§;"0§,_loc2_,_loc3_,-1,"",§9!v§.§2!@§);
            }
            this.§"!"§ = !this.§"!"§;
         }
         return true;
      }
      
      override public function enteredSensor(param1:§8!a§) : void
      {
         super.enteredSensor(param1);
         if(param1 is §9!q§)
         {
            ++this.§=&§;
            if(this.§=&§ == 1)
            {
               this.§1b§ = true;
               this.§^B§.playSoundLua(§-_§.§[i§);
            }
            this.§[u§ = new Point(§ <§().GetPosition().x,§ <§().GetPosition().y);
         }
      }
      
      override public function leftSensor(param1:§8!a§) : void
      {
         super.leftSensor(param1);
         if(param1 is §9!q§)
         {
            --this.§=&§;
            if(this.§=&§ == 0 && !this.§4!8§)
            {
               this.§^B§.playSoundLua(§-_§.§0!y§);
            }
         }
      }
      
      protected function get §,2§() : Boolean
      {
         return false;
      }
      
      override public function activateSpecialPower(param1:§class§, param2:Number, param3:Number) : Boolean
      {
         var _loc5_:Number = NaN;
         var _loc6_:String = null;
         var _loc4_:Boolean;
         if(_loc4_ = super.activateSpecialPower(param1,param2,param3))
         {
            _loc5_ = 0;
            if(this.§,2§)
            {
               _loc5_ = this.§ !S§(param2,param3);
            }
            this.§""#§(param1,_loc5_);
            _loc6_ = this.§^B§.getSound(§-_§.§;6§);
            this.§^B§.playSoundLua(_loc6_);
         }
         return _loc4_;
      }
      
      protected function §""#§(param1:§class§, param2:Number = 0.0) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:int = 0;
         var _loc6_:String = null;
         if(this.§^B§.§3d§ > 0)
         {
            _loc3_ = § <§().GetPosition().x;
            _loc4_ = § <§().GetPosition().y;
            _loc5_ = 0;
            while(_loc5_ < this.§^B§.§3d§)
            {
               _loc6_ = this.§^B§.§&!m§(_loc5_);
               param1.addObject(_loc6_,_loc3_,_loc4_,param2,§]j§.§4"1§,false,true,false);
               _loc5_++;
            }
         }
      }
      
      override protected function addDestructionParticles(param1:§class§) : void
      {
         var _loc5_:String = null;
         var _loc2_:Number = § <§().GetPosition().x;
         var _loc3_:Number = § <§().GetPosition().y;
         var _loc4_:int = 0;
         while(_loc4_ < this.§^B§.§=0§)
         {
            if(_loc5_ = this.§^B§.§6!§(_loc4_))
            {
               param1.addObject(_loc5_,_loc2_,_loc3_,0,§]j§.§4"1§,false,true,false,1,true);
            }
            _loc4_++;
         }
      }
      
      override public function applyDamage(param1:Number, param2:§class§, param3:§5,§, param4:Boolean = true) : Number
      {
         var _loc5_:Number = super.applyDamage(param1,param2,param3,param4);
         if(param1 >= 5)
         {
            this.addDamageParticles(param2,param1);
         }
         return _loc5_;
      }
      
      override public function addDamageParticles(param1:§class§, param2:int) : void
      {
         var _loc5_:int = 0;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc3_:Number = § <§().GetPosition().x;
         var _loc4_:Number = § <§().GetPosition().y;
         if(this.§^B§.§4!0§ > 0)
         {
            _loc5_ = 0;
            while(_loc5_ < this.§^B§.§=0§)
            {
               if(_loc6_ = this.§^B§.§1!6§(_loc5_))
               {
                  param1.addObject(_loc6_,_loc3_,_loc4_,0,§]j§.§4"1§,false,true,false,1,true);
               }
               _loc5_++;
            }
         }
         else
         {
            _loc5_ = 0;
            while(_loc5_ < this.§^B§.§=0§)
            {
               if(_loc7_ = this.§^B§.§6!§(_loc5_))
               {
                  param1.addObject(_loc7_,_loc3_,_loc4_,0,§]j§.§4"1§,false,true,false);
               }
               _loc5_++;
            }
         }
      }
      
      override public function get removeOnNextUpdate() : Boolean
      {
         return this.§4!8§;
      }
      
      override public function update(param1:Number, param2:§class§) : void
      {
         if(this.§ y§ && param2)
         {
            param2.addObject(this.§^B§.enterGravitationParticles,this.§ <§().GetPosition().x,this.§ <§().GetPosition().y,0,§]j§.§4"1§,false,true,false);
            this.§ y§ = false;
         }
         if(isReadyToBeRemoved(param1))
         {
            this.§4!8§ = true;
         }
         super.update(param1,param2);
         this.§@a§ += param1;
         if(§!!K§)
         {
            if(this.§@a§ > 1000 / 60)
            {
               this.§@a§ = 0;
               this.§<x§(param2);
            }
         }
         if(this.§1b§)
         {
            this.§1b§ = false;
            if(param2)
            {
               param2.addObject(this.§^B§.enterGravitationParticles,this.§[u§.x,this.§[u§.y,0,§]j§.§4"1§,false,true,false);
            }
         }
      }
      
      private function §<x§(param1:§class§) : void
      {
         var _loc2_:String = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(param1 && this.§^B§)
         {
            if(this.§=&§ > 0 && this.§^B§.atmosphereTailParticles)
            {
               _loc2_ = this.§^B§.atmosphereTailParticles;
            }
            else
            {
               _loc2_ = this.§^B§.normalTailParticles;
            }
            if(_loc2_)
            {
               _loc3_ = § <§().GetPosition().x;
               _loc4_ = § <§().GetPosition().y;
               _loc5_ = § <§().GetAngle();
               param1.§]"F§(_loc2_,_loc3_,_loc4_,_loc5_,§]j§.§4"1§,1,3);
            }
         }
      }
      
      protected function § !S§(param1:Number, param2:Number) : Number
      {
         var _loc3_:Number = § <§().GetPosition().x;
         var _loc4_:Number = § <§().GetPosition().y;
         var _loc5_:Number;
         if((_loc5_ = Math.atan2(param2 - _loc4_,param1 - _loc3_)) < 0)
         {
            _loc5_ += Math.PI * 2;
         }
         return _loc5_;
      }
   }
}
