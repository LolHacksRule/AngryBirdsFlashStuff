package §^G§
{
   public class §=t§
   {
       
      
      protected var §+6§:int;
      
      protected var §<2§:int;
      
      protected var §&!,§:Number = 0;
      
      protected var §&G§:Number;
      
      protected var §18§:Boolean = false;
      
      public function §=t§(param1:int, param2:int, param3:Number)
      {
         super();
         this.§+6§ = param1;
         this.§<2§ = param2;
         this.§&G§ = Math.floor(param3 * 1000);
      }
      
      public function get §#!?§() : int
      {
         return this.§+6§;
      }
      
      public function set §#!?§(param1:int) : void
      {
         this.§+6§ = param1;
      }
      
      public function get targetId() : int
      {
         return this.§<2§;
      }
      
      public function get §=e§() : int
      {
         return this.§&G§;
      }
      
      public function get §[!%§() : Boolean
      {
         return this.§18§;
      }
      
      public function set §[!%§(param1:Boolean) : void
      {
         this.§18§ = param1;
      }
      
      public function update(param1:Number) : int
      {
         this.§&!,§ += param1;
         if(this.§&!,§ >= this.§&G§)
         {
            return this.§<2§;
         }
         return -1;
      }
   }
}
