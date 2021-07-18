package §]">§
{
   import §"!&§.§+W§;
   import §"!&§.§0"?§;
   import §"!&§.§="D§;
   import §'!&§.b2World;
   import §1"H§.§0"@§;
   import §1"H§.§2!V§;
   import §4&§.§#r§;
   import §7!8§.Sprite;
   import flash.geom.Point;
   
   public class §"!s§ extends §%!E§
   {
      
      public static const §7"3§:String = "timer";
       
      
      protected var §,U§:Boolean = false;
      
      protected var §2"!§:§0"?§;
      
      protected var §;6§:Number = 0;
      
      protected var §5h§:Boolean = false;
      
      protected var §8L§:Point;
      
      protected var §"6§:int;
      
      private var §+N§:Boolean;
      
      private var §0!5§:Boolean;
      
      public function §"!s§(param1:Sprite, param2:§#r§, param3:b2World, param4:§+W§, param5:Number, param6:Number, param7:Number, param8:Number = 1.0, param9:Boolean = true)
      {
         this.§2"!§ = param4 as §0"?§;
         this.§+N§ = Math.random() > 0.5 ? true : false;
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      override protected function playCollisionSound() : void
      {
         var _loc1_:String = this.§2"!§.getSound(§="D§.§4-§);
         this.§2"!§.playSoundLua(_loc1_);
      }
      
      override public function scream() : void
      {
         super.scream();
         var _loc1_:String = this.§2"!§.getSound(§="D§.§^!i§);
         this.§2"!§.playSoundLua(_loc1_);
      }
      
      override protected function addTrail(param1:§;U§) : Boolean
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         if(!isLeavingTrail)
         {
            return false;
         }
         if(param1)
         {
            if(!this.§0!5§)
            {
               _loc2_ = §^!z§().GetPosition().x;
               _loc3_ = §^!z§().GetPosition().y;
               param1.§%!y§(this.§2"!§.normalTrailSprite,§0"@§.§8!%§,§2!V§.§'"$§,_loc2_,_loc3_,-1,"",§2!V§.§3j§);
            }
            this.§0!5§ = !this.§0!5§;
         }
         return true;
      }
      
      override public function enteredSensor(param1:§3=§) : void
      {
         super.enteredSensor(param1);
         if(param1 is §5a§)
         {
            ++this.§"6§;
            if(this.§"6§ == 1)
            {
               this.§5h§ = true;
               this.§2"!§.playSoundLua(§="D§.§06§);
            }
            this.§8L§ = new Point(§^!z§().GetPosition().x,§^!z§().GetPosition().y);
         }
      }
      
      override public function leftSensor(param1:§3=§) : void
      {
         super.leftSensor(param1);
         if(param1 is §5a§)
         {
            --this.§"6§;
            if(this.§"6§ == 0 && !this.§,U§)
            {
               this.§2"!§.playSoundLua(§="D§.§?+§);
            }
         }
      }
      
      protected function get §&u§() : Boolean
      {
         return false;
      }
      
      override public function activateSpecialPower(param1:§;U§, param2:Number, param3:Number) : Boolean
      {
         var _loc5_:Number = NaN;
         var _loc6_:String = null;
         var _loc4_:Boolean;
         if(_loc4_ = super.activateSpecialPower(param1,param2,param3))
         {
            _loc5_ = 0;
            if(this.§&u§)
            {
               _loc5_ = this.§+!"§(param2,param3);
            }
            this.native(param1,_loc5_);
            _loc6_ = this.§2"!§.getSound(§="D§.§@"-§);
            this.§2"!§.playSoundLua(_loc6_);
         }
         return _loc4_;
      }
      
      protected function native(param1:§;U§, param2:Number = 0.0) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:int = 0;
         var _loc6_:String = null;
         if(this.§2"!§.§;!t§ > 0)
         {
            _loc3_ = §^!z§().GetPosition().x;
            _loc4_ = §^!z§().GetPosition().y;
            _loc5_ = 0;
            while(_loc5_ < this.§2"!§.§;!t§)
            {
               _loc6_ = this.§2"!§.§;r§(_loc5_);
               param1.addObject(_loc6_,_loc3_,_loc4_,param2,§-%§.§;!J§,false,true,false);
               _loc5_++;
            }
         }
      }
      
      override protected function addDestructionParticles(param1:§;U§) : void
      {
         var _loc5_:String = null;
         var _loc2_:Number = §^!z§().GetPosition().x;
         var _loc3_:Number = §^!z§().GetPosition().y;
         var _loc4_:int = 0;
         while(_loc4_ < this.§2"!§.§5$§)
         {
            if(_loc5_ = this.§2"!§.§5<§(_loc4_))
            {
               param1.addObject(_loc5_,_loc2_,_loc3_,0,§-%§.§;!J§,false,true,false,1,true);
            }
            _loc4_++;
         }
      }
      
      override public function applyDamage(param1:Number, param2:§;U§, param3:§1!0§, param4:Boolean = true) : Number
      {
         var _loc5_:Number = super.applyDamage(param1,param2,param3,param4);
         if(param1 >= 5)
         {
            this.addDamageParticles(param2,param1);
         }
         return _loc5_;
      }
      
      override public function addDamageParticles(param1:§;U§, param2:int) : void
      {
         var _loc5_:int = 0;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc3_:Number = §^!z§().GetPosition().x;
         var _loc4_:Number = §^!z§().GetPosition().y;
         if(this.§2"!§.§8!y§ > 0)
         {
            _loc5_ = 0;
            while(_loc5_ < this.§2"!§.§5$§)
            {
               if(_loc6_ = this.§2"!§.§]!L§(_loc5_))
               {
                  param1.addObject(_loc6_,_loc3_,_loc4_,0,§-%§.§;!J§,false,true,false,1,true);
               }
               _loc5_++;
            }
         }
         else
         {
            _loc5_ = 0;
            while(_loc5_ < this.§2"!§.§5$§)
            {
               if(_loc7_ = this.§2"!§.§5<§(_loc5_))
               {
                  param1.addObject(_loc7_,_loc3_,_loc4_,0,§-%§.§;!J§,false,true,false);
               }
               _loc5_++;
            }
         }
      }
      
      override public function get removeOnNextUpdate() : Boolean
      {
         return this.§,U§;
      }
      
      override public function update(param1:Number, param2:§;U§) : void
      {
         if(this.§+N§ && param2)
         {
            param2.addObject(this.§2"!§.enterGravitationParticles,this.§^!z§().GetPosition().x,this.§^!z§().GetPosition().y,0,§-%§.§;!J§,false,true,false);
            this.§+N§ = false;
         }
         if(isReadyToBeRemoved(param1))
         {
            this.§,U§ = true;
         }
         super.update(param1,param2);
         this.§;6§ += param1;
         if(§?!d§)
         {
            if(this.§;6§ > 1000 / 60)
            {
               this.§;6§ = 0;
               this.§1h§(param2);
            }
         }
         if(this.§5h§)
         {
            this.§5h§ = false;
            if(param2)
            {
               param2.addObject(this.§2"!§.enterGravitationParticles,this.§8L§.x,this.§8L§.y,0,§-%§.§;!J§,false,true,false);
            }
         }
      }
      
      private function §1h§(param1:§;U§) : void
      {
         var _loc2_:String = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(param1 && this.§2"!§)
         {
            if(this.§"6§ > 0 && this.§2"!§.atmosphereTailParticles)
            {
               _loc2_ = this.§2"!§.atmosphereTailParticles;
            }
            else
            {
               _loc2_ = this.§2"!§.normalTailParticles;
            }
            if(_loc2_)
            {
               _loc3_ = §^!z§().GetPosition().x;
               _loc4_ = §^!z§().GetPosition().y;
               _loc5_ = §^!z§().GetAngle();
               param1.§]`§(_loc2_,_loc3_,_loc4_,_loc5_,§-%§.§;!J§,1,3);
            }
         }
      }
      
      protected function §+!"§(param1:Number, param2:Number) : Number
      {
         var _loc3_:Number = §^!z§().GetPosition().x;
         var _loc4_:Number = §^!z§().GetPosition().y;
         var _loc5_:Number;
         if((_loc5_ = Math.atan2(param2 - _loc4_,param1 - _loc3_)) < 0)
         {
            _loc5_ += Math.PI * 2;
         }
         return _loc5_;
      }
   }
}
