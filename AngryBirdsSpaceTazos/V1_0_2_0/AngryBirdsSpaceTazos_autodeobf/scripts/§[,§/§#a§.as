package §[,§
{
   import §#!X§.b2World;
   import §'!&§.Sprite;
   import §8o§.§]!U§;
   import §;"=§.§!!O§;
   import §;"=§.§]"<§;
   
   public class §#a§ extends §5"§
   {
      
      public static const §,!%§:Number = 0.15;
       
      
      protected var §^B§:§!!O§;
      
      protected var §!!w§:§;k§;
      
      public function §#a§(param1:Sprite, param2:§]!U§, param3:b2World, param4:§]"<§, param5:Number, param6:Number, param7:Number, param8:Number)
      {
         this.§^B§ = param4 as §!!O§;
         if(this.§^B§)
         {
            if(this.§^B§.scale)
            {
               param8 = this.§^B§.scale;
            }
         }
         this.initializeObjectBehaviorLogic();
         super(param1,param2,param3,param4,param5,param6,param7,param8);
      }
      
      protected function initializeObjectBehaviorLogic() : void
      {
         this.§!!w§ = new §;k§(this.§^B§);
      }
      
      override protected function initObjectRenderer() : §#&§
      {
         var _loc1_:Boolean = false;
         if(this.§^B§)
         {
            _loc1_ = this.§^B§.§'"#§;
         }
         return new §#&§(animation,sprite,_loc1_);
      }
      
      override public function update(param1:Number, param2:§class§) : void
      {
         super.update(param1,param2);
         this.§!!w§.update(param1,param2,x,y);
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         super.render(param1,param2,param3);
         sprite.rotation = §^8§ + this.§!!w§.§?x§;
      }
      
      override public function get removeOnNextUpdate() : Boolean
      {
         if(this.§!!w§.removeOnNextUpdate)
         {
            if(this.§!!w§.§9!,§ && this.§!!w§.§8!y§ <= 0)
            {
               health = 0;
            }
            return true;
         }
         return super.removeOnNextUpdate;
      }
      
      override public function updateBeforeRemoving(param1:§class§) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         if(health <= 0)
         {
            this.explodeBeforeRemoving(param1);
            if(health <= 0)
            {
               if(this.§^B§.spriteScore)
               {
                  _loc2_ = § <§().GetPosition().x;
                  _loc3_ = § <§().GetPosition().y;
                  param1.addObject(this.§^B§.spriteScore,_loc2_,_loc3_,0,§]j§.§4"1§,false,false,false,3,true);
               }
            }
            super.updateBeforeRemoving(param1);
         }
      }
      
      protected function §?"6§(param1:§class§) : void
      {
         var _loc2_:Number = § <§().GetPosition().x;
         var _loc3_:Number = § <§().GetPosition().y;
         var _loc4_:Number = §@,§();
         this.§!!w§.§>§(param1,_loc2_,_loc3_,_loc4_);
         this.§!!w§.§`i§(param1,_loc2_,_loc3_,_loc4_);
      }
      
      protected function explodeBeforeRemoving(param1:§class§) : void
      {
         var _loc2_:Number = § <§().GetPosition().x;
         var _loc3_:Number = § <§().GetPosition().y;
         this.§!!w§.makeExplosion(param1,_loc2_,_loc3_);
      }
      
      override protected function createPhysicsBody(param1:Number, param2:Number) : void
      {
         super.createPhysicsBody(param1,param2);
         § <§().SetLinearDamping(§,!%§);
      }
      
      override public function applyDamage(param1:Number, param2:§class§, param3:§5,§, param4:Boolean = true) : Number
      {
         this.§!!w§.applyDamage(param1,param2,param3);
         return super.applyDamage(param1,param2,param3,param4);
      }
      
      override protected function playCollisionSound() : void
      {
         this.§!!w§.playCollisionSound();
      }
      
      override protected function playDamagedSound() : void
      {
         this.§!!w§.playDamagedSound();
      }
      
      override protected function playDestroyedSound() : void
      {
         this.§!!w§.playDestroyedSound();
      }
      
      override protected function addDestructionParticles(param1:§class§) : void
      {
         this.§?"6§(param1);
      }
      
      override public function addDamageParticles(param1:§class§, param2:int) : void
      {
         var _loc3_:Number = § <§().GetPosition().x;
         var _loc4_:Number = § <§().GetPosition().y;
         var _loc5_:Number = §@,§();
         this.§!!w§.§>§(param1,_loc3_,_loc4_,_loc5_,0.5);
      }
   }
}
