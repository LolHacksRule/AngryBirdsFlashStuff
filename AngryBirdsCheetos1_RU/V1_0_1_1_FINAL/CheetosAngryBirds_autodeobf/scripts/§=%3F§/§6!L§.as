package §=?§
{
   public class §6!L§
   {
       
      
      protected var §"T§:int;
      
      protected var §?r§:int;
      
      protected var §?y§:Number = 0;
      
      protected var §<!a§:Number;
      
      protected var §`i§:Boolean = false;
      
      public function §6!L§(param1:int, param2:int, param3:Number)
      {
         super();
         this.§"T§ = param1;
         this.§?r§ = param2;
         this.§<!a§ = Math.floor(param3 * 1000);
      }
      
      public function get §&!Q§() : int
      {
         return this.§"T§;
      }
      
      public function set §&!Q§(param1:int) : void
      {
         this.§"T§ = param1;
      }
      
      public function get targetId() : int
      {
         return this.§?r§;
      }
      
      public function get §#8§() : Boolean
      {
         return this.§`i§;
      }
      
      public function set §#8§(param1:Boolean) : void
      {
         this.§`i§ = param1;
      }
      
      public function update(param1:Number) : int
      {
         this.§?y§ += param1;
         if(this.§?y§ >= this.§<!a§)
         {
            return this.§?r§;
         }
         return -1;
      }
   }
}
