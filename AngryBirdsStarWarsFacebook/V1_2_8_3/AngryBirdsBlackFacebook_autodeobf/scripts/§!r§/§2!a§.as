package §!r§
{
   import §!!k§.§1!^§;
   import §#g§.§11§;
   import §=G§.§9v§;
   import §>"_§.b2World;
   import §`"]§.§;j§;
   import §use§.Sprite;
   
   public class §2!a§ extends §3f§
   {
       
      
      private var §%!C§:Number = 0.0;
      
      private var §<"k§:String;
      
      protected var §"!;§:§;j§;
      
      public function §2!a§(param1:Sprite, param2:§1!^§, param3:b2World, param4:§11§, param5:§9v§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
         this.§%!C§ = §1!I§.getNumberProperty("specialtyActivationDelay");
         if(isNaN(this.§%!C§))
         {
            this.§%!C§ = 0;
         }
         else
         {
            this.§%!C§ *= 1000;
         }
         this.§<"k§ = §1!I§.getProperty("reticleSprite");
      }
      
      public function get §-H§() : Number
      {
         return this.§%!C§;
      }
      
      public function get reticleSprite() : String
      {
         return this.§<"k§;
      }
      
      override public function get canActivateSpecialPower() : Boolean
      {
         return !specialPowerUsed && (§[X§ || §%3§ < this.§-H§);
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         super.render(param1,param2,param3);
         if(this.§"!;§)
         {
            this.§"!;§.update(param1);
         }
      }
      
      public function glow(param1:uint) : void
      {
         if(!this.§"!;§)
         {
            this.§"!;§ = new §;j§(param1);
            sprite.addChildAt(this.§"!;§,0);
         }
      }
      
      override protected function normalize() : void
      {
      }
   }
}
