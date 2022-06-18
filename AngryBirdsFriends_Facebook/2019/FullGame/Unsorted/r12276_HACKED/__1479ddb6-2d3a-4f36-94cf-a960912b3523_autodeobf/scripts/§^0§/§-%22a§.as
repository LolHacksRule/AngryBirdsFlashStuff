package §^0§
{
   import §#Z§.Sprite;
   import §-!j§.§-"8§;
   import §-!j§.§@! §;
   import §-!j§.§]!e§;
   import §-!j§.§^`§;
   import §3#h§.b2World;
   import §9#M§.§,`§;
   import §@"v§.§@$<§;
   
   public class §-"a§ extends §&"e§ implements § R§
   {
      
      public static const §[#4§:Number = 0.15;
      
      public static const §`"V§:String = "BLOCK_SENSOR_PIG_A";
      
      public static const §<#+§:String = "BLOCK_SENSOR_PIG_B";
      
      private static const §&#!§:Number = 2000;
       
      
      protected var §-#X§:§?"i§;
      
      protected var §5"E§:§?"i§;
      
      protected var §8w§:§1"+§;
      
      protected var §2"8§:Number;
      
      protected var §%#@§:int = 0;
      
      protected var §-#j§:int = 0;
      
      protected var § #`§:String = "lightBuff";
      
      protected var §7#z§:String = "iceExplosion";
      
      protected var §9!Y§:§^`§;
      
      protected var §'"_§:§[#T§;
      
      protected var §<#B§:Boolean;
      
      public function §-"a§(param1:Sprite, param2:§,`§, param3:b2World, param4:§-"8§, param5:§@$<§, param6:Number = 1.0)
      {
         this.§9!Y§ = param4 as §^`§;
         this.§8w§ = new §1"+§(this,§]!e§(param4));
         this.§<#=§();
         super(param1,param2,param3,param4,param5,param6);
         if(param3.GetGravity().Length() > 0)
         {
            this.§%#@§ = 1;
         }
      }
      
      protected function get §=!J§() : String
      {
         return §`"V§;
      }
      
      protected function get §!!g§() : String
      {
         return §<#+§;
      }
      
      public function get §'"f§() : Boolean
      {
         return this.§<#B§;
      }
      
      public function set §'"f§(param1:Boolean) : void
      {
         this.§<#B§ = param1;
      }
      
      override protected function createPhysicsBody(param1:Number, param2:Number) : void
      {
         super.createPhysicsBody(param1,param2);
         getBody().SetLinearDamping(§[#4§);
      }
      
      protected function §<#=§() : void
      {
         this.§'"_§ = new §[#T§(this.§9!Y§);
      }
      
      override protected function initObjectRenderer() : § "Q§
      {
         var _loc1_:§3"5§ = new §3"5§(animation,sprite);
         _loc1_.§%#[§ = this.§8w§;
         return _loc1_;
      }
      
      protected function §=#%§(param1:§4!t§) : Boolean
      {
         var _loc2_:§@! § = null;
         if(param1 && param1.levelItem is §@! §)
         {
            _loc2_ = param1.levelItem as §@! §;
            if(_loc2_.§>#o§("isBubble"))
            {
               return true;
            }
         }
         return false;
      }
      
      override public function attachedJointRemoved(param1:§4!t§ = null) : void
      {
         super.attachedJointRemoved(param1);
         if(this.§=#%§(param1))
         {
            --this.§-#j§;
         }
         this.§&!s§(true);
      }
      
      override public function attachedJointCreated(param1:§4!t§ = null) : void
      {
         super.attachedJointCreated(param1);
         if(this.§=#%§(param1))
         {
            ++this.§-#j§;
         }
         this.§&!s§(false);
      }
      
      public function §5_§(param1:§4!t§, param2:§?"i§) : void
      {
         if(param2 == this.§-#X§)
         {
            this.§8w§.§;"R§(param1);
         }
         else if(param2 == this.§5"E§)
         {
            this.§8w§.§[r§(param1);
         }
      }
      
      public function §3!X§(param1:§4!t§, param2:§?"i§) : void
      {
         if(param2 == this.§-#X§)
         {
            this.§8w§.§`!v§(param1);
         }
         else if(param2 == this.§5"E§)
         {
            this.§8w§.§;"5§(param1);
         }
      }
      
      override public function enteredSensor(param1:§5;§) : void
      {
         super.enteredSensor(param1);
         if(param1 is §&F§)
         {
            ++this.§%#@§;
            this.§&!s§(false);
         }
      }
      
      override public function leftSensor(param1:§5;§) : void
      {
         super.leftSensor(param1);
         if(param1 is §&F§)
         {
            --this.§%#@§;
            this.§&!s§(true);
         }
      }
      
      override public function updateBeforeRemoving(param1:§>"T§, param2:Boolean) : void
      {
         if(!param1)
         {
            return;
         }
         if(this.§-#X§)
         {
            param1.removeObject(this.§-#X§);
            this.§-#X§ = null;
         }
         if(this.§5"E§)
         {
            param1.removeObject(this.§5"E§);
            this.§5"E§ = null;
         }
         var _loc3_:Number = getBody().GetPosition().x;
         var _loc4_:Number = getBody().GetPosition().y;
         var _loc5_:Number = §<!C§();
         this.§5#G§(param1,_loc3_,_loc4_,_loc5_);
         this.§'"_§.§!!2§(param1,_loc3_,_loc4_,_loc5_);
         super.updateBeforeRemoving(param1,param2);
      }
      
      protected function §5#G§(param1:§>"T§, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:Number = getBody().GetPosition().x;
         var _loc6_:Number = getBody().GetPosition().y;
         Number(§<!C§());
         if(this.§9!Y§.spriteScore)
         {
            param1.addObject(this.§9!Y§.spriteScore,_loc5_,_loc6_,0,§%"^§.ID_NEXT_FREE,false,false,false,3,true);
         }
      }
      
      protected function §@"w§(param1:§>"T§) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         if(this.§7#z§)
         {
            _loc2_ = getBody().GetPosition().x;
            _loc3_ = getBody().GetPosition().y;
            param1.addObject(this.§7#z§,_loc2_,_loc3_,0,§%"^§.ID_NEXT_FREE,false,true,false);
         }
      }
      
      override protected function setDamageState(param1:Number, param2:§>"T§) : Boolean
      {
         if(this.§8w§)
         {
            if(this.§8w§.§1!l§)
            {
               return false;
            }
            this.§8w§.setDamageState(param1);
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
      
      protected function §5"8§(param1:§>"T§) : void
      {
         var _loc2_:Number = getBody().GetPosition().x;
         var _loc3_:Number = getBody().GetPosition().y;
         if(!this.§-#X§)
         {
            this.§-#X§ = param1.addObject(this.§=!J§,_loc2_,_loc3_,0,§%"^§.ID_NEXT_FREE) as §?"i§;
            this.§-#X§.§2"Z§ = this;
         }
         if(!this.§5"E§)
         {
            this.§5"E§ = param1.addObject(this.§!!g§,_loc2_,_loc3_,0,§%"^§.ID_NEXT_FREE) as §?"i§;
            this.§5"E§.§2"Z§ = this;
         }
      }
      
      protected function §+""§() : void
      {
         if(this.§-#X§)
         {
            this.§-#X§.getBody().SetPosition(getBody().GetPosition());
         }
         if(this.§5"E§)
         {
            this.§5"E§.getBody().SetPosition(getBody().GetPosition());
         }
      }
      
      public function playSoundLua(param1:String) : void
      {
         this.§9!Y§.playSoundLua(param1);
      }
      
      protected function §2";§(param1:§>"T§) : void
      {
         this.§@"w§(param1);
         var _loc2_:String = this.§9!Y§.§2#o§;
         if(_loc2_)
         {
            this.§9!Y§.playSoundLua(_loc2_);
         }
      }
      
      protected function §7!4§(param1:Number, param2:§>"T§) : void
      {
         if(this.§2"8§ == §&#!§)
         {
            this.§2";§(param2);
         }
         this.§2"8§ -= param1;
         if(this.§2"8§ < 0)
         {
            health = 0;
            this.§7!!§();
         }
      }
      
      override public function update(param1:Number, param2:§>"T§) : void
      {
         super.update(param1,param2);
         if(param2)
         {
            this.§5"8§(param2);
         }
         this.§8w§.update(param1);
         if(this.§8w§.§1!l§)
         {
            this.§7!4§(param1,param2);
         }
         this.§'"_§.update(param1,param2);
         this.§+""§();
      }
      
      protected function §&!s§(param1:Boolean) : void
      {
         if(this.§8w§.§1!l§)
         {
            return;
         }
         if(this.§%#@§ <= 0 && this.§-#j§ <= 0 && param1)
         {
            if(!this.§8w§.§1!l§)
            {
               this.§2"8§ = §&#!§;
               this.§8w§.§1!l§ = true;
               §-"p§.setAnimation(§3"5§.§9";§);
            }
         }
         else if(this.§8w§.§1!l§)
         {
            this.§8w§.§1!l§ = false;
            §-"p§.setAnimation(§3"5§.§##H§);
         }
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         super.render(param1,param2,param3);
         sprite.rotation = §^I§ + this.§'"_§.§5! §;
      }
      
      override public function applyDamage(param1:Number, param2:§>"T§, param3:§=Q§, param4:Boolean = true, param5:Boolean = false) : Number
      {
         return super.applyDamage(param1,param2,param3,param4,param5);
      }
      
      override protected function playCollisionSound() : void
      {
         this.§'"_§.playCollisionSound();
      }
      
      protected function §7!!§() : void
      {
         var _loc1_:String = this.§9!Y§.frozenKilledSound;
         this.§9!Y§.playSoundLua(_loc1_);
      }
      
      override public function playDestroyedSound() : void
      {
         if(this.§8w§.§1!l§)
         {
            this.§7!!§();
         }
         else
         {
            this.§'"_§.playDestroyedSound();
         }
      }
      
      override protected function addDestructionParticles(param1:§>"T§) : void
      {
         if(!param1)
         {
            return;
         }
         var _loc2_:Number = getBody().GetPosition().x;
         var _loc3_:Number = getBody().GetPosition().y;
         var _loc4_:Number = §<!C§();
         this.§'"_§.spawnParticles(true,param1,_loc2_,_loc3_,_loc4_);
      }
   }
}
