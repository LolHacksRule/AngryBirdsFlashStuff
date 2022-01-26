package §_-rp§
{
   import §_-S4§.Texture;
   import §_-pF§.§_-gY§;
   
   public class §_-2o§
   {
       
      
      private var §_-XR§:§_-gY§;
      
      private var §_-ej§:Number;
      
      public function §_-2o§(param1:Texture, param2:Number)
      {
         super();
         this.§_-XR§ = new §_-gY§(param1);
         this.§_-ej§ = param2;
      }
      
      public function get image() : §_-gY§
      {
         return this.§_-XR§;
      }
      
      public function get lifeTime() : Number
      {
         return this.§_-ej§;
      }
      
      public function dispose() : void
      {
         if(this.§_-XR§)
         {
            this.§_-XR§.dispose();
            this.§_-XR§ = null;
         }
      }
      
      public function updateLifeTime(param1:Number) : void
      {
         this.§_-ej§ -= param1;
      }
      
      public function §_-Yg§(param1:Number) : void
      {
         this.§_-ej§ = param1;
      }
      
      public function §_-D6§(param1:Texture) : void
      {
         this.§_-XR§.texture = param1;
      }
   }
}
