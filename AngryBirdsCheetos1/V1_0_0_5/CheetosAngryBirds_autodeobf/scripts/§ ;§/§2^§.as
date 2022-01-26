package § ;§
{
   public class §2^§
   {
       
      
      protected var §[R§:Number = 0.0;
      
      protected var §+u§:Number = 0.0;
      
      protected var §]8§:Function = null;
      
      protected var §6,§:Boolean = true;
      
      protected var each:Boolean = true;
      
      protected var §^!>§:Boolean = true;
      
      public function §2^§()
      {
         super();
      }
      
      public function set delay(param1:Number) : void
      {
         this.§+u§ = param1;
         if(param1 < 0)
         {
            this.§+u§ = 0;
         }
         this.§[R§ = -this.§+u§ * 1000;
      }
      
      public function get isCompleted() : Boolean
      {
         return false;
      }
      
      public function set §[!6§(param1:Boolean) : void
      {
         this.§6,§ = param1;
      }
      
      public function set §#Y§(param1:Boolean) : void
      {
         this.each = param1;
      }
      
      public function get §#Y§() : Boolean
      {
         return this.each;
      }
      
      public function set onComplete(param1:Function) : void
      {
         if(!this.isCompleted)
         {
            this.§]8§ = param1;
         }
      }
      
      public function set §0r§(param1:Boolean) : void
      {
         this.§^!>§ = param1;
      }
      
      public function get §0r§() : Boolean
      {
         return this.§^!>§;
      }
   }
}
