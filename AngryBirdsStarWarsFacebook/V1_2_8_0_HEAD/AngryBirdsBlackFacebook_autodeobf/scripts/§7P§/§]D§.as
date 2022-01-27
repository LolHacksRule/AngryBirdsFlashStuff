package §7P§
{
   import §!!U§.Sprite;
   import §+#$§.b2World;
   import §2"Y§.§"t§;
   import §2"Y§.§%#@§;
   import §2"Y§.§2o§;
   import §2"Y§.§["$§;
   import §7!F§.§>"G§;
   import §<"B§.§94§;
   
   public class §]D§ extends §<!2§ implements §;!i§
   {
      
      public static const §^!k§:Number = 0.15;
      
      public static const §7"9§:String = "BLOCK_SENSOR_PIG_A";
      
      public static const §+"c§:String = "BLOCK_SENSOR_PIG_B";
      
      private static const §[#0§:Number = 2000;
       
      
      protected var §8"M§:§ "=§;
      
      protected var §8+§:§ "=§;
      
      protected var §]"@§:§0"z§;
      
      protected var §!T§:Number;
      
      protected var §7!'§:int = 0;
      
      protected var §"!C§:int = 0;
      
      protected var §@!x§:String = "lightBuff";
      
      protected var §8"b§:String = "iceExplosion";
      
      protected var §'!P§:§2o§;
      
      protected var §7[§:§!p§;
      
      protected var §0""§:Boolean;
      
      public function §]D§(param1:Sprite, param2:§>"G§, param3:b2World, param4:§"t§, param5:§94§, param6:Number = 1.0)
      {
         this.§'!P§ = param4 as §2o§;
         this.§]"@§ = new §0"z§(this,§%#@§(param4));
         this.initializeObjectBehaviorLogic();
         super(param1,param2,param3,param4,param5,param6);
         if(param3.GetGravity().Length() > 0)
         {
            this.§7!'§ = 1;
         }
      }
      
      protected function get §9,§() : String
      {
         return §7"9§;
      }
      
      protected function get §<G§() : String
      {
         return §+"c§;
      }
      
      public function get §3!$§() : Boolean
      {
         return this.§0""§;
      }
      
      public function set §3!$§(param1:Boolean) : void
      {
         this.§0""§ = param1;
      }
      
      override protected function createPhysicsBody(param1:Number, param2:Number) : void
      {
         super.createPhysicsBody(param1,param2);
         §3!t§().SetLinearDamping(§^!k§);
      }
      
      protected function initializeObjectBehaviorLogic() : void
      {
         this.§7[§ = new §!p§(this.§'!P§);
      }
      
      override protected function initObjectRenderer() : §,D§
      {
         var _loc1_:§`#§ = new §`#§(animation,sprite);
         _loc1_.§""E§ = this.§]"@§;
         return _loc1_;
      }
      
      protected function §!c§(param1:§7B§) : Boolean
      {
         var _loc2_:§["$§ = null;
         if(param1 && param1.levelItem is §["$§)
         {
            _loc2_ = param1.levelItem as §["$§;
            if(_loc2_.§@"8§("isBubble"))
            {
               return true;
            }
         }
         return false;
      }
      
      override public function attachedJointRemoved(param1:§7B§ = null) : void
      {
         super.attachedJointRemoved(param1);
         if(this.§!c§(param1))
         {
            --this.§"!C§;
         }
         this.setFrozen(true);
      }
      
      override public function attachedJointCreated(param1:§7B§ = null) : void
      {
         super.attachedJointCreated(param1);
         if(this.§!c§(param1))
         {
            ++this.§"!C§;
         }
         this.setFrozen(false);
      }
      
      public function §7`§(param1:§7B§, param2:§ "=§) : void
      {
         if(param2 == this.§8"M§)
         {
            this.§]"@§.§3"U§(param1);
         }
         else if(param2 == this.§8+§)
         {
            this.§]"@§.§7!S§(param1);
         }
      }
      
      public function §0">§(param1:§7B§, param2:§ "=§) : void
      {
         if(param2 == this.§8"M§)
         {
            this.§]"@§.§0",§(param1);
         }
         else if(param2 == this.§8+§)
         {
            this.§]"@§.§6"u§(param1);
         }
      }
      
      override public function enteredSensor(param1:§1#E§) : void
      {
         super.enteredSensor(param1);
         if(param1 is §"M§)
         {
            ++this.§7!'§;
            this.setFrozen(false);
         }
      }
      
      override public function leftSensor(param1:§1#E§) : void
      {
         super.leftSensor(param1);
         if(param1 is §"M§)
         {
            --this.§7!'§;
            this.setFrozen(true);
         }
      }
      
      override public function updateBeforeRemoving(param1:§;$§) : void
      {
         if(!param1)
         {
            return;
         }
         if(this.§8"M§)
         {
            param1.removeObject(this.§8"M§);
            this.§8"M§ = null;
         }
         if(this.§8+§)
         {
            param1.removeObject(this.§8+§);
            this.§8+§ = null;
         }
         var _loc2_:Number = §3!t§().GetPosition().x;
         var _loc3_:Number = §3!t§().GetPosition().y;
         var _loc4_:Number = §"#,§();
         this.§`A§(param1,_loc2_,_loc3_,_loc4_);
         this.§7[§.§+"M§(param1,_loc2_,_loc3_,_loc4_);
         this.§7[§.§4c§(param1,_loc2_,_loc3_);
         super.updateBeforeRemoving(param1);
      }
      
      protected function §`A§(param1:§;$§, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:Number = §3!t§().GetPosition().x;
         var _loc6_:Number = §3!t§().GetPosition().y;
         param4 = §"#,§();
         if(this.§'!P§.spriteScore)
         {
            param1.addObject(this.§'!P§.spriteScore,_loc5_,_loc6_,0,§;=§.§""3§,false,false,false,3,true);
         }
      }
      
      protected function §!"M§(param1:§;$§) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         if(this.§8"b§)
         {
            _loc2_ = §3!t§().GetPosition().x;
            _loc3_ = §3!t§().GetPosition().y;
            param1.addObject(this.§8"b§,_loc2_,_loc3_,0,§;=§.§""3§,false,true,false);
         }
      }
      
      override protected function setDamageState(param1:Number, param2:§;$§) : Boolean
      {
         if(this.§]"@§)
         {
            if(this.§]"@§.isFrozen)
            {
               return false;
            }
            this.§]"@§.setDamageState(param1);
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
      
      protected function §#z§(param1:§;$§) : void
      {
         var _loc2_:Number = §3!t§().GetPosition().x;
         var _loc3_:Number = §3!t§().GetPosition().y;
         if(!this.§8"M§)
         {
            this.§8"M§ = param1.addObject(this.§9,§,_loc2_,_loc3_,0,§;=§.§""3§) as § "=§;
            this.§8"M§.§=?§ = this;
         }
         if(!this.§8+§)
         {
            this.§8+§ = param1.addObject(this.§<G§,_loc2_,_loc3_,0,§;=§.§""3§) as § "=§;
            this.§8+§.§=?§ = this;
         }
      }
      
      protected function §5!3§() : void
      {
         if(this.§8"M§)
         {
            this.§8"M§.§3!t§().SetPosition(§3!t§().GetPosition());
         }
         if(this.§8+§)
         {
            this.§8+§.§3!t§().SetPosition(§3!t§().GetPosition());
         }
      }
      
      public function §"#_§(param1:String) : void
      {
         this.§'!P§.§-Z§(param1);
      }
      
      protected function §!"a§(param1:§;$§) : void
      {
         this.§!"M§(param1);
         var _loc2_:String = this.§'!P§.§5!R§;
         if(_loc2_)
         {
            this.§'!P§.§-Z§(_loc2_);
         }
      }
      
      protected function §!#X§(param1:Number, param2:§;$§) : void
      {
         if(this.§!T§ == §[#0§)
         {
            this.§!"a§(param2);
         }
         this.§!T§ -= param1;
         if(this.§!T§ < 0)
         {
            health = 0;
            this.§0!e§();
         }
      }
      
      override public function update(param1:Number, param2:§;$§) : void
      {
         super.update(param1,param2);
         if(param2)
         {
            this.§#z§(param2);
         }
         this.§]"@§.update(param1);
         if(this.§]"@§.isFrozen)
         {
            this.§!#X§(param1,param2);
         }
         this.§7[§.update(param1,param2);
         this.§5!3§();
      }
      
      protected function setFrozen(param1:Boolean) : void
      {
         if(this.§]"@§.isFrozen)
         {
            return;
         }
         if(this.§7!'§ <= 0 && this.§"!C§ <= 0 && param1)
         {
            if(!this.§]"@§.isFrozen)
            {
               this.§!T§ = §[#0§;
               this.§]"@§.isFrozen = true;
               §2N§.setAnimation(§`#§.§0!D§);
            }
         }
         else if(this.§]"@§.isFrozen)
         {
            this.§]"@§.isFrozen = false;
            §2N§.setAnimation(§`#§.§8!h§);
         }
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         super.render(param1,param2,param3);
         sprite.rotation = §<#W§ + this.§7[§.§3"a§;
      }
      
      override public function applyDamage(param1:Number, param2:§;$§, param3:§&#=§, param4:Boolean = true) : Number
      {
         return super.applyDamage(param1,param2,param3,param4);
      }
      
      override protected function playCollisionSound() : void
      {
         this.§7[§.playCollisionSound();
      }
      
      override protected function playDamagedSound() : void
      {
         this.§7[§.playDamagedSound();
      }
      
      protected function §0!e§() : void
      {
         var _loc1_:String = this.§'!P§.frozenKilledSound;
         this.§'!P§.§-Z§(_loc1_);
      }
      
      override protected function playDestroyedSound() : void
      {
         if(this.§]"@§.isFrozen)
         {
            this.§0!e§();
         }
         else
         {
            this.§7[§.playDestroyedSound();
         }
      }
      
      override protected function addDestructionParticles(param1:§;$§) : void
      {
         if(!param1)
         {
            return;
         }
         var _loc2_:Number = §3!t§().GetPosition().x;
         var _loc3_:Number = §3!t§().GetPosition().y;
         var _loc4_:Number = §"#,§();
         this.§7[§.§]T§(param1,_loc2_,_loc3_,_loc4_);
      }
   }
}
