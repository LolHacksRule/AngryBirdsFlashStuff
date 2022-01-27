package §,!F§
{
   import §"`§.Texture;
   import §4G§.§`l§;
   
   public class §]T§
   {
       
      
      private var §&4§:§`l§;
      
      private var §7!6§:Number;
      
      public function §]T§(param1:Texture, param2:Number)
      {
         super();
         this.§&4§ = new §`l§(param1);
         this.§7!6§ = param2;
      }
      
      public function get image() : §`l§
      {
         return this.§&4§;
      }
      
      public function get lifeTime() : Number
      {
         return this.§7!6§;
      }
      
      public function dispose() : void
      {
         if(this.§&4§)
         {
            this.§&4§.dispose();
            this.§&4§ = null;
         }
      }
      
      public function updateLifeTime(param1:Number) : void
      {
         this.§7!6§ -= param1;
      }
      
      public function §]i§(param1:Number) : void
      {
         this.§7!6§ = param1;
      }
      
      public function §&!O§(param1:Texture) : void
      {
         this.§&4§.texture = param1;
      }
   }
}
