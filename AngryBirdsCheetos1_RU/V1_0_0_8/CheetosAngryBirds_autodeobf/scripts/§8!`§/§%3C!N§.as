package §8!`§
{
   import §;!Q§.§%o§;
   import §]p§.Texture;
   
   public class §<!N§
   {
       
      
      private var §6d§:§%o§;
      
      private var §&!G§:Number;
      
      public function §<!N§(param1:Texture, param2:Number)
      {
         super();
         this.§6d§ = new §%o§(param1);
         this.§&!G§ = param2;
      }
      
      public function get image() : §%o§
      {
         return this.§6d§;
      }
      
      public function get lifeTime() : Number
      {
         return this.§&!G§;
      }
      
      public function dispose() : void
      {
         if(this.§6d§)
         {
            this.§6d§.dispose();
            this.§6d§ = null;
         }
      }
      
      public function updateLifeTime(param1:Number) : void
      {
         this.§&!G§ -= param1;
      }
      
      public function §=X§(param1:Number) : void
      {
         this.§&!G§ = param1;
      }
      
      public function §4!6§(param1:Texture) : void
      {
         this.§6d§.texture = param1;
      }
   }
}
