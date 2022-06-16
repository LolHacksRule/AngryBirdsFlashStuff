package §8g§
{
   public class §;!@§
   {
       
      
      protected var §09§:int;
      
      protected var §'"C§:int;
      
      protected var §]"1§:Number = 0;
      
      protected var §8!e§:Number;
      
      protected var § !h§:Boolean = false;
      
      public function §;!@§(param1:int, param2:int, param3:Number)
      {
         super();
         this.§09§ = param1;
         this.§'"C§ = param2;
         this.§8!e§ = Math.floor(param3 * 1000);
      }
      
      public function get §6>§() : int
      {
         return this.§09§;
      }
      
      public function set §6>§(param1:int) : void
      {
         this.§09§ = param1;
      }
      
      public function get targetId() : int
      {
         return this.§'"C§;
      }
      
      public function get §>Z§() : Boolean
      {
         return this.§ !h§;
      }
      
      public function set §>Z§(param1:Boolean) : void
      {
         this.§ !h§ = param1;
      }
      
      public function update(param1:Number) : int
      {
         this.§]"1§ += param1;
         if(this.§]"1§ >= this.§8!e§)
         {
            return this.§'"C§;
         }
         return -1;
      }
   }
}
