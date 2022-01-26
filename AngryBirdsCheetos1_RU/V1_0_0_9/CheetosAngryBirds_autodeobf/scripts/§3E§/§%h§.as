package §3E§
{
   import §#!`§.Texture;
   import §7u§.§&!C§;
   
   public class §%h§
   {
       
      
      private var §#!+§:§&!C§;
      
      private var §&N§:Number;
      
      public function §%h§(param1:Texture, param2:Number)
      {
         super();
         this.§#!+§ = new §&!C§(param1);
         this.§&N§ = param2;
      }
      
      public function get image() : §&!C§
      {
         return this.§#!+§;
      }
      
      public function get lifeTime() : Number
      {
         return this.§&N§;
      }
      
      public function dispose() : void
      {
         if(this.§#!+§)
         {
            this.§#!+§.dispose();
            this.§#!+§ = null;
         }
      }
      
      public function updateLifeTime(param1:Number) : void
      {
         this.§&N§ -= param1;
      }
      
      public function §1i§(param1:Number) : void
      {
         this.§&N§ = param1;
      }
      
      public function §[;§(param1:Texture) : void
      {
         this.§#!+§.texture = param1;
      }
   }
}
