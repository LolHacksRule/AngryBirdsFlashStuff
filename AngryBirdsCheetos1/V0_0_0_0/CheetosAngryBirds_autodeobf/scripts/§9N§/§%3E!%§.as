package §9N§
{
   import §2!-§.Texture;
   import §`a§.§>?§;
   
   public class §>!%§
   {
       
      
      private var §<^§:§>?§;
      
      private var §1!!§:Number;
      
      public function §>!%§(param1:Texture, param2:Number)
      {
         super();
         this.§<^§ = new §>?§(param1);
         this.§1!!§ = param2;
      }
      
      public function get image() : §>?§
      {
         return this.§<^§;
      }
      
      public function get lifeTime() : Number
      {
         return this.§1!!§;
      }
      
      public function dispose() : void
      {
         if(this.§<^§)
         {
            this.§<^§.dispose();
            this.§<^§ = null;
         }
      }
      
      public function updateLifeTime(param1:Number) : void
      {
         this.§1!!§ -= param1;
      }
      
      public function §[!J§(param1:Number) : void
      {
         this.§1!!§ = param1;
      }
      
      public function §1Z§(param1:Texture) : void
      {
         this.§<^§.texture = param1;
      }
   }
}
