package §!!V§
{
   import §&!5§.§'!$§;
   import §switch§.Texture;
   
   public class §continue§
   {
       
      
      private var §3!2§:§'!$§;
      
      private var §,U§:Number;
      
      public function §continue§(param1:Texture, param2:Number)
      {
         super();
         this.§3!2§ = new §'!$§(param1);
         this.§,U§ = param2;
      }
      
      public function get image() : §'!$§
      {
         return this.§3!2§;
      }
      
      public function get lifeTime() : Number
      {
         return this.§,U§;
      }
      
      public function dispose() : void
      {
         if(this.§3!2§)
         {
            this.§3!2§.dispose();
            this.§3!2§ = null;
         }
      }
      
      public function updateLifeTime(param1:Number) : void
      {
         this.§,U§ -= param1;
      }
      
      public function §,!I§(param1:Number) : void
      {
         this.§,U§ = param1;
      }
      
      public function §1!$§(param1:Texture) : void
      {
         this.§3!2§.texture = param1;
      }
   }
}
