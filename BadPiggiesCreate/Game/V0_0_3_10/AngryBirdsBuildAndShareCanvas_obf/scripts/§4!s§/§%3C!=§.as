package §4!s§
{
   import §4!S§.Texture;
   import §^I§.§=!+§;
   
   public class §<!=§
   {
       
      
      private var § !t§:§=!+§;
      
      private var §>>§:Number;
      
      public function §<!=§(param1:Texture, param2:Number)
      {
         super();
         this.§ !t§ = new §=!+§(param1);
         this.§>>§ = param2;
      }
      
      public function get image() : §=!+§
      {
         return this.§ !t§;
      }
      
      public function get lifeTime() : Number
      {
         return this.§>>§;
      }
      
      public function dispose() : void
      {
         if(this.§ !t§)
         {
            this.§ !t§.dispose();
            this.§ !t§ = null;
         }
      }
      
      public function updateLifeTime(param1:Number) : void
      {
         this.§>>§ -= param1;
      }
      
      public function § H§(param1:Number) : void
      {
         this.§>>§ = param1;
      }
      
      public function §0!w§(param1:Texture) : void
      {
         this.§ !t§.texture = param1;
      }
   }
}
