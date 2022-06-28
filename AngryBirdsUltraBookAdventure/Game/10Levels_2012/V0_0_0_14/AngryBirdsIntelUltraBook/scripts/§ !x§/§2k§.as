package § !x§
{
   public class §2k§
   {
       
      
      protected var §?Q§:Number = 0.0;
      
      protected var §%U§:Number = 0.0;
      
      protected var §9!0§:Function = null;
      
      protected var §0b§:Boolean = true;
      
      protected var §#s§:Boolean = true;
      
      protected var §;!6§:Boolean = true;
      
      public function §2k§()
      {
         super();
      }
      
      public function set delay(param1:Number) : void
      {
         this.§%U§ = param1;
         if(param1 < 0)
         {
            this.§%U§ = 0;
         }
         this.§?Q§ = -this.§%U§ * 1000;
      }
      
      public function get isCompleted() : Boolean
      {
         return false;
      }
      
      public function get isPaused() : Boolean
      {
         return false;
      }
      
      public function set §[!j§(param1:Boolean) : void
      {
         this.§0b§ = param1;
      }
      
      public function set §+!^§(param1:Boolean) : void
      {
         this.§#s§ = param1;
      }
      
      public function get §+!^§() : Boolean
      {
         return this.§#s§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         if(!this.isCompleted)
         {
            this.§9!0§ = param1;
         }
      }
      
      public function set §<!@§(param1:Boolean) : void
      {
         this.§;!6§ = param1;
      }
      
      public function get §<!@§() : Boolean
      {
         return this.§;!6§;
      }
   }
}
