package §`i§
{
   public class §#p§
   {
       
      
      protected var §5w§:int;
      
      protected var §0#§:int;
      
      protected var §0+§:Number = 0;
      
      protected var §3!>§:Number;
      
      protected var §?k§:Boolean = false;
      
      public function §#p§(param1:int, param2:int, param3:Number)
      {
         super();
         this.§5w§ = param1;
         this.§0#§ = param2;
         this.§3!>§ = Math.floor(param3 * 1000);
      }
      
      public function get §+Q§() : int
      {
         return this.§5w§;
      }
      
      public function set §+Q§(param1:int) : void
      {
         this.§5w§ = param1;
      }
      
      public function get targetId() : int
      {
         return this.§0#§;
      }
      
      public function get §4§() : Boolean
      {
         return this.§?k§;
      }
      
      public function set §4§(param1:Boolean) : void
      {
         this.§?k§ = param1;
      }
      
      public function update(param1:Number) : int
      {
         this.§0+§ += param1;
         if(this.§0+§ >= this.§3!>§)
         {
            return this.§0#§;
         }
         return -1;
      }
   }
}
