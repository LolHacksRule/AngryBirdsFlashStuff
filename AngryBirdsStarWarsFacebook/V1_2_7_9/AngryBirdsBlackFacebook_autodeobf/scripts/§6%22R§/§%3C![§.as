package §6"R§
{
   import §1"s§.§-i§;
   
   public class §<![§
   {
       
      
      protected var §+3§:§4!w§;
      
      protected var §@!Y§:§-i§;
      
      protected var §2I§:Number;
      
      public function §<![§(param1:§4!w§, param2:§-i§, param3:Number)
      {
         super();
         this.§+3§ = param1;
         this.§@!Y§ = param2;
         this.§2I§ = param3;
         if(this.§+3§ && this.§+3§.§1!w§)
         {
            this.§+3§.§1!w§.§2P§(param2,false);
         }
      }
      
      public function get §^=§() : §4!w§
      {
         return this.§+3§;
      }
      
      public function dispose() : void
      {
         if(this.§+3§ && this.§+3§.§1!w§ && this.§@!Y§)
         {
            this.§+3§.§1!w§.§;"Z§(this.§@!Y§);
            this.§+3§ = null;
         }
         if(this.§@!Y§)
         {
            this.§@!Y§.dispose();
            this.§@!Y§ = null;
         }
      }
      
      public function update(param1:Number) : Boolean
      {
         if(this.§2I§ == -1)
         {
            return true;
         }
         this.§2I§ -= param1;
         if(this.§2I§ < 0)
         {
            return false;
         }
         this.§@!Y§.alpha = Math.max(0,Math.min(1,this.§2I§ / 300));
         return true;
      }
      
      public function §4W§(param1:Number) : void
      {
         this.§2I§ = param1;
      }
   }
}
