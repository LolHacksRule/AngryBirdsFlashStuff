package §3!@§
{
   import §&Y§.Texture;
   import §&c§.§%!a§;
   
   public class §+i§
   {
       
      
      private var §&!j§:§%!a§;
      
      private var §&z§:Number;
      
      public function §+i§(param1:Texture, param2:Number)
      {
         super();
         this.§&!j§ = new §%!a§(param1);
         this.§&z§ = param2;
      }
      
      public function get image() : §%!a§
      {
         return this.§&!j§;
      }
      
      public function get lifeTime() : Number
      {
         return this.§&z§;
      }
      
      public function dispose() : void
      {
         if(this.§&!j§)
         {
            this.§&!j§.dispose();
            this.§&!j§ = null;
         }
      }
      
      public function updateLifeTime(param1:Number) : void
      {
         this.§&z§ -= param1;
      }
      
      public function §#!l§(param1:Number) : void
      {
         this.§&z§ = param1;
      }
      
      public function §8"§(param1:Texture) : void
      {
         this.§&!j§.texture = param1;
      }
   }
}
