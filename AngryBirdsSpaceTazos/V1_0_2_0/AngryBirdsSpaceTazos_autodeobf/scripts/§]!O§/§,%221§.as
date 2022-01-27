package §]!O§
{
   import flash.display.MovieClip;
   
   public class §,"1§ extends MovieClip
   {
      
      private static const §'!<§:Number = 0.6;
      
      private static const §;"E§:Number = 0.8;
       
      
      private var §^8§:Number;
      
      private var §&!U§:Number = 0;
      
      private var §!p§:Number = 0;
      
      private var §#!e§:Boolean;
      
      public function §,"1§(param1:MovieClip)
      {
         super();
         this.addChild(param1);
         while(Math.abs(this.§&!U§) < 0.2 || Math.abs(this.§!p§) < 0.2)
         {
            this.§&!U§ = Math.random() * §'!<§ - §'!<§ / 2;
            this.§!p§ = Math.random() * §'!<§ - §'!<§ / 2;
         }
         this.§^8§ = Math.random() * §;"E§ - §;"E§ / 2;
         x = Math.random() * §^"=§.§%!f§;
         y = Math.random() * §^"=§.§5+§;
         this.§#!e§ = true;
      }
      
      public function update(param1:Number) : void
      {
         x += param1 / 100 * this.§&!U§;
         y += param1 / 100 * this.§!p§;
         this.rotation += param1 / 100 * this.§^8§;
         if(this.§;";§())
         {
         }
         if(this.§"!,§())
         {
         }
      }
      
      private function §;";§() : Boolean
      {
         if(x < -this.width)
         {
            x = §^"=§.§%!f§ + this.width / 2;
            return false;
         }
         if(x > §^"=§.§%!f§ + this.width / 2)
         {
            x = -this.width;
            return false;
         }
         return true;
      }
      
      private function §"!,§() : Boolean
      {
         if(y < -this.height)
         {
            y = §^"=§.§5+§ + this.height / 2;
            return false;
         }
         if(y > §^"=§.§5+§ + this.height / 2)
         {
            y = -this.height;
            return false;
         }
         return true;
      }
      
      public function get isAlive() : Boolean
      {
         return this.§#!e§;
      }
   }
}
