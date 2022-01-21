package §@!b§
{
   import §2!g§.§<7§;
   import §@j§.Texture;
   
   public class §!"§
   {
       
      
      private var §76§:§<7§;
      
      private var § !l§:Number;
      
      public function §!"§(param1:Texture, param2:Number)
      {
         super();
         this.§76§ = new §<7§(param1);
         this.§ !l§ = param2;
      }
      
      public function get image() : §<7§
      {
         return this.§76§;
      }
      
      public function get lifeTime() : Number
      {
         return this.§ !l§;
      }
      
      public function dispose() : void
      {
         if(this.§76§)
         {
            this.§76§.dispose();
            this.§76§ = null;
         }
      }
      
      public function updateLifeTime(param1:Number) : void
      {
         this.§ !l§ -= param1;
      }
      
      public function §^L§(param1:Number) : void
      {
         this.§ !l§ = param1;
      }
      
      public function §]!3§(param1:Texture) : void
      {
         this.§76§.texture = param1;
      }
   }
}
