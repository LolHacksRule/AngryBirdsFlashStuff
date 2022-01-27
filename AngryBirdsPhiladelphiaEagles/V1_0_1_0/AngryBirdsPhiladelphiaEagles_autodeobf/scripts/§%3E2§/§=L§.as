package §>2§
{
   import §0l§.Texture;
   import §3H§.§`!@§;
   
   public class §=L§
   {
       
      
      private var §3q§:§`!@§;
      
      private var §'@§:Number;
      
      public function §=L§(param1:Texture, param2:Number)
      {
         super();
         this.§3q§ = new §`!@§(param1);
         this.§'@§ = param2;
      }
      
      public function get image() : §`!@§
      {
         return this.§3q§;
      }
      
      public function get lifeTime() : Number
      {
         return this.§'@§;
      }
      
      public function dispose() : void
      {
         if(this.§3q§)
         {
            this.§3q§.dispose();
            this.§3q§ = null;
         }
      }
      
      public function updateLifeTime(param1:Number) : void
      {
         this.§'@§ -= param1;
      }
      
      public function §9!8§(param1:Number) : void
      {
         this.§'@§ = param1;
      }
      
      public function §,!=§(param1:Texture) : void
      {
         this.§3q§.texture = param1;
      }
   }
}
