package §9"!§
{
   import §&!]§.Sprite;
   import §3>§.§+!%§;
   import §3>§.§-"8§;
   import §3>§.§34§;
   import §3>§.§3n§;
   import §9!K§.b2World;
   import §9!v§.§1!_§;
   
   public class §>![§ extends §,r§ implements §8!_§
   {
      
      public static const §];§:Number = 0.15;
      
      public static const §5!d§:String = "BLOCK_SENSOR_PIG_A";
      
      public static const §2"C§:String = "BLOCK_SENSOR_PIG_B";
      
      private static const §=^§:Number = 2000;
       
      
      protected var §!!;§:§9H§;
      
      protected var §"!H§:§9H§;
      
      protected var §9f§:§+I§;
      
      protected var §%C§:Number;
      
      protected var §5"A§:int = 0;
      
      protected var §#!§:int = 0;
      
      protected var §8>§:String = "lightBuff";
      
      protected var §1"F§:String = "iceExplosion";
      
      protected var §+!^§:§+!%§;
      
      protected var §%a§:§-!6§;
      
      protected var §&" §:Boolean;
      
      public function §>![§(param1:Sprite, param2:§1!_§, param3:b2World, param4:§-"8§, param5:Number, param6:Number, param7:Number, param8:Number = 1.0)
      {
         this.§+!^§ = param4 as §+!%§;
         this.§9f§ = new §+I§(this,§34§(param4));
         this.initializeObjectBehaviorLogic();
         super(param1,param2,param3,param4,param5,param6,param7,param8);
         if(param3.GetGravity().§4"3§() > 0)
         {
            this.§5"A§ = 1;
         }
      }
      
      protected function get §!F§() : String
      {
         return §5!d§;
      }
      
      protected function get §-y§() : String
      {
         return §2"C§;
      }
      
      public function get §9!n§() : Boolean
      {
         return this.§&" §;
      }
      
      public function set §9!n§(param1:Boolean) : void
      {
         this.§&" § = param1;
      }
      
      override protected function createPhysicsBody(param1:Number, param2:Number) : void
      {
         super.createPhysicsBody(param1,param2);
         §`I§().SetLinearDamping(§];§);
      }
      
      protected function initializeObjectBehaviorLogic() : void
      {
         this.§%a§ = new §-!6§(this.§+!^§);
      }
      
      override protected function initObjectRenderer() : §7!"§
      {
         var _loc1_:§>!T§ = new §>!T§(animation,sprite);
         _loc1_.§,!y§ = this.§9f§;
         return _loc1_;
      }
      
      protected function §<"B§(param1:§,%§) : Boolean
      {
         var _loc2_:§3n§ = null;
         if(param1 && param1.levelItem is §3n§)
         {
            _loc2_ = param1.levelItem as §3n§;
            if(_loc2_.§ i§("isBubble"))
            {
               return true;
            }
         }
         return false;
      }
      
      override public function attachedJointRemoved(param1:§,%§ = null) : void
      {
         super.attachedJointRemoved(param1);
         if(this.§<"B§(param1))
         {
            --this.§#!§;
         }
         this.§[!r§(true);
      }
      
      override public function attachedJointCreated(param1:§,%§ = null) : void
      {
         super.attachedJointCreated(param1);
         if(this.§<"B§(param1))
         {
            ++this.§#!§;
         }
         this.§[!r§(false);
      }
      
      public function §5+§(param1:§,%§, param2:§9H§) : void
      {
         if(param2 == this.§!!;§)
         {
            this.§9f§.§%"G§(param1);
         }
         else if(param2 == this.§"!H§)
         {
            this.§9f§.§-!-§(param1);
         }
      }
      
      public function §51§(param1:§,%§, param2:§9H§) : void
      {
         if(param2 == this.§!!;§)
         {
            this.§9f§.§@!`§(param1);
         }
         else if(param2 == this.§"!H§)
         {
            this.§9f§.§?"4§(param1);
         }
      }
      
      override public function enteredSensor(param1:§]#§) : void
      {
         super.enteredSensor(param1);
         if(param1 is §9"$§)
         {
            ++this.§5"A§;
            this.§[!r§(false);
         }
      }
      
      override public function leftSensor(param1:§]#§) : void
      {
         super.leftSensor(param1);
         if(param1 is §9"$§)
         {
            --this.§5"A§;
            this.§[!r§(true);
         }
      }
      
      override public function updateBeforeRemoving(param1:§0!s§) : void
      {
         if(this.§!!;§)
         {
            param1.removeObject(this.§!!;§);
            this.§!!;§ = null;
         }
         if(this.§"!H§)
         {
            param1.removeObject(this.§"!H§);
            this.§"!H§ = null;
         }
         var _loc2_:Number = §`I§().GetPosition().x;
         var _loc3_:Number = §`I§().GetPosition().y;
         var _loc4_:Number = §<!O§();
         this.§0v§(param1,_loc2_,_loc3_,_loc4_);
         this.§%a§.§[!L§(param1,_loc2_,_loc3_,_loc4_);
         this.§%a§.makeExplosion(param1,_loc2_,_loc3_);
         super.updateBeforeRemoving(param1);
      }
      
      protected function §0v§(param1:§0!s§, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:Number = §`I§().GetPosition().x;
         var _loc6_:Number = §`I§().GetPosition().y;
         param4 = §<!O§();
         this.§%a§.§4k§(param1,_loc5_,_loc6_,param4);
         if(this.§+!^§.spriteScore)
         {
            param1.addObject(this.§+!^§.spriteScore,_loc5_,_loc6_,0,§"" §.§%A§,false,false,false,3,true);
         }
      }
      
      protected function §`!l§(param1:§0!s§) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         if(this.§1"F§)
         {
            _loc2_ = §`I§().GetPosition().x;
            _loc3_ = §`I§().GetPosition().y;
            param1.addObject(this.§1"F§,_loc2_,_loc3_,0,§"" §.§%A§,false,true,false);
         }
      }
      
      override protected function setDamageState(param1:Number, param2:§0!s§) : Boolean
      {
         if(this.§9f§)
         {
            if(this.§9f§.§]&§)
            {
               return false;
            }
            this.§9f§.setDamageState(param1);
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
      
      protected function §`!2§(param1:§0!s§) : void
      {
         var _loc2_:Number = §`I§().GetPosition().x;
         var _loc3_:Number = §`I§().GetPosition().y;
         if(!this.§!!;§)
         {
            this.§!!;§ = param1.addObject(this.§!F§,_loc2_,_loc3_,0,§"" §.§%A§) as §9H§;
            this.§!!;§.§1!t§ = this;
         }
         if(!this.§"!H§)
         {
            this.§"!H§ = param1.addObject(this.§-y§,_loc2_,_loc3_,0,§"" §.§%A§) as §9H§;
            this.§"!H§.§1!t§ = this;
         }
      }
      
      protected function §#"'§() : void
      {
         if(this.§!!;§)
         {
            this.§!!;§.§`I§().SetPosition(§`I§().GetPosition());
         }
         if(this.§"!H§)
         {
            this.§"!H§.§`I§().SetPosition(§`I§().GetPosition());
         }
      }
      
      public function playSound(param1:String) : void
      {
         this.§+!^§.playSoundLua(param1);
      }
      
      protected function §-!'§(param1:§0!s§) : void
      {
         this.§`!l§(param1);
         var _loc2_:String = this.§+!^§.§&";§;
         if(_loc2_)
         {
            this.§+!^§.playSoundLua(_loc2_);
         }
      }
      
      protected function §>W§(param1:Number, param2:§0!s§) : void
      {
         if(this.§%C§ == §=^§)
         {
            this.§-!'§(param2);
         }
         this.§%C§ -= param1;
         if(this.§%C§ < 0)
         {
            health = 0;
            this.§;`§();
         }
      }
      
      override public function update(param1:Number, param2:§0!s§) : void
      {
         super.update(param1,param2);
         if(param2)
         {
            this.§`!2§(param2);
         }
         this.§9f§.update(param1);
         if(this.§9f§.§]&§)
         {
            this.§>W§(param1,param2);
         }
         this.§%a§.update(param1,param2);
         this.§#"'§();
      }
      
      protected function §[!r§(param1:Boolean) : void
      {
         if(this.§9f§.§]&§)
         {
            return;
         }
         if(this.§5"A§ <= 0 && this.§#!§ <= 0 && param1)
         {
            if(!this.§9f§.§]&§)
            {
               this.§%C§ = §=^§;
               this.§9f§.§]&§ = true;
               §"j§.setAnimation(§>!T§.§8!n§);
            }
         }
         else if(this.§9f§.§]&§)
         {
            this.§9f§.§]&§ = false;
            §"j§.setAnimation(§>!T§.§6Z§);
         }
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         super.render(param1,param2,param3);
         sprite.rotation = § "F§ + this.§%a§.§%2§;
      }
      
      override public function applyDamage(param1:Number, param2:§0!s§, param3:§^"3§, param4:Boolean = true) : Number
      {
         return super.applyDamage(param1,param2,param3,param4);
      }
      
      override protected function playCollisionSound() : void
      {
         this.§%a§.playCollisionSound();
      }
      
      override protected function playDamagedSound() : void
      {
         this.§%a§.playDamagedSound();
      }
      
      protected function §;`§() : void
      {
         var _loc1_:String = this.§+!^§.frozenKilledSound;
         this.§+!^§.playSoundLua(_loc1_);
      }
      
      override protected function playDestroyedSound() : void
      {
         if(this.§9f§.§]&§)
         {
            this.§;`§();
         }
         else
         {
            this.§%a§.playDestroyedSound();
         }
      }
      
      override protected function addDestructionParticles(param1:§0!s§) : void
      {
         var _loc2_:Number = §`I§().GetPosition().x;
         var _loc3_:Number = §`I§().GetPosition().y;
         var _loc4_:Number = §<!O§();
         this.§%a§.§4k§(param1,_loc2_,_loc3_,_loc4_);
      }
   }
}
