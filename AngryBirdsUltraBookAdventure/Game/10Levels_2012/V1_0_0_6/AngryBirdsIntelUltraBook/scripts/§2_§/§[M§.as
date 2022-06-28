package §2_§
{
   import §4>§.Texture;
   import §7!B§.§-§;
   
   public class §[M§
   {
       
      
      private var §7a§:§-§;
      
      private var §09§:Number;
      
      public function §[M§(param1:Texture, param2:Number)
      {
         super();
         this.§7a§ = new §-§(param1);
         this.§09§ = param2;
      }
      
      public function get image() : §-§
      {
         return this.§7a§;
      }
      
      public function get lifeTime() : Number
      {
         return this.§09§;
      }
      
      public function dispose() : void
      {
         if(this.§7a§)
         {
            this.§7a§.dispose();
            this.§7a§ = null;
         }
      }
      
      public function updateLifeTime(param1:Number) : void
      {
         this.§09§ -= param1;
      }
      
      public function §+q§(param1:Number) : void
      {
         this.§09§ = param1;
      }
      
      public function §@i§(param1:Texture) : void
      {
         this.§7a§.texture = param1;
      }
   }
}
