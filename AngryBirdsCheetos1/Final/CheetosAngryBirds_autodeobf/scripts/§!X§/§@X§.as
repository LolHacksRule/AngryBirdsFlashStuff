package §!X§
{
   import §]!B§.Texture;
   import §]@§.§`!C§;
   
   public class §@X§
   {
       
      
      private var §#3§:§`!C§;
      
      private var §32§:Number;
      
      public function §@X§(param1:Texture, param2:Number)
      {
         super();
         this.§#3§ = new §`!C§(param1);
         this.§32§ = param2;
      }
      
      public function get image() : §`!C§
      {
         return this.§#3§;
      }
      
      public function get lifeTime() : Number
      {
         return this.§32§;
      }
      
      public function dispose() : void
      {
         if(this.§#3§)
         {
            this.§#3§.dispose();
            this.§#3§ = null;
         }
      }
      
      public function updateLifeTime(param1:Number) : void
      {
         this.§32§ -= param1;
      }
      
      public function §57§(param1:Number) : void
      {
         this.§32§ = param1;
      }
      
      public function §0!§(param1:Texture) : void
      {
         this.§#3§.texture = param1;
      }
   }
}
