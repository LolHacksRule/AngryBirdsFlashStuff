package §!r§
{
   import §!!k§.§1!^§;
   import §#g§.§5!M§;
   import §#g§.§["%§;
   import §=G§.§9v§;
   import §>"_§.b2World;
   import §use§.Sprite;
   
   public class §%E§ extends §<!^§
   {
      
      public static const §^r§:Number = 0.15;
       
      
      protected var §7!d§:§5!M§;
      
      protected var §'"w§:§>y§;
      
      public function §%E§(param1:Sprite, param2:§1!^§, param3:b2World, param4:§["%§, param5:§9v§, param6:Number)
      {
         this.§7!d§ = param4 as §5!M§;
         if(this.§7!d§)
         {
            if(this.§7!d§.scale)
            {
               param6 = this.§7!d§.scale;
            }
         }
         this.initializeObjectBehaviorLogic();
         super(param1,param2,param3,param4,param5,param6);
      }
      
      protected function initializeObjectBehaviorLogic() : void
      {
         this.§'"w§ = new §>y§(this.§7!d§);
      }
      
      override protected function initObjectRenderer() : §0"3§
      {
         var _loc1_:Boolean = false;
         if(this.§7!d§)
         {
            _loc1_ = this.§7!d§.§<!,§;
         }
         return new §0"3§(animation,sprite,_loc1_);
      }
      
      override public function update(param1:Number, param2:§'=§) : void
      {
         super.update(param1,param2);
         this.§'"w§.update(param1,param2,x,y);
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         super.render(param1,param2,param3);
         sprite.rotation = §-T§ + this.§'"w§.§6j§;
      }
      
      override public function get removeOnNextUpdate() : Boolean
      {
         if(this.§'"w§.removeOnNextUpdate)
         {
            return true;
         }
         return super.removeOnNextUpdate;
      }
      
      override public function updateBeforeRemoving(param1:§'=§) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         this.explodeBeforeRemoving(param1);
         if(health <= 0)
         {
            if(this.§7!d§.spriteScore)
            {
               _loc2_ = §3"s§().GetPosition().x;
               _loc3_ = §3"s§().GetPosition().y;
               param1.addObject(this.§7!d§.spriteScore,_loc2_,_loc3_,0,§9"f§.§["_§,false,false,false,3,true);
            }
         }
         super.updateBeforeRemoving(param1);
      }
      
      protected function §'!x§(param1:§'=§) : void
      {
         var _loc2_:Number = §3"s§().GetPosition().x;
         var _loc3_:Number = §3"s§().GetPosition().y;
         var _loc4_:Number = §<"g§();
         this.§'"w§.§7=§(param1,_loc2_,_loc3_,_loc4_);
         this.§'"w§.§3"3§(param1,_loc2_,_loc3_,_loc4_);
      }
      
      protected function explodeBeforeRemoving(param1:§'=§) : void
      {
         var _loc2_:Number = §3"s§().GetPosition().x;
         var _loc3_:Number = §3"s§().GetPosition().y;
         this.§'"w§.§>!"§(param1,_loc2_,_loc3_);
      }
      
      override protected function createPhysicsBody(param1:Number, param2:Number) : void
      {
         super.createPhysicsBody(param1,param2);
         §3"s§().SetLinearDamping(§^r§);
      }
      
      override public function applyDamage(param1:Number, param2:§'=§, param3:§0N§, param4:Boolean = true) : Number
      {
         this.§'"w§.applyDamage(param1,param2,param3);
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
      
      override protected function playDestroyedSound() : void
      {
         this.§'"w§.playDestroyedSound();
      }
      
      override protected function addDestructionParticles(param1:§'=§) : void
      {
         this.§'!x§(param1);
      }
      
      override public function addDamageParticles(param1:§'=§, param2:int) : void
      {
         var _loc3_:Number = §3"s§().GetPosition().x;
         var _loc4_:Number = §3"s§().GetPosition().y;
         var _loc5_:Number = §<"g§();
         this.§'"w§.§7=§(param1,_loc3_,_loc4_,_loc5_,0.5);
      }
   }
}
