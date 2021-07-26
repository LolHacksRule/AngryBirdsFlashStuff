package §6!3§
{
   import §'G§.§;D§;
   import §-#X§.§,!B§;
   import §6#H§.Sprite;
   import §?!C§.b2Vec2;
   import §?$<§.§<#x§;
   import §?$<§.§?$>§;
   import §@!S§.b2World;
   
   public class §'#S§ extends §^#x§
   {
      
      public static const §="6§:Number = 0.15;
       
      
      protected var §4<§:§<#x§;
      
      protected var §^"J§:§6O§;
      
      public function §'#S§(param1:Sprite, param2:§;D§, param3:b2World, param4:§?$>§, param5:§,!B§, param6:Number)
      {
         this.§4<§ = param4 as §<#x§;
         if(this.§4<§)
         {
            if(this.§4<§.scale)
            {
               param6 = this.§4<§.scale;
            }
         }
         this.§&#b§();
         super(param1,param2,param3,param4,param5,param6);
      }
      
      protected function §&#b§() : void
      {
         this.§^"J§ = new §6O§(this.§4<§);
      }
      
      override protected function initObjectRenderer() : §0&§
      {
         var _loc1_:Boolean = false;
         if(this.§4<§)
         {
            _loc1_ = this.§4<§.§9!D§;
         }
         return new §0&§(animation,sprite,_loc1_);
      }
      
      override public function update(param1:Number, param2:§8$B§) : void
      {
         super.update(param1,param2);
         this.§^"J§.update(param1,param2,x,y);
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         super.render(param1,param2,param3);
         sprite.rotation = §'$5§ + this.§^"J§.§#!"§;
      }
      
      override public function get removeOnNextUpdate() : Boolean
      {
         if(this.§^"J§.removeOnNextUpdate)
         {
            return true;
         }
         return super.removeOnNextUpdate;
      }
      
      override public function updateBeforeRemoving(param1:§8$B§, param2:Boolean) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(!param1)
         {
            return;
         }
         if(health <= 0)
         {
            if(this.§4<§.spriteScore)
            {
               _loc3_ = getBody().GetPosition().x;
               _loc4_ = getBody().GetPosition().y;
               param1.addObject(this.§4<§.spriteScore,_loc3_,_loc4_,0,§'!§.ID_NEXT_FREE,false,false,false,3,true);
            }
         }
         super.updateBeforeRemoving(param1,param2);
      }
      
      protected function §%"p§(param1:§8$B§) : void
      {
         var _loc2_:Number = getBody().GetPosition().x;
         var _loc3_:Number = getBody().GetPosition().y;
         var _loc4_:Number = §%#4§();
         this.§^"J§.spawnParticles(true,param1,_loc2_,_loc3_,_loc4_);
         this.§^"J§.§]c§(param1,_loc2_,_loc3_,_loc4_);
      }
      
      override protected function createPhysicsBody(param1:Number, param2:Number) : void
      {
         super.createPhysicsBody(param1,param2);
         getBody().SetLinearDamping(§="6§);
      }
      
      override public function applyDamage(param1:Number, param2:§8$B§, param3:§;!U§, param4:Boolean = true, param5:Boolean = false) : Number
      {
         this.§^"J§.applyDamage(param1,param2,param3);
         return super.applyDamage(param1,param2,param3,param4,param5);
      }
      
      override protected function playCollisionSound() : void
      {
         if(this.§4<§.materialCollisionSound)
         {
            this.§^"J§.playCollisionSound();
         }
         else
         {
            super.playCollisionSound();
         }
      }
      
      override protected function playDamagedSound() : void
      {
         if(this.§4<§.materialDamageSound)
         {
            this.§^"J§.playDamagedSound();
         }
         else
         {
            super.playDamagedSound();
         }
      }
      
      override public function playDestroyedSound() : void
      {
         if(this.§4<§.materialDestroyedSound)
         {
            this.§^"J§.playDestroyedSound();
         }
         else
         {
            super.playDestroyedSound();
         }
      }
      
      override protected function addDestructionParticles(param1:§8$B§) : void
      {
         this.§%"p§(param1);
      }
      
      override public function addDamageParticles(param1:§8$B§, param2:int) : void
      {
         var _loc3_:Number = getBody().GetPosition().x;
         var _loc4_:Number = getBody().GetPosition().y;
         var _loc5_:Number = §%#4§();
         this.§^"J§.spawnParticles(false,param1,_loc3_,_loc4_,_loc5_,0.5);
      }
      
      override public function applyLinearForce() : void
      {
         if(§@#h§.linearForce)
         {
            § "8§.ApplyForce(new b2Vec2(§@#h§.linearForce.x * § "8§.GetMass(),§@#h§.linearForce.y * § "8§.GetMass()),§ "8§.GetWorldCenter());
         }
         else if(this.§4<§.§!"S§ != 0 || this.§4<§.§7X§ != 0)
         {
            § "8§.ApplyForce(new b2Vec2(this.§4<§.§!"S§ * § "8§.GetMass(),this.§4<§.§7X§ * § "8§.GetMass()),§ "8§.GetWorldCenter());
         }
      }
   }
}
