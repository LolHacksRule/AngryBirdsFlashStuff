package §;!=§
{
   import § !N§.§5"?§;
   import §'#K§.b2World;
   import §,#e§.Sprite;
   import §7"T§.§7b§;
   import §8#K§.§&2§;
   import §8#K§.§;"[§;
   import §8#K§.§<5§;
   import §8#K§.§?"L§;
   
   public class §-#+§ extends §#!m§ implements §>;§
   {
      
      public static const §>6§:Number = 0.15;
      
      public static const §'!l§:String = "BLOCK_SENSOR_PIG_A";
      
      public static const §5$=§:String = "BLOCK_SENSOR_PIG_B";
      
      private static const §1U§:Number = 2000;
       
      
      protected var §1!C§:§ $C§;
      
      protected var §^A§:§ $C§;
      
      protected var §9"P§:§<!Y§;
      
      protected var §8#7§:Number;
      
      protected var §`$@§:int = 0;
      
      protected var §6"O§:int = 0;
      
      protected var §,!§:String = "lightBuff";
      
      protected var § "%§:String = "iceExplosion";
      
      protected var §5"v§:§;"[§;
      
      protected var §`!g§:§%j§;
      
      protected var §+#&§:Boolean;
      
      public function §-#+§(param1:Sprite, param2:§7b§, param3:b2World, param4:§&2§, param5:§5"?§, param6:Number = 1.0)
      {
         this.§5"v§ = param4 as §;"[§;
         this.§9"P§ = new §<!Y§(this,§?"L§(param4));
         this.§5#f§();
         super(param1,param2,param3,param4,param5,param6);
         if(param3.GetGravity().Length() > 0)
         {
            this.§`$@§ = 1;
         }
      }
      
      protected function get §3$A§() : String
      {
         return §'!l§;
      }
      
      protected function get §;"o§() : String
      {
         return §5$=§;
      }
      
      public function get §;"W§() : Boolean
      {
         return this.§+#&§;
      }
      
      public function set §;"W§(param1:Boolean) : void
      {
         this.§+#&§ = param1;
      }
      
      override protected function createPhysicsBody(param1:Number, param2:Number) : void
      {
         super.createPhysicsBody(param1,param2);
         getBody().SetLinearDamping(§>6§);
      }
      
      protected function §5#f§() : void
      {
         this.§`!g§ = new §%j§(this.§5"v§);
      }
      
      override protected function initObjectRenderer() : §1!"§
      {
         var _loc1_:§!$A§ = new §!$A§(animation,sprite);
         _loc1_.§1#P§ = this.§9"P§;
         return _loc1_;
      }
      
      protected function §"u§(param1:§'#N§) : Boolean
      {
         var _loc2_:§<5§ = null;
         if(param1 && param1.levelItem is §<5§)
         {
            _loc2_ = param1.levelItem as §<5§;
            if(_loc2_.§^#d§("isBubble"))
            {
               return true;
            }
         }
         return false;
      }
      
      override public function attachedJointRemoved(param1:§'#N§ = null) : void
      {
         super.attachedJointRemoved(param1);
         if(this.§"u§(param1))
         {
            --this.§6"O§;
         }
         this.§`!S§(true);
      }
      
      override public function attachedJointCreated(param1:§'#N§ = null) : void
      {
         super.attachedJointCreated(param1);
         if(this.§"u§(param1))
         {
            ++this.§6"O§;
         }
         this.§`!S§(false);
      }
      
      public function §8#<§(param1:§'#N§, param2:§ $C§) : void
      {
         if(param2 == this.§1!C§)
         {
            this.§9"P§.§-"R§(param1);
         }
         else if(param2 == this.§^A§)
         {
            this.§9"P§.§4X§(param1);
         }
      }
      
      public function §9"N§(param1:§'#N§, param2:§ $C§) : void
      {
         if(param2 == this.§1!C§)
         {
            this.§9"P§.§"#]§(param1);
         }
         else if(param2 == this.§^A§)
         {
            this.§9"P§.§,$;§(param1);
         }
      }
      
      override public function enteredSensor(param1:§`"4§) : void
      {
         super.enteredSensor(param1);
         if(param1 is §@s§)
         {
            ++this.§`$@§;
            this.§`!S§(false);
         }
      }
      
      override public function leftSensor(param1:§`"4§) : void
      {
         super.leftSensor(param1);
         if(param1 is §@s§)
         {
            --this.§`$@§;
            this.§`!S§(true);
         }
      }
      
      override public function updateBeforeRemoving(param1:§]!m§, param2:Boolean) : void
      {
         if(!param1)
         {
            return;
         }
         if(this.§1!C§)
         {
            param1.removeObject(this.§1!C§);
            this.§1!C§ = null;
         }
         if(this.§^A§)
         {
            param1.removeObject(this.§^A§);
            this.§^A§ = null;
         }
         var _loc3_:Number = getBody().GetPosition().x;
         var _loc4_:Number = getBody().GetPosition().y;
         var _loc5_:Number = §3"W§();
         this.§7!S§(param1,_loc3_,_loc4_,_loc5_);
         this.§`!g§.§=$?§(param1,_loc3_,_loc4_,_loc5_);
         super.updateBeforeRemoving(param1,param2);
      }
      
      protected function §7!S§(param1:§]!m§, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:Number = getBody().GetPosition().x;
         var _loc6_:Number = getBody().GetPosition().y;
         param4 = §3"W§();
         if(this.§5"v§.spriteScore)
         {
            param1.addObject(this.§5"v§.spriteScore,_loc5_,_loc6_,0,§ !i§.ID_NEXT_FREE,false,false,false,3,true);
         }
      }
      
      protected function § $"§(param1:§]!m§) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         if(this.§ "%§)
         {
            _loc2_ = getBody().GetPosition().x;
            _loc3_ = getBody().GetPosition().y;
            param1.addObject(this.§ "%§,_loc2_,_loc3_,0,§ !i§.ID_NEXT_FREE,false,true,false);
         }
      }
      
      override protected function setDamageState(param1:Number, param2:§]!m§) : Boolean
      {
         if(this.§9"P§)
         {
            if(this.§9"P§.§!0§)
            {
               return false;
            }
            this.§9"P§.setDamageState(param1);
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
      
      protected function §8#Q§(param1:§]!m§) : void
      {
         var _loc2_:Number = getBody().GetPosition().x;
         var _loc3_:Number = getBody().GetPosition().y;
         if(!this.§1!C§)
         {
            this.§1!C§ = param1.addObject(this.§3$A§,_loc2_,_loc3_,0,§ !i§.ID_NEXT_FREE) as § $C§;
            this.§1!C§.§#"S§ = this;
         }
         if(!this.§^A§)
         {
            this.§^A§ = param1.addObject(this.§;"o§,_loc2_,_loc3_,0,§ !i§.ID_NEXT_FREE) as § $C§;
            this.§^A§.§#"S§ = this;
         }
      }
      
      protected function §7#9§() : void
      {
         if(this.§1!C§)
         {
            this.§1!C§.getBody().SetPosition(getBody().GetPosition());
         }
         if(this.§^A§)
         {
            this.§^A§.getBody().SetPosition(getBody().GetPosition());
         }
      }
      
      public function playSoundLua(param1:String) : void
      {
         this.§5"v§.playSoundLua(param1);
      }
      
      protected function §?#o§(param1:§]!m§) : void
      {
         this.§ $"§(param1);
         var _loc2_:String = this.§5"v§.§4#,§;
         if(_loc2_)
         {
            this.§5"v§.playSoundLua(_loc2_);
         }
      }
      
      protected function §##w§(param1:Number, param2:§]!m§) : void
      {
         if(this.§8#7§ == §1U§)
         {
            this.§?#o§(param2);
         }
         this.§8#7§ -= param1;
         if(this.§8#7§ < 0)
         {
            health = 0;
            this.§]#_§();
         }
      }
      
      override public function update(param1:Number, param2:§]!m§) : void
      {
         super.update(param1,param2);
         if(param2)
         {
            this.§8#Q§(param2);
         }
         this.§9"P§.update(param1);
         if(this.§9"P§.§!0§)
         {
            this.§##w§(param1,param2);
         }
         this.§`!g§.update(param1,param2);
         this.§7#9§();
      }
      
      protected function §`!S§(param1:Boolean) : void
      {
         if(this.§9"P§.§!0§)
         {
            return;
         }
         if(this.§`$@§ <= 0 && this.§6"O§ <= 0 && param1)
         {
            if(!this.§9"P§.§!0§)
            {
               this.§8#7§ = §1U§;
               this.§9"P§.§!0§ = true;
               §]$"§.setAnimation(§!$A§.§1&§);
            }
         }
         else if(this.§9"P§.§!0§)
         {
            this.§9"P§.§!0§ = false;
            §]$"§.setAnimation(§!$A§.§'"L§);
         }
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         super.render(param1,param2,param3);
         sprite.rotation = §^]§ + this.§`!g§.§["c§;
      }
      
      override public function applyDamage(param1:Number, param2:§]!m§, param3:§>"G§, param4:Boolean = true, param5:Boolean = false) : Number
      {
         return super.applyDamage(param1,param2,param3,param4,param5);
      }
      
      override protected function playCollisionSound() : void
      {
         this.§`!g§.playCollisionSound();
      }
      
      protected function §]#_§() : void
      {
         var _loc1_:String = this.§5"v§.frozenKilledSound;
         this.§5"v§.playSoundLua(_loc1_);
      }
      
      override public function playDestroyedSound() : void
      {
         if(this.§9"P§.§!0§)
         {
            this.§]#_§();
         }
         else
         {
            this.§`!g§.playDestroyedSound();
         }
      }
      
      override protected function addDestructionParticles(param1:§]!m§) : void
      {
         if(!param1)
         {
            return;
         }
         var _loc2_:Number = getBody().GetPosition().x;
         var _loc3_:Number = getBody().GetPosition().y;
         var _loc4_:Number = §3"W§();
         this.§`!g§.spawnParticles(true,param1,_loc2_,_loc3_,_loc4_);
      }
   }
}
