package §6!3§
{
   import §'G§.§;D§;
   import §-#X§.§,!B§;
   import §6#H§.Sprite;
   import §?$<§.§-"B§;
   import §?$<§.§1"v§;
   import §?$<§.§?$>§;
   import §?$<§.§@"q§;
   import §@!S§.b2World;
   
   public class §-#Q§ extends §>#p§ implements §2M§
   {
      
      public static const §="6§:Number = 0.15;
      
      public static const §-p§:String = "BLOCK_SENSOR_PIG_A";
      
      public static const §>"F§:String = "BLOCK_SENSOR_PIG_B";
      
      private static const §2t§:Number = 2000;
       
      
      protected var §4#v§:§@O§;
      
      protected var §<"]§:§@O§;
      
      protected var §4#U§:§<#_§;
      
      protected var §"<§:Number;
      
      protected var §6#u§:int = 0;
      
      protected var §9"l§:int = 0;
      
      protected var §1#L§:String = "lightBuff";
      
      protected var §9#n§:String = "iceExplosion";
      
      protected var §1g§:§1"v§;
      
      protected var §^"J§:§6O§;
      
      protected var §3!t§:Boolean;
      
      public function §-#Q§(param1:Sprite, param2:§;D§, param3:b2World, param4:§?$>§, param5:§,!B§, param6:Number = 1.0)
      {
         this.§1g§ = param4 as §1"v§;
         this.§4#U§ = new §<#_§(this,§-"B§(param4));
         this.§&#b§();
         super(param1,param2,param3,param4,param5,param6);
         if(param3.GetGravity().Length() > 0)
         {
            this.§6#u§ = 1;
         }
      }
      
      protected function get §7"b§() : String
      {
         return §-p§;
      }
      
      protected function get §-!B§() : String
      {
         return §>"F§;
      }
      
      public function get §[u§() : Boolean
      {
         return this.§3!t§;
      }
      
      public function set §[u§(param1:Boolean) : void
      {
         this.§3!t§ = param1;
      }
      
      override protected function createPhysicsBody(param1:Number, param2:Number) : void
      {
         super.createPhysicsBody(param1,param2);
         getBody().SetLinearDamping(§="6§);
      }
      
      protected function §&#b§() : void
      {
         this.§^"J§ = new §6O§(this.§1g§);
      }
      
      override protected function initObjectRenderer() : §0&§
      {
         var _loc1_:§@!b§ = new §@!b§(animation,sprite);
         _loc1_.§#!H§ = this.§4#U§;
         return _loc1_;
      }
      
      protected function §[!Y§(param1:§!y§) : Boolean
      {
         var _loc2_:§@"q§ = null;
         if(param1 && param1.levelItem is §@"q§)
         {
            _loc2_ = param1.levelItem as §@"q§;
            if(_loc2_.§[7§("isBubble"))
            {
               return true;
            }
         }
         return false;
      }
      
      override public function attachedJointRemoved(param1:§!y§ = null) : void
      {
         super.attachedJointRemoved(param1);
         if(this.§[!Y§(param1))
         {
            --this.§9"l§;
         }
         this.§<"w§(true);
      }
      
      override public function attachedJointCreated(param1:§!y§ = null) : void
      {
         super.attachedJointCreated(param1);
         if(this.§[!Y§(param1))
         {
            ++this.§9"l§;
         }
         this.§<"w§(false);
      }
      
      public function §;!T§(param1:§!y§, param2:§@O§) : void
      {
         if(param2 == this.§4#v§)
         {
            this.§4#U§.§6Z§(param1);
         }
         else if(param2 == this.§<"]§)
         {
            this.§4#U§.§?!Z§(param1);
         }
      }
      
      public function §,S§(param1:§!y§, param2:§@O§) : void
      {
         if(param2 == this.§4#v§)
         {
            this.§4#U§.§'$>§(param1);
         }
         else if(param2 == this.§<"]§)
         {
            this.§4#U§.§6"x§(param1);
         }
      }
      
      override public function enteredSensor(param1:§@#v§) : void
      {
         super.enteredSensor(param1);
         if(param1 is §7u§)
         {
            ++this.§6#u§;
            this.§<"w§(false);
         }
      }
      
      override public function leftSensor(param1:§@#v§) : void
      {
         super.leftSensor(param1);
         if(param1 is §7u§)
         {
            --this.§6#u§;
            this.§<"w§(true);
         }
      }
      
      override public function updateBeforeRemoving(param1:§8$B§, param2:Boolean) : void
      {
         if(!param1)
         {
            return;
         }
         if(this.§4#v§)
         {
            param1.removeObject(this.§4#v§);
            this.§4#v§ = null;
         }
         if(this.§<"]§)
         {
            param1.removeObject(this.§<"]§);
            this.§<"]§ = null;
         }
         var _loc3_:Number = getBody().GetPosition().x;
         var _loc4_:Number = getBody().GetPosition().y;
         var _loc5_:Number = §%#4§();
         this.§4!>§(param1,_loc3_,_loc4_,_loc5_);
         this.§^"J§.§]c§(param1,_loc3_,_loc4_,_loc5_);
         super.updateBeforeRemoving(param1,param2);
      }
      
      protected function §4!>§(param1:§8$B§, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:Number = getBody().GetPosition().x;
         var _loc6_:Number = getBody().GetPosition().y;
         param4 = §%#4§();
         if(this.§1g§.spriteScore)
         {
            param1.addObject(this.§1g§.spriteScore,_loc5_,_loc6_,0,§'!§.ID_NEXT_FREE,false,false,false,3,true);
         }
      }
      
      protected function §#"p§(param1:§8$B§) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         if(this.§9#n§)
         {
            _loc2_ = getBody().GetPosition().x;
            _loc3_ = getBody().GetPosition().y;
            param1.addObject(this.§9#n§,_loc2_,_loc3_,0,§'!§.ID_NEXT_FREE,false,true,false);
         }
      }
      
      override protected function setDamageState(param1:Number, param2:§8$B§) : Boolean
      {
         if(this.§4#U§)
         {
            if(this.§4#U§.§[#C§)
            {
               return false;
            }
            this.§4#U§.setDamageState(param1);
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
      
      protected function §?!K§(param1:§8$B§) : void
      {
         var _loc2_:Number = getBody().GetPosition().x;
         var _loc3_:Number = getBody().GetPosition().y;
         if(!this.§4#v§)
         {
            this.§4#v§ = param1.addObject(this.§7"b§,_loc2_,_loc3_,0,§'!§.ID_NEXT_FREE) as §@O§;
            this.§4#v§.§`!8§ = this;
         }
         if(!this.§<"]§)
         {
            this.§<"]§ = param1.addObject(this.§-!B§,_loc2_,_loc3_,0,§'!§.ID_NEXT_FREE) as §@O§;
            this.§<"]§.§`!8§ = this;
         }
      }
      
      protected function §9!m§() : void
      {
         if(this.§4#v§)
         {
            this.§4#v§.getBody().SetPosition(getBody().GetPosition());
         }
         if(this.§<"]§)
         {
            this.§<"]§.getBody().SetPosition(getBody().GetPosition());
         }
      }
      
      public function playSoundLua(param1:String) : void
      {
         this.§1g§.playSoundLua(param1);
      }
      
      protected function §-"s§(param1:§8$B§) : void
      {
         this.§#"p§(param1);
         var _loc2_:String = this.§1g§.§&!R§;
         if(_loc2_)
         {
            this.§1g§.playSoundLua(_loc2_);
         }
      }
      
      protected function §'!R§(param1:Number, param2:§8$B§) : void
      {
         if(this.§"<§ == §2t§)
         {
            this.§-"s§(param2);
         }
         this.§"<§ -= param1;
         if(this.§"<§ < 0)
         {
            health = 0;
            this.§<<§();
         }
      }
      
      override public function update(param1:Number, param2:§8$B§) : void
      {
         super.update(param1,param2);
         if(param2)
         {
            this.§?!K§(param2);
         }
         this.§4#U§.update(param1);
         if(this.§4#U§.§[#C§)
         {
            this.§'!R§(param1,param2);
         }
         this.§^"J§.update(param1,param2);
         this.§9!m§();
      }
      
      protected function §<"w§(param1:Boolean) : void
      {
         if(this.§4#U§.§[#C§)
         {
            return;
         }
         if(this.§6#u§ <= 0 && this.§9"l§ <= 0 && param1)
         {
            if(!this.§4#U§.§[#C§)
            {
               this.§"<§ = §2t§;
               this.§4#U§.§[#C§ = true;
               §="!§.setAnimation(§@!b§.§0n§);
            }
         }
         else if(this.§4#U§.§[#C§)
         {
            this.§4#U§.§[#C§ = false;
            §="!§.setAnimation(§@!b§.§3!s§);
         }
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         super.render(param1,param2,param3);
         sprite.rotation = §'$5§ + this.§^"J§.§#!"§;
      }
      
      override public function applyDamage(param1:Number, param2:§8$B§, param3:§;!U§, param4:Boolean = true, param5:Boolean = false) : Number
      {
         return super.applyDamage(param1,param2,param3,param4,param5);
      }
      
      override protected function playCollisionSound() : void
      {
         this.§^"J§.playCollisionSound();
      }
      
      protected function §<<§() : void
      {
         var _loc1_:String = this.§1g§.frozenKilledSound;
         this.§1g§.playSoundLua(_loc1_);
      }
      
      override public function playDestroyedSound() : void
      {
         if(this.§4#U§.§[#C§)
         {
            this.§<<§();
         }
         else
         {
            this.§^"J§.playDestroyedSound();
         }
      }
      
      override protected function addDestructionParticles(param1:§8$B§) : void
      {
         if(!param1)
         {
            return;
         }
         var _loc2_:Number = getBody().GetPosition().x;
         var _loc3_:Number = getBody().GetPosition().y;
         var _loc4_:Number = §%#4§();
         this.§^"J§.spawnParticles(true,param1,_loc2_,_loc3_,_loc4_);
      }
   }
}
