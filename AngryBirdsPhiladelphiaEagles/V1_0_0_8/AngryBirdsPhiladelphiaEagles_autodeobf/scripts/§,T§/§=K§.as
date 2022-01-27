package §,T§
{
   import §,]§.Texture;
   import §-!'§.§3!1§;
   
   public class §=K§
   {
       
      
      private var §!!-§:§3!1§;
      
      private var §55§:Number;
      
      public function §=K§(param1:Texture, param2:Number)
      {
         super();
         this.§!!-§ = new §3!1§(param1);
         this.§55§ = param2;
      }
      
      public function get image() : §3!1§
      {
         return this.§!!-§;
      }
      
      public function get lifeTime() : Number
      {
         return this.§55§;
      }
      
      public function dispose() : void
      {
         if(this.§!!-§)
         {
            this.§!!-§.dispose();
            this.§!!-§ = null;
         }
      }
      
      public function updateLifeTime(param1:Number) : void
      {
         this.§55§ -= param1;
      }
      
      public function §0;§(param1:Number) : void
      {
         this.§55§ = param1;
      }
      
      public function §@D§(param1:Texture) : void
      {
         this.§!!-§.texture = param1;
      }
   }
}
