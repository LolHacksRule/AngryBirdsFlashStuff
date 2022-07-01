package §<!<§
{
   import §-!`§.§7!J§;
   import §0!-§.Texture;
   
   public class §1u§
   {
       
      
      private var §,!^§:§7!J§;
      
      private var §-D§:Number;
      
      public function §1u§(param1:Texture, param2:Number)
      {
         super();
         this.§,!^§ = new §7!J§(param1);
         this.§-D§ = param2;
      }
      
      public function get image() : §7!J§
      {
         return this.§,!^§;
      }
      
      public function get lifeTime() : Number
      {
         return this.§-D§;
      }
      
      public function dispose() : void
      {
         if(this.§,!^§)
         {
            this.§,!^§.dispose();
            this.§,!^§ = null;
         }
      }
      
      public function updateLifeTime(param1:Number) : void
      {
         this.§-D§ -= param1;
      }
      
      public function §^2§(param1:Number) : void
      {
         this.§-D§ = param1;
      }
      
      public function §?O§(param1:Texture) : void
      {
         this.§,!^§.texture = param1;
      }
   }
}
