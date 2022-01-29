package §8§#8
{
   import § "%§.b2Vec2;
   import §4"O§.b2World;
   import §8"L§.§4U§;
   import §8"L§.§5K§;
   import §>M§.§["z§;
   import §^"S§.Sprite;
   import §`"8§.§0$2§;
   
   public class §<#D§ extends §]o§
   {
      
      public static const §=$#§:Number = 0.15;
       
      
      protected var § !F§:§5K§;
      
      protected var §2Z§:§-l§;
      
      public function §<#D§(param1:Sprite, param2:§0$2§, param3:b2World, param4:§4U§, param5:§["z§, param6:Number)
      {
         this.§ !F§ = param4 as §5K§;
         if(this.§ !F§)
         {
            if(this.§ !F§.scale)
            {
               param6 = this.§ !F§.scale;
            }
         }
         this.§3!t§();
         super(param1,param2,param3,param4,param5,param6);
      }
      
      protected function §3!t§() : void
      {
         this.§2Z§ = new §-l§(this.§ !F§);
      }
      
      override protected function initObjectRenderer() : § "m§
      {
         var _loc1_:Boolean = false;
         if(this.§ !F§)
         {
            _loc1_ = this.§ !F§.§8^§;
         }
         return new § "m§(animation,sprite,_loc1_);
      }
      
      override public function update(param1:Number, param2:§&#V§) : void
      {
         super.update(param1,param2);
         this.§2Z§.update(param1,param2,x,y);
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         super.render(param1,param2,param3);
         sprite.rotation = §]#8§ + this.§2Z§.§&C§;
      }
      
      override public function get removeOnNextUpdate() : Boolean
      {
         if(this.§2Z§.removeOnNextUpdate)
         {
            return true;
         }
         return super.removeOnNextUpdate;
      }
      
      override public function updateBeforeRemoving(param1:§&#V§, param2:Boolean) : void
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
            if(this.§ !F§.spriteScore)
            {
               _loc3_ = getBody().GetPosition().x;
               _loc4_ = getBody().GetPosition().y;
               param1.addObject(this.§ !F§.spriteScore,_loc3_,_loc4_,0,§!#L§.ID_NEXT_FREE,false,false,false,3,true);
            }
         }
         super.updateBeforeRemoving(param1,param2);
      }
      
      protected function §6!#§(param1:§&#V§) : void
      {
         var _loc2_:Number = getBody().GetPosition().x;
         var _loc3_:Number = getBody().GetPosition().y;
         var _loc4_:Number = §`$"§();
         this.§2Z§.§7# §(true,param1,_loc2_,_loc3_,_loc4_);
         this.§2Z§.§+n§(param1,_loc2_,_loc3_,_loc4_);
      }
      
      protected function explodeBeforeRemoving(param1:§&#V§) : void
      {
         var _loc2_:Number = getBody().GetPosition().x;
         var _loc3_:Number = getBody().GetPosition().y;
         this.§2Z§.§-h§(param1,_loc2_,_loc3_);
      }
      
      override protected function createPhysicsBody(param1:Number, param2:Number) : void
      {
         super.createPhysicsBody(param1,param2);
         getBody().SetLinearDamping(§=$#§);
      }
      
      override public function applyDamage(param1:Number, param2:§&#V§, param3:§4!y§, param4:Boolean = true) : Number
      {
         this.§2Z§.applyDamage(param1,param2,param3);
         return super.applyDamage(param1,param2,param3,param4);
      }
      
      override protected function playCollisionSound() : void
      {
         if(this.§ !F§.materialCollisionSound)
         {
            this.§2Z§.playCollisionSound();
         }
         else
         {
            super.playCollisionSound();
         }
      }
      
      override protected function playDamagedSound() : void
      {
         if(this.§ !F§.materialDamageSound)
         {
            this.§2Z§.playDamagedSound();
         }
         else
         {
            super.playDamagedSound();
         }
      }
      
      override public function playDestroyedSound() : void
      {
         if(this.§ !F§.materialDestroyedSound)
         {
            this.§2Z§.playDestroyedSound();
         }
         else
         {
            super.playDestroyedSound();
         }
      }
      
      override protected function addDestructionParticles(param1:§&#V§) : void
      {
         this.§6!#§(param1);
      }
      
      override public function addDamageParticles(param1:§&#V§, param2:int) : void
      {
         var _loc3_:Number = getBody().GetPosition().x;
         var _loc4_:Number = getBody().GetPosition().y;
         var _loc5_:Number = §`$"§();
         this.§2Z§.§7# §(false,param1,_loc3_,_loc4_,_loc5_,0.5);
      }
      
      override public function applyLinearForce() : void
      {
         if(§%!@§.linearForce)
         {
            §=#D§.ApplyForce(new b2Vec2(§%!@§.linearForce.x * §=#D§.GetMass(),§%!@§.linearForce.y * §=#D§.GetMass()),§=#D§.GetWorldCenter());
         }
         else if(this.§ !F§.§3!,§ != 0 || this.§ !F§.§?#v§ != 0)
         {
            §=#D§.ApplyForce(new b2Vec2(this.§ !F§.§3!,§ * §=#D§.GetMass(),this.§ !F§.§?#v§ * §=#D§.GetMass()),§=#D§.GetWorldCenter());
         }
      }
   }
}
