package §-!!§
{
   import § !D§.§;#W§;
   import §!6§.Sprite;
   import §8#t§.b2World;
   import §9$+§.§9"4§;
   import §>"9§.§[#%§;
   import §?§.§,Y§;
   import §^"[§.§4!8§;
   
   public class §9"<§ extends §5"W§
   {
       
      
      protected var §,!§:Number = 0.07;
      
      protected var §]![§:Number = 0.0;
      
      public function §9"<§(param1:Sprite, param2:§4!8§, param3:b2World, param4:§,Y§, param5:§9"4§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      override public function addDamageParticles(param1:§ #'§, param2:int) : void
      {
      }
      
      override protected function updateFlying() : void
      {
      }
      
      override protected function get shouldShowCloudOnSpecialPowerUse() : Boolean
      {
         return false;
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
      
      protected function §&"g§(param1:Number) : void
      {
         if(health == §1#H§)
         {
            if(this.§,!§ < §;#W§.§,#&§)
            {
               this.§,!§ += param1 * §;#W§.§ #S§;
            }
            getBody().SetAngularVelocity(param1 * this.§,!§);
         }
      }
      
      override public function update(param1:Number, param2:§ #'§) : void
      {
         super.update(param1,param2);
         this.§&"g§(param1);
         if(§=!a§() || timeSinceCollisionMilliSeconds > §;#W§.§6!m§)
         {
            if(this.§]![§ < §;#W§.§6$=§)
            {
               this.§]![§ += param1;
               if(this.§]![§ - param1 < §;#W§.§2!U§ && this.§]![§ >= §;#W§.§2!U§)
               {
                  this.§##w§();
               }
               if(this.§]![§ >= §;#W§.§6$=§)
               {
                  this.§&"i§(param2);
               }
            }
         }
      }
      
      protected function §##w§() : void
      {
         §[#%§.playSound("mightyeagle","ChannelBird");
      }
      
      protected function §&"i§(param1:§ #'§) : void
      {
         var _loc2_:Number = getBody().GetPosition().x - §;#W§.§;"h§;
         var _loc3_:Number = getBody().GetPosition().y - §;#W§.§;"h§ * §;#W§.§6$9§ * 1.07;
         var _loc4_:Number = §;#W§.§,j§ * -1.2;
         var _loc5_:§`#9§;
         (_loc5_ = param1.addObject("BIRD_MIGHTY_EAGLE",_loc2_,_loc3_,_loc4_,§7S§.ID_NEXT_FREE) as §`#9§).§ !7§.setScale(1.82);
         _loc5_.§[#k§ = id;
      }
      
      override public function updateOutOfBounds(param1:§ #'§) : void
      {
         this.§##w§();
         this.§&"i§(param1);
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
      
      override protected function handleLevelEndCheck() : void
      {
      }
   }
}
