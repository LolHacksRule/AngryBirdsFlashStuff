package §4!-§
{
   import §86§.§?5§;
   import §[!A§.Texture;
   
   public class §]V§
   {
       
      
      private var §+`§:§?5§;
      
      private var §%U§:Number;
      
      public function §]V§(param1:Texture, param2:Number)
      {
         super();
         this.§+`§ = new §?5§(param1);
         this.§%U§ = param2;
      }
      
      public function get image() : §?5§
      {
         return this.§+`§;
      }
      
      public function get lifeTime() : Number
      {
         return this.§%U§;
      }
      
      public function dispose() : void
      {
         if(this.§+`§)
         {
            this.§+`§.dispose();
            this.§+`§ = null;
         }
      }
      
      public function updateLifeTime(param1:Number) : void
      {
         this.§%U§ -= param1;
      }
      
      public function §>X§(param1:Number) : void
      {
         this.§%U§ = param1;
      }
      
      public function §7W§(param1:Texture) : void
      {
         this.§+`§.texture = param1;
      }
   }
}
