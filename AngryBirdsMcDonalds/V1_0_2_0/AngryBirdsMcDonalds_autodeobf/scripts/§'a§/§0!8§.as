package §'a§
{
   import §",§.Texture;
   import §5x§.§2!K§;
   
   public class §0!8§
   {
       
      
      private var §!F§:§2!K§;
      
      private var §=+§:Number;
      
      public function §0!8§(param1:Texture, param2:Number)
      {
         super();
         this.§!F§ = new §2!K§(param1);
         this.§=+§ = param2;
      }
      
      public function get image() : §2!K§
      {
         return this.§!F§;
      }
      
      public function get lifeTime() : Number
      {
         return this.§=+§;
      }
      
      public function dispose() : void
      {
         if(this.§!F§)
         {
            this.§!F§.dispose();
            this.§!F§ = null;
         }
      }
      
      public function updateLifeTime(param1:Number) : void
      {
         this.§=+§ -= param1;
      }
      
      public function § y§(param1:Number) : void
      {
         this.§=+§ = param1;
      }
      
      public function §8§(param1:Texture) : void
      {
         this.§!F§.texture = param1;
      }
   }
}
