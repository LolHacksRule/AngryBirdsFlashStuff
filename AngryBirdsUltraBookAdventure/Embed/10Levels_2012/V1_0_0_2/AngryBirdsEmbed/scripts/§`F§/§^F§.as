package §`F§
{
   public class §^F§
   {
       
      
      protected var §3j§:Number = 0.0;
      
      protected var §?-§:Number = 0.0;
      
      protected var §]!8§:Function = null;
      
      protected var §4v§:Boolean = true;
      
      protected var §<n§:Boolean = true;
      
      protected var §,!D§:Boolean = true;
      
      public function §^F§()
      {
         super();
      }
      
      public function set delay(param1:Number) : void
      {
         this.§?-§ = param1;
         if(param1 < 0)
         {
            this.§?-§ = 0;
         }
         this.§3j§ = -this.§?-§ * 1000;
      }
      
      public function get isCompleted() : Boolean
      {
         return false;
      }
      
      public function get isPaused() : Boolean
      {
         return false;
      }
      
      public function set §-Q§(param1:Boolean) : void
      {
         this.§4v§ = param1;
      }
      
      public function set §?!+§(param1:Boolean) : void
      {
         this.§<n§ = param1;
      }
      
      public function get §?!+§() : Boolean
      {
         return this.§<n§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         if(!this.isCompleted)
         {
            this.§]!8§ = param1;
         }
      }
      
      public function set §^g§(param1:Boolean) : void
      {
         this.§,!D§ = param1;
      }
      
      public function get §^g§() : Boolean
      {
         return this.§,!D§;
      }
   }
}
