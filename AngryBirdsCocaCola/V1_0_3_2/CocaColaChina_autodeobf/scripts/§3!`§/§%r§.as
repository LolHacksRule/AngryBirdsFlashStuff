package §3!`§
{
   public class §%r§
   {
       
      
      protected var §>!+§:Number = 0.0;
      
      protected var §]p§:Number = 0.0;
      
      protected var §#Q§:Function = null;
      
      protected var §`!'§:Boolean = true;
      
      protected var §^!E§:Boolean = true;
      
      protected var §,!<§:Boolean = true;
      
      public function §%r§()
      {
         super();
      }
      
      public function set delay(param1:Number) : void
      {
         this.§]p§ = param1;
         if(param1 < 0)
         {
            this.§]p§ = 0;
         }
         this.§>!+§ = -this.§]p§ * 1000;
      }
      
      public function get isCompleted() : Boolean
      {
         return false;
      }
      
      public function set §;!Z§(param1:Boolean) : void
      {
         this.§`!'§ = param1;
      }
      
      public function set § o§(param1:Boolean) : void
      {
         this.§^!E§ = param1;
      }
      
      public function get § o§() : Boolean
      {
         return this.§^!E§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         if(!this.isCompleted)
         {
            this.§#Q§ = param1;
         }
      }
      
      public function set §@=§(param1:Boolean) : void
      {
         this.§,!<§ = param1;
      }
      
      public function get §@=§() : Boolean
      {
         return this.§,!<§;
      }
   }
}
