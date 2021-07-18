package §[#a§
{
   import §,#L§.§!#%§;
   import §9$§.Sprite;
   import §=#n§.b2World;
   import §@"§.§`"W§;
   import §`#C§.§##Z§;
   import §`#C§.§6!i§;
   import §`#C§.§8K§;
   import §`#C§.§<?§;
   
   public class §;"Y§ extends §3a§ implements §>"M§
   {
      
      public static const §+4§:Number = 0.15;
      
      public static const §2!^§:String = "BLOCK_SENSOR_PIG_A";
      
      public static const §>]§:String = "BLOCK_SENSOR_PIG_B";
      
      private static const §2!F§:Number = 2000;
       
      
      protected var §5#7§:§2!t§;
      
      protected var §!N§:§2!t§;
      
      protected var §>!p§:§5P§;
      
      protected var §#"f§:Number;
      
      protected var §3",§:int = 0;
      
      protected var §4$§:int = 0;
      
      protected var §4#P§:String = "lightBuff";
      
      protected var §`#i§:String = "iceExplosion";
      
      protected var § #I§:§##Z§;
      
      protected var §3#O§:§9N§;
      
      protected var §3#A§:Boolean;
      
      public function §;"Y§(param1:Sprite, param2:§`"W§, param3:b2World, param4:§8K§, param5:§!#%§, param6:Number = 1.0)
      {
         this.§ #I§ = param4 as §##Z§;
         this.§>!p§ = new §5P§(this,§<?§(param4));
         this.§]!K§();
         super(param1,param2,param3,param4,param5,param6);
         if(param3.GetGravity().Length() > 0)
         {
            this.§3",§ = 1;
         }
      }
      
      protected function get §]#&§() : String
      {
         return §2!^§;
      }
      
      protected function get §]#Z§() : String
      {
         return §>]§;
      }
      
      public function get §'"Y§() : Boolean
      {
         return this.§3#A§;
      }
      
      public function set §'"Y§(param1:Boolean) : void
      {
         this.§3#A§ = param1;
      }
      
      override protected function createPhysicsBody(param1:Number, param2:Number) : void
      {
         super.createPhysicsBody(param1,param2);
         getBody().SetLinearDamping(§+4§);
      }
      
      protected function §]!K§() : void
      {
         this.§3#O§ = new §9N§(this.§ #I§);
      }
      
      override protected function initObjectRenderer() : §]#m§
      {
         var _loc1_:§5#v§ = new §5#v§(animation,sprite);
         _loc1_.§<q§ = this.§>!p§;
         return _loc1_;
      }
      
      protected function §]#!§(param1:§<"H§) : Boolean
      {
         var _loc2_:§6!i§ = null;
         if(param1 && param1.levelItem is §6!i§)
         {
            _loc2_ = param1.levelItem as §6!i§;
            if(_loc2_.§0#B§("isBubble"))
            {
               return true;
            }
         }
         return false;
      }
      
      override public function attachedJointRemoved(param1:§<"H§ = null) : void
      {
         super.attachedJointRemoved(param1);
         if(this.§]#!§(param1))
         {
            --this.§4$§;
         }
         this.§?"@§(true);
      }
      
      override public function attachedJointCreated(param1:§<"H§ = null) : void
      {
         super.attachedJointCreated(param1);
         if(this.§]#!§(param1))
         {
            ++this.§4$§;
         }
         this.§?"@§(false);
      }
      
      public function §5!A§(param1:§<"H§, param2:§2!t§) : void
      {
         if(param2 == this.§5#7§)
         {
            this.§>!p§.§1z§(param1);
         }
         else if(param2 == this.§!N§)
         {
            this.§>!p§.§9!7§(param1);
         }
      }
      
      public function §[#9§(param1:§<"H§, param2:§2!t§) : void
      {
         if(param2 == this.§5#7§)
         {
            this.§>!p§.§'!S§(param1);
         }
         else if(param2 == this.§!N§)
         {
            this.§>!p§.§@"d§(param1);
         }
      }
      
      override public function enteredSensor(param1:§%#T§) : void
      {
         super.enteredSensor(param1);
         if(param1 is §!$"§)
         {
            ++this.§3",§;
            this.§?"@§(false);
         }
      }
      
      override public function leftSensor(param1:§%#T§) : void
      {
         super.leftSensor(param1);
         if(param1 is §!$"§)
         {
            --this.§3",§;
            this.§?"@§(true);
         }
      }
      
      override public function updateBeforeRemoving(param1:§7!O§, param2:Boolean) : void
      {
         if(!param1)
         {
            return;
         }
         if(this.§5#7§)
         {
            param1.removeObject(this.§5#7§);
            this.§5#7§ = null;
         }
         if(this.§!N§)
         {
            param1.removeObject(this.§!N§);
            this.§!N§ = null;
         }
         var _loc3_:Number = getBody().GetPosition().x;
         var _loc4_:Number = getBody().GetPosition().y;
         var _loc5_:Number = §^!Y§();
         this.§"#,§(param1,_loc3_,_loc4_,_loc5_);
         this.§3#O§.§,#F§(param1,_loc3_,_loc4_,_loc5_);
         this.§3#O§.§,!v§(param1,_loc3_,_loc4_);
         super.updateBeforeRemoving(param1,param2);
      }
      
      protected function §"#,§(param1:§7!O§, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:Number = getBody().GetPosition().x;
         var _loc6_:Number = getBody().GetPosition().y;
         Number(§^!Y§());
         if(this.§ #I§.spriteScore)
         {
            param1.addObject(this.§ #I§.spriteScore,_loc5_,_loc6_,0,§6"[§.ID_NEXT_FREE,false,false,false,3,true);
         }
      }
      
      protected function §%$'§(param1:§7!O§) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         if(this.§`#i§)
         {
            _loc2_ = getBody().GetPosition().x;
            _loc3_ = getBody().GetPosition().y;
            param1.addObject(this.§`#i§,_loc2_,_loc3_,0,§6"[§.ID_NEXT_FREE,false,true,false);
         }
      }
      
      override protected function setDamageState(param1:Number, param2:§7!O§) : Boolean
      {
         if(this.§>!p§)
         {
            if(this.§>!p§.§["+§)
            {
               return false;
            }
            this.§>!p§.setDamageState(param1);
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
      
      protected function §'"J§(param1:§7!O§) : void
      {
         var _loc2_:Number = getBody().GetPosition().x;
         var _loc3_:Number = getBody().GetPosition().y;
         if(!this.§5#7§)
         {
            this.§5#7§ = param1.addObject(this.§]#&§,_loc2_,_loc3_,0,§6"[§.ID_NEXT_FREE) as §2!t§;
            this.§5#7§.§&!m§ = this;
         }
         if(!this.§!N§)
         {
            this.§!N§ = param1.addObject(this.§]#Z§,_loc2_,_loc3_,0,§6"[§.ID_NEXT_FREE) as §2!t§;
            this.§!N§.§&!m§ = this;
         }
      }
      
      protected function §8"I§() : void
      {
         if(this.§5#7§)
         {
            this.§5#7§.getBody().SetPosition(getBody().GetPosition());
         }
         if(this.§!N§)
         {
            this.§!N§.getBody().SetPosition(getBody().GetPosition());
         }
      }
      
      public function §6!s§(param1:String) : void
      {
         this.§ #I§.§6!s§(param1);
      }
      
      protected function §@"3§(param1:§7!O§) : void
      {
         this.§%$'§(param1);
         var _loc2_:String = this.§ #I§.§7!R§;
         if(_loc2_)
         {
            this.§ #I§.§6!s§(_loc2_);
         }
      }
      
      protected function § "n§(param1:Number, param2:§7!O§) : void
      {
         if(this.§#"f§ == §2!F§)
         {
            this.§@"3§(param2);
         }
         this.§#"f§ -= param1;
         if(this.§#"f§ < 0)
         {
            health = 0;
            this.§!_§();
         }
      }
      
      override public function update(param1:Number, param2:§7!O§) : void
      {
         super.update(param1,param2);
         if(param2)
         {
            this.§'"J§(param2);
         }
         this.§>!p§.update(param1);
         if(this.§>!p§.§["+§)
         {
            this.§ "n§(param1,param2);
         }
         this.§3#O§.update(param1,param2);
         this.§8"I§();
      }
      
      protected function §?"@§(param1:Boolean) : void
      {
         if(this.§>!p§.§["+§)
         {
            return;
         }
         if(this.§3",§ <= 0 && this.§4$§ <= 0 && param1)
         {
            if(!this.§>!p§.§["+§)
            {
               this.§#"f§ = §2!F§;
               this.§>!p§.§["+§ = true;
               §'"s§.setAnimation(§5#v§.§2#J§);
            }
         }
         else if(this.§>!p§.§["+§)
         {
            this.§>!p§.§["+§ = false;
            §'"s§.setAnimation(§5#v§.§`"'§);
         }
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         super.render(param1,param2,param3);
         sprite.rotation = §%##§ + this.§3#O§.§#"w§;
      }
      
      override public function applyDamage(param1:Number, param2:§7!O§, param3:§="@§, param4:Boolean = true) : Number
      {
         return super.applyDamage(param1,param2,param3,param4);
      }
      
      override protected function playCollisionSound() : void
      {
         this.§3#O§.playCollisionSound();
      }
      
      override protected function playDamagedSound() : void
      {
         this.§3#O§.playDamagedSound();
      }
      
      protected function §!_§() : void
      {
         var _loc1_:String = this.§ #I§.frozenKilledSound;
         this.§ #I§.§6!s§(_loc1_);
      }
      
      override protected function playDestroyedSound() : void
      {
         if(this.§>!p§.§["+§)
         {
            this.§!_§();
         }
         else
         {
            this.§3#O§.playDestroyedSound();
         }
      }
      
      override protected function addDestructionParticles(param1:§7!O§) : void
      {
         if(!param1)
         {
            return;
         }
         var _loc2_:Number = getBody().GetPosition().x;
         var _loc3_:Number = getBody().GetPosition().y;
         var _loc4_:Number = §^!Y§();
         this.§3#O§.§&"?§(true,param1,_loc2_,_loc3_,_loc4_);
      }
   }
}
