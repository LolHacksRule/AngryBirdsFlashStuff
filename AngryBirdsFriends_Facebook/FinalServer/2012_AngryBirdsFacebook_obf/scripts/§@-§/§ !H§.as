package §@-§
{
   public class § !H§
   {
       
      
      protected var §!!9§:int;
      
      protected var §<!p§:int;
      
      protected var §=!t§:Number = 0;
      
      protected var §9i§:Number;
      
      protected var §+!p§:Boolean = false;
      
      public function § !H§(param1:int, param2:int, param3:Number)
      {
         super();
         this.§!!9§ = param1;
         this.§<!p§ = param2;
         this.§9i§ = Math.floor(param3 * 1000);
      }
      
      public function get §^K§() : int
      {
         return this.§!!9§;
      }
      
      public function set §^K§(param1:int) : void
      {
         this.§!!9§ = param1;
      }
      
      public function get targetId() : int
      {
         return this.§<!p§;
      }
      
      public function get §="5§() : int
      {
         return this.§9i§;
      }
      
      public function get §+"+§() : Boolean
      {
         return this.§+!p§;
      }
      
      public function set §+"+§(param1:Boolean) : void
      {
         this.§+!p§ = param1;
      }
      
      public function update(param1:Number) : int
      {
         this.§=!t§ += param1;
         if(this.§=!t§ >= this.§9i§)
         {
            return this.§<!p§;
         }
         return -1;
      }
   }
}
