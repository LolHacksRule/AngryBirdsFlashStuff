package §?!+§
{
   public class §1!"§
   {
       
      
      protected var §9!8§:Number = 0.0;
      
      protected var §0! §:Number = 0.0;
      
      protected var §"3§:Function = null;
      
      protected var §[d§:Boolean = true;
      
      protected var §-S§:Boolean = true;
      
      protected var §<!8§:Boolean = true;
      
      public function §1!"§()
      {
         super();
      }
      
      public function set delay(param1:Number) : void
      {
         this.§0! § = param1;
         if(param1 < 0)
         {
            this.§0! § = 0;
         }
         this.§9!8§ = -this.§0! § * 1000;
      }
      
      public function get isCompleted() : Boolean
      {
         return false;
      }
      
      public function get isPaused() : Boolean
      {
         return false;
      }
      
      public function set §,!@§(param1:Boolean) : void
      {
         this.§[d§ = param1;
      }
      
      public function set §'<§(param1:Boolean) : void
      {
         this.§-S§ = param1;
      }
      
      public function get §'<§() : Boolean
      {
         return this.§-S§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         if(!this.isCompleted)
         {
            this.§"3§ = param1;
         }
      }
      
      public function set §5u§(param1:Boolean) : void
      {
         this.§<!8§ = param1;
      }
      
      public function get §5u§() : Boolean
      {
         return this.§<!8§;
      }
   }
}
