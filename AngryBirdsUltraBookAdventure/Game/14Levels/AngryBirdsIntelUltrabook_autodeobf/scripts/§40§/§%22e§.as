package §40§
{
   import §?]§.Texture;
   import §`g§.§"<§;
   
   public class §"e§
   {
       
      
      private var §?!F§:§"<§;
      
      private var §4!P§:Number;
      
      public function §"e§(param1:Texture, param2:Number)
      {
         super();
         this.§?!F§ = new §"<§(param1);
         this.§4!P§ = param2;
      }
      
      public function get image() : §"<§
      {
         return this.§?!F§;
      }
      
      public function get lifeTime() : Number
      {
         return this.§4!P§;
      }
      
      public function dispose() : void
      {
         if(this.§?!F§)
         {
            this.§?!F§.dispose();
            this.§?!F§ = null;
         }
      }
      
      public function updateLifeTime(param1:Number) : void
      {
         this.§4!P§ -= param1;
      }
      
      public function §8#§(param1:Number) : void
      {
         this.§4!P§ = param1;
      }
      
      public function §]o§(param1:Texture) : void
      {
         this.§?!F§.texture = param1;
      }
   }
}
