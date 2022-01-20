package § !J§
{
   import §&7§.Texture;
   import §`!n§.§+i§;
   
   public class §[;§
   {
       
      
      private var §+!d§:§+i§;
      
      private var §[!3§:Number;
      
      public function §[;§(param1:Texture, param2:Number)
      {
         super();
         this.§+!d§ = new §+i§(param1);
         this.§[!3§ = param2;
      }
      
      public function get image() : §+i§
      {
         return this.§+!d§;
      }
      
      public function get lifeTime() : Number
      {
         return this.§[!3§;
      }
      
      public function dispose() : void
      {
         if(this.§+!d§)
         {
            this.§+!d§.dispose();
            this.§+!d§ = null;
         }
      }
      
      public function updateLifeTime(param1:Number) : void
      {
         this.§[!3§ -= param1;
      }
      
      public function §'![§(param1:Number) : void
      {
         this.§[!3§ = param1;
      }
      
      public function §%!k§(param1:Texture) : void
      {
         this.§+!d§.texture = param1;
      }
   }
}
