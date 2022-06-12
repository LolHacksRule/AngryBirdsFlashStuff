package §0Z§
{
   public class §?!X§
   {
       
      
      protected var §&!w§:Number = 0.0;
      
      protected var §>!G§:Number = 0.0;
      
      protected var §-!t§:Function = null;
      
      protected var §6!]§:Boolean = true;
      
      protected var §%!e§:Boolean = true;
      
      protected var §7!=§:Boolean = true;
      
      public function §?!X§()
      {
         super();
      }
      
      public function set delay(param1:Number) : void
      {
         this.§>!G§ = param1;
         if(param1 < 0)
         {
            this.§>!G§ = 0;
         }
         this.§&!w§ = -this.§>!G§ * 1000;
      }
      
      public function get isCompleted() : Boolean
      {
         return false;
      }
      
      public function get isPaused() : Boolean
      {
         return false;
      }
      
      public function set §>"0§(param1:Boolean) : void
      {
         this.§6!]§ = param1;
      }
      
      public function set §>!S§(param1:Boolean) : void
      {
         this.§%!e§ = param1;
      }
      
      public function get §>!S§() : Boolean
      {
         return this.§%!e§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         if(!this.isCompleted)
         {
            this.§-!t§ = param1;
         }
      }
      
      public function set §-k§(param1:Boolean) : void
      {
         this.§7!=§ = param1;
      }
      
      public function get §-k§() : Boolean
      {
         return this.§7!=§;
      }
   }
}
