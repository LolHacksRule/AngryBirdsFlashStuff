package §6A§
{
   import §&o§.§?T§;
   import §0! §.Texture;
   
   public class §3;§
   {
       
      
      private var §+J§:§?T§;
      
      private var §"8§:Number;
      
      public function §3;§(param1:Texture, param2:Number)
      {
         super();
         this.§+J§ = new §?T§(param1);
         this.§"8§ = param2;
      }
      
      public function get image() : §?T§
      {
         return this.§+J§;
      }
      
      public function get lifeTime() : Number
      {
         return this.§"8§;
      }
      
      public function dispose() : void
      {
         if(this.§+J§)
         {
            this.§+J§.dispose();
            this.§+J§ = null;
         }
      }
      
      public function updateLifeTime(param1:Number) : void
      {
         this.§"8§ -= param1;
      }
      
      public function §,!L§(param1:Number) : void
      {
         this.§"8§ = param1;
      }
      
      public function §5!E§(param1:Texture) : void
      {
         this.§+J§.texture = param1;
      }
   }
}
