package §6"R§
{
   import §1"s§.Sprite;
   import §1x§.b2World;
   import §3"$§.§[a§;
   import §4"F§.§^d§;
   import §>P§.§;+§;
   import §>P§.§=!,§;
   
   public class §6"1§ extends §5"v§
   {
      
      public static const §2"x§:Number = 0.15;
       
      
      protected var § !4§:§;+§;
      
      protected var §3"J§:§11§;
      
      public function §6"1§(param1:Sprite, param2:§[a§, param3:b2World, param4:§=!,§, param5:§^d§, param6:Number)
      {
         this.§ !4§ = param4 as §;+§;
         if(this.§ !4§)
         {
            if(this.§ !4§.scale)
            {
               param6 = this.§ !4§.scale;
            }
         }
         this.initializeObjectBehaviorLogic();
         super(param1,param2,param3,param4,param5,param6);
      }
      
      protected function initializeObjectBehaviorLogic() : void
      {
         this.§3"J§ = new §11§(this.§ !4§);
      }
      
      override protected function initObjectRenderer() : §2A§
      {
         var _loc1_:Boolean = false;
         if(this.§ !4§)
         {
            _loc1_ = this.§ !4§.§>H§;
         }
         return new §2A§(animation,sprite,_loc1_);
      }
      
      override public function update(param1:Number, param2:§""M§) : void
      {
         super.update(param1,param2);
         this.§3"J§.update(param1,param2,x,y);
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         super.render(param1,param2,param3);
         sprite.rotation = § !r§ + this.§3"J§.§"=§;
      }
      
      override public function get removeOnNextUpdate() : Boolean
      {
         if(this.§3"J§.removeOnNextUpdate)
         {
            return true;
         }
         return super.removeOnNextUpdate;
      }
      
      override public function updateBeforeRemoving(param1:§""M§) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         this.explodeBeforeRemoving(param1);
         if(health <= 0)
         {
            if(this.§ !4§.spriteScore)
            {
               _loc2_ = §?"Z§().GetPosition().x;
               _loc3_ = §?"Z§().GetPosition().y;
               param1.addObject(this.§ !4§.spriteScore,_loc2_,_loc3_,0,§super§.§4"D§,false,false,false,3,true);
            }
         }
         super.updateBeforeRemoving(param1);
      }
      
      protected function §%"D§(param1:§""M§) : void
      {
         var _loc2_:Number = §?"Z§().GetPosition().x;
         var _loc3_:Number = §?"Z§().GetPosition().y;
         var _loc4_:Number = §4F§();
         this.§3"J§.§7&§(param1,_loc2_,_loc3_,_loc4_);
         this.§3"J§.§#!g§(param1,_loc2_,_loc3_,_loc4_);
      }
      
      protected function explodeBeforeRemoving(param1:§""M§) : void
      {
         var _loc2_:Number = §?"Z§().GetPosition().x;
         var _loc3_:Number = §?"Z§().GetPosition().y;
         this.§3"J§.§9"q§(param1,_loc2_,_loc3_);
      }
      
      override protected function createPhysicsBody(param1:Number, param2:Number) : void
      {
         super.createPhysicsBody(param1,param2);
         §?"Z§().SetLinearDamping(§2"x§);
      }
      
      override public function applyDamage(param1:Number, param2:§""M§, param3:§4!w§, param4:Boolean = true) : Number
      {
         this.§3"J§.applyDamage(param1,param2,param3);
         return super.applyDamage(param1,param2,param3,param4);
      }
      
      override protected function playCollisionSound() : void
      {
         this.§3"J§.playCollisionSound();
      }
      
      override protected function playDamagedSound() : void
      {
         this.§3"J§.playDamagedSound();
      }
      
      override protected function playDestroyedSound() : void
      {
         this.§3"J§.playDestroyedSound();
      }
      
      override protected function addDestructionParticles(param1:§""M§) : void
      {
         this.§%"D§(param1);
      }
      
      override public function addDamageParticles(param1:§""M§, param2:int) : void
      {
         var _loc3_:Number = §?"Z§().GetPosition().x;
         var _loc4_:Number = §?"Z§().GetPosition().y;
         var _loc5_:Number = §4F§();
         this.§3"J§.§7&§(param1,_loc3_,_loc4_,_loc5_,0.5);
      }
   }
}
