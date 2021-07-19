package §[x§
{
   import §[P§.Texture;
   import §^V§.§1!,§;
   
   public class §7!&§
   {
       
      
      private var §6-§:§1!,§;
      
      private var §-!8§:Number;
      
      public function §7!&§(param1:Texture, param2:Number)
      {
         super();
         this.§6-§ = new §1!,§(param1);
         this.§-!8§ = param2;
      }
      
      public function get image() : §1!,§
      {
         return this.§6-§;
      }
      
      public function get lifeTime() : Number
      {
         return this.§-!8§;
      }
      
      public function dispose() : void
      {
         if(this.§6-§)
         {
            this.§6-§.dispose();
            this.§6-§ = null;
         }
      }
      
      public function updateLifeTime(param1:Number) : void
      {
         this.§-!8§ -= param1;
      }
      
      public function §#F§(param1:Number) : void
      {
         this.§-!8§ = param1;
      }
      
      public function §,3§(param1:Texture) : void
      {
         this.§6-§.texture = param1;
      }
   }
}
