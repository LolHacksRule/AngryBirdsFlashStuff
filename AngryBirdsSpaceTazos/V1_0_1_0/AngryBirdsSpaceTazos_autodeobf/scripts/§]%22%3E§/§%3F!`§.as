package §]">§
{
   import §"!&§.§3",§;
   import §"!&§.§5!f§;
   import §"!&§.§8X§;
   import §"!&§.§`D§;
   import §'!&§.b2World;
   import §4&§.§#r§;
   import §7!8§.Sprite;
   
   public class §?!`§ extends §50§ implements §+o§
   {
      
      public static const §[E§:Number = 0.15;
      
      public static const §?!w§:String = "BLOCK_SENSOR_PIG_A";
      
      public static const §<"§:String = "BLOCK_SENSOR_PIG_B";
      
      private static const §0!S§:Number = 2000;
       
      
      protected var §,!?§:§[!m§;
      
      protected var §3!!§:§[!m§;
      
      protected var §""1§:§;W§;
      
      protected var §--§:Number;
      
      protected var §"6§:int = 0;
      
      protected var §6E§:int = 0;
      
      protected var §&0§:String = "lightBuff";
      
      protected var §-!z§:String = "iceExplosion";
      
      protected var §]@§:§5!f§;
      
      protected var §7!w§:§"!B§;
      
      protected var §<!A§:Boolean;
      
      public function §?!`§(param1:Sprite, param2:§#r§, param3:b2World, param4:§8X§, param5:Number, param6:Number, param7:Number, param8:Number = 1.0)
      {
         this.§]@§ = param4 as §5!f§;
         this.§""1§ = new §;W§(this,§3",§(param4));
         this.initializeObjectBehaviorLogic();
         super(param1,param2,param3,param4,param5,param6,param7,param8);
         if(param3.GetGravity().§2+§() > 0)
         {
            this.§"6§ = 1;
         }
      }
      
      protected function get §7b§() : String
      {
         return §?!w§;
      }
      
      protected function get §6!R§() : String
      {
         return §<"§;
      }
      
      public function get §@k§() : Boolean
      {
         return this.§<!A§;
      }
      
      public function set §@k§(param1:Boolean) : void
      {
         this.§<!A§ = param1;
      }
      
      override protected function createPhysicsBody(param1:Number, param2:Number) : void
      {
         super.createPhysicsBody(param1,param2);
         §^!z§().SetLinearDamping(§[E§);
      }
      
      protected function initializeObjectBehaviorLogic() : void
      {
         this.§7!w§ = new §"!B§(this.§]@§);
      }
      
      override protected function initObjectRenderer() : §&5§
      {
         var _loc1_:§;"3§ = new §;"3§(animation,sprite);
         _loc1_.§6m§ = this.§""1§;
         return _loc1_;
      }
      
      protected function §]D§(param1:§<!=§) : Boolean
      {
         var _loc2_:§`D§ = null;
         if(param1 && param1.levelItem is §`D§)
         {
            _loc2_ = param1.levelItem as §`D§;
            if(_loc2_.§-0§("isBubble"))
            {
               return true;
            }
         }
         return false;
      }
      
      override public function attachedJointRemoved(param1:§<!=§ = null) : void
      {
         super.attachedJointRemoved(param1);
         if(this.§]D§(param1))
         {
            --this.§6E§;
         }
         this.§1!<§(true);
      }
      
      override public function attachedJointCreated(param1:§<!=§ = null) : void
      {
         super.attachedJointCreated(param1);
         if(this.§]D§(param1))
         {
            ++this.§6E§;
         }
         this.§1!<§(false);
      }
      
      public function §34§(param1:§<!=§, param2:§[!m§) : void
      {
         if(param2 == this.§,!?§)
         {
            this.§""1§.§try §(param1);
         }
         else if(param2 == this.§3!!§)
         {
            this.§""1§.§3J§(param1);
         }
      }
      
      public function §0"<§(param1:§<!=§, param2:§[!m§) : void
      {
         if(param2 == this.§,!?§)
         {
            this.§""1§.§,"8§(param1);
         }
         else if(param2 == this.§3!!§)
         {
            this.§""1§.§#Y§(param1);
         }
      }
      
      override public function enteredSensor(param1:§3=§) : void
      {
         super.enteredSensor(param1);
         if(param1 is §5a§)
         {
            ++this.§"6§;
            this.§1!<§(false);
         }
      }
      
      override public function leftSensor(param1:§3=§) : void
      {
         super.leftSensor(param1);
         if(param1 is §5a§)
         {
            --this.§"6§;
            this.§1!<§(true);
         }
      }
      
      override public function updateBeforeRemoving(param1:§;U§) : void
      {
         if(this.§,!?§)
         {
            param1.§!!m§(this.§,!?§);
            this.§,!?§ = null;
         }
         if(this.§3!!§)
         {
            param1.§!!m§(this.§3!!§);
            this.§3!!§ = null;
         }
         var _loc2_:Number = §^!z§().GetPosition().x;
         var _loc3_:Number = §^!z§().GetPosition().y;
         var _loc4_:Number = §+!c§();
         this.§-!c§(param1,_loc2_,_loc3_,_loc4_);
         this.§7!w§.§9f§(param1,_loc2_,_loc3_,_loc4_);
         this.§7!w§.makeExplosion(param1,_loc2_,_loc3_);
         super.updateBeforeRemoving(param1);
      }
      
      protected function §-!c§(param1:§;U§, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:Number = §^!z§().GetPosition().x;
         var _loc6_:Number = §^!z§().GetPosition().y;
         param4 = §+!c§();
         this.§7!w§.§@<§(param1,_loc5_,_loc6_,param4);
         if(this.§]@§.spriteScore)
         {
            param1.addObject(this.§]@§.spriteScore,_loc5_,_loc6_,0,§-%§.§;!J§,false,false,false,3,true);
         }
      }
      
      protected function §`#§(param1:§;U§) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         if(this.§-!z§)
         {
            _loc2_ = §^!z§().GetPosition().x;
            _loc3_ = §^!z§().GetPosition().y;
            param1.addObject(this.§-!z§,_loc2_,_loc3_,0,§-%§.§;!J§,false,true,false);
         }
      }
      
      override protected function setDamageState(param1:Number, param2:§;U§) : Boolean
      {
         if(this.§""1§)
         {
            if(this.§""1§.§;"D§)
            {
               return false;
            }
            this.§""1§.setDamageState(param1);
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
      
      protected function §^t§(param1:§;U§) : void
      {
         var _loc2_:Number = §^!z§().GetPosition().x;
         var _loc3_:Number = §^!z§().GetPosition().y;
         if(!this.§,!?§)
         {
            this.§,!?§ = param1.addObject(this.§7b§,_loc2_,_loc3_,0,§-%§.§;!J§) as §[!m§;
            this.§,!?§.§9J§ = this;
         }
         if(!this.§3!!§)
         {
            this.§3!!§ = param1.addObject(this.§6!R§,_loc2_,_loc3_,0,§-%§.§;!J§) as §[!m§;
            this.§3!!§.§9J§ = this;
         }
      }
      
      protected function §1E§() : void
      {
         if(this.§,!?§)
         {
            this.§,!?§.§^!z§().SetPosition(§^!z§().GetPosition());
         }
         if(this.§3!!§)
         {
            this.§3!!§.§^!z§().SetPosition(§^!z§().GetPosition());
         }
      }
      
      public function playSound(param1:String) : void
      {
         this.§]@§.playSoundLua(param1);
      }
      
      protected function § "&§(param1:§;U§) : void
      {
         this.§`#§(param1);
         var _loc2_:String = this.§]@§.§#!a§;
         if(_loc2_)
         {
            this.§]@§.playSoundLua(_loc2_);
         }
      }
      
      protected function §4" §(param1:Number, param2:§;U§) : void
      {
         if(this.§--§ == §0!S§)
         {
            this.§ "&§(param2);
         }
         this.§--§ -= param1;
         if(this.§--§ < 0)
         {
            health = 0;
            this.§,0§();
         }
      }
      
      override public function update(param1:Number, param2:§;U§) : void
      {
         super.update(param1,param2);
         if(param2)
         {
            this.§^t§(param2);
         }
         this.§""1§.update(param1);
         if(this.§""1§.§;"D§)
         {
            this.§4" §(param1,param2);
         }
         this.§7!w§.update(param1,param2);
         this.§1E§();
      }
      
      protected function §1!<§(param1:Boolean) : void
      {
         if(this.§""1§.§;"D§)
         {
            return;
         }
         if(this.§"6§ <= 0 && this.§6E§ <= 0 && param1)
         {
            if(!this.§""1§.§;"D§)
            {
               this.§--§ = §0!S§;
               this.§""1§.§;"D§ = true;
               §'%§.setAnimation(§;"3§.§"2§);
            }
         }
         else if(this.§""1§.§;"D§)
         {
            this.§""1§.§;"D§ = false;
            §'%§.setAnimation(§;"3§.§,Y§);
         }
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         super.render(param1,param2,param3);
         sprite.rotation = §1"3§ + this.§7!w§.§3"7§;
      }
      
      override public function applyDamage(param1:Number, param2:§;U§, param3:§1!0§, param4:Boolean = true) : Number
      {
         return super.applyDamage(param1,param2,param3,param4);
      }
      
      override protected function playCollisionSound() : void
      {
         this.§7!w§.playCollisionSound();
      }
      
      override protected function playDamagedSound() : void
      {
         this.§7!w§.playDamagedSound();
      }
      
      protected function §,0§() : void
      {
         var _loc1_:String = this.§]@§.frozenKilledSound;
         this.§]@§.playSoundLua(_loc1_);
      }
      
      override protected function playDestroyedSound() : void
      {
         if(this.§""1§.§;"D§)
         {
            this.§,0§();
         }
         else
         {
            this.§7!w§.playDestroyedSound();
         }
      }
      
      override protected function addDestructionParticles(param1:§;U§) : void
      {
         var _loc2_:Number = §^!z§().GetPosition().x;
         var _loc3_:Number = §^!z§().GetPosition().y;
         var _loc4_:Number = §+!c§();
         this.§7!w§.§@<§(param1,_loc2_,_loc3_,_loc4_);
      }
   }
}
