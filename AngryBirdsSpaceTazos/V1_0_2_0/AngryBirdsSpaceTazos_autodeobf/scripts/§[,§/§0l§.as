package §[,§
{
   import §#!X§.b2World;
   import §'!&§.Sprite;
   import §8o§.§]!U§;
   import §;"=§.§+C§;
   import §;"=§.§-'§;
   import §;"=§.§?"=§;
   import §;"=§.§]"<§;
   
   public class §0l§ extends §<!f§ implements §0!>§
   {
      
      public static const §,!%§:Number = 0.15;
      
      public static const §&!§:String = "BLOCK_SENSOR_PIG_A";
      
      public static const §>"=§:String = "BLOCK_SENSOR_PIG_B";
      
      private static const §+!j§:Number = 2000;
       
      
      protected var §=" §:§>e§;
      
      protected var §++§:§>e§;
      
      protected var § ",§:§2k§;
      
      protected var §1J§:Number;
      
      protected var §=&§:int = 0;
      
      protected var §2!;§:int = 0;
      
      protected var §9f§:String = "lightBuff";
      
      protected var §>"%§:String = "iceExplosion";
      
      protected var §!x§:§?"=§;
      
      protected var §!!w§:§;k§;
      
      protected var §6@§:Boolean;
      
      public function §0l§(param1:Sprite, param2:§]!U§, param3:b2World, param4:§]"<§, param5:Number, param6:Number, param7:Number, param8:Number = 1.0)
      {
         this.§!x§ = param4 as §?"=§;
         this.§ ",§ = new §2k§(this,§-'§(param4));
         this.initializeObjectBehaviorLogic();
         super(param1,param2,param3,param4,param5,param6,param7,param8);
         if(param3.GetGravity().§"!E§() > 0)
         {
            this.§=&§ = 1;
         }
      }
      
      protected function get §50§() : String
      {
         return §&!§;
      }
      
      protected function get § "6§() : String
      {
         return §>"=§;
      }
      
      public function get §-z§() : Boolean
      {
         return this.§6@§;
      }
      
      public function set §-z§(param1:Boolean) : void
      {
         this.§6@§ = param1;
      }
      
      override protected function createPhysicsBody(param1:Number, param2:Number) : void
      {
         super.createPhysicsBody(param1,param2);
         § <§().SetLinearDamping(§,!%§);
      }
      
      protected function initializeObjectBehaviorLogic() : void
      {
         this.§!!w§ = new §;k§(this.§!x§);
      }
      
      override protected function initObjectRenderer() : §#&§
      {
         var _loc1_:§,"%§ = new §,"%§(animation,sprite);
         _loc1_.§+B§ = this.§ ",§;
         return _loc1_;
      }
      
      protected function §^Z§(param1:§1d§) : Boolean
      {
         var _loc2_:§+C§ = null;
         if(param1 && param1.levelItem is §+C§)
         {
            _loc2_ = param1.levelItem as §+C§;
            if(_loc2_.§!!u§("isBubble"))
            {
               return true;
            }
         }
         return false;
      }
      
      override public function attachedJointRemoved(param1:§1d§ = null) : void
      {
         super.attachedJointRemoved(param1);
         if(this.§^Z§(param1))
         {
            --this.§2!;§;
         }
         this.§@"8§(true);
      }
      
      override public function attachedJointCreated(param1:§1d§ = null) : void
      {
         super.attachedJointCreated(param1);
         if(this.§^Z§(param1))
         {
            ++this.§2!;§;
         }
         this.§@"8§(false);
      }
      
      public function §]!;§(param1:§1d§, param2:§>e§) : void
      {
         if(param2 == this.§=" §)
         {
            this.§ ",§.§%H§(param1);
         }
         else if(param2 == this.§++§)
         {
            this.§ ",§.§]!P§(param1);
         }
      }
      
      public function §`g§(param1:§1d§, param2:§>e§) : void
      {
         if(param2 == this.§=" §)
         {
            this.§ ",§.§`!Q§(param1);
         }
         else if(param2 == this.§++§)
         {
            this.§ ",§.§@"'§(param1);
         }
      }
      
      override public function enteredSensor(param1:§8!a§) : void
      {
         super.enteredSensor(param1);
         if(param1 is §9!q§)
         {
            ++this.§=&§;
            this.§@"8§(false);
         }
      }
      
      override public function leftSensor(param1:§8!a§) : void
      {
         super.leftSensor(param1);
         if(param1 is §9!q§)
         {
            --this.§=&§;
            this.§@"8§(true);
         }
      }
      
      override public function updateBeforeRemoving(param1:§class§) : void
      {
         if(this.§=" §)
         {
            param1.§="6§(this.§=" §);
            this.§=" § = null;
         }
         if(this.§++§)
         {
            param1.§="6§(this.§++§);
            this.§++§ = null;
         }
         var _loc2_:Number = § <§().GetPosition().x;
         var _loc3_:Number = § <§().GetPosition().y;
         var _loc4_:Number = §@,§();
         this.§%A§(param1,_loc2_,_loc3_,_loc4_);
         this.§!!w§.§`i§(param1,_loc2_,_loc3_,_loc4_);
         this.§!!w§.makeExplosion(param1,_loc2_,_loc3_);
         super.updateBeforeRemoving(param1);
      }
      
      protected function §%A§(param1:§class§, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:Number = § <§().GetPosition().x;
         var _loc6_:Number = § <§().GetPosition().y;
         param4 = §@,§();
         this.§!!w§.§>§(param1,_loc5_,_loc6_,param4);
         if(this.§!x§.spriteScore)
         {
            param1.addObject(this.§!x§.spriteScore,_loc5_,_loc6_,0,§]j§.§4"1§,false,false,false,3,true);
         }
      }
      
      protected function §^!m§(param1:§class§) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         if(this.§>"%§)
         {
            _loc2_ = § <§().GetPosition().x;
            _loc3_ = § <§().GetPosition().y;
            param1.addObject(this.§>"%§,_loc2_,_loc3_,0,§]j§.§4"1§,false,true,false);
         }
      }
      
      override protected function setDamageState(param1:Number, param2:§class§) : Boolean
      {
         if(this.§ ",§)
         {
            if(this.§ ",§.§%h§)
            {
               return false;
            }
            this.§ ",§.setDamageState(param1);
         }
         return super.setDamageState(param1,param2);
      }
      
      override protected function normalize() : void
      {
      }
      
      override public function scream() : void
      {
      }
      
      override public function blink() : void
      {
      }
      
      protected function §6!#§(param1:§class§) : void
      {
         var _loc2_:Number = § <§().GetPosition().x;
         var _loc3_:Number = § <§().GetPosition().y;
         if(!this.§=" §)
         {
            this.§=" § = param1.addObject(this.§50§,_loc2_,_loc3_,0,§]j§.§4"1§) as §>e§;
            this.§=" §.§4!H§ = this;
         }
         if(!this.§++§)
         {
            this.§++§ = param1.addObject(this.§ "6§,_loc2_,_loc3_,0,§]j§.§4"1§) as §>e§;
            this.§++§.§4!H§ = this;
         }
      }
      
      protected function §9!m§() : void
      {
         if(this.§=" §)
         {
            this.§=" §.§ <§().SetPosition(§ <§().GetPosition());
         }
         if(this.§++§)
         {
            this.§++§.§ <§().SetPosition(§ <§().GetPosition());
         }
      }
      
      public function playSound(param1:String) : void
      {
         this.§!x§.playSoundLua(param1);
      }
      
      protected function §&s§(param1:§class§) : void
      {
         this.§^!m§(param1);
         var _loc2_:String = this.§!x§.§]b§;
         if(_loc2_)
         {
            this.§!x§.playSoundLua(_loc2_);
         }
      }
      
      protected function §^!e§(param1:Number, param2:§class§) : void
      {
         if(this.§1J§ == §+!j§)
         {
            this.§&s§(param2);
         }
         this.§1J§ -= param1;
         if(this.§1J§ < 0)
         {
            health = 0;
            this.§7#§();
         }
      }
      
      override public function update(param1:Number, param2:§class§) : void
      {
         super.update(param1,param2);
         if(param2)
         {
            this.§6!#§(param2);
         }
         this.§ ",§.update(param1);
         if(this.§ ",§.§%h§)
         {
            this.§^!e§(param1,param2);
         }
         this.§!!w§.update(param1,param2);
         this.§9!m§();
      }
      
      protected function §@"8§(param1:Boolean) : void
      {
         if(this.§ ",§.§%h§)
         {
            return;
         }
         if(this.§=&§ <= 0 && this.§2!;§ <= 0 && param1)
         {
            if(!this.§ ",§.§%h§)
            {
               this.§1J§ = §+!j§;
               this.§ ",§.§%h§ = true;
               §&"C§.setAnimation(§,"%§.§]"G§);
            }
         }
         else if(this.§ ",§.§%h§)
         {
            this.§ ",§.§%h§ = false;
            §&"C§.setAnimation(§,"%§.§-!%§);
         }
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         super.render(param1,param2,param3);
         sprite.rotation = §^8§ + this.§!!w§.§?x§;
      }
      
      override public function applyDamage(param1:Number, param2:§class§, param3:§5,§, param4:Boolean = true) : Number
      {
         return super.applyDamage(param1,param2,param3,param4);
      }
      
      override protected function playCollisionSound() : void
      {
         this.§!!w§.playCollisionSound();
      }
      
      override protected function playDamagedSound() : void
      {
         this.§!!w§.playDamagedSound();
      }
      
      protected function §7#§() : void
      {
         var _loc1_:String = this.§!x§.frozenKilledSound;
         this.§!x§.playSoundLua(_loc1_);
      }
      
      override protected function playDestroyedSound() : void
      {
         if(this.§ ",§.§%h§)
         {
            this.§7#§();
         }
         else
         {
            this.§!!w§.playDestroyedSound();
         }
      }
      
      override protected function addDestructionParticles(param1:§class§) : void
      {
         var _loc2_:Number = § <§().GetPosition().x;
         var _loc3_:Number = § <§().GetPosition().y;
         var _loc4_:Number = §@,§();
         this.§!!w§.§>§(param1,_loc2_,_loc3_,_loc4_);
      }
   }
}
