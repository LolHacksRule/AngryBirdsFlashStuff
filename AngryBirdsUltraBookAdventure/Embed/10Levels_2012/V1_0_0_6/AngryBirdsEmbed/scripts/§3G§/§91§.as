package §3G§
{
   import §,_§.§4K§;
   import §7!=§.Texture;
   
   public class §91§
   {
       
      
      private var §^j§:§4K§;
      
      private var §='§:Number;
      
      public function §91§(param1:Texture, param2:Number)
      {
         super();
         this.§^j§ = new §4K§(param1);
         this.§='§ = param2;
      }
      
      public function get image() : §4K§
      {
         return this.§^j§;
      }
      
      public function get lifeTime() : Number
      {
         return this.§='§;
      }
      
      public function dispose() : void
      {
         if(this.§^j§)
         {
            this.§^j§.dispose();
            this.§^j§ = null;
         }
      }
      
      public function updateLifeTime(param1:Number) : void
      {
         this.§='§ -= param1;
      }
      
      public function §%L§(param1:Number) : void
      {
         this.§='§ = param1;
      }
      
      public function §"A§(param1:Texture) : void
      {
         this.§^j§.texture = param1;
      }
   }
}
