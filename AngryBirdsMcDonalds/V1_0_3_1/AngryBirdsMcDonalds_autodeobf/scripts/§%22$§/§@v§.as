package §"$§
{
   public class §@v§
   {
       
      
      protected var §4R§:int;
      
      protected var §%J§:int;
      
      protected var §-M§:Number = 0;
      
      protected var §<n§:Number;
      
      protected var §"!S§:Boolean = false;
      
      public function §@v§(param1:int, param2:int, param3:Number)
      {
         super();
         this.§4R§ = param1;
         this.§%J§ = param2;
         this.§<n§ = Math.floor(param3 * 1000);
      }
      
      public function get §[+§() : int
      {
         return this.§4R§;
      }
      
      public function set §[+§(param1:int) : void
      {
         this.§4R§ = param1;
      }
      
      public function get targetId() : int
      {
         return this.§%J§;
      }
      
      public function get §<K§() : Boolean
      {
         return this.§"!S§;
      }
      
      public function set §<K§(param1:Boolean) : void
      {
         this.§"!S§ = param1;
      }
      
      public function update(param1:Number) : int
      {
         this.§-M§ += param1;
         if(this.§-M§ >= this.§<n§)
         {
            return this.§%J§;
         }
         return -1;
      }
   }
}
