package §%"§
{
   import §<!N§.§&M§;
   import §@M§.Texture;
   
   public class §7b§
   {
       
      
      private var §!!;§:§&M§;
      
      private var §>-§:Number;
      
      public function §7b§(param1:Texture, param2:Number)
      {
         super();
         this.§!!;§ = new §&M§(param1);
         this.§>-§ = param2;
      }
      
      public function get image() : §&M§
      {
         return this.§!!;§;
      }
      
      public function get lifeTime() : Number
      {
         return this.§>-§;
      }
      
      public function dispose() : void
      {
         if(this.§!!;§)
         {
            this.§!!;§.dispose();
            this.§!!;§ = null;
         }
      }
      
      public function updateLifeTime(param1:Number) : void
      {
         this.§>-§ -= param1;
      }
      
      public function §>#§(param1:Number) : void
      {
         this.§>-§ = param1;
      }
      
      public function §5!8§(param1:Texture) : void
      {
         this.§!!;§.texture = param1;
      }
   }
}
