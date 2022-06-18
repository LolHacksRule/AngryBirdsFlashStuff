package §>!5§
{
   import §%!9§.b2Vec2;
   import §&!v§.Sprite;
   import §1!+§.b2World;
   import §6$"§.§]"o§;
   import §7!j§.§8#B§;
   import §7"&§.§!"v§;
   import §7"&§.§2p§;
   
   public class §4#m§ extends §;"i§
   {
      
      public static const §2""§:Number = 0.15;
       
      
      protected var §9A§:§2p§;
      
      protected var §<"<§:§%"B§;
      
      public function §4#m§(param1:Sprite, param2:§8#B§, param3:b2World, param4:§!"v§, param5:§]"o§, param6:Number)
      {
         this.§9A§ = param4 as §2p§;
         if(this.§9A§)
         {
            if(this.§9A§.scale)
            {
               param6 = this.§9A§.scale;
            }
         }
         this.§2Q§();
         super(param1,param2,param3,param4,param5,param6);
      }
      
      protected function §2Q§() : void
      {
         this.§<"<§ = new §%"B§(this.§9A§);
      }
      
      override protected function initObjectRenderer() : §!;§
      {
         var _loc1_:Boolean = false;
         if(this.§9A§)
         {
            _loc1_ = this.§9A§.§""H§;
         }
         return new §!;§(animation,sprite,_loc1_);
      }
      
      override public function update(param1:Number, param2:§-!S§) : void
      {
         super.update(param1,param2);
         this.§<"<§.update(param1,param2,x,y);
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         super.render(param1,param2,param3);
         sprite.rotation = §,!H§ + this.§<"<§.§4J§;
      }
      
      override public function get removeOnNextUpdate() : Boolean
      {
         if(this.§<"<§.removeOnNextUpdate)
         {
            return true;
         }
         return super.removeOnNextUpdate;
      }
      
      override public function updateBeforeRemoving(param1:§-!S§, param2:Boolean) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(!param1)
         {
            return;
         }
         this.explodeBeforeRemoving(param1);
         if(health <= 0)
         {
            if(this.§9A§.spriteScore)
            {
               _loc3_ = getBody().GetPosition().x;
               _loc4_ = getBody().GetPosition().y;
               param1.addObject(this.§9A§.spriteScore,_loc3_,_loc4_,0,§6#-§.ID_NEXT_FREE,false,false,false,3,true);
            }
         }
         super.updateBeforeRemoving(param1,param2);
      }
      
      protected function §"§(param1:§-!S§) : void
      {
         var _loc2_:Number = getBody().GetPosition().x;
         var _loc3_:Number = getBody().GetPosition().y;
         var _loc4_:Number = §%D§();
         this.§<"<§.§3!^§(true,param1,_loc2_,_loc3_,_loc4_);
         this.§<"<§.§@#D§(param1,_loc2_,_loc3_,_loc4_);
      }
      
      protected function explodeBeforeRemoving(param1:§-!S§) : void
      {
         var _loc2_:Number = getBody().GetPosition().x;
         var _loc3_:Number = getBody().GetPosition().y;
         this.§<"<§.§7!y§(param1,_loc2_,_loc3_);
      }
      
      override protected function createPhysicsBody(param1:Number, param2:Number) : void
      {
         super.createPhysicsBody(param1,param2);
         getBody().SetLinearDamping(§2""§);
      }
      
      override public function applyDamage(param1:Number, param2:§-!S§, param3:§^"9§, param4:Boolean = true) : Number
      {
         this.§<"<§.applyDamage(param1,param2,param3);
         return super.applyDamage(param1,param2,param3,param4);
      }
      
      override protected function playCollisionSound() : void
      {
         if(this.§9A§.§&!a§)
         {
            this.§<"<§.playCollisionSound();
         }
         else
         {
            super.playCollisionSound();
         }
      }
      
      override public function playDestroyedSound() : void
      {
         if(this.§9A§.§9!+§)
         {
            this.§<"<§.playDestroyedSound();
         }
         else
         {
            super.playDestroyedSound();
         }
      }
      
      override protected function addDestructionParticles(param1:§-!S§) : void
      {
         this.§"§(param1);
      }
      
      override public function addDamageParticles(param1:§-!S§, param2:int) : void
      {
         var _loc3_:Number = getBody().GetPosition().x;
         var _loc4_:Number = getBody().GetPosition().y;
         var _loc5_:Number = §%D§();
         this.§<"<§.§3!^§(false,param1,_loc3_,_loc4_,_loc5_,0.5);
      }
      
      override public function applyLinearForce() : void
      {
         if(§=@§.linearForce)
         {
            §-[§.ApplyForce(new b2Vec2(§=@§.linearForce.x * §-[§.GetMass(),§=@§.linearForce.y * §-[§.GetMass()),§-[§.GetWorldCenter());
         }
         else if(this.§9A§.§[J§ != 0 || this.§9A§.§-#L§ != 0)
         {
            §-[§.ApplyForce(new b2Vec2(this.§9A§.§[J§ * §-[§.GetMass(),this.§9A§.§-#L§ * §-[§.GetMass()),§-[§.GetWorldCenter());
         }
      }
   }
}
