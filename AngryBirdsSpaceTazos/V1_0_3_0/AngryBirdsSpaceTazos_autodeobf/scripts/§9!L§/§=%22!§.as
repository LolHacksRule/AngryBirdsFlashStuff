package §9!L§
{
   import flash.display.MovieClip;
   
   public class §="!§ extends MovieClip
   {
      
      private static const §"!`§:Number = 0.6;
      
      private static const §class§:Number = 0.8;
       
      
      private var §4X§:Number;
      
      private var §3[§:Number = 0;
      
      private var §%"E§:Number = 0;
      
      private var §3M§:Boolean;
      
      public function §="!§(param1:MovieClip)
      {
         super();
         this.addChild(param1);
         while(Math.abs(this.§3[§) < 0.2 || Math.abs(this.§%"E§) < 0.2)
         {
            this.§3[§ = Math.random() * §"!`§ - §"!`§ / 2;
            this.§%"E§ = Math.random() * §"!`§ - §"!`§ / 2;
         }
         this.§4X§ = Math.random() * §class§ - §class§ / 2;
         x = Math.random() * §["!§.§35§;
         y = Math.random() * §["!§.§9"-§;
         this.§3M§ = true;
      }
      
      public function update(param1:Number) : void
      {
         x += param1 / 100 * this.§3[§;
         y += param1 / 100 * this.§%"E§;
         this.rotation += param1 / 100 * this.§4X§;
         if(this.§9"C§())
         {
         }
         if(this.§@;§())
         {
         }
      }
      
      private function §9"C§() : Boolean
      {
         if(x < -this.width)
         {
            x = §["!§.§35§ + this.width / 2;
            return false;
         }
         if(x > §["!§.§35§ + this.width / 2)
         {
            x = -this.width;
            return false;
         }
         return true;
      }
      
      private function §@;§() : Boolean
      {
         if(y < -this.height)
         {
            y = §["!§.§9"-§ + this.height / 2;
            return false;
         }
         if(y > §["!§.§9"-§ + this.height / 2)
         {
            y = -this.height;
            return false;
         }
         return true;
      }
      
      public function get isAlive() : Boolean
      {
         return this.§3M§;
      }
   }
}
