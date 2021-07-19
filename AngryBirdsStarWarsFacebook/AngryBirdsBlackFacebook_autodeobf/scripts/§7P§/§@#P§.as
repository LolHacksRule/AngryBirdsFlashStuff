package §7P§
{
   import §!!U§.Sprite;
   import §+#$§.b2World;
   import §2"Y§.§"t§;
   import §7!F§.§>"G§;
   import §<"B§.§94§;
   import §="2§.§?!r§;
   import §^#>§.§0"x§;
   
   public class §@#P§ extends §?"N§
   {
       
      
      protected var §!#b§:Number = 0.07;
      
      protected var §;";§:Number = 0.0;
      
      public function §@#P§(param1:Sprite, param2:§>"G§, param3:b2World, param4:§"t§, param5:§94§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      override public function addDamageParticles(param1:§;$§, param2:int) : void
      {
      }
      
      override protected function updateFlying() : void
      {
      }
      
      override public function blink() : void
      {
      }
      
      override public function scream() : void
      {
      }
      
      override protected function normalize() : void
      {
      }
      
      protected function updateRotation(param1:Number) : void
      {
         if(health == healthMax)
         {
            if(this.§!#b§ < §0"x§.§?#5§)
            {
               this.§!#b§ += param1 * §0"x§.§@"#§;
            }
            §3!t§().SetAngularVelocity(param1 * this.§!#b§);
         }
      }
      
      override public function update(param1:Number, param2:§;$§) : void
      {
         super.update(param1,param2);
         this.updateRotation(param1);
         if(§+"6§() || timeSinceCollisionMilliSeconds > §0"x§.§[e§)
         {
            if(this.§;";§ < §0"x§.§[# §)
            {
               this.§;";§ += param1;
               if(this.§;";§ - param1 < §0"x§.§'"j§ && this.§;";§ >= §0"x§.§'"j§)
               {
                  this.§"#R§();
               }
               if(this.§;";§ >= §0"x§.§[# §)
               {
                  this.addMightyEagle(param2);
               }
            }
         }
      }
      
      protected function §"#R§() : void
      {
         §?!r§.§"#_§("Mighty_Eagle_Selected_1","ChannelBird");
         §?!r§.§"#_§("Mighty_Eagle_Flying_1","ChannelBird");
      }
      
      protected function addMightyEagle(param1:§;$§) : void
      {
         var _loc2_:Number = §3!t§().GetPosition().x - §0"x§.§>"h§;
         var _loc3_:Number = §3!t§().GetPosition().y - §0"x§.§>"h§ * §0"x§.§8!6§ * 1.07;
         var _loc4_:§'"o§;
         (_loc4_ = param1.addObject("BIRD_MIGHTY_EAGLE",_loc2_,_loc3_,§0"x§.§1! § * 1.2,§;=§.§""3§) as §'"o§).§4d§.setScale(1.82);
         _loc4_.§1"w§ = id;
      }
      
      override public function updateOutOfBounds(param1:§;$§) : void
      {
         this.§"#R§();
         this.addMightyEagle(param1);
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
   }
}
