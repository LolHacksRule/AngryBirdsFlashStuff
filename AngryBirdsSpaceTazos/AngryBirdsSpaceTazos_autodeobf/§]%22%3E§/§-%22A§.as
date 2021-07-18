package §]">§
{
   import §"!&§.§8X§;
   import §"!&§.§]!C§;
   import §'!&§.b2World;
   import §4&§.§#r§;
   import §7!8§.Sprite;
   
   public class §-"A§ extends §@"D§
   {
      
      public static const §[E§:Number = 0.15;
       
      
      protected var §2"!§:§]!C§;
      
      protected var §7!w§:§"!B§;
      
      public function §-"A§(param1:Sprite, param2:§#r§, param3:b2World, param4:§8X§, param5:Number, param6:Number, param7:Number, param8:Number)
      {
         this.§2"!§ = param4 as §]!C§;
         if(this.§2"!§)
         {
            if(this.§2"!§.scale)
            {
               param8 = this.§2"!§.scale;
            }
         }
         this.initializeObjectBehaviorLogic();
         super(param1,param2,param3,param4,param5,param6,param7,param8);
      }
      
      protected function initializeObjectBehaviorLogic() : void
      {
         this.§7!w§ = new §"!B§(this.§2"!§);
      }
      
      override protected function initObjectRenderer() : §&5§
      {
         var _loc1_:Boolean = false;
         if(this.§2"!§)
         {
            _loc1_ = this.§2"!§.§68§;
         }
         return new §&5§(animation,sprite,_loc1_);
      }
      
      override public function update(param1:Number, param2:§;U§) : void
      {
         super.update(param1,param2);
         this.§7!w§.update(param1,param2,x,y);
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         super.render(param1,param2,param3);
         sprite.rotation = §1"3§ + this.§7!w§.§3"7§;
      }
      
      override public function get removeOnNextUpdate() : Boolean
      {
         if(this.§7!w§.removeOnNextUpdate)
         {
            if(this.§7!w§.§!"=§ && this.§7!w§.§4",§ <= 0)
            {
               health = 0;
            }
            return true;
         }
         return super.removeOnNextUpdate;
      }
      
      override public function updateBeforeRemoving(param1:§;U§) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         if(health <= 0)
         {
            this.explodeBeforeRemoving(param1);
            if(health <= 0)
            {
               if(this.§2"!§.spriteScore)
               {
                  _loc2_ = §^!z§().GetPosition().x;
                  _loc3_ = §^!z§().GetPosition().y;
                  param1.addObject(this.§2"!§.spriteScore,_loc2_,_loc3_,0,§-%§.§;!J§,false,false,false,3,true);
               }
            }
            super.updateBeforeRemoving(param1);
         }
      }
      
      protected function §3#§(param1:§;U§) : void
      {
         var _loc2_:Number = §^!z§().GetPosition().x;
         var _loc3_:Number = §^!z§().GetPosition().y;
         var _loc4_:Number = §+!c§();
         this.§7!w§.§@<§(param1,_loc2_,_loc3_,_loc4_);
         this.§7!w§.§9f§(param1,_loc2_,_loc3_,_loc4_);
      }
      
      protected function explodeBeforeRemoving(param1:§;U§) : void
      {
         var _loc2_:Number = §^!z§().GetPosition().x;
         var _loc3_:Number = §^!z§().GetPosition().y;
         this.§7!w§.makeExplosion(param1,_loc2_,_loc3_);
      }
      
      override protected function createPhysicsBody(param1:Number, param2:Number) : void
      {
         super.createPhysicsBody(param1,param2);
         §^!z§().SetLinearDamping(§[E§);
      }
      
      override public function applyDamage(param1:Number, param2:§;U§, param3:§1!0§, param4:Boolean = true) : Number
      {
         this.§7!w§.applyDamage(param1,param2,param3);
         return super.applyDamage(param1,param2,param3,param4);
      }
      
      override protected function playCollisionSound() : void
      {
         this.§7!w§.playCollisionSound();
      }
      
      override protected function playDamagedSound() : void
      {
         this.§7!w§.playDamagedSound();
      }
      
      override protected function playDestroyedSound() : void
      {
         this.§7!w§.playDestroyedSound();
      }
      
      override protected function addDestructionParticles(param1:§;U§) : void
      {
         this.§3#§(param1);
      }
      
      override public function addDamageParticles(param1:§;U§, param2:int) : void
      {
         var _loc3_:Number = §^!z§().GetPosition().x;
         var _loc4_:Number = §^!z§().GetPosition().y;
         var _loc5_:Number = §+!c§();
         this.§7!w§.§@<§(param1,_loc3_,_loc4_,_loc5_,0.5);
      }
   }
}
