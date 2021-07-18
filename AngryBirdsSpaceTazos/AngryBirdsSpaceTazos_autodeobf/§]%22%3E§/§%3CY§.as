package §]">§
{
   import §"!&§.§8X§;
   import §'!&§.b2World;
   import §'4§.§4#§;
   import §3"#§.§<!O§;
   import §4&§.§#r§;
   import §7!8§.Sprite;
   
   public class §<Y§ extends § 6§
   {
       
      
      protected var §8!&§:Number = 0.07;
      
      protected var §56§:Number = 0.0;
      
      public function §<Y§(param1:Sprite, param2:§#r§, param3:b2World, param4:§8X§, param5:Number, param6:Number, param7:Number, param8:Number = 1.0, param9:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      override public function addDamageParticles(param1:§;U§, param2:int) : void
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
      
      protected function §#"4§(param1:Number) : void
      {
         if(health == healthMax)
         {
            if(this.§8!&§ < §4#§.§6!l§)
            {
               this.§8!&§ += param1 * §4#§.§-a§;
            }
            §^!z§().SetAngularVelocity(param1 * this.§8!&§);
         }
      }
      
      override public function update(param1:Number, param2:§;U§) : void
      {
         super.update(param1,param2);
         this.§#"4§(param1);
         if(§%!8§() || timeSinceCollisionMilliSeconds > §4#§.§"w§)
         {
            if(this.§56§ < §4#§.§;!6§)
            {
               this.§56§ += param1;
               if(this.§56§ - param1 < §4#§.§6@§ && this.§56§ >= §4#§.§6@§)
               {
                  this.§ ,§();
               }
               if(this.§56§ >= §4#§.§;!6§)
               {
                  this.§9!B§(param2);
               }
            }
         }
      }
      
      protected function § ,§() : void
      {
         §<!O§.playSound("Mighty_Eagle_Selected_1","ChannelBird");
         §<!O§.playSound("Mighty_Eagle_Flying_1","ChannelBird");
      }
      
      protected function §9!B§(param1:§;U§) : void
      {
         var _loc2_:Number = §^!z§().GetPosition().x - §4#§.§@>§;
         var _loc3_:Number = §^!z§().GetPosition().y - §4#§.§@>§ * §4#§.§0W§ * 1.07;
         var _loc4_:§5"$§;
         (_loc4_ = param1.addObject("BIRD_MIGHTY_EAGLE",_loc2_,_loc3_,§4#§.§9-§ * 1.2,§-%§.§;!J§) as §5"$§).renderer.setScale(1.82);
         _loc4_.§<!<§ = id;
      }
      
      override public function updateOutOfBounds(param1:§;U§) : void
      {
         this.§ ,§();
         this.§9!B§(param1);
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
   }
}
