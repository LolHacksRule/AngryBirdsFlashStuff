package §8§#8
{
   import §4"O§.b2World;
   import §8"L§.§4"?§;
   import §8"L§.§4U§;
   import §8"L§.§5$=§;
   import §8"L§.§7^§;
   import §>M§.§["z§;
   import §^"S§.Sprite;
   import §`"8§.§0$2§;
   
   public class §2#'§ extends §6!H§ implements §+"q§
   {
      
      public static const §=$#§:Number = 0.15;
      
      public static const §5>§:String = "BLOCK_SENSOR_PIG_A";
      
      public static const §<p§:String = "BLOCK_SENSOR_PIG_B";
      
      private static const §3"A§:Number = 2000;
       
      
      protected var §8!Y§:§#!$§;
      
      protected var §'#S§:§#!$§;
      
      protected var §9$0§:§?$8§;
      
      protected var §""3§:Number;
      
      protected var §""b§:int = 0;
      
      protected var §=" §:int = 0;
      
      protected var §"!2§:String = "lightBuff";
      
      protected var §0#,§:String = "iceExplosion";
      
      protected var §!p§:§4"?§;
      
      protected var §2Z§:§-l§;
      
      protected var §&c§:Boolean;
      
      public function §2#'§(param1:Sprite, param2:§0$2§, param3:b2World, param4:§4U§, param5:§["z§, param6:Number = 1.0)
      {
         this.§!p§ = param4 as §4"?§;
         this.§9$0§ = new §?$8§(this,§7^§(param4));
         this.§3!t§();
         super(param1,param2,param3,param4,param5,param6);
         if(param3.GetGravity().Length() > 0)
         {
            this.§""b§ = 1;
         }
      }
      
      protected function get §]"K§() : String
      {
         return §5>§;
      }
      
      protected function get § "b§() : String
      {
         return §<p§;
      }
      
      public function get §6I§() : Boolean
      {
         return this.§&c§;
      }
      
      public function set §6I§(param1:Boolean) : void
      {
         this.§&c§ = param1;
      }
      
      override protected function createPhysicsBody(param1:Number, param2:Number) : void
      {
         super.createPhysicsBody(param1,param2);
         getBody().SetLinearDamping(§=$#§);
      }
      
      protected function §3!t§() : void
      {
         this.§2Z§ = new §-l§(this.§!p§);
      }
      
      override protected function initObjectRenderer() : § "m§
      {
         var _loc1_:§6#?§ = new §6#?§(animation,sprite);
         _loc1_.§+#c§ = this.§9$0§;
         return _loc1_;
      }
      
      protected function §<"]§(param1:§,#5§) : Boolean
      {
         var _loc2_:§5$=§ = null;
         if(param1 && param1.levelItem is §5$=§)
         {
            _loc2_ = param1.levelItem as §5$=§;
            if(_loc2_.§%?§("isBubble"))
            {
               return true;
            }
         }
         return false;
      }
      
      override public function attachedJointRemoved(param1:§,#5§ = null) : void
      {
         super.attachedJointRemoved(param1);
         if(this.§<"]§(param1))
         {
            --this.§=" §;
         }
         this.§^,§(true);
      }
      
      override public function attachedJointCreated(param1:§,#5§ = null) : void
      {
         super.attachedJointCreated(param1);
         if(this.§<"]§(param1))
         {
            ++this.§=" §;
         }
         this.§^,§(false);
      }
      
      public function §9#O§(param1:§,#5§, param2:§#!$§) : void
      {
         if(param2 == this.§8!Y§)
         {
            this.§9$0§.§9!J§(param1);
         }
         else if(param2 == this.§'#S§)
         {
            this.§9$0§.§5"u§(param1);
         }
      }
      
      public function §?#4§(param1:§,#5§, param2:§#!$§) : void
      {
         if(param2 == this.§8!Y§)
         {
            this.§9$0§.§ "=§(param1);
         }
         else if(param2 == this.§'#S§)
         {
            this.§9$0§.§ n§(param1);
         }
      }
      
      override public function enteredSensor(param1:§7!0§) : void
      {
         super.enteredSensor(param1);
         if(param1 is §&$B§)
         {
            ++this.§""b§;
            this.§^,§(false);
         }
      }
      
      override public function leftSensor(param1:§7!0§) : void
      {
         super.leftSensor(param1);
         if(param1 is §&$B§)
         {
            --this.§""b§;
            this.§^,§(true);
         }
      }
      
      override public function updateBeforeRemoving(param1:§&#V§, param2:Boolean) : void
      {
         if(!param1)
         {
            return;
         }
         if(this.§8!Y§)
         {
            param1.removeObject(this.§8!Y§);
            this.§8!Y§ = null;
         }
         if(this.§'#S§)
         {
            param1.removeObject(this.§'#S§);
            this.§'#S§ = null;
         }
         var _loc3_:Number = getBody().GetPosition().x;
         var _loc4_:Number = getBody().GetPosition().y;
         var _loc5_:Number = §`$"§();
         this.§-"-§(param1,_loc3_,_loc4_,_loc5_);
         this.§2Z§.§+n§(param1,_loc3_,_loc4_,_loc5_);
         this.§2Z§.§-h§(param1,_loc3_,_loc4_);
         super.updateBeforeRemoving(param1,param2);
      }
      
      protected function §-"-§(param1:§&#V§, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:Number = getBody().GetPosition().x;
         var _loc6_:Number = getBody().GetPosition().y;
         param4 = §`$"§();
         if(this.§!p§.spriteScore)
         {
            param1.addObject(this.§!p§.spriteScore,_loc5_,_loc6_,0,§!#L§.ID_NEXT_FREE,false,false,false,3,true);
         }
      }
      
      protected function §," §(param1:§&#V§) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         if(this.§0#,§)
         {
            _loc2_ = getBody().GetPosition().x;
            _loc3_ = getBody().GetPosition().y;
            param1.addObject(this.§0#,§,_loc2_,_loc3_,0,§!#L§.ID_NEXT_FREE,false,true,false);
         }
      }
      
      override protected function setDamageState(param1:Number, param2:§&#V§) : Boolean
      {
         if(this.§9$0§)
         {
            if(this.§9$0§.§>!V§)
            {
               return false;
            }
            this.§9$0§.setDamageState(param1);
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
      
      protected function §["'§(param1:§&#V§) : void
      {
         var _loc2_:Number = getBody().GetPosition().x;
         var _loc3_:Number = getBody().GetPosition().y;
         if(!this.§8!Y§)
         {
            this.§8!Y§ = param1.addObject(this.§]"K§,_loc2_,_loc3_,0,§!#L§.ID_NEXT_FREE) as §#!$§;
            this.§8!Y§.§<#!§ = this;
         }
         if(!this.§'#S§)
         {
            this.§'#S§ = param1.addObject(this.§ "b§,_loc2_,_loc3_,0,§!#L§.ID_NEXT_FREE) as §#!$§;
            this.§'#S§.§<#!§ = this;
         }
      }
      
      protected function §5"d§() : void
      {
         if(this.§8!Y§)
         {
            this.§8!Y§.getBody().SetPosition(getBody().GetPosition());
         }
         if(this.§'#S§)
         {
            this.§'#S§.getBody().SetPosition(getBody().GetPosition());
         }
      }
      
      public function §0#R§(param1:String) : void
      {
         this.§!p§.§0#R§(param1);
      }
      
      protected function §6,§(param1:§&#V§) : void
      {
         this.§," §(param1);
         var _loc2_:String = this.§!p§.§7"g§;
         if(_loc2_)
         {
            this.§!p§.§0#R§(_loc2_);
         }
      }
      
      protected function §2!Q§(param1:Number, param2:§&#V§) : void
      {
         if(this.§""3§ == §3"A§)
         {
            this.§6,§(param2);
         }
         this.§""3§ -= param1;
         if(this.§""3§ < 0)
         {
            health = 0;
            this.§!"4§();
         }
      }
      
      override public function update(param1:Number, param2:§&#V§) : void
      {
         super.update(param1,param2);
         if(param2)
         {
            this.§["'§(param2);
         }
         this.§9$0§.update(param1);
         if(this.§9$0§.§>!V§)
         {
            this.§2!Q§(param1,param2);
         }
         this.§2Z§.update(param1,param2);
         this.§5"d§();
      }
      
      protected function §^,§(param1:Boolean) : void
      {
         if(this.§9$0§.§>!V§)
         {
            return;
         }
         if(this.§""b§ <= 0 && this.§=" § <= 0 && param1)
         {
            if(!this.§9$0§.§>!V§)
            {
               this.§""3§ = §3"A§;
               this.§9$0§.§>!V§ = true;
               §9"6§.setAnimation(§6#?§.§,#&§);
            }
         }
         else if(this.§9$0§.§>!V§)
         {
            this.§9$0§.§>!V§ = false;
            §9"6§.setAnimation(§6#?§.§?#§);
         }
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         super.render(param1,param2,param3);
         sprite.rotation = §]#8§ + this.§2Z§.§&C§;
      }
      
      override public function applyDamage(param1:Number, param2:§&#V§, param3:§4!y§, param4:Boolean = true) : Number
      {
         return super.applyDamage(param1,param2,param3,param4);
      }
      
      override protected function playCollisionSound() : void
      {
         this.§2Z§.playCollisionSound();
      }
      
      protected function §!"4§() : void
      {
         var _loc1_:String = this.§!p§.frozenKilledSound;
         this.§!p§.§0#R§(_loc1_);
      }
      
      override public function playDestroyedSound() : void
      {
         if(this.§9$0§.§>!V§)
         {
            this.§!"4§();
         }
         else
         {
            this.§2Z§.playDestroyedSound();
         }
      }
      
      override protected function addDestructionParticles(param1:§&#V§) : void
      {
         if(!param1)
         {
            return;
         }
         var _loc2_:Number = getBody().GetPosition().x;
         var _loc3_:Number = getBody().GetPosition().y;
         var _loc4_:Number = §`$"§();
         this.§2Z§.§7# §(true,param1,_loc2_,_loc3_,_loc4_);
      }
   }
}
