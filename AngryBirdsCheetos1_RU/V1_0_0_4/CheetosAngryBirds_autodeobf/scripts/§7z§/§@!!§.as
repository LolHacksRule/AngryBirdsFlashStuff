package §7z§
{
   import §1!A§.§;a§;
   import §^n§.Texture;
   
   public class §@!!§
   {
       
      
      private var §2!L§:§;a§;
      
      private var §;b§:Number;
      
      public function §@!!§(param1:Texture, param2:Number)
      {
         super();
         this.§2!L§ = new §;a§(param1);
         this.§;b§ = param2;
      }
      
      public function get image() : §;a§
      {
         return this.§2!L§;
      }
      
      public function get lifeTime() : Number
      {
         return this.§;b§;
      }
      
      public function dispose() : void
      {
         if(this.§2!L§)
         {
            this.§2!L§.dispose();
            this.§2!L§ = null;
         }
      }
      
      public function updateLifeTime(param1:Number) : void
      {
         this.§;b§ -= param1;
      }
      
      public function §]!5§(param1:Number) : void
      {
         this.§;b§ = param1;
      }
      
      public function §&!H§(param1:Texture) : void
      {
         this.§2!L§.texture = param1;
      }
   }
}
