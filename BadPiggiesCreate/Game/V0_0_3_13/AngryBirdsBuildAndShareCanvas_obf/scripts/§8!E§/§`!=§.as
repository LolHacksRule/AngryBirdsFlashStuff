package §8!E§
{
   import §@!#§.Texture;
   import §`L§.§-;§;
   
   public class §`!=§
   {
       
      
      private var §8!T§:§-;§;
      
      private var §#"!§:Number;
      
      public function §`!=§(param1:Texture, param2:Number)
      {
         super();
         this.§8!T§ = new §-;§(param1);
         this.§#"!§ = param2;
      }
      
      public function get image() : §-;§
      {
         return this.§8!T§;
      }
      
      public function get lifeTime() : Number
      {
         return this.§#"!§;
      }
      
      public function dispose() : void
      {
         if(this.§8!T§)
         {
            this.§8!T§.dispose();
            this.§8!T§ = null;
         }
      }
      
      public function updateLifeTime(param1:Number) : void
      {
         this.§#"!§ -= param1;
      }
      
      public function §@`§(param1:Number) : void
      {
         this.§#"!§ = param1;
      }
      
      public function §=!l§(param1:Texture) : void
      {
         this.§8!T§.texture = param1;
      }
   }
}
