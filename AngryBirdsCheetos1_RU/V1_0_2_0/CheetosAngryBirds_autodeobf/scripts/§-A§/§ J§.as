package §-A§
{
   import §,H§.§;!9§;
   import §,Y§.Texture;
   
   public class § J§
   {
       
      
      private var §#o§:§;!9§;
      
      private var §,!D§:Number;
      
      public function § J§(param1:Texture, param2:Number)
      {
         super();
         this.§#o§ = new §;!9§(param1);
         this.§,!D§ = param2;
      }
      
      public function get image() : §;!9§
      {
         return this.§#o§;
      }
      
      public function get lifeTime() : Number
      {
         return this.§,!D§;
      }
      
      public function dispose() : void
      {
         if(this.§#o§)
         {
            this.§#o§.dispose();
            this.§#o§ = null;
         }
      }
      
      public function updateLifeTime(param1:Number) : void
      {
         this.§,!D§ -= param1;
      }
      
      public function §3!R§(param1:Number) : void
      {
         this.§,!D§ = param1;
      }
      
      public function §6!§(param1:Texture) : void
      {
         this.§#o§.texture = param1;
      }
   }
}
