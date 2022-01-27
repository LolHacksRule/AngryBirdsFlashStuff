package §?!R§
{
   public class §@$§
   {
       
      
      protected var §?5§:int;
      
      protected var §=!Y§:int;
      
      protected var §'U§:Number = 0;
      
      protected var §@_§:Number;
      
      protected var §;!>§:Boolean = false;
      
      public function §@$§(param1:int, param2:int, param3:Number)
      {
         super();
         this.§?5§ = param1;
         this.§=!Y§ = param2;
         this.§@_§ = Math.floor(param3 * 1000);
      }
      
      public function get §'-§() : int
      {
         return this.§?5§;
      }
      
      public function set §'-§(param1:int) : void
      {
         this.§?5§ = param1;
      }
      
      public function get targetId() : int
      {
         return this.§=!Y§;
      }
      
      public function get §5![§() : Boolean
      {
         return this.§;!>§;
      }
      
      public function set §5![§(param1:Boolean) : void
      {
         this.§;!>§ = param1;
      }
      
      public function update(param1:Number) : int
      {
         this.§'U§ += param1;
         if(this.§'U§ >= this.§@_§)
         {
            return this.§=!Y§;
         }
         return -1;
      }
   }
}
