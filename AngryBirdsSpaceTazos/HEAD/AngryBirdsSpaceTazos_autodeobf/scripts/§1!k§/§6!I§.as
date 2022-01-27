package §1!k§
{
   import flash.display.MovieClip;
   
   public class §6!I§ extends MovieClip
   {
      
      private static const §9r§:Number = 0.6;
      
      private static const §"w§:Number = 0.8;
       
      
      private var § "F§:Number;
      
      private var §-Y§:Number = 0;
      
      private var §7v§:Number = 0;
      
      private var §'"!§:Boolean;
      
      public function §6!I§(param1:MovieClip)
      {
         super();
         this.addChild(param1);
         while(Math.abs(this.§-Y§) < 0.2 || Math.abs(this.§7v§) < 0.2)
         {
            this.§-Y§ = Math.random() * §9r§ - §9r§ / 2;
            this.§7v§ = Math.random() * §9r§ - §9r§ / 2;
         }
         this.§ "F§ = Math.random() * §"w§ - §"w§ / 2;
         x = Math.random() * §@T§.§>v§;
         y = Math.random() * §@T§.§[s§;
         this.§'"!§ = true;
      }
      
      public function update(param1:Number) : void
      {
         x += param1 / 100 * this.§-Y§;
         y += param1 / 100 * this.§7v§;
         this.rotation += param1 / 100 * this.§ "F§;
         if(this.§^!O§())
         {
         }
         if(this.§<+§())
         {
         }
      }
      
      private function §^!O§() : Boolean
      {
         if(x < -this.width)
         {
            x = §@T§.§>v§ + this.width / 2;
            return false;
         }
         if(x > §@T§.§>v§ + this.width / 2)
         {
            x = -this.width;
            return false;
         }
         return true;
      }
      
      private function §<+§() : Boolean
      {
         if(y < -this.height)
         {
            y = §@T§.§[s§ + this.height / 2;
            return false;
         }
         if(y > §@T§.§[s§ + this.height / 2)
         {
            y = -this.height;
            return false;
         }
         return true;
      }
      
      public function get isAlive() : Boolean
      {
         return this.§'"!§;
      }
   }
}
