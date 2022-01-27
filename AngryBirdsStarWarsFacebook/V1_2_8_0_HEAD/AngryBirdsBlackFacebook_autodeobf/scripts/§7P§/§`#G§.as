package §7P§
{
   import §!!U§.Sprite;
   import §+#$§.b2World;
   import §2"Y§.§"t§;
   import §2"Y§.§8!D§;
   import §7!F§.§>"G§;
   import §<"B§.§94§;
   
   public class §`#G§ extends §7";§
   {
      
      public static const §^!k§:Number = 0.15;
       
      
      protected var §<X§:§8!D§;
      
      protected var §7[§:§!p§;
      
      public function §`#G§(param1:Sprite, param2:§>"G§, param3:b2World, param4:§"t§, param5:§94§, param6:Number)
      {
         this.§<X§ = param4 as §8!D§;
         if(this.§<X§)
         {
            if(this.§<X§.scale)
            {
               param6 = this.§<X§.scale;
            }
         }
         this.initializeObjectBehaviorLogic();
         super(param1,param2,param3,param4,param5,param6);
      }
      
      protected function initializeObjectBehaviorLogic() : void
      {
         this.§7[§ = new §!p§(this.§<X§);
      }
      
      override protected function initObjectRenderer() : §,D§
      {
         var _loc1_:Boolean = false;
         if(this.§<X§)
         {
            _loc1_ = this.§<X§.§-"i§;
         }
         return new §,D§(animation,sprite,_loc1_);
      }
      
      override public function update(param1:Number, param2:§;$§) : void
      {
         super.update(param1,param2);
         this.§7[§.update(param1,param2,x,y);
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         super.render(param1,param2,param3);
         sprite.rotation = §<#W§ + this.§7[§.§3"a§;
      }
      
      override public function get removeOnNextUpdate() : Boolean
      {
         if(this.§7[§.removeOnNextUpdate)
         {
            return true;
         }
         return super.removeOnNextUpdate;
      }
      
      override public function updateBeforeRemoving(param1:§;$§) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         this.explodeBeforeRemoving(param1);
         if(health <= 0)
         {
            if(this.§<X§.spriteScore)
            {
               _loc2_ = §3!t§().GetPosition().x;
               _loc3_ = §3!t§().GetPosition().y;
               param1.addObject(this.§<X§.spriteScore,_loc2_,_loc3_,0,§;=§.§""3§,false,false,false,3,true);
            }
         }
         super.updateBeforeRemoving(param1);
      }
      
      protected function §2"+§(param1:§;$§) : void
      {
         var _loc2_:Number = §3!t§().GetPosition().x;
         var _loc3_:Number = §3!t§().GetPosition().y;
         var _loc4_:Number = §"#,§();
         this.§7[§.§]T§(param1,_loc2_,_loc3_,_loc4_);
         this.§7[§.§+"M§(param1,_loc2_,_loc3_,_loc4_);
      }
      
      protected function explodeBeforeRemoving(param1:§;$§) : void
      {
         var _loc2_:Number = §3!t§().GetPosition().x;
         var _loc3_:Number = §3!t§().GetPosition().y;
         this.§7[§.§4c§(param1,_loc2_,_loc3_);
      }
      
      override protected function createPhysicsBody(param1:Number, param2:Number) : void
      {
         super.createPhysicsBody(param1,param2);
         §3!t§().SetLinearDamping(§^!k§);
      }
      
      override public function applyDamage(param1:Number, param2:§;$§, param3:§&#=§, param4:Boolean = true) : Number
      {
         this.§7[§.applyDamage(param1,param2,param3);
         return super.applyDamage(param1,param2,param3,param4);
      }
      
      override protected function playCollisionSound() : void
      {
         this.§7[§.playCollisionSound();
      }
      
      override protected function playDamagedSound() : void
      {
         this.§7[§.playDamagedSound();
      }
      
      override protected function playDestroyedSound() : void
      {
         this.§7[§.playDestroyedSound();
      }
      
      override protected function addDestructionParticles(param1:§;$§) : void
      {
         this.§2"+§(param1);
      }
      
      override public function addDamageParticles(param1:§;$§, param2:int) : void
      {
         var _loc3_:Number = §3!t§().GetPosition().x;
         var _loc4_:Number = §3!t§().GetPosition().y;
         var _loc5_:Number = §"#,§();
         this.§7[§.§]T§(param1,_loc3_,_loc4_,_loc5_,0.5);
      }
   }
}
