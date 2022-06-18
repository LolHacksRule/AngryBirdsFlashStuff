package §9T§
{
   import §+a§.Texture;
   import §9!a§.§"z§;
   
   public class §6C§
   {
       
      
      private var § F§:§"z§;
      
      private var §1x§:Number;
      
      public function §6C§(param1:Texture, param2:Number)
      {
         super();
         this.§ F§ = new §"z§(param1);
         this.§1x§ = param2;
      }
      
      public function get image() : §"z§
      {
         return this.§ F§;
      }
      
      public function get lifeTime() : Number
      {
         return this.§1x§;
      }
      
      public function dispose() : void
      {
         if(this.§ F§)
         {
            this.§ F§.dispose();
            this.§ F§ = null;
         }
      }
      
      public function updateLifeTime(param1:Number) : void
      {
         this.§1x§ -= param1;
      }
      
      public function §='§(param1:Number) : void
      {
         this.§1x§ = param1;
      }
      
      public function §4X§(param1:Texture) : void
      {
         this.§ F§.texture = param1;
      }
   }
}
