package §9s§
{
   import §#!@§.§0V§;
   import §1#§.Texture;
   
   public class §`S§
   {
       
      
      private var §62§:§0V§;
      
      private var §const§:Number;
      
      public function §`S§(param1:Texture, param2:Number)
      {
         super();
         this.§62§ = new §0V§(param1);
         this.§const§ = param2;
      }
      
      public function get image() : §0V§
      {
         return this.§62§;
      }
      
      public function get lifeTime() : Number
      {
         return this.§const§;
      }
      
      public function dispose() : void
      {
         if(this.§62§)
         {
            this.§62§.dispose();
            this.§62§ = null;
         }
      }
      
      public function updateLifeTime(param1:Number) : void
      {
         this.§const§ -= param1;
      }
      
      public function §;!B§(param1:Number) : void
      {
         this.§const§ = param1;
      }
      
      public function §0Q§(param1:Texture) : void
      {
         this.§62§.texture = param1;
      }
   }
}
