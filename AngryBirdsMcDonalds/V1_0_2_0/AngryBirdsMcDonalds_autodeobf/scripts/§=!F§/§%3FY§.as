package §=!F§
{
   public class §?Y§
   {
       
      
      protected var §6g§:Number = 0.0;
      
      protected var §!!W§:Number = 0.0;
      
      protected var §-!=§:Function = null;
      
      protected var §7C§:Boolean = true;
      
      protected var §#!$§:Boolean = true;
      
      protected var §4x§:Boolean = true;
      
      public function §?Y§()
      {
         super();
      }
      
      public function set delay(param1:Number) : void
      {
         this.§!!W§ = param1;
         if(param1 < 0)
         {
            this.§!!W§ = 0;
         }
         this.§6g§ = -this.§!!W§ * 1000;
      }
      
      public function get isCompleted() : Boolean
      {
         return false;
      }
      
      public function get isPaused() : Boolean
      {
         return false;
      }
      
      public function set §!5§(param1:Boolean) : void
      {
         this.§7C§ = param1;
      }
      
      public function set §8>§(param1:Boolean) : void
      {
         this.§#!$§ = param1;
      }
      
      public function get §8>§() : Boolean
      {
         return this.§#!$§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         if(!this.isCompleted)
         {
            this.§-!=§ = param1;
         }
      }
      
      public function set §,T§(param1:Boolean) : void
      {
         this.§4x§ = param1;
      }
      
      public function get §,T§() : Boolean
      {
         return this.§4x§;
      }
   }
}
