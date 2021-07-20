package §?!O§
{
   public class §!i§
   {
       
      
      protected var §28§:Number = 0.0;
      
      protected var §^!5§:Number = 0.0;
      
      protected var §3!K§:Function = null;
      
      protected var §?4§:Boolean = true;
      
      protected var §,6§:Boolean = true;
      
      protected var §!!J§:Boolean = true;
      
      public function §!i§()
      {
         super();
      }
      
      public function set delay(param1:Number) : void
      {
         this.§^!5§ = param1;
         if(param1 < 0)
         {
            this.§^!5§ = 0;
         }
         this.§28§ = -this.§^!5§ * 1000;
      }
      
      public function get isCompleted() : Boolean
      {
         return false;
      }
      
      public function get isPaused() : Boolean
      {
         return false;
      }
      
      public function set §function§(param1:Boolean) : void
      {
         this.§?4§ = param1;
      }
      
      public function set §1!,§(param1:Boolean) : void
      {
         this.§,6§ = param1;
      }
      
      public function get §1!,§() : Boolean
      {
         return this.§,6§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         if(!this.isCompleted)
         {
            this.§3!K§ = param1;
         }
      }
      
      public function set §=e§(param1:Boolean) : void
      {
         this.§!!J§ = param1;
      }
      
      public function get §=e§() : Boolean
      {
         return this.§!!J§;
      }
   }
}
