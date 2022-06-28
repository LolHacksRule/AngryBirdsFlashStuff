package §,!5§
{
   import §'!9§.§?!U§;
   import §^!+§.Texture;
   
   public class §@8§
   {
       
      
      private var §^!?§:§?!U§;
      
      private var §?!2§:Number;
      
      public function §@8§(param1:Texture, param2:Number)
      {
         super();
         this.§^!?§ = new §?!U§(param1);
         this.§?!2§ = param2;
      }
      
      public function get image() : §?!U§
      {
         return this.§^!?§;
      }
      
      public function get lifeTime() : Number
      {
         return this.§?!2§;
      }
      
      public function dispose() : void
      {
         if(this.§^!?§)
         {
            this.§^!?§.dispose();
            this.§^!?§ = null;
         }
      }
      
      public function updateLifeTime(param1:Number) : void
      {
         this.§?!2§ -= param1;
      }
      
      public function §8N§(param1:Number) : void
      {
         this.§?!2§ = param1;
      }
      
      public function § !]§(param1:Texture) : void
      {
         this.§^!?§.texture = param1;
      }
   }
}
