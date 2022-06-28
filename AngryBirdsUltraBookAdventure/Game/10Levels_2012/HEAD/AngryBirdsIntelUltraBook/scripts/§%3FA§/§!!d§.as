package §?A§
{
   import §'_§.Texture;
   import §1!&§.§&p§;
   
   public class §!!d§
   {
       
      
      private var §=@§:§&p§;
      
      private var §;![§:Number;
      
      public function §!!d§(param1:Texture, param2:Number)
      {
         super();
         this.§=@§ = new §&p§(param1);
         this.§;![§ = param2;
      }
      
      public function get image() : §&p§
      {
         return this.§=@§;
      }
      
      public function get lifeTime() : Number
      {
         return this.§;![§;
      }
      
      public function dispose() : void
      {
         if(this.§=@§)
         {
            this.§=@§.dispose();
            this.§=@§ = null;
         }
      }
      
      public function updateLifeTime(param1:Number) : void
      {
         this.§;![§ -= param1;
      }
      
      public function §+!"§(param1:Number) : void
      {
         this.§;![§ = param1;
      }
      
      public function §>!E§(param1:Texture) : void
      {
         this.§=@§.texture = param1;
      }
   }
}
