package §!r§
{
   import §!!k§.§1!^§;
   import §#g§.§=!-§;
   import §#g§.§[!F§;
   import §#g§.§["%§;
   import §#g§.§]_§;
   import §=G§.§9v§;
   import §>"_§.b2World;
   import §use§.Sprite;
   
   public class §^#2§ extends §4%§ implements §##5§
   {
      
      public static const §^r§:Number = 0.15;
      
      public static const §59§:String = "BLOCK_SENSOR_PIG_A";
      
      public static const §`O§:String = "BLOCK_SENSOR_PIG_B";
      
      private static const §+6§:Number = 2000;
       
      
      protected var §%F§:§+#0§;
      
      protected var §=N§:§+#0§;
      
      protected var §`"b§:§7!g§;
      
      protected var §`W§:Number;
      
      protected var §="8§:int = 0;
      
      protected var §6N§:int = 0;
      
      protected var §[!T§:String = "lightBuff";
      
      protected var §]"A§:String = "iceExplosion";
      
      protected var §^"k§:§=!-§;
      
      protected var §'"w§:§>y§;
      
      protected var § "'§:Boolean;
      
      public function §^#2§(param1:Sprite, param2:§1!^§, param3:b2World, param4:§["%§, param5:§9v§, param6:Number = 1.0)
      {
         this.§^"k§ = param4 as §=!-§;
         this.§`"b§ = new §7!g§(this,§]_§(param4));
         this.initializeObjectBehaviorLogic();
         super(param1,param2,param3,param4,param5,param6);
         if(param3.GetGravity().Length() > 0)
         {
            this.§="8§ = 1;
         }
      }
      
      protected function get §[!E§() : String
      {
         return §59§;
      }
      
      protected function get §0c§() : String
      {
         return §`O§;
      }
      
      public function get §!;§() : Boolean
      {
         return this.§ "'§;
      }
      
      public function set §!;§(param1:Boolean) : void
      {
         this.§ "'§ = param1;
      }
      
      override protected function createPhysicsBody(param1:Number, param2:Number) : void
      {
         super.createPhysicsBody(param1,param2);
         §3"s§().SetLinearDamping(§^r§);
      }
      
      protected function initializeObjectBehaviorLogic() : void
      {
         this.§'"w§ = new §>y§(this.§^"k§);
      }
      
      override protected function initObjectRenderer() : §0"3§
      {
         var _loc1_:§%!w§ = new §%!w§(animation,sprite);
         _loc1_.§3# § = this.§`"b§;
         return _loc1_;
      }
      
      protected function §,#!§(param1:§?!x§) : Boolean
      {
         var _loc2_:§[!F§ = null;
         if(param1 && param1.levelItem is §[!F§)
         {
            _loc2_ = param1.levelItem as §[!F§;
            if(_loc2_.§%"=§("isBubble"))
            {
               return true;
            }
         }
         return false;
      }
      
      override public function attachedJointRemoved(param1:§?!x§ = null) : void
      {
         super.attachedJointRemoved(param1);
         if(this.§,#!§(param1))
         {
            --this.§6N§;
         }
         this.setFrozen(true);
      }
      
      override public function attachedJointCreated(param1:§?!x§ = null) : void
      {
         super.attachedJointCreated(param1);
         if(this.§,#!§(param1))
         {
            ++this.§6N§;
         }
         this.setFrozen(false);
      }
      
      public function §]§(param1:§?!x§, param2:§+#0§) : void
      {
         if(param2 == this.§%F§)
         {
            this.§`"b§.§2!]§(param1);
         }
         else if(param2 == this.§=N§)
         {
            this.§`"b§.§7!R§(param1);
         }
      }
      
      public function §3"1§(param1:§?!x§, param2:§+#0§) : void
      {
         if(param2 == this.§%F§)
         {
            this.§`"b§.§9+§(param1);
         }
         else if(param2 == this.§=N§)
         {
            this.§`"b§.§!4§(param1);
         }
      }
      
      override public function enteredSensor(param1:§03§) : void
      {
         super.enteredSensor(param1);
         if(param1 is §["Z§)
         {
            ++this.§="8§;
            this.setFrozen(false);
         }
      }
      
      override public function leftSensor(param1:§03§) : void
      {
         super.leftSensor(param1);
         if(param1 is §["Z§)
         {
            --this.§="8§;
            this.setFrozen(true);
         }
      }
      
      override public function updateBeforeRemoving(param1:§'=§) : void
      {
         if(!param1)
         {
            return;
         }
         if(this.§%F§)
         {
            param1.removeObject(this.§%F§);
            this.§%F§ = null;
         }
         if(this.§=N§)
         {
            param1.removeObject(this.§=N§);
            this.§=N§ = null;
         }
         var _loc2_:Number = §3"s§().GetPosition().x;
         var _loc3_:Number = §3"s§().GetPosition().y;
         var _loc4_:Number = §<"g§();
         this.§9!L§(param1,_loc2_,_loc3_,_loc4_);
         this.§'"w§.§3"3§(param1,_loc2_,_loc3_,_loc4_);
         this.§'"w§.§>!"§(param1,_loc2_,_loc3_);
         super.updateBeforeRemoving(param1);
      }
      
      protected function §9!L§(param1:§'=§, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:Number = §3"s§().GetPosition().x;
         var _loc6_:Number = §3"s§().GetPosition().y;
         param4 = §<"g§();
         if(this.§^"k§.spriteScore)
         {
            param1.addObject(this.§^"k§.spriteScore,_loc5_,_loc6_,0,§9"f§.§["_§,false,false,false,3,true);
         }
      }
      
      protected function §4#+§(param1:§'=§) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         if(this.§]"A§)
         {
            _loc2_ = §3"s§().GetPosition().x;
            _loc3_ = §3"s§().GetPosition().y;
            param1.addObject(this.§]"A§,_loc2_,_loc3_,0,§9"f§.§["_§,false,true,false);
         }
      }
      
      override protected function setDamageState(param1:Number, param2:§'=§) : Boolean
      {
         if(this.§`"b§)
         {
            if(this.§`"b§.isFrozen)
            {
               return false;
            }
            this.§`"b§.setDamageState(param1);
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
      
      protected function §@"M§(param1:§'=§) : void
      {
         var _loc2_:Number = §3"s§().GetPosition().x;
         var _loc3_:Number = §3"s§().GetPosition().y;
         if(!this.§%F§)
         {
            this.§%F§ = param1.addObject(this.§[!E§,_loc2_,_loc3_,0,§9"f§.§["_§) as §+#0§;
            this.§%F§.§-!X§ = this;
         }
         if(!this.§=N§)
         {
            this.§=N§ = param1.addObject(this.§0c§,_loc2_,_loc3_,0,§9"f§.§["_§) as §+#0§;
            this.§=N§.§-!X§ = this;
         }
      }
      
      protected function §7!c§() : void
      {
         if(this.§%F§)
         {
            this.§%F§.§3"s§().SetPosition(§3"s§().GetPosition());
         }
         if(this.§=N§)
         {
            this.§=N§.§3"s§().SetPosition(§3"s§().GetPosition());
         }
      }
      
      public function §`!A§(param1:String) : void
      {
         this.§^"k§.§]"J§(param1);
      }
      
      protected function §]`§(param1:§'=§) : void
      {
         this.§4#+§(param1);
         var _loc2_:String = this.§^"k§.§9!o§;
         if(_loc2_)
         {
            this.§^"k§.§]"J§(_loc2_);
         }
      }
      
      protected function §]"d§(param1:Number, param2:§'=§) : void
      {
         if(this.§`W§ == §+6§)
         {
            this.§]`§(param2);
         }
         this.§`W§ -= param1;
         if(this.§`W§ < 0)
         {
            health = 0;
            this.§`!8§();
         }
      }
      
      override public function update(param1:Number, param2:§'=§) : void
      {
         super.update(param1,param2);
         if(param2)
         {
            this.§@"M§(param2);
         }
         this.§`"b§.update(param1);
         if(this.§`"b§.isFrozen)
         {
            this.§]"d§(param1,param2);
         }
         this.§'"w§.update(param1,param2);
         this.§7!c§();
      }
      
      protected function setFrozen(param1:Boolean) : void
      {
         if(this.§`"b§.isFrozen)
         {
            return;
         }
         if(this.§="8§ <= 0 && this.§6N§ <= 0 && param1)
         {
            if(!this.§`"b§.isFrozen)
            {
               this.§`W§ = §+6§;
               this.§`"b§.isFrozen = true;
               §]!g§.setAnimation(§%!w§.§'!R§);
            }
         }
         else if(this.§`"b§.isFrozen)
         {
            this.§`"b§.isFrozen = false;
            §]!g§.setAnimation(§%!w§.§`r§);
         }
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         super.render(param1,param2,param3);
         sprite.rotation = §-T§ + this.§'"w§.§6j§;
      }
      
      override public function applyDamage(param1:Number, param2:§'=§, param3:§0N§, param4:Boolean = true) : Number
      {
         return super.applyDamage(param1,param2,param3,param4);
      }
      
      override protected function playCollisionSound() : void
      {
         this.§'"w§.playCollisionSound();
      }
      
      override protected function playDamagedSound() : void
      {
         this.§'"w§.playDamagedSound();
      }
      
      protected function §`!8§() : void
      {
         var _loc1_:String = this.§^"k§.frozenKilledSound;
         this.§^"k§.§]"J§(_loc1_);
      }
      
      override protected function playDestroyedSound() : void
      {
         if(this.§`"b§.isFrozen)
         {
            this.§`!8§();
         }
         else
         {
            this.§'"w§.playDestroyedSound();
         }
      }
      
      override protected function addDestructionParticles(param1:§'=§) : void
      {
         if(!param1)
         {
            return;
         }
         var _loc2_:Number = §3"s§().GetPosition().x;
         var _loc3_:Number = §3"s§().GetPosition().y;
         var _loc4_:Number = §<"g§();
         this.§'"w§.§7=§(param1,_loc2_,_loc3_,_loc4_);
      }
   }
}
