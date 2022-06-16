package §46§
{
   public class §!!N§
   {
       
      
      protected var §+8§:int;
      
      protected var §,X§:int;
      
      protected var §>!C§:Number = 0;
      
      protected var §>9§:Number;
      
      protected var §?l§:Boolean = false;
      
      public function §!!N§(param1:int, param2:int, param3:Number)
      {
         super();
         this.§+8§ = param1;
         this.§,X§ = param2;
         this.§>9§ = Math.floor(param3 * 1000);
      }
      
      public function get §+N§() : int
      {
         return this.§+8§;
      }
      
      public function set §+N§(param1:int) : void
      {
         this.§+8§ = param1;
      }
      
      public function get targetId() : int
      {
         return this.§,X§;
      }
      
      public function get §8X§() : int
      {
         return this.§>9§;
      }
      
      public function get §>7§() : Boolean
      {
         return this.§?l§;
      }
      
      public function set §>7§(param1:Boolean) : void
      {
         this.§?l§ = param1;
      }
      
      public function update(param1:Number) : int
      {
         this.§>!C§ += param1;
         if(this.§>!C§ >= this.§>9§)
         {
            return this.§,X§;
         }
         return -1;
      }
   }
}
