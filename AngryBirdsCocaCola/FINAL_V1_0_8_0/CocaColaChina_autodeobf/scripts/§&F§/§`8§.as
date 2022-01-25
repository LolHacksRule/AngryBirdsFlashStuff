package §&F§
{
   import §&!9§.§,,§;
   import §6!4§.Texture;
   
   public class §`8§
   {
       
      
      private var §&J§:§,,§;
      
      private var §#-§:Number;
      
      public function §`8§(param1:Texture, param2:Number)
      {
         super();
         this.§&J§ = new §,,§(param1);
         this.§#-§ = param2;
      }
      
      public function get image() : §,,§
      {
         return this.§&J§;
      }
      
      public function get lifeTime() : Number
      {
         return this.§#-§;
      }
      
      public function dispose() : void
      {
         if(this.§&J§)
         {
            this.§&J§.dispose();
            this.§&J§ = null;
         }
      }
      
      public function updateLifeTime(param1:Number) : void
      {
         this.§#-§ -= param1;
      }
      
      public function §!!&§(param1:Number) : void
      {
         this.§#-§ = param1;
      }
      
      public function §3r§(param1:Texture) : void
      {
         this.§&J§.texture = param1;
      }
   }
}
