package §%x§
{
   import §?^§.§8!?§;
   import each.Texture;
   
   public class §9!9§
   {
       
      
      private var §;!G§:§8!?§;
      
      private var §<R§:Number;
      
      public function §9!9§(param1:Texture, param2:Number)
      {
         super();
         this.§;!G§ = new §8!?§(param1);
         this.§<R§ = param2;
      }
      
      public function get image() : §8!?§
      {
         return this.§;!G§;
      }
      
      public function get lifeTime() : Number
      {
         return this.§<R§;
      }
      
      public function dispose() : void
      {
         if(this.§;!G§)
         {
            this.§;!G§.dispose();
            this.§;!G§ = null;
         }
      }
      
      public function updateLifeTime(param1:Number) : void
      {
         this.§<R§ -= param1;
      }
      
      public function §!!-§(param1:Number) : void
      {
         this.§<R§ = param1;
      }
      
      public function §[<§(param1:Texture) : void
      {
         this.§;!G§.texture = param1;
      }
   }
}
