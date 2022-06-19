package §?'§
{
   import §!!R§.§#q§;
   import §2k§.Texture;
   
   public class §]$§
   {
       
      
      private var §]3§:§#q§;
      
      private var §>!%§:Number;
      
      public function §]$§(param1:Texture, param2:Number)
      {
         super();
         this.§]3§ = new §#q§(param1);
         this.§>!%§ = param2;
      }
      
      public function get image() : §#q§
      {
         return this.§]3§;
      }
      
      public function get lifeTime() : Number
      {
         return this.§>!%§;
      }
      
      public function dispose() : void
      {
         if(this.§]3§)
         {
            this.§]3§.dispose();
            this.§]3§ = null;
         }
      }
      
      public function updateLifeTime(param1:Number) : void
      {
         this.§>!%§ -= param1;
      }
      
      public function §1!!§(param1:Number) : void
      {
         this.§>!%§ = param1;
      }
      
      public function §[!J§(param1:Texture) : void
      {
         this.§]3§.texture = param1;
      }
   }
}
