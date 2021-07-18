package § ;§
{
   public class §2^§
   {
       
      
      protected var §"!#§:Number = 0.0;
      
      protected var §;W§:Number = 0.0;
      
      protected var §-!1§:Function = null;
      
      protected var §6,§:Boolean = true;
      
      protected var each:Boolean = true;
      
      protected var §^!>§:Boolean = true;
      
      public function §2^§()
      {
         super();
      }
      
      public function set delay(param1:Number) : void
      {
         this.§;W§ = param1;
         if(param1 < 0)
         {
            this.§;W§ = 0;
         }
         this.§"!#§ = -this.§;W§ * 1000;
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
            this.§-!1§ = param1;
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
