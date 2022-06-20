package §>!5§
{
   import §&!v§.Sprite;
   import §1!+§.b2World;
   import §6$"§.§]"o§;
   import §7!j§.§8#B§;
   import §7"&§.§!"v§;
   import §7"&§.§##v§;
   import §7"&§.§+#p§;
   import §7"&§.§[S§;
   
   public class §[3§ extends §76§ implements §-%§
   {
      
      public static const §2""§:Number = 0.15;
      
      public static const §;"7§:String = "BLOCK_SENSOR_PIG_A";
      
      public static const §1§:String = "BLOCK_SENSOR_PIG_B";
      
      private static const §[#g§:Number = 2000;
       
      
      protected var §1#$§:§^R§;
      
      protected var §&n§:§^R§;
      
      protected var §'"B§:§9!0§;
      
      protected var §<#%§:Number;
      
      protected var §1r§:int = 0;
      
      protected var §[R§:int = 0;
      
      protected var §6!w§:String = "lightBuff";
      
      protected var §4!^§:String = "iceExplosion";
      
      protected var §4#F§:§[S§;
      
      protected var §<"<§:§%"B§;
      
      protected var §,#z§:Boolean;
      
      public function §[3§(param1:Sprite, param2:§8#B§, param3:b2World, param4:§!"v§, param5:§]"o§, param6:Number = 1.0)
      {
         this.§4#F§ = param4 as §[S§;
         this.§'"B§ = new §9!0§(this,§##v§(param4));
         this.§2Q§();
         super(param1,param2,param3,param4,param5,param6);
         if(param3.GetGravity().Length() > 0)
         {
            this.§1r§ = 1;
         }
      }
      
      protected function get §"$;§() : String
      {
         return §;"7§;
      }
      
      protected function get §+#K§() : String
      {
         return §1§;
      }
      
      public function get §[!b§() : Boolean
      {
         return this.§,#z§;
      }
      
      public function set §[!b§(param1:Boolean) : void
      {
         this.§,#z§ = param1;
      }
      
      override protected function createPhysicsBody(param1:Number, param2:Number) : void
      {
         super.createPhysicsBody(param1,param2);
         getBody().SetLinearDamping(§2""§);
      }
      
      protected function §2Q§() : void
      {
         this.§<"<§ = new §%"B§(this.§4#F§);
      }
      
      override protected function initObjectRenderer() : §!;§
      {
         var _loc1_:§##$§ = new §##$§(animation,sprite);
         _loc1_.§'!R§ = this.§'"B§;
         return _loc1_;
      }
      
      protected function §+!9§(param1:§#-§) : Boolean
      {
         var _loc2_:§+#p§ = null;
         if(param1 && param1.levelItem is §+#p§)
         {
            _loc2_ = param1.levelItem as §+#p§;
            if(_loc2_.§<"G§("isBubble"))
            {
               return true;
            }
         }
         return false;
      }
      
      override public function attachedJointRemoved(param1:§#-§ = null) : void
      {
         super.attachedJointRemoved(param1);
         if(this.§+!9§(param1))
         {
            --this.§[R§;
         }
         this.§6!o§(true);
      }
      
      override public function attachedJointCreated(param1:§#-§ = null) : void
      {
         super.attachedJointCreated(param1);
         if(this.§+!9§(param1))
         {
            ++this.§[R§;
         }
         this.§6!o§(false);
      }
      
      public function §&!D§(param1:§#-§, param2:§^R§) : void
      {
         if(param2 == this.§1#$§)
         {
            this.§'"B§.§;"O§(param1);
         }
         else if(param2 == this.§&n§)
         {
            this.§'"B§.§'q§(param1);
         }
      }
      
      public function §4#c§(param1:§#-§, param2:§^R§) : void
      {
         if(param2 == this.§1#$§)
         {
            this.§'"B§.§=#q§(param1);
         }
         else if(param2 == this.§&n§)
         {
            this.§'"B§.§5"P§(param1);
         }
      }
      
      override public function enteredSensor(param1:§0S§) : void
      {
         super.enteredSensor(param1);
         if(param1 is §=P§)
         {
            ++this.§1r§;
            this.§6!o§(false);
         }
      }
      
      override public function leftSensor(param1:§0S§) : void
      {
         super.leftSensor(param1);
         if(param1 is §=P§)
         {
            --this.§1r§;
            this.§6!o§(true);
         }
      }
      
      override public function updateBeforeRemoving(param1:§-!S§, param2:Boolean) : void
      {
         if(!param1)
         {
            return;
         }
         if(this.§1#$§)
         {
            param1.removeObject(this.§1#$§);
            this.§1#$§ = null;
         }
         if(this.§&n§)
         {
            param1.removeObject(this.§&n§);
            this.§&n§ = null;
         }
         var _loc3_:Number = getBody().GetPosition().x;
         var _loc4_:Number = getBody().GetPosition().y;
         var _loc5_:Number = §%D§();
         this.§^"j§(param1,_loc3_,_loc4_,_loc5_);
         this.§<"<§.§@#D§(param1,_loc3_,_loc4_,_loc5_);
         this.§<"<§.§7!y§(param1,_loc3_,_loc4_);
         super.updateBeforeRemoving(param1,param2);
      }
      
      protected function §^"j§(param1:§-!S§, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:Number = getBody().GetPosition().x;
         var _loc6_:Number = getBody().GetPosition().y;
         param4 = §%D§();
         if(this.§4#F§.spriteScore)
         {
            param1.addObject(this.§4#F§.spriteScore,_loc5_,_loc6_,0,§6#-§.ID_NEXT_FREE,false,false,false,3,true);
         }
      }
      
      protected function § !C§(param1:§-!S§) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         if(this.§4!^§)
         {
            _loc2_ = getBody().GetPosition().x;
            _loc3_ = getBody().GetPosition().y;
            param1.addObject(this.§4!^§,_loc2_,_loc3_,0,§6#-§.ID_NEXT_FREE,false,true,false);
         }
      }
      
      override protected function setDamageState(param1:Number, param2:§-!S§) : Boolean
      {
         if(this.§'"B§)
         {
            if(this.§'"B§.§ #%§)
            {
               return false;
            }
            this.§'"B§.setDamageState(param1);
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
      
      protected function §5!L§(param1:§-!S§) : void
      {
         var _loc2_:Number = getBody().GetPosition().x;
         var _loc3_:Number = getBody().GetPosition().y;
         if(!this.§1#$§)
         {
            this.§1#$§ = param1.addObject(this.§"$;§,_loc2_,_loc3_,0,§6#-§.ID_NEXT_FREE) as §^R§;
            this.§1#$§.§>!f§ = this;
         }
         if(!this.§&n§)
         {
            this.§&n§ = param1.addObject(this.§+#K§,_loc2_,_loc3_,0,§6#-§.ID_NEXT_FREE) as §^R§;
            this.§&n§.§>!f§ = this;
         }
      }
      
      protected function §&"4§() : void
      {
         if(this.§1#$§)
         {
            this.§1#$§.getBody().SetPosition(getBody().GetPosition());
         }
         if(this.§&n§)
         {
            this.§&n§.getBody().SetPosition(getBody().GetPosition());
         }
      }
      
      public function §51§(param1:String) : void
      {
         this.§4#F§.§51§(param1);
      }
      
      protected function §5z§(param1:§-!S§) : void
      {
         this.§ !C§(param1);
         var _loc2_:String = this.§4#F§.§=$$§;
         if(_loc2_)
         {
            this.§4#F§.§51§(_loc2_);
         }
      }
      
      protected function §3#4§(param1:Number, param2:§-!S§) : void
      {
         if(this.§<#%§ == §[#g§)
         {
            this.§5z§(param2);
         }
         this.§<#%§ -= param1;
         if(this.§<#%§ < 0)
         {
            health = 0;
            this.§ #_§();
         }
      }
      
      override public function update(param1:Number, param2:§-!S§) : void
      {
         super.update(param1,param2);
         if(param2)
         {
            this.§5!L§(param2);
         }
         this.§'"B§.update(param1);
         if(this.§'"B§.§ #%§)
         {
            this.§3#4§(param1,param2);
         }
         this.§<"<§.update(param1,param2);
         this.§&"4§();
      }
      
      protected function §6!o§(param1:Boolean) : void
      {
         if(this.§'"B§.§ #%§)
         {
            return;
         }
         if(this.§1r§ <= 0 && this.§[R§ <= 0 && param1)
         {
            if(!this.§'"B§.§ #%§)
            {
               this.§<#%§ = §[#g§;
               this.§'"B§.§ #%§ = true;
               §implements§.setAnimation(§##$§.§!!h§);
            }
         }
         else if(this.§'"B§.§ #%§)
         {
            this.§'"B§.§ #%§ = false;
            §implements§.setAnimation(§##$§.§ #E§);
         }
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         super.render(param1,param2,param3);
         sprite.rotation = §,!H§ + this.§<"<§.§4J§;
      }
      
      override public function applyDamage(param1:Number, param2:§-!S§, param3:§^"9§, param4:Boolean = true) : Number
      {
         return super.applyDamage(param1,param2,param3,param4);
      }
      
      override protected function playCollisionSound() : void
      {
         this.§<"<§.playCollisionSound();
      }
      
      protected function § #_§() : void
      {
         var _loc1_:String = this.§4#F§.frozenKilledSound;
         this.§4#F§.§51§(_loc1_);
      }
      
      override public function playDestroyedSound() : void
      {
         if(this.§'"B§.§ #%§)
         {
            this.§ #_§();
         }
         else
         {
            this.§<"<§.playDestroyedSound();
         }
      }
      
      override protected function addDestructionParticles(param1:§-!S§) : void
      {
         if(!param1)
         {
            return;
         }
         var _loc2_:Number = getBody().GetPosition().x;
         var _loc3_:Number = getBody().GetPosition().y;
         var _loc4_:Number = §%D§();
         this.§<"<§.§3!^§(true,param1,_loc2_,_loc3_,_loc4_);
      }
   }
}
