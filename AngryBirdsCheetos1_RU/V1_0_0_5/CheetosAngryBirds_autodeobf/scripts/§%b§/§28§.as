package §%b§
{
   import §-A§.Texture;
   import §null §.§%!G§;
   
   public class §28§
   {
       
      
      private var §'!>§:§%!G§;
      
      private var §'!H§:Number;
      
      public function §28§(param1:Texture, param2:Number)
      {
         super();
         this.§'!>§ = new §%!G§(param1);
         this.§'!H§ = param2;
      }
      
      public function get image() : §%!G§
      {
         return this.§'!>§;
      }
      
      public function get lifeTime() : Number
      {
         return this.§'!H§;
      }
      
      public function dispose() : void
      {
         if(this.§'!>§)
         {
            this.§'!>§.dispose();
            this.§'!>§ = null;
         }
      }
      
      public function updateLifeTime(param1:Number) : void
      {
         this.§'!H§ -= param1;
      }
      
      public function §%!Z§(param1:Number) : void
      {
         this.§'!H§ = param1;
      }
      
      public function §!_§(param1:Texture) : void
      {
         this.§'!>§.texture = param1;
      }
   }
}
