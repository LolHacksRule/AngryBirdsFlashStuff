package §9!'§
{
   import §!!S§.Texture;
   import §6!;§.§!>§;
   
   public class §=!Y§
   {
       
      
      private var §>!Q§:§!>§;
      
      private var §3j§:Number;
      
      public function §=!Y§(param1:Texture, param2:Number)
      {
         super();
         this.§>!Q§ = new §!>§(param1);
         this.§3j§ = param2;
      }
      
      public function get image() : §!>§
      {
         return this.§>!Q§;
      }
      
      public function get lifeTime() : Number
      {
         return this.§3j§;
      }
      
      public function dispose() : void
      {
         if(this.§>!Q§)
         {
            this.§>!Q§.dispose();
            this.§>!Q§ = null;
         }
      }
      
      public function updateLifeTime(param1:Number) : void
      {
         this.§3j§ -= param1;
      }
      
      public function §!C§(param1:Number) : void
      {
         this.§3j§ = param1;
      }
      
      public function § !_§(param1:Texture) : void
      {
         this.§>!Q§.texture = param1;
      }
   }
}
