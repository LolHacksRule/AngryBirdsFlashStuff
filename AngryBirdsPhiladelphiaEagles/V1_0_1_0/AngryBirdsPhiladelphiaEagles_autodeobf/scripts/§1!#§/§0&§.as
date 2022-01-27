package §1!#§
{
   public class §0&§
   {
       
      
      protected var §-f§:Number = 0.0;
      
      protected var §@!8§:Number = 0.0;
      
      protected var §=!5§:Function = null;
      
      protected var §4Z§:Boolean = true;
      
      protected var §!!5§:Boolean = true;
      
      protected var §@!A§:Boolean = true;
      
      public function §0&§()
      {
         super();
      }
      
      public function set delay(param1:Number) : void
      {
         this.§@!8§ = param1;
         if(param1 < 0)
         {
            this.§@!8§ = 0;
         }
         this.§-f§ = -this.§@!8§ * 1000;
      }
      
      public function get isCompleted() : Boolean
      {
         return false;
      }
      
      public function get isPaused() : Boolean
      {
         return false;
      }
      
      public function set native(param1:Boolean) : void
      {
         this.§4Z§ = param1;
      }
      
      public function set §@3§(param1:Boolean) : void
      {
         this.§!!5§ = param1;
      }
      
      public function get §@3§() : Boolean
      {
         return this.§!!5§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         if(!this.isCompleted)
         {
            this.§=!5§ = param1;
         }
      }
      
      public function set §%!J§(param1:Boolean) : void
      {
         this.§@!A§ = param1;
      }
      
      public function get §%!J§() : Boolean
      {
         return this.§@!A§;
      }
   }
}
