package §5!?§
{
   import §#!a§.Texture;
   import §;t§.§=_§;
   
   public class §""§
   {
       
      
      private var §2D§:§=_§;
      
      private var §69§:Number;
      
      public function §""§(param1:Texture, param2:Number)
      {
         super();
         this.§2D§ = new §=_§(param1);
         this.§69§ = param2;
      }
      
      public function get image() : §=_§
      {
         return this.§2D§;
      }
      
      public function get lifeTime() : Number
      {
         return this.§69§;
      }
      
      public function dispose() : void
      {
         if(this.§2D§)
         {
            this.§2D§.dispose();
            this.§2D§ = null;
         }
      }
      
      public function updateLifeTime(param1:Number) : void
      {
         this.§69§ -= param1;
      }
      
      public function §0N§(param1:Number) : void
      {
         this.§69§ = param1;
      }
      
      public function §%!O§(param1:Texture) : void
      {
         this.§2D§.texture = param1;
      }
   }
}
