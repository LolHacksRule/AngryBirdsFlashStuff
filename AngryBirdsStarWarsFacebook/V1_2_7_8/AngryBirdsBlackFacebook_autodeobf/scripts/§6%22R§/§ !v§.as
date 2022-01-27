package §6"R§
{
   import §1"s§.Sprite;
   import §1x§.b2World;
   import §3"$§.§[a§;
   import §4"F§.§^d§;
   import §7""§.§ !b§;
   import §>P§.§&"§;
   
   public class § !v§ extends §8E§
   {
       
      
      private var §`#$§:Number = 0.0;
      
      private var §+E§:String;
      
      protected var §3!m§:§ !b§;
      
      public function § !v§(param1:Sprite, param2:§[a§, param3:b2World, param4:§&"§, param5:§^d§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
         this.§`#$§ = §8g§.getNumberProperty("specialtyActivationDelay");
         if(isNaN(this.§`#$§))
         {
            this.§`#$§ = 0;
         }
         else
         {
            this.§`#$§ *= 1000;
         }
         this.§+E§ = §8g§.getProperty("reticleSprite");
      }
      
      public function get §;Z§() : Number
      {
         return this.§`#$§;
      }
      
      public function get reticleSprite() : String
      {
         return this.§+E§;
      }
      
      override public function get canActivateSpecialPower() : Boolean
      {
         return !specialPowerUsed && (§@"e§ || §^,§ < this.§;Z§);
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         super.render(param1,param2,param3);
         if(this.§3!m§)
         {
            this.§3!m§.update(param1);
         }
      }
      
      public function glow(param1:uint) : void
      {
         if(!this.§3!m§)
         {
            this.§3!m§ = new § !b§(param1);
            sprite.addChildAt(this.§3!m§,0);
         }
      }
      
      override protected function normalize() : void
      {
      }
   }
}
