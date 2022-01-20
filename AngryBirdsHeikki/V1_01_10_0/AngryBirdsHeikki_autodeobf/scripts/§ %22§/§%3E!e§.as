package § "§
{
   public class §>!e§
   {
       
      
      protected var §6!,§:int;
      
      protected var §<!d§:int;
      
      protected var §'!C§:Number = 0;
      
      protected var §0o§:Number;
      
      protected var §^!3§:Boolean = false;
      
      public function §>!e§(param1:int, param2:int, param3:Number)
      {
         super();
         this.§6!,§ = param1;
         this.§<!d§ = param2;
         this.§0o§ = Math.floor(param3 * 1000);
      }
      
      public function get §'!!§() : int
      {
         return this.§6!,§;
      }
      
      public function set §'!!§(param1:int) : void
      {
         this.§6!,§ = param1;
      }
      
      public function get targetId() : int
      {
         return this.§<!d§;
      }
      
      public function get §=!%§() : Boolean
      {
         return this.§^!3§;
      }
      
      public function set §=!%§(param1:Boolean) : void
      {
         this.§^!3§ = param1;
      }
      
      public function update(param1:Number) : int
      {
         this.§'!C§ += param1;
         if(this.§'!C§ >= this.§0o§)
         {
            return this.§<!d§;
         }
         return -1;
      }
   }
}
