package §0!2§
{
   import §?7§.Texture;
   import §]!v§.§'!=§;
   
   public class §=t§
   {
       
      
      private var §2!E§:§'!=§;
      
      private var §%K§:Number;
      
      public function §=t§(param1:Texture, param2:Number)
      {
         super();
         this.§2!E§ = new §'!=§(param1);
         this.§%K§ = param2;
      }
      
      public function get image() : §'!=§
      {
         return this.§2!E§;
      }
      
      public function get lifeTime() : Number
      {
         return this.§%K§;
      }
      
      public function dispose() : void
      {
         if(this.§2!E§)
         {
            this.§2!E§.dispose();
            this.§2!E§ = null;
         }
      }
      
      public function updateLifeTime(param1:Number) : void
      {
         this.§%K§ -= param1;
      }
      
      public function §9v§(param1:Number) : void
      {
         this.§%K§ = param1;
      }
      
      public function § F§(param1:Texture) : void
      {
         this.§2!E§.texture = param1;
      }
   }
}
