package §"!I§
{
   import §2Y§.§7!f§;
   
   public class §&v§
   {
       
      
      private var §@!!§:§7!f§;
      
      private var §7!T§:Number;
      
      public function §&v§(param1:Texture, param2:Number)
      {
         super();
         this.§@!!§ = new §7!f§(param1);
         this.§7!T§ = param2;
      }
      
      public function get image() : §7!f§
      {
         return this.§@!!§;
      }
      
      public function get lifeTime() : Number
      {
         return this.§7!T§;
      }
      
      public function dispose() : void
      {
         if(this.§@!!§)
         {
            this.§@!!§.dispose();
            this.§@!!§ = null;
         }
      }
      
      public function updateLifeTime(param1:Number) : void
      {
         this.§7!T§ -= param1;
      }
      
      public function §>!I§(param1:Number) : void
      {
         this.§7!T§ = param1;
      }
      
      public function §!&§(param1:Texture) : void
      {
         this.§@!!§.texture = param1;
      }
   }
}
