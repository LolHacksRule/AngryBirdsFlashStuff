package §55§
{
   import §&!9§.Texture;
   import §0@§.§1]§;
   
   public class §4!>§
   {
       
      
      private var §+!B§:§1]§;
      
      private var §+!&§:Number;
      
      public function §4!>§(param1:Texture, param2:Number)
      {
         super();
         this.§+!B§ = new §1]§(param1);
         this.§+!&§ = param2;
      }
      
      public function get image() : §1]§
      {
         return this.§+!B§;
      }
      
      public function get lifeTime() : Number
      {
         return this.§+!&§;
      }
      
      public function dispose() : void
      {
         if(this.§+!B§)
         {
            this.§+!B§.dispose();
            this.§+!B§ = null;
         }
      }
      
      public function updateLifeTime(param1:Number) : void
      {
         this.§+!&§ -= param1;
      }
      
      public function §=F§(param1:Number) : void
      {
         this.§+!&§ = param1;
      }
      
      public function §,U§(param1:Texture) : void
      {
         this.§+!B§.texture = param1;
      }
   }
}
