package §[#a§
{
   import §,#L§.§!#%§;
   import §9$§.Sprite;
   import §=#n§.b2World;
   import §@"§.§`"W§;
   import §`#C§.§4o§;
   import §`#C§.§8K§;
   
   public class §`#X§ extends §=,§
   {
      
      public static const §+4§:Number = 0.15;
       
      
      protected var §?";§:§4o§;
      
      protected var §3#O§:§9N§;
      
      public function §`#X§(param1:Sprite, param2:§`"W§, param3:b2World, param4:§8K§, param5:§!#%§, param6:Number)
      {
         this.§?";§ = param4 as §4o§;
         if(this.§?";§)
         {
            if(this.§?";§.scale)
            {
               param6 = this.§?";§.scale;
            }
         }
         this.§]!K§();
         super(param1,param2,param3,param4,param5,param6);
      }
      
      protected function §]!K§() : void
      {
         this.§3#O§ = new §9N§(this.§?";§);
      }
      
      override protected function initObjectRenderer() : §]#m§
      {
         var _loc1_:Boolean = false;
         if(this.§?";§)
         {
            _loc1_ = this.§?";§.§^"3§;
         }
         return new §]#m§(animation,sprite,_loc1_);
      }
      
      override public function update(param1:Number, param2:§7!O§) : void
      {
         super.update(param1,param2);
         this.§3#O§.update(param1,param2,x,y);
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         super.render(param1,param2,param3);
         sprite.rotation = §%##§ + this.§3#O§.§#"w§;
      }
      
      override public function get removeOnNextUpdate() : Boolean
      {
         if(this.§3#O§.removeOnNextUpdate)
         {
            return true;
         }
         return super.removeOnNextUpdate;
      }
      
      override public function updateBeforeRemoving(param1:§7!O§, param2:Boolean) : void
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
            if(this.§?";§.spriteScore)
            {
               _loc3_ = getBody().GetPosition().x;
               _loc4_ = getBody().GetPosition().y;
               param1.addObject(this.§?";§.spriteScore,_loc3_,_loc4_,0,§6"[§.ID_NEXT_FREE,false,false,false,3,true);
            }
         }
         super.updateBeforeRemoving(param1,param2);
      }
      
      protected function §%u§(param1:§7!O§) : void
      {
         var _loc2_:Number = getBody().GetPosition().x;
         var _loc3_:Number = getBody().GetPosition().y;
         var _loc4_:Number = §^!Y§();
         this.§3#O§.§&"?§(true,param1,_loc2_,_loc3_,_loc4_);
         this.§3#O§.§,#F§(param1,_loc2_,_loc3_,_loc4_);
      }
      
      protected function explodeBeforeRemoving(param1:§7!O§) : void
      {
         var _loc2_:Number = getBody().GetPosition().x;
         var _loc3_:Number = getBody().GetPosition().y;
         this.§3#O§.§,!v§(param1,_loc2_,_loc3_);
      }
      
      override protected function createPhysicsBody(param1:Number, param2:Number) : void
      {
         super.createPhysicsBody(param1,param2);
         getBody().SetLinearDamping(§+4§);
      }
      
      override public function applyDamage(param1:Number, param2:§7!O§, param3:§="@§, param4:Boolean = true) : Number
      {
         this.§3#O§.applyDamage(param1,param2,param3);
         return super.applyDamage(param1,param2,param3,param4);
      }
      
      override protected function playCollisionSound() : void
      {
         this.§3#O§.playCollisionSound();
      }
      
      override protected function playDamagedSound() : void
      {
         this.§3#O§.playDamagedSound();
      }
      
      override protected function playDestroyedSound() : void
      {
         this.§3#O§.playDestroyedSound();
      }
      
      override protected function addDestructionParticles(param1:§7!O§) : void
      {
         this.§%u§(param1);
      }
      
      override public function addDamageParticles(param1:§7!O§, param2:int) : void
      {
         var _loc3_:Number = getBody().GetPosition().x;
         var _loc4_:Number = getBody().GetPosition().y;
         var _loc5_:Number = §^!Y§();
         this.§3#O§.§&"?§(false,param1,_loc3_,_loc4_,_loc5_,0.5);
      }
   }
}
