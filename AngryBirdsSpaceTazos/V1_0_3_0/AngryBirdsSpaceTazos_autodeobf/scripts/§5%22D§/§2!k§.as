package §5"D§
{
   import §4"@§.Sprite;
   import §6!M§.§%h§;
   import §6!M§.§3h§;
   import §6!M§.§74§;
   import §6!M§.§<!r§;
   import §;`§.b2World;
   import §^e§.§^5§;
   
   public class §2!k§ extends §9V§ implements § do§
   {
      
      public static const §""9§:Number = 0.15;
      
      public static const §,!#§:String = "BLOCK_SENSOR_PIG_A";
      
      public static const §`k§:String = "BLOCK_SENSOR_PIG_B";
      
      private static const § !9§:Number = 2000;
       
      
      protected var §8;§:§?Z§;
      
      protected var §6!]§:§?Z§;
      
      protected var §2!Z§:§6"§;
      
      protected var §=6§:Number;
      
      protected var §4!_§:int = 0;
      
      protected var §#§:int = 0;
      
      protected var §=">§:String = "lightBuff";
      
      protected var §'!$§:String = "iceExplosion";
      
      protected var §#t§:§3h§;
      
      protected var §^"=§:§4!b§;
      
      protected var §1H§:Boolean;
      
      public function §2!k§(param1:Sprite, param2:§^5§, param3:b2World, param4:§<!r§, param5:Number, param6:Number, param7:Number, param8:Number = 1.0)
      {
         this.§#t§ = param4 as §3h§;
         this.§2!Z§ = new §6"§(this,§74§(param4));
         this.initializeObjectBehaviorLogic();
         super(param1,param2,param3,param4,param5,param6,param7,param8);
         if(param3.GetGravity().§@"9§() > 0)
         {
            this.§4!_§ = 1;
         }
      }
      
      protected function get §`!@§() : String
      {
         return §,!#§;
      }
      
      protected function get §,!H§() : String
      {
         return §`k§;
      }
      
      public function get §&!h§() : Boolean
      {
         return this.§1H§;
      }
      
      public function set §&!h§(param1:Boolean) : void
      {
         this.§1H§ = param1;
      }
      
      override protected function createPhysicsBody(param1:Number, param2:Number) : void
      {
         super.createPhysicsBody(param1,param2);
         §9B§().SetLinearDamping(§""9§);
      }
      
      protected function initializeObjectBehaviorLogic() : void
      {
         this.§^"=§ = new §4!b§(this.§#t§);
      }
      
      override protected function initObjectRenderer() : §8r§
      {
         var _loc1_:§!0§ = new §!0§(animation,sprite);
         _loc1_.§+m§ = this.§2!Z§;
         return _loc1_;
      }
      
      protected function §"!e§(param1:§>q§) : Boolean
      {
         var _loc2_:§%h§ = null;
         if(param1 && param1.levelItem is §%h§)
         {
            _loc2_ = param1.levelItem as §%h§;
            if(_loc2_.§7!S§("isBubble"))
            {
               return true;
            }
         }
         return false;
      }
      
      override public function attachedJointRemoved(param1:§>q§ = null) : void
      {
         super.attachedJointRemoved(param1);
         if(this.§"!e§(param1))
         {
            --this.§#§;
         }
         this.§&![§(true);
      }
      
      override public function attachedJointCreated(param1:§>q§ = null) : void
      {
         super.attachedJointCreated(param1);
         if(this.§"!e§(param1))
         {
            ++this.§#§;
         }
         this.§&![§(false);
      }
      
      public function § n§(param1:§>q§, param2:§?Z§) : void
      {
         if(param2 == this.§8;§)
         {
            this.§2!Z§.§@"#§(param1);
         }
         else if(param2 == this.§6!]§)
         {
            this.§2!Z§.§?b§(param1);
         }
      }
      
      public function §#^§(param1:§>q§, param2:§?Z§) : void
      {
         if(param2 == this.§8;§)
         {
            this.§2!Z§.§#!U§(param1);
         }
         else if(param2 == this.§6!]§)
         {
            this.§2!Z§.§4!z§(param1);
         }
      }
      
      override public function enteredSensor(param1:§<!&§) : void
      {
         super.enteredSensor(param1);
         if(param1 is §7P§)
         {
            ++this.§4!_§;
            this.§&![§(false);
         }
      }
      
      override public function leftSensor(param1:§<!&§) : void
      {
         super.leftSensor(param1);
         if(param1 is §7P§)
         {
            --this.§4!_§;
            this.§&![§(true);
         }
      }
      
      override public function updateBeforeRemoving(param1:§0!5§) : void
      {
         if(this.§8;§)
         {
            param1.removeObject(this.§8;§);
            this.§8;§ = null;
         }
         if(this.§6!]§)
         {
            param1.removeObject(this.§6!]§);
            this.§6!]§ = null;
         }
         var _loc2_:Number = §9B§().GetPosition().x;
         var _loc3_:Number = §9B§().GetPosition().y;
         var _loc4_:Number = §&!G§();
         this.§+9§(param1,_loc2_,_loc3_,_loc4_);
         this.§^"=§.§4!1§(param1,_loc2_,_loc3_,_loc4_);
         this.§^"=§.makeExplosion(param1,_loc2_,_loc3_);
         super.updateBeforeRemoving(param1);
      }
      
      protected function §+9§(param1:§0!5§, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:Number = §9B§().GetPosition().x;
         var _loc6_:Number = §9B§().GetPosition().y;
         param4 = §&!G§();
         this.§^"=§.§ !q§(param1,_loc5_,_loc6_,param4);
         if(this.§#t§.spriteScore)
         {
            param1.addObject(this.§#t§.spriteScore,_loc5_,_loc6_,0,§3!3§.§'!y§,false,false,false,3,true);
         }
      }
      
      protected function §-!q§(param1:§0!5§) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         if(this.§'!$§)
         {
            _loc2_ = §9B§().GetPosition().x;
            _loc3_ = §9B§().GetPosition().y;
            param1.addObject(this.§'!$§,_loc2_,_loc3_,0,§3!3§.§'!y§,false,true,false);
         }
      }
      
      override protected function setDamageState(param1:Number, param2:§0!5§) : Boolean
      {
         if(this.§2!Z§)
         {
            if(this.§2!Z§.§5I§)
            {
               return false;
            }
            this.§2!Z§.setDamageState(param1);
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
      
      protected function §]!k§(param1:§0!5§) : void
      {
         var _loc2_:Number = §9B§().GetPosition().x;
         var _loc3_:Number = §9B§().GetPosition().y;
         if(!this.§8;§)
         {
            this.§8;§ = param1.addObject(this.§`!@§,_loc2_,_loc3_,0,§3!3§.§'!y§) as §?Z§;
            this.§8;§.§9!b§ = this;
         }
         if(!this.§6!]§)
         {
            this.§6!]§ = param1.addObject(this.§,!H§,_loc2_,_loc3_,0,§3!3§.§'!y§) as §?Z§;
            this.§6!]§.§9!b§ = this;
         }
      }
      
      protected function §!,§() : void
      {
         if(this.§8;§)
         {
            this.§8;§.§9B§().SetPosition(§9B§().GetPosition());
         }
         if(this.§6!]§)
         {
            this.§6!]§.§9B§().SetPosition(§9B§().GetPosition());
         }
      }
      
      public function playSound(param1:String) : void
      {
         this.§#t§.playSoundLua(param1);
      }
      
      protected function §?!O§(param1:§0!5§) : void
      {
         this.§-!q§(param1);
         var _loc2_:String = this.§#t§.§6d§;
         if(_loc2_)
         {
            this.§#t§.playSoundLua(_loc2_);
         }
      }
      
      protected function §-"!§(param1:Number, param2:§0!5§) : void
      {
         if(this.§=6§ == § !9§)
         {
            this.§?!O§(param2);
         }
         this.§=6§ -= param1;
         if(this.§=6§ < 0)
         {
            health = 0;
            this.§<r§();
         }
      }
      
      override public function update(param1:Number, param2:§0!5§) : void
      {
         super.update(param1,param2);
         if(param2)
         {
            this.§]!k§(param2);
         }
         this.§2!Z§.update(param1);
         if(this.§2!Z§.§5I§)
         {
            this.§-"!§(param1,param2);
         }
         this.§^"=§.update(param1,param2);
         this.§!,§();
      }
      
      protected function §&![§(param1:Boolean) : void
      {
         if(this.§2!Z§.§5I§)
         {
            return;
         }
         if(this.§4!_§ <= 0 && this.§#§ <= 0 && param1)
         {
            if(!this.§2!Z§.§5I§)
            {
               this.§=6§ = § !9§;
               this.§2!Z§.§5I§ = true;
               §;!5§.setAnimation(§!0§.§;V§);
            }
         }
         else if(this.§2!Z§.§5I§)
         {
            this.§2!Z§.§5I§ = false;
            §;!5§.setAnimation(§!0§.§3`§);
         }
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         super.render(param1,param2,param3);
         sprite.rotation = §4X§ + this.§^"=§.§=R§;
      }
      
      override public function applyDamage(param1:Number, param2:§0!5§, param3:§6!!§, param4:Boolean = true) : Number
      {
         return super.applyDamage(param1,param2,param3,param4);
      }
      
      override protected function playCollisionSound() : void
      {
         this.§^"=§.playCollisionSound();
      }
      
      override protected function playDamagedSound() : void
      {
         this.§^"=§.playDamagedSound();
      }
      
      protected function §<r§() : void
      {
         var _loc1_:String = this.§#t§.frozenKilledSound;
         this.§#t§.playSoundLua(_loc1_);
      }
      
      override protected function playDestroyedSound() : void
      {
         if(this.§2!Z§.§5I§)
         {
            this.§<r§();
         }
         else
         {
            this.§^"=§.playDestroyedSound();
         }
      }
      
      override protected function addDestructionParticles(param1:§0!5§) : void
      {
         var _loc2_:Number = §9B§().GetPosition().x;
         var _loc3_:Number = §9B§().GetPosition().y;
         var _loc4_:Number = §&!G§();
         this.§^"=§.§ !q§(param1,_loc2_,_loc3_,_loc4_);
      }
   }
}
