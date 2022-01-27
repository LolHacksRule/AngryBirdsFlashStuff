package §!r§
{
   import §!!k§.§1!^§;
   import §"§.§96§;
   import §#g§.§["%§;
   import §=G§.§9v§;
   import §>"_§.b2World;
   import §`"1§.§=Q§;
   import §use§.Sprite;
   
   public class §4?§ extends §;!T§
   {
       
      
      protected var §&"I§:Number = 0.07;
      
      protected var §#"m§:Number = 0.0;
      
      public function §4?§(param1:Sprite, param2:§1!^§, param3:b2World, param4:§["%§, param5:§9v§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      override public function addDamageParticles(param1:§'=§, param2:int) : void
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
            if(this.§&"I§ < §96§.§=!!§)
            {
               this.§&"I§ += param1 * §96§.§<"W§;
            }
            §3"s§().SetAngularVelocity(param1 * this.§&"I§);
         }
      }
      
      override public function update(param1:Number, param2:§'=§) : void
      {
         super.update(param1,param2);
         this.updateRotation(param1);
         if(§;!K§() || timeSinceCollisionMilliSeconds > §96§.§4G§)
         {
            if(this.§#"m§ < §96§.§8G§)
            {
               this.§#"m§ += param1;
               if(this.§#"m§ - param1 < §96§.§!"q§ && this.§#"m§ >= §96§.§!"q§)
               {
                  this.§]!x§();
               }
               if(this.§#"m§ >= §96§.§8G§)
               {
                  this.addMightyEagle(param2);
               }
            }
         }
      }
      
      protected function §]!x§() : void
      {
         §=Q§.§`!A§("Mighty_Eagle_Selected_1","ChannelBird");
         §=Q§.§`!A§("Mighty_Eagle_Flying_1","ChannelBird");
      }
      
      protected function addMightyEagle(param1:§'=§) : void
      {
         var _loc2_:Number = §3"s§().GetPosition().x - §96§.§1'§;
         var _loc3_:Number = §3"s§().GetPosition().y - §96§.§1'§ * §96§.§6'§ * 1.07;
         var _loc4_:§0"t§;
         (_loc4_ = param1.addObject("BIRD_MIGHTY_EAGLE",_loc2_,_loc3_,§96§.§%"y§ * 1.2,§9"f§.§["_§) as §0"t§).§?!A§.setScale(1.82);
         _loc4_.§1!d§ = id;
      }
      
      override public function updateOutOfBounds(param1:§'=§) : void
      {
         this.§]!x§();
         this.addMightyEagle(param1);
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
   }
}
