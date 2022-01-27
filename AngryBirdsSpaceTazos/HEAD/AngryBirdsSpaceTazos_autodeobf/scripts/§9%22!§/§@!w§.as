package §9"!§
{
   import §&!]§.Sprite;
   import §3>§.§-"8§;
   import §3>§.§-f§;
   import §9!K§.b2World;
   import §9!v§.§1!_§;
   
   public class §@!w§ extends § !K§
   {
      
      public static const §];§:Number = 0.15;
       
      
      protected var §>!+§:§-f§;
      
      protected var §%a§:§-!6§;
      
      public function §@!w§(param1:Sprite, param2:§1!_§, param3:b2World, param4:§-"8§, param5:Number, param6:Number, param7:Number, param8:Number)
      {
         this.§>!+§ = param4 as §-f§;
         if(this.§>!+§)
         {
            if(this.§>!+§.scale)
            {
               param8 = this.§>!+§.scale;
            }
         }
         this.initializeObjectBehaviorLogic();
         super(param1,param2,param3,param4,param5,param6,param7,param8);
      }
      
      protected function initializeObjectBehaviorLogic() : void
      {
         this.§%a§ = new §-!6§(this.§>!+§);
      }
      
      override protected function initObjectRenderer() : §7!"§
      {
         var _loc1_:Boolean = false;
         if(this.§>!+§)
         {
            _loc1_ = this.§>!+§.§#!X§;
         }
         return new §7!"§(animation,sprite,_loc1_);
      }
      
      override public function update(param1:Number, param2:§0!s§) : void
      {
         super.update(param1,param2);
         this.§%a§.update(param1,param2,x,y);
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         super.render(param1,param2,param3);
         sprite.rotation = § "F§ + this.§%a§.§%2§;
      }
      
      override public function get removeOnNextUpdate() : Boolean
      {
         if(this.§%a§.removeOnNextUpdate)
         {
            if(this.§%a§.§&`§ && this.§%a§.§"%§ <= 0)
            {
               health = 0;
            }
            return true;
         }
         return super.removeOnNextUpdate;
      }
      
      override public function updateBeforeRemoving(param1:§0!s§) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         if(health <= 0)
         {
            this.explodeBeforeRemoving(param1);
            if(health <= 0)
            {
               if(this.§>!+§.spriteScore)
               {
                  _loc2_ = §`I§().GetPosition().x;
                  _loc3_ = §`I§().GetPosition().y;
                  param1.addObject(this.§>!+§.spriteScore,_loc2_,_loc3_,0,§"" §.§%A§,false,false,false,3,true);
               }
            }
            super.updateBeforeRemoving(param1);
         }
      }
      
      protected function §]H§(param1:§0!s§) : void
      {
         var _loc2_:Number = §`I§().GetPosition().x;
         var _loc3_:Number = §`I§().GetPosition().y;
         var _loc4_:Number = §<!O§();
         this.§%a§.§4k§(param1,_loc2_,_loc3_,_loc4_);
         this.§%a§.§[!L§(param1,_loc2_,_loc3_,_loc4_);
      }
      
      protected function explodeBeforeRemoving(param1:§0!s§) : void
      {
         var _loc2_:Number = §`I§().GetPosition().x;
         var _loc3_:Number = §`I§().GetPosition().y;
         this.§%a§.makeExplosion(param1,_loc2_,_loc3_);
      }
      
      override protected function createPhysicsBody(param1:Number, param2:Number) : void
      {
         super.createPhysicsBody(param1,param2);
         §`I§().SetLinearDamping(§];§);
      }
      
      override public function applyDamage(param1:Number, param2:§0!s§, param3:§^"3§, param4:Boolean = true) : Number
      {
         this.§%a§.applyDamage(param1,param2,param3);
         return super.applyDamage(param1,param2,param3,param4);
      }
      
      override protected function playCollisionSound() : void
      {
         this.§%a§.playCollisionSound();
      }
      
      override protected function playDamagedSound() : void
      {
         this.§%a§.playDamagedSound();
      }
      
      override protected function playDestroyedSound() : void
      {
         this.§%a§.playDestroyedSound();
      }
      
      override protected function addDestructionParticles(param1:§0!s§) : void
      {
         this.§]H§(param1);
      }
      
      override public function addDamageParticles(param1:§0!s§, param2:int) : void
      {
         var _loc3_:Number = §`I§().GetPosition().x;
         var _loc4_:Number = §`I§().GetPosition().y;
         var _loc5_:Number = §<!O§();
         this.§%a§.§4k§(param1,_loc3_,_loc4_,_loc5_,0.5);
      }
   }
}
