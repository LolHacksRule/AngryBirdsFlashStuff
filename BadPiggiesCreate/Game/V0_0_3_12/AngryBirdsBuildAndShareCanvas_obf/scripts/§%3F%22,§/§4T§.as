package §?",§
{
   public class §4T§
   {
       
      
      protected var §6"<§:int;
      
      protected var §^7§:int;
      
      protected var §%Y§:Number = 0;
      
      protected var §%K§:Number;
      
      protected var §"!c§:Boolean = false;
      
      public function §4T§(param1:int, param2:int, param3:Number)
      {
         super();
         this.§6"<§ = param1;
         this.§^7§ = param2;
         this.§%K§ = Math.floor(param3 * 1000);
      }
      
      public function get §4!$§() : int
      {
         return this.§6"<§;
      }
      
      public function set §4!$§(param1:int) : void
      {
         this.§6"<§ = param1;
      }
      
      public function get targetId() : int
      {
         return this.§^7§;
      }
      
      public function get §^"<§() : Boolean
      {
         return this.§"!c§;
      }
      
      public function set §^"<§(param1:Boolean) : void
      {
         this.§"!c§ = param1;
      }
      
      public function update(param1:Number) : int
      {
         this.§%Y§ += param1;
         if(this.§%Y§ >= this.§%K§)
         {
            return this.§^7§;
         }
         return -1;
      }
   }
}
