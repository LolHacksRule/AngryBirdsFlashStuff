package §7P§
{
   import §!!U§.Sprite;
   import §+#$§.b2World;
   import §2"Y§.§%"3§;
   import §2"Y§.§,",§;
   import §2"Y§.§=+§;
   import §7!F§.§>"G§;
   import §<"B§.§94§;
   import §`!r§.§ U§;
   import §`!r§.§,!w§;
   import flash.geom.Point;
   
   public class §&l§ extends §3!y§
   {
      
      public static const §;#0§:String = "timer";
       
      
      protected var §=#'§:Boolean = false;
      
      protected var §<X§:§,",§;
      
      protected var §#!U§:Number = 0;
      
      protected var §?^§:Boolean = false;
      
      protected var §<^§:Point;
      
      protected var §7!'§:int;
      
      private var §+#&§:Boolean;
      
      private var §@=§:Boolean;
      
      public function §&l§(param1:Sprite, param2:§>"G§, param3:b2World, param4:§=+§, param5:§94§, param6:Number = 1.0, param7:Boolean = true)
      {
         this.§<X§ = param4 as §,",§;
         this.§+#&§ = Math.random() > 0.5 ? true : false;
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      override protected function playCollisionSound() : void
      {
         var _loc1_:String = this.§<X§.§1"Z§(§%"3§.§^f§);
         this.§<X§.§-Z§(_loc1_);
      }
      
      override public function scream() : void
      {
         super.scream();
         var _loc1_:String = this.§<X§.§1"Z§(§%"3§.§5"P§);
         this.§<X§.§-Z§(_loc1_);
      }
      
      override protected function addTrail(param1:§;$§) : Boolean
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         if(!isLeavingTrail)
         {
            return false;
         }
         if(param1)
         {
            if(!this.§@=§)
            {
               _loc2_ = §3!t§().GetPosition().x;
               _loc3_ = §3!t§().GetPosition().y;
               param1.§;!0§(this.§<X§.normalTrailSprite,§,!w§.§9F§,§ U§.§+!Q§,_loc2_,_loc3_,-1,"",§ U§.§9"W§);
            }
            this.§@=§ = !this.§@=§;
         }
         return true;
      }
      
      override public function enteredSensor(param1:§1#E§) : void
      {
         super.enteredSensor(param1);
         if(param1 is §"M§)
         {
            ++this.§7!'§;
            if(this.§7!'§ == 1)
            {
               this.§?^§ = true;
               this.§<X§.§-Z§(§%"3§.§`$§);
            }
            this.§<^§ = new Point(§3!t§().GetPosition().x,§3!t§().GetPosition().y);
         }
      }
      
      override public function leftSensor(param1:§1#E§) : void
      {
         super.leftSensor(param1);
         if(param1 is §"M§)
         {
            --this.§7!'§;
            if(this.§7!'§ == 0 && !param1.§9#;§)
            {
               this.§<X§.§-Z§(§%"3§.§<!H§);
            }
         }
      }
      
      protected function get hasTargetedSpecialPowerParticles() : Boolean
      {
         return false;
      }
      
      override public function activateSpecialPower(param1:§;$§, param2:Number, param3:Number) : Boolean
      {
         var _loc5_:Number = NaN;
         var _loc6_:String = null;
         var _loc4_:Boolean;
         if(_loc4_ = super.activateSpecialPower(param1,param2,param3))
         {
            _loc5_ = 0;
            if(this.hasTargetedSpecialPowerParticles)
            {
               _loc5_ = this.§>#8§(param2,param3);
            }
            this.spawnParticlesOnSpecial(param1,_loc5_);
            _loc6_ = this.§<X§.§1"Z§(§%"3§.§!!B§);
            this.§<X§.§-Z§(_loc6_);
         }
         return _loc4_;
      }
      
      protected function spawnParticlesOnSpecial(param1:§;$§, param2:Number = 0.0) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:int = 0;
         var _loc6_:String = null;
         if(this.§<X§.§6k§ > 0)
         {
            _loc3_ = §3!t§().GetPosition().x;
            _loc4_ = §3!t§().GetPosition().y;
            _loc5_ = 0;
            while(_loc5_ < this.§<X§.§6k§)
            {
               _loc6_ = this.§<X§.§<4§(_loc5_);
               param1.addObject(_loc6_,_loc3_,_loc4_,param2,§;=§.§""3§,false,true,false);
               _loc5_++;
            }
         }
      }
      
      override protected function addDestructionParticles(param1:§;$§) : void
      {
         var _loc5_:String = null;
         if(!param1)
         {
            return;
         }
         var _loc2_:Number = §3!t§().GetPosition().x;
         var _loc3_:Number = §3!t§().GetPosition().y;
         var _loc4_:int = 0;
         while(_loc4_ < this.§<X§.§-Q§)
         {
            if(_loc5_ = this.§<X§.§="§(_loc4_))
            {
               param1.addObject(_loc5_,_loc2_,_loc3_,0,§;=§.§""3§,false,true,false,1,true);
            }
            _loc4_++;
         }
      }
      
      override public function applyDamage(param1:Number, param2:§;$§, param3:§&#=§, param4:Boolean = true) : Number
      {
         var _loc5_:Number = super.applyDamage(param1,param2,param3,param4);
         if(param1 >= 5)
         {
            this.addDamageParticles(param2,param1);
         }
         return _loc5_;
      }
      
      override public function addDamageParticles(param1:§;$§, param2:int) : void
      {
         var _loc5_:int = 0;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc3_:Number = §3!t§().GetPosition().x;
         var _loc4_:Number = §3!t§().GetPosition().y;
         if(this.§<X§.§!a§ > 0)
         {
            _loc5_ = 0;
            while(_loc5_ < this.§<X§.§-Q§)
            {
               if(_loc6_ = this.§<X§.§&V§(_loc5_))
               {
                  param1.addObject(_loc6_,_loc3_,_loc4_,0,§;=§.§""3§,false,true,false,1,true);
               }
               _loc5_++;
            }
         }
         else
         {
            _loc5_ = 0;
            while(_loc5_ < this.§<X§.§-Q§)
            {
               if(_loc7_ = this.§<X§.§="§(_loc5_))
               {
                  param1.addObject(_loc7_,_loc3_,_loc4_,0,§;=§.§""3§,false,true,false);
               }
               _loc5_++;
            }
         }
      }
      
      override public function get removeOnNextUpdate() : Boolean
      {
         return this.§=#'§;
      }
      
      override public function update(param1:Number, param2:§;$§) : void
      {
         if(this.§+#&§ && param2)
         {
            param2.addObject(this.§<X§.enterGravitationParticles,this.§3!t§().GetPosition().x,this.§3!t§().GetPosition().y,0,§;=§.§""3§,false,true,false);
            this.§+#&§ = false;
         }
         if(isReadyToBeRemoved(param1))
         {
            this.§=#'§ = true;
         }
         super.update(param1,param2);
         this.§#!U§ += param1;
         if(§8!_§)
         {
            if(this.§#!U§ > 1000 / 60)
            {
               this.§#!U§ = 0;
               this.§;"<§(param2);
            }
         }
         if(this.§?^§)
         {
            this.§?^§ = false;
            if(param2)
            {
               param2.addObject(this.§<X§.enterGravitationParticles,this.§<^§.x,this.§<^§.y,0,§;=§.§""3§,false,true,false);
            }
         }
      }
      
      private function §;"<§(param1:§;$§) : void
      {
         var _loc2_:String = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(param1 && this.§<X§)
         {
            if(this.§7!'§ > 0 && this.§<X§.atmosphereTailParticles)
            {
               _loc2_ = this.§<X§.atmosphereTailParticles;
            }
            else
            {
               _loc2_ = this.§<X§.normalTailParticles;
            }
            if(_loc2_)
            {
               _loc3_ = §3!t§().GetPosition().x;
               _loc4_ = §3!t§().GetPosition().y;
               _loc5_ = §3!t§().GetAngle();
               param1.§]#^§(_loc2_,_loc3_,_loc4_,_loc5_,§;=§.§""3§,1,3);
            }
         }
      }
      
      protected function §>#8§(param1:Number, param2:Number) : Number
      {
         var _loc3_:Number = §3!t§().GetPosition().x;
         var _loc4_:Number = §3!t§().GetPosition().y;
         var _loc5_:Number;
         if((_loc5_ = Math.atan2(param2 - _loc4_,param1 - _loc3_)) < 0)
         {
            _loc5_ += Math.PI * 2;
         }
         return _loc5_;
      }
   }
}
