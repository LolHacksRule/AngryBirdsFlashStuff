package §^"#§
{
   import flash.display.MovieClip;
   
   public class §!j§ extends MovieClip
   {
      
      private static const §3b§:Number = 0.6;
      
      private static const §^S§:Number = 0.8;
       
      
      private var §1"3§:Number;
      
      private var §`$§:Number = 0;
      
      private var §5>§:Number = 0;
      
      private var §3!4§:Boolean;
      
      public function §!j§(param1:MovieClip)
      {
         super();
         this.addChild(param1);
         while(Math.abs(this.§`$§) < 0.2 || Math.abs(this.§5>§) < 0.2)
         {
            this.§`$§ = Math.random() * §3b§ - §3b§ / 2;
            this.§5>§ = Math.random() * §3b§ - §3b§ / 2;
         }
         this.§1"3§ = Math.random() * §^S§ - §^S§ / 2;
         x = Math.random() * §`Y§.§7O§;
         y = Math.random() * §`Y§.§3!h§;
         this.§3!4§ = true;
      }
      
      public function update(param1:Number) : void
      {
         x += param1 / 100 * this.§`$§;
         y += param1 / 100 * this.§5>§;
         this.rotation += param1 / 100 * this.§1"3§;
         if(this.§"4§())
         {
         }
         if(this.§8!w§())
         {
         }
      }
      
      private function §"4§() : Boolean
      {
         if(x < -this.width)
         {
            x = §`Y§.§7O§ + this.width / 2;
            return false;
         }
         if(x > §`Y§.§7O§ + this.width / 2)
         {
            x = -this.width;
            return false;
         }
         return true;
      }
      
      private function §8!w§() : Boolean
      {
         if(y < -this.height)
         {
            y = §`Y§.§3!h§ + this.height / 2;
            return false;
         }
         if(y > §`Y§.§3!h§ + this.height / 2)
         {
            y = -this.height;
            return false;
         }
         return true;
      }
      
      public function get isAlive() : Boolean
      {
         return this.§3!4§;
      }
   }
}
