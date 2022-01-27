package §2z§
{
   import §#!6§.Texture;
   import §=!E§.§try§;
   
   public class §6!,§
   {
       
      
      private var §9!!§:§try§;
      
      private var §'!9§:Number;
      
      public function §6!,§(param1:Texture, param2:Number)
      {
         super();
         this.§9!!§ = new §try§(param1);
         this.§'!9§ = param2;
      }
      
      public function get image() : §try§
      {
         return this.§9!!§;
      }
      
      public function get lifeTime() : Number
      {
         return this.§'!9§;
      }
      
      public function dispose() : void
      {
         if(this.§9!!§)
         {
            this.§9!!§.dispose();
            this.§9!!§ = null;
         }
      }
      
      public function updateLifeTime(param1:Number) : void
      {
         this.§'!9§ -= param1;
      }
      
      public function §"y§(param1:Number) : void
      {
         this.§'!9§ = param1;
      }
      
      public function § !H§(param1:Texture) : void
      {
         this.§9!!§.texture = param1;
      }
   }
}
