package §9!?§
{
   import §<-§.Texture;
   import §<k§.§"!=§;
   
   public class §>!C§
   {
       
      
      private var §]D§:§"!=§;
      
      private var §3!+§:Number;
      
      public function §>!C§(param1:Texture, param2:Number)
      {
         super();
         this.§]D§ = new §"!=§(param1);
         this.§3!+§ = param2;
      }
      
      public function get image() : §"!=§
      {
         return this.§]D§;
      }
      
      public function get lifeTime() : Number
      {
         return this.§3!+§;
      }
      
      public function dispose() : void
      {
         if(this.§]D§)
         {
            this.§]D§.dispose();
            this.§]D§ = null;
         }
      }
      
      public function updateLifeTime(param1:Number) : void
      {
         this.§3!+§ -= param1;
      }
      
      public function §+Q§(param1:Number) : void
      {
         this.§3!+§ = param1;
      }
      
      public function § true§(param1:Texture) : void
      {
         this.§]D§.texture = param1;
      }
   }
}
