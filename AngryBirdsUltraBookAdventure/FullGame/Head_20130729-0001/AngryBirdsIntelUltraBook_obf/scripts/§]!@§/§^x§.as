package §]!@§
{
   import §#!,§.§0!b§;
   import §6!J§.Texture;
   
   public class §^x§
   {
       
      
      private var §'!Q§:§0!b§;
      
      private var §1W§:Number;
      
      public function §^x§(param1:Texture, param2:Number)
      {
         super();
         this.§'!Q§ = new §0!b§(param1);
         this.§1W§ = param2;
      }
      
      public function get image() : §0!b§
      {
         return this.§'!Q§;
      }
      
      public function get lifeTime() : Number
      {
         return this.§1W§;
      }
      
      public function dispose() : void
      {
         if(this.§'!Q§)
         {
            this.§'!Q§.dispose();
            this.§'!Q§ = null;
         }
      }
      
      public function updateLifeTime(param1:Number) : void
      {
         this.§1W§ -= param1;
      }
      
      public function §+! §(param1:Number) : void
      {
         this.§1W§ = param1;
      }
      
      public function §^Y§(param1:Texture) : void
      {
         this.§'!Q§.texture = param1;
      }
   }
}
