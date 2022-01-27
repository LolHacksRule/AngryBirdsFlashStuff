package §5"D§
{
   import §4"@§.Sprite;
   import §6!M§.§;!4§;
   import §6!M§.§<!r§;
   import §;`§.b2World;
   import §^e§.§^5§;
   
   public class §"Z§ extends §"f§
   {
      
      public static const §""9§:Number = 0.15;
       
      
      protected var §'!m§:§;!4§;
      
      protected var §^"=§:§4!b§;
      
      public function §"Z§(param1:Sprite, param2:§^5§, param3:b2World, param4:§<!r§, param5:Number, param6:Number, param7:Number, param8:Number)
      {
         this.§'!m§ = param4 as §;!4§;
         if(this.§'!m§)
         {
            if(this.§'!m§.scale)
            {
               param8 = this.§'!m§.scale;
            }
         }
         this.initializeObjectBehaviorLogic();
         super(param1,param2,param3,param4,param5,param6,param7,param8);
      }
      
      protected function initializeObjectBehaviorLogic() : void
      {
         this.§^"=§ = new §4!b§(this.§'!m§);
      }
      
      override protected function initObjectRenderer() : §8r§
      {
         var _loc1_:Boolean = false;
         if(this.§'!m§)
         {
            _loc1_ = this.§'!m§.§^!s§;
         }
         return new §8r§(animation,sprite,_loc1_);
      }
      
      override public function update(param1:Number, param2:§0!5§) : void
      {
         super.update(param1,param2);
         this.§^"=§.update(param1,param2,x,y);
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         super.render(param1,param2,param3);
         sprite.rotation = §4X§ + this.§^"=§.§=R§;
      }
      
      override public function get removeOnNextUpdate() : Boolean
      {
         if(this.§^"=§.removeOnNextUpdate)
         {
            if(this.§^"=§.§%"!§ && this.§^"=§.§3T§ <= 0)
            {
               health = 0;
            }
            return true;
         }
         return super.removeOnNextUpdate;
      }
      
      override public function updateBeforeRemoving(param1:§0!5§) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         if(health <= 0)
         {
            this.explodeBeforeRemoving(param1);
            if(health <= 0)
            {
               if(this.§'!m§.spriteScore)
               {
                  _loc2_ = §9B§().GetPosition().x;
                  _loc3_ = §9B§().GetPosition().y;
                  param1.addObject(this.§'!m§.spriteScore,_loc2_,_loc3_,0,§3!3§.§'!y§,false,false,false,3,true);
               }
            }
            super.updateBeforeRemoving(param1);
         }
      }
      
      protected function §#!p§(param1:§0!5§) : void
      {
         var _loc2_:Number = §9B§().GetPosition().x;
         var _loc3_:Number = §9B§().GetPosition().y;
         var _loc4_:Number = §&!G§();
         this.§^"=§.§ !q§(param1,_loc2_,_loc3_,_loc4_);
         this.§^"=§.§4!1§(param1,_loc2_,_loc3_,_loc4_);
      }
      
      protected function explodeBeforeRemoving(param1:§0!5§) : void
      {
         var _loc2_:Number = §9B§().GetPosition().x;
         var _loc3_:Number = §9B§().GetPosition().y;
         this.§^"=§.makeExplosion(param1,_loc2_,_loc3_);
      }
      
      override protected function createPhysicsBody(param1:Number, param2:Number) : void
      {
         super.createPhysicsBody(param1,param2);
         §9B§().SetLinearDamping(§""9§);
      }
      
      override public function applyDamage(param1:Number, param2:§0!5§, param3:§6!!§, param4:Boolean = true) : Number
      {
         this.§^"=§.applyDamage(param1,param2,param3);
         return super.applyDamage(param1,param2,param3,param4);
      }
      
      override protected function playCollisionSound() : void
      {
         this.§^"=§.playCollisionSound();
      }
      
      override protected function playDamagedSound() : void
      {
         this.§^"=§.playDamagedSound();
      }
      
      override protected function playDestroyedSound() : void
      {
         this.§^"=§.playDestroyedSound();
      }
      
      override protected function addDestructionParticles(param1:§0!5§) : void
      {
         this.§#!p§(param1);
      }
      
      override public function addDamageParticles(param1:§0!5§, param2:int) : void
      {
         var _loc3_:Number = §9B§().GetPosition().x;
         var _loc4_:Number = §9B§().GetPosition().y;
         var _loc5_:Number = §&!G§();
         this.§^"=§.§ !q§(param1,_loc3_,_loc4_,_loc5_,0.5);
      }
   }
}
