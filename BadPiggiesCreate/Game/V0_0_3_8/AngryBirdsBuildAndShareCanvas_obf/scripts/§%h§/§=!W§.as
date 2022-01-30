package §%h§
{
   import §3!U§.Texture;
   import §]!2§.§,!n§;
   
   public class §=!W§
   {
       
      
      private var §6!y§:§,!n§;
      
      private var §=>§:Number;
      
      public function §=!W§(param1:Texture, param2:Number)
      {
         super();
         this.§6!y§ = new §,!n§(param1);
         this.§=>§ = param2;
      }
      
      public function get image() : §,!n§
      {
         return this.§6!y§;
      }
      
      public function get lifeTime() : Number
      {
         return this.§=>§;
      }
      
      public function dispose() : void
      {
         if(this.§6!y§)
         {
            this.§6!y§.dispose();
            this.§6!y§ = null;
         }
      }
      
      public function updateLifeTime(param1:Number) : void
      {
         this.§=>§ -= param1;
      }
      
      public function §<x§(param1:Number) : void
      {
         this.§=>§ = param1;
      }
      
      public function §;K§(param1:Texture) : void
      {
         this.§6!y§.texture = param1;
      }
   }
}
