package §6"R§
{
   import §1"s§.Sprite;
   import §1x§.b2World;
   import §3"$§.§[a§;
   import §4"F§.§^d§;
   import §>P§.§&"T§;
   import §>P§.§+^§;
   import §>P§.§=!,§;
   import §>P§.§=4§;
   
   public class §[!R§ extends §-#'§ implements §`!V§
   {
      
      public static const §2"x§:Number = 0.15;
      
      public static const §["+§:String = "BLOCK_SENSOR_PIG_A";
      
      public static const §^!4§:String = "BLOCK_SENSOR_PIG_B";
      
      private static const §,!l§:Number = 2000;
       
      
      protected var §,!@§:§1_§;
      
      protected var §]Q§:§1_§;
      
      protected var §@!"§:§-"I§;
      
      protected var §7Z§:Number;
      
      protected var §#Y§:int = 0;
      
      protected var §-!X§:int = 0;
      
      protected var §break§:String = "lightBuff";
      
      protected var §<"9§:String = "iceExplosion";
      
      protected var §?!J§:§+^§;
      
      protected var §3"J§:§11§;
      
      protected var §<">§:Boolean;
      
      public function §[!R§(param1:Sprite, param2:§[a§, param3:b2World, param4:§=!,§, param5:§^d§, param6:Number = 1.0)
      {
         this.§?!J§ = param4 as §+^§;
         this.§@!"§ = new §-"I§(this,§&"T§(param4));
         this.initializeObjectBehaviorLogic();
         super(param1,param2,param3,param4,param5,param6);
         if(param3.GetGravity().Length() > 0)
         {
            this.§#Y§ = 1;
         }
      }
      
      protected function get §9"c§() : String
      {
         return §["+§;
      }
      
      protected function get §1M§() : String
      {
         return §^!4§;
      }
      
      public function get §4"n§() : Boolean
      {
         return this.§<">§;
      }
      
      public function set §4"n§(param1:Boolean) : void
      {
         this.§<">§ = param1;
      }
      
      override protected function createPhysicsBody(param1:Number, param2:Number) : void
      {
         super.createPhysicsBody(param1,param2);
         §?"Z§().SetLinearDamping(§2"x§);
      }
      
      protected function initializeObjectBehaviorLogic() : void
      {
         this.§3"J§ = new §11§(this.§?!J§);
      }
      
      override protected function initObjectRenderer() : §2A§
      {
         var _loc1_:§6"U§ = new §6"U§(animation,sprite);
         _loc1_.§'#3§ = this.§@!"§;
         return _loc1_;
      }
      
      protected function §4K§(param1:§!z§) : Boolean
      {
         var _loc2_:§=4§ = null;
         if(param1 && param1.levelItem is §=4§)
         {
            _loc2_ = param1.levelItem as §=4§;
            if(_loc2_.§'"]§("isBubble"))
            {
               return true;
            }
         }
         return false;
      }
      
      override public function attachedJointRemoved(param1:§!z§ = null) : void
      {
         super.attachedJointRemoved(param1);
         if(this.§4K§(param1))
         {
            --this.§-!X§;
         }
         this.setFrozen(true);
      }
      
      override public function attachedJointCreated(param1:§!z§ = null) : void
      {
         super.attachedJointCreated(param1);
         if(this.§4K§(param1))
         {
            ++this.§-!X§;
         }
         this.setFrozen(false);
      }
      
      public function §-p§(param1:§!z§, param2:§1_§) : void
      {
         if(param2 == this.§,!@§)
         {
            this.§@!"§.§ ",§(param1);
         }
         else if(param2 == this.§]Q§)
         {
            this.§@!"§.§`"Z§(param1);
         }
      }
      
      public function §4H§(param1:§!z§, param2:§1_§) : void
      {
         if(param2 == this.§,!@§)
         {
            this.§@!"§.§^u§(param1);
         }
         else if(param2 == this.§]Q§)
         {
            this.§@!"§.§9"L§(param1);
         }
      }
      
      override public function enteredSensor(param1:§-t§) : void
      {
         super.enteredSensor(param1);
         if(param1 is §?!T§)
         {
            ++this.§#Y§;
            this.setFrozen(false);
         }
      }
      
      override public function leftSensor(param1:§-t§) : void
      {
         super.leftSensor(param1);
         if(param1 is §?!T§)
         {
            --this.§#Y§;
            this.setFrozen(true);
         }
      }
      
      override public function updateBeforeRemoving(param1:§""M§) : void
      {
         if(!param1)
         {
            return;
         }
         if(this.§,!@§)
         {
            param1.removeObject(this.§,!@§);
            this.§,!@§ = null;
         }
         if(this.§]Q§)
         {
            param1.removeObject(this.§]Q§);
            this.§]Q§ = null;
         }
         var _loc2_:Number = §?"Z§().GetPosition().x;
         var _loc3_:Number = §?"Z§().GetPosition().y;
         var _loc4_:Number = §4F§();
         this.§^"5§(param1,_loc2_,_loc3_,_loc4_);
         this.§3"J§.§#!g§(param1,_loc2_,_loc3_,_loc4_);
         this.§3"J§.§9"q§(param1,_loc2_,_loc3_);
         super.updateBeforeRemoving(param1);
      }
      
      protected function §^"5§(param1:§""M§, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:Number = §?"Z§().GetPosition().x;
         var _loc6_:Number = §?"Z§().GetPosition().y;
         param4 = §4F§();
         if(this.§?!J§.spriteScore)
         {
            param1.addObject(this.§?!J§.spriteScore,_loc5_,_loc6_,0,§super§.§4"D§,false,false,false,3,true);
         }
      }
      
      protected function §0!t§(param1:§""M§) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         if(this.§<"9§)
         {
            _loc2_ = §?"Z§().GetPosition().x;
            _loc3_ = §?"Z§().GetPosition().y;
            param1.addObject(this.§<"9§,_loc2_,_loc3_,0,§super§.§4"D§,false,true,false);
         }
      }
      
      override protected function setDamageState(param1:Number, param2:§""M§) : Boolean
      {
         if(this.§@!"§)
         {
            if(this.§@!"§.isFrozen)
            {
               return false;
            }
            this.§@!"§.setDamageState(param1);
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
      
      protected function §4#2§(param1:§""M§) : void
      {
         var _loc2_:Number = §?"Z§().GetPosition().x;
         var _loc3_:Number = §?"Z§().GetPosition().y;
         if(!this.§,!@§)
         {
            this.§,!@§ = param1.addObject(this.§9"c§,_loc2_,_loc3_,0,§super§.§4"D§) as §1_§;
            this.§,!@§.§6?§ = this;
         }
         if(!this.§]Q§)
         {
            this.§]Q§ = param1.addObject(this.§1M§,_loc2_,_loc3_,0,§super§.§4"D§) as §1_§;
            this.§]Q§.§6?§ = this;
         }
      }
      
      protected function §]"8§() : void
      {
         if(this.§,!@§)
         {
            this.§,!@§.§?"Z§().SetPosition(§?"Z§().GetPosition());
         }
         if(this.§]Q§)
         {
            this.§]Q§.§?"Z§().SetPosition(§?"Z§().GetPosition());
         }
      }
      
      public function §=Y§(param1:String) : void
      {
         this.§?!J§.§0#+§(param1);
      }
      
      protected function §&!U§(param1:§""M§) : void
      {
         this.§0!t§(param1);
         var _loc2_:String = this.§?!J§.§ #&§;
         if(_loc2_)
         {
            this.§?!J§.§0#+§(_loc2_);
         }
      }
      
      protected function §^h§(param1:Number, param2:§""M§) : void
      {
         if(this.§7Z§ == §,!l§)
         {
            this.§&!U§(param2);
         }
         this.§7Z§ -= param1;
         if(this.§7Z§ < 0)
         {
            health = 0;
            this.§8"d§();
         }
      }
      
      override public function update(param1:Number, param2:§""M§) : void
      {
         super.update(param1,param2);
         if(param2)
         {
            this.§4#2§(param2);
         }
         this.§@!"§.update(param1);
         if(this.§@!"§.isFrozen)
         {
            this.§^h§(param1,param2);
         }
         this.§3"J§.update(param1,param2);
         this.§]"8§();
      }
      
      protected function setFrozen(param1:Boolean) : void
      {
         if(this.§@!"§.isFrozen)
         {
            return;
         }
         if(this.§#Y§ <= 0 && this.§-!X§ <= 0 && param1)
         {
            if(!this.§@!"§.isFrozen)
            {
               this.§7Z§ = §,!l§;
               this.§@!"§.isFrozen = true;
               §]h§.setAnimation(§6"U§.§;R§);
            }
         }
         else if(this.§@!"§.isFrozen)
         {
            this.§@!"§.isFrozen = false;
            §]h§.setAnimation(§6"U§.§+S§);
         }
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         super.render(param1,param2,param3);
         sprite.rotation = § !r§ + this.§3"J§.§"=§;
      }
      
      override public function applyDamage(param1:Number, param2:§""M§, param3:§4!w§, param4:Boolean = true) : Number
      {
         return super.applyDamage(param1,param2,param3,param4);
      }
      
      override protected function playCollisionSound() : void
      {
         this.§3"J§.playCollisionSound();
      }
      
      override protected function playDamagedSound() : void
      {
         this.§3"J§.playDamagedSound();
      }
      
      protected function §8"d§() : void
      {
         var _loc1_:String = this.§?!J§.frozenKilledSound;
         this.§?!J§.§0#+§(_loc1_);
      }
      
      override protected function playDestroyedSound() : void
      {
         if(this.§@!"§.isFrozen)
         {
            this.§8"d§();
         }
         else
         {
            this.§3"J§.playDestroyedSound();
         }
      }
      
      override protected function addDestructionParticles(param1:§""M§) : void
      {
         if(!param1)
         {
            return;
         }
         var _loc2_:Number = §?"Z§().GetPosition().x;
         var _loc3_:Number = §?"Z§().GetPosition().y;
         var _loc4_:Number = §4F§();
         this.§3"J§.§7&§(param1,_loc2_,_loc3_,_loc4_);
      }
   }
}
