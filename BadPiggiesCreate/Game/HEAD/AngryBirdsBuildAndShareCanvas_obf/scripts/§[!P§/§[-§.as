package §[!P§
{
   public class §[-§
   {
       
      
      protected var §?;§:int;
      
      protected var §4J§:int;
      
      protected var §3R§:Number = 0;
      
      protected var §6!N§:Number;
      
      protected var §]"6§:Boolean = false;
      
      public function §[-§(param1:int, param2:int, param3:Number)
      {
         super();
         this.§?;§ = param1;
         this.§4J§ = param2;
         this.§6!N§ = Math.floor(param3 * 1000);
      }
      
      public function get §86§() : int
      {
         return this.§?;§;
      }
      
      public function set §86§(param1:int) : void
      {
         this.§?;§ = param1;
      }
      
      public function get targetId() : int
      {
         return this.§4J§;
      }
      
      public function get §4x§() : Boolean
      {
         return this.§]"6§;
      }
      
      public function set §4x§(param1:Boolean) : void
      {
         this.§]"6§ = param1;
      }
      
      public function update(param1:Number) : int
      {
         this.§3R§ += param1;
         if(this.§3R§ >= this.§6!N§)
         {
            return this.§4J§;
         }
         return -1;
      }
   }
}
