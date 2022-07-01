package §1!v§
{
   import §1!Y§.§8C§;
   import §^i§.Texture;
   
   public class §,!7§
   {
       
      
      private var §&!T§:§8C§;
      
      private var §,o§:Number;
      
      public function §,!7§(param1:Texture, param2:Number)
      {
         super();
         this.§&!T§ = new §8C§(param1);
         this.§,o§ = param2;
      }
      
      public function get image() : §8C§
      {
         return this.§&!T§;
      }
      
      public function get lifeTime() : Number
      {
         return this.§,o§;
      }
      
      public function dispose() : void
      {
         if(this.§&!T§)
         {
            this.§&!T§.dispose();
            this.§&!T§ = null;
         }
      }
      
      public function updateLifeTime(param1:Number) : void
      {
         this.§,o§ -= param1;
      }
      
      public function §@`§(param1:Number) : void
      {
         this.§,o§ = param1;
      }
      
      public function §,!p§(param1:Texture) : void
      {
         this.§&!T§.texture = param1;
      }
   }
}
