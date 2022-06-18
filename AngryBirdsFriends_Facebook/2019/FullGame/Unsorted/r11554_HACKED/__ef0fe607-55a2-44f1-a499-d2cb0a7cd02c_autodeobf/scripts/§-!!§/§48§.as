package §-!!§
{
   import §!6§.Sprite;
   import §8#t§.b2World;
   import §9$+§.§9"4§;
   import §?§.§+"%§;
   import §?§.§,!T§;
   import §?§.§,Y§;
   import §?§.§[!^§;
   import §^"[§.§4!8§;
   
   public class §48§ extends §1$<§ implements §""p§
   {
      
      public static const §^"0§:Number = 0.15;
      
      public static const §'!N§:String = "BLOCK_SENSOR_PIG_A";
      
      public static const §>$7§:String = "BLOCK_SENSOR_PIG_B";
      
      private static const §=#?§:Number = 2000;
       
      
      protected var §>"V§:§&"^§;
      
      protected var §"#2§:§&"^§;
      
      protected var §;i§:§,#6§;
      
      protected var §^"9§:Number;
      
      protected var §&",§:int = 0;
      
      protected var §4#]§:int = 0;
      
      protected var §;!Y§:String = "lightBuff";
      
      protected var §^0§:String = "iceExplosion";
      
      protected var §[!K§:§[!^§;
      
      protected var §[!O§:§&"m§;
      
      protected var §>"g§:Boolean;
      
      public function §48§(param1:Sprite, param2:§4!8§, param3:b2World, param4:§,Y§, param5:§9"4§, param6:Number = 1.0)
      {
         this.§[!K§ = param4 as §[!^§;
         this.§;i§ = new §,#6§(this,§,!T§(param4));
         this.§&#z§();
         super(param1,param2,param3,param4,param5,param6);
         if(param3.GetGravity().Length() > 0)
         {
            this.§&",§ = 1;
         }
      }
      
      protected function get §9#L§() : String
      {
         return §'!N§;
      }
      
      protected function get §%"h§() : String
      {
         return §>$7§;
      }
      
      public function get §1"S§() : Boolean
      {
         return this.§>"g§;
      }
      
      public function set §1"S§(param1:Boolean) : void
      {
         this.§>"g§ = param1;
      }
      
      override protected function createPhysicsBody(param1:Number, param2:Number) : void
      {
         super.createPhysicsBody(param1,param2);
         getBody().SetLinearDamping(§^"0§);
      }
      
      protected function §&#z§() : void
      {
         this.§[!O§ = new §&"m§(this.§[!K§);
      }
      
      override protected function initObjectRenderer() : §+!&§
      {
         var _loc1_:§+!F§ = new §+!F§(animation,sprite);
         _loc1_.§`%§ = this.§;i§;
         return _loc1_;
      }
      
      protected function §0!H§(param1:§1#B§) : Boolean
      {
         var _loc2_:§+"%§ = null;
         if(param1 && param1.levelItem is §+"%§)
         {
            _loc2_ = param1.levelItem as §+"%§;
            if(_loc2_.§1"H§("isBubble"))
            {
               return true;
            }
         }
         return false;
      }
      
      override public function attachedJointRemoved(param1:§1#B§ = null) : void
      {
         super.attachedJointRemoved(param1);
         if(this.§0!H§(param1))
         {
            --this.§4#]§;
         }
         this.§3#g§(true);
      }
      
      override public function attachedJointCreated(param1:§1#B§ = null) : void
      {
         super.attachedJointCreated(param1);
         if(this.§0!H§(param1))
         {
            ++this.§4#]§;
         }
         this.§3#g§(false);
      }
      
      public function §5!c§(param1:§1#B§, param2:§&"^§) : void
      {
         if(param2 == this.§>"V§)
         {
            this.§;i§.§9$!§(param1);
         }
         else if(param2 == this.§"#2§)
         {
            this.§;i§.§""u§(param1);
         }
      }
      
      public function §[#m§(param1:§1#B§, param2:§&"^§) : void
      {
         if(param2 == this.§>"V§)
         {
            this.§;i§.§&#A§(param1);
         }
         else if(param2 == this.§"#2§)
         {
            this.§;i§.§2H§(param1);
         }
      }
      
      override public function enteredSensor(param1:§0!N§) : void
      {
         super.enteredSensor(param1);
         if(param1 is §3#X§)
         {
            ++this.§&",§;
            this.§3#g§(false);
         }
      }
      
      override public function leftSensor(param1:§0!N§) : void
      {
         super.leftSensor(param1);
         if(param1 is §3#X§)
         {
            --this.§&",§;
            this.§3#g§(true);
         }
      }
      
      override public function updateBeforeRemoving(param1:§ #'§, param2:Boolean) : void
      {
         if(!param1)
         {
            return;
         }
         if(this.§>"V§)
         {
            param1.removeObject(this.§>"V§);
            this.§>"V§ = null;
         }
         if(this.§"#2§)
         {
            param1.removeObject(this.§"#2§);
            this.§"#2§ = null;
         }
         var _loc3_:Number = getBody().GetPosition().x;
         var _loc4_:Number = getBody().GetPosition().y;
         var _loc5_:Number = §30§();
         this.§^"?§(param1,_loc3_,_loc4_,_loc5_);
         this.§[!O§.§#!%§(param1,_loc3_,_loc4_,_loc5_);
         super.updateBeforeRemoving(param1,param2);
      }
      
      protected function §^"?§(param1:§ #'§, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:Number = getBody().GetPosition().x;
         var _loc6_:Number = getBody().GetPosition().y;
         Number(§30§());
         if(this.§[!K§.spriteScore)
         {
            param1.addObject(this.§[!K§.spriteScore,_loc5_,_loc6_,0,§7S§.ID_NEXT_FREE,false,false,false,3,true);
         }
      }
      
      protected function §2"]§(param1:§ #'§) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         if(this.§^0§)
         {
            _loc2_ = getBody().GetPosition().x;
            _loc3_ = getBody().GetPosition().y;
            param1.addObject(this.§^0§,_loc2_,_loc3_,0,§7S§.ID_NEXT_FREE,false,true,false);
         }
      }
      
      override protected function setDamageState(param1:Number, param2:§ #'§) : Boolean
      {
         if(this.§;i§)
         {
            if(this.§;i§.§'!6§)
            {
               return false;
            }
            this.§;i§.setDamageState(param1);
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
      
      protected function §&"T§(param1:§ #'§) : void
      {
         var _loc2_:Number = getBody().GetPosition().x;
         var _loc3_:Number = getBody().GetPosition().y;
         if(!this.§>"V§)
         {
            this.§>"V§ = param1.addObject(this.§9#L§,_loc2_,_loc3_,0,§7S§.ID_NEXT_FREE) as §&"^§;
            this.§>"V§.§@-§ = this;
         }
         if(!this.§"#2§)
         {
            this.§"#2§ = param1.addObject(this.§%"h§,_loc2_,_loc3_,0,§7S§.ID_NEXT_FREE) as §&"^§;
            this.§"#2§.§@-§ = this;
         }
      }
      
      protected function §3!x§() : void
      {
         if(this.§>"V§)
         {
            this.§>"V§.getBody().SetPosition(getBody().GetPosition());
         }
         if(this.§"#2§)
         {
            this.§"#2§.getBody().SetPosition(getBody().GetPosition());
         }
      }
      
      public function playSoundLua(param1:String) : void
      {
         this.§[!K§.playSoundLua(param1);
      }
      
      protected function §-# §(param1:§ #'§) : void
      {
         this.§2"]§(param1);
         var _loc2_:String = this.§[!K§.§9"Z§;
         if(_loc2_)
         {
            this.§[!K§.playSoundLua(_loc2_);
         }
      }
      
      protected function §4#H§(param1:Number, param2:§ #'§) : void
      {
         if(this.§^"9§ == §=#?§)
         {
            this.§-# §(param2);
         }
         this.§^"9§ -= param1;
         if(this.§^"9§ < 0)
         {
            health = 0;
            this.§##S§();
         }
      }
      
      override public function update(param1:Number, param2:§ #'§) : void
      {
         super.update(param1,param2);
         if(param2)
         {
            this.§&"T§(param2);
         }
         this.§;i§.update(param1);
         if(this.§;i§.§'!6§)
         {
            this.§4#H§(param1,param2);
         }
         this.§[!O§.update(param1,param2);
         this.§3!x§();
      }
      
      protected function §3#g§(param1:Boolean) : void
      {
         if(this.§;i§.§'!6§)
         {
            return;
         }
         if(this.§&",§ <= 0 && this.§4#]§ <= 0 && param1)
         {
            if(!this.§;i§.§'!6§)
            {
               this.§^"9§ = §=#?§;
               this.§;i§.§'!6§ = true;
               §]+§.setAnimation(§+!F§.§-!1§);
            }
         }
         else if(this.§;i§.§'!6§)
         {
            this.§;i§.§'!6§ = false;
            §]+§.setAnimation(§+!F§.§+m§);
         }
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         super.render(param1,param2,param3);
         sprite.rotation = §%"b§ + this.§[!O§.§9!B§;
      }
      
      override public function applyDamage(param1:Number, param2:§ #'§, param3:§8"J§, param4:Boolean = true, param5:Boolean = false) : Number
      {
         return super.applyDamage(param1,param2,param3,param4,param5);
      }
      
      override protected function playCollisionSound() : void
      {
         this.§[!O§.playCollisionSound();
      }
      
      protected function §##S§() : void
      {
         var _loc1_:String = this.§[!K§.frozenKilledSound;
         this.§[!K§.playSoundLua(_loc1_);
      }
      
      override public function playDestroyedSound() : void
      {
         if(this.§;i§.§'!6§)
         {
            this.§##S§();
         }
         else
         {
            this.§[!O§.playDestroyedSound();
         }
      }
      
      override protected function addDestructionParticles(param1:§ #'§) : void
      {
         if(!param1)
         {
            return;
         }
         var _loc2_:Number = getBody().GetPosition().x;
         var _loc3_:Number = getBody().GetPosition().y;
         var _loc4_:Number = §30§();
         this.§[!O§.spawnParticles(true,param1,_loc2_,_loc3_,_loc4_);
      }
   }
}
