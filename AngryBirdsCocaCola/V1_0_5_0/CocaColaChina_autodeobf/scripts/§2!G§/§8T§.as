package §2!G§
{
   import §<!$§.§[!5§;
   import §@'§.Texture;
   
   public class §8T§
   {
       
      
      private var §@K§:§[!5§;
      
      private var §break§:Number;
      
      public function §8T§(param1:Texture, param2:Number)
      {
         super();
         this.§@K§ = new §[!5§(param1);
         this.§break§ = param2;
      }
      
      public function get image() : §[!5§
      {
         return this.§@K§;
      }
      
      public function get lifeTime() : Number
      {
         return this.§break§;
      }
      
      public function dispose() : void
      {
         if(this.§@K§)
         {
            this.§@K§.dispose();
            this.§@K§ = null;
         }
      }
      
      public function updateLifeTime(param1:Number) : void
      {
         this.§break§ -= param1;
      }
      
      public function §"D§(param1:Number) : void
      {
         this.§break§ = param1;
      }
      
      public function §<e§(param1:Texture) : void
      {
         this.§@K§.texture = param1;
      }
   }
}
