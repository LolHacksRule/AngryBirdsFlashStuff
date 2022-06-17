package §^0§
{
   import §#Z§.Sprite;
   import §-!j§.§-"8§;
   import §-!j§.§>!8§;
   import §3#h§.b2World;
   import §6!R§.b2Vec2;
   import §9#M§.§,`§;
   import §@"v§.§@$<§;
   
   public class §0"C§ extends §%N§
   {
      
      public static const §[#4§:Number = 0.15;
       
      
      protected var §>$5§:§>!8§;
      
      protected var §'"_§:§[#T§;
      
      public function §0"C§(param1:Sprite, param2:§,`§, param3:b2World, param4:§-"8§, param5:§@$<§, param6:Number)
      {
         this.§>$5§ = param4 as §>!8§;
         if(this.§>$5§)
         {
            if(this.§>$5§.scale)
            {
               param6 = this.§>$5§.scale;
            }
         }
         this.§<#=§();
         super(param1,param2,param3,param4,param5,param6);
      }
      
      protected function §<#=§() : void
      {
         this.§'"_§ = new §[#T§(this.§>$5§);
      }
      
      override protected function initObjectRenderer() : § "Q§
      {
         var _loc1_:Boolean = false;
         if(this.§>$5§)
         {
            _loc1_ = this.§>$5§.§2U§;
         }
         return new § "Q§(animation,sprite,_loc1_);
      }
      
      override public function update(param1:Number, param2:§>"T§) : void
      {
         super.update(param1,param2);
         this.§'"_§.update(param1,param2,x,y);
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         super.render(param1,param2,param3);
         sprite.rotation = §^I§ + this.§'"_§.§5! §;
      }
      
      override public function get removeOnNextUpdate() : Boolean
      {
         if(this.§'"_§.removeOnNextUpdate)
         {
            return true;
         }
         return super.removeOnNextUpdate;
      }
      
      override public function updateBeforeRemoving(param1:§>"T§, param2:Boolean) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(!param1)
         {
            return;
         }
         if(health <= 0)
         {
            if(this.§>$5§.spriteScore)
            {
               _loc3_ = getBody().GetPosition().x;
               _loc4_ = getBody().GetPosition().y;
               param1.addObject(this.§>$5§.spriteScore,_loc3_,_loc4_,0,§%"^§.ID_NEXT_FREE,false,false,false,3,true);
            }
         }
         super.updateBeforeRemoving(param1,param2);
      }
      
      protected function §9#L§(param1:§>"T§) : void
      {
         var _loc2_:Number = getBody().GetPosition().x;
         var _loc3_:Number = getBody().GetPosition().y;
         var _loc4_:Number = §<!C§();
         this.§'"_§.spawnParticles(true,param1,_loc2_,_loc3_,_loc4_);
         this.§'"_§.§!!2§(param1,_loc2_,_loc3_,_loc4_);
      }
      
      override protected function createPhysicsBody(param1:Number, param2:Number) : void
      {
         super.createPhysicsBody(param1,param2);
         getBody().SetLinearDamping(§[#4§);
      }
      
      override public function applyDamage(param1:Number, param2:§>"T§, param3:§=Q§, param4:Boolean = true, param5:Boolean = false) : Number
      {
         this.§'"_§.applyDamage(param1,param2,param3);
         return super.applyDamage(param1,param2,param3,param4,param5);
      }
      
      override protected function playCollisionSound() : void
      {
         if(this.§>$5§.materialCollisionSound)
         {
            this.§'"_§.playCollisionSound();
         }
         else
         {
            super.playCollisionSound();
         }
      }
      
      override protected function playDamagedSound() : void
      {
         if(this.§>$5§.materialDamageSound)
         {
            this.§'"_§.playDamagedSound();
         }
         else
         {
            super.playDamagedSound();
         }
      }
      
      override public function playDestroyedSound() : void
      {
         if(this.§>$5§.materialDestroyedSound)
         {
            this.§'"_§.playDestroyedSound();
         }
         else
         {
            super.playDestroyedSound();
         }
      }
      
      override protected function addDestructionParticles(param1:§>"T§) : void
      {
         this.§9#L§(param1);
      }
      
      override public function addDamageParticles(param1:§>"T§, param2:int) : void
      {
         var _loc3_:Number = getBody().GetPosition().x;
         var _loc4_:Number = getBody().GetPosition().y;
         var _loc5_:Number = §<!C§();
         this.§'"_§.spawnParticles(false,param1,_loc3_,_loc4_,_loc5_,0.5);
      }
      
      override public function applyLinearForce() : void
      {
         if(§7b§.linearForce)
         {
            §%#b§.ApplyForce(new b2Vec2(§7b§.linearForce.x * §%#b§.GetMass(),§7b§.linearForce.y * §%#b§.GetMass()),§%#b§.GetWorldCenter());
         }
         else if(this.§>$5§.§#[§ != 0 || this.§>$5§.§8!0§ != 0)
         {
            §%#b§.ApplyForce(new b2Vec2(this.§>$5§.§#[§ * §%#b§.GetMass(),this.§>$5§.§8!0§ * §%#b§.GetMass()),§%#b§.GetWorldCenter());
         }
      }
   }
}
