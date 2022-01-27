package §@!M§
{
   public class §#^§
   {
       
      
      protected var §`!3§:Number = 0.0;
      
      protected var §=!#§:Number = 0.0;
      
      protected var §&!L§:Function = null;
      
      protected var §^4§:Boolean = true;
      
      protected var §-!E§:Boolean = true;
      
      protected var §&b§:Boolean = true;
      
      public function §#^§()
      {
         super();
      }
      
      public function set delay(param1:Number) : void
      {
         this.§=!#§ = param1;
         if(param1 < 0)
         {
            this.§=!#§ = 0;
         }
         this.§`!3§ = -this.§=!#§ * 1000;
      }
      
      public function get isCompleted() : Boolean
      {
         return false;
      }
      
      public function get isPaused() : Boolean
      {
         return false;
      }
      
      public function set § !E§(param1:Boolean) : void
      {
         this.§^4§ = param1;
      }
      
      public function set §2]§(param1:Boolean) : void
      {
         this.§-!E§ = param1;
      }
      
      public function get §2]§() : Boolean
      {
         return this.§-!E§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         if(!this.isCompleted)
         {
            this.§&!L§ = param1;
         }
      }
      
      public function set §"m§(param1:Boolean) : void
      {
         this.§&b§ = param1;
      }
      
      public function get §"m§() : Boolean
      {
         return this.§&b§;
      }
   }
}
