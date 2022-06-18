package §`!1§
{
   public class §+<§
   {
       
      
      protected var §"<§:Number = 0.0;
      
      protected var §[s§:Number = 0.0;
      
      protected var §"R§:Function = null;
      
      protected var §!!C§:Boolean = true;
      
      protected var §5`§:Boolean = true;
      
      protected var §@!O§:Boolean = true;
      
      public function §+<§()
      {
         super();
      }
      
      public function set delay(param1:Number) : void
      {
         this.§[s§ = param1;
         if(param1 < 0)
         {
            this.§[s§ = 0;
         }
         this.§"<§ = -this.§[s§ * 1000;
      }
      
      public function get isCompleted() : Boolean
      {
         return false;
      }
      
      public function get isPaused() : Boolean
      {
         return false;
      }
      
      public function set §<=§(param1:Boolean) : void
      {
         this.§!!C§ = param1;
      }
      
      public function set §1C§(param1:Boolean) : void
      {
         this.§5`§ = param1;
      }
      
      public function get §1C§() : Boolean
      {
         return this.§5`§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         if(!this.isCompleted)
         {
            this.§"R§ = param1;
         }
      }
      
      public function set §"e§(param1:Boolean) : void
      {
         this.§@!O§ = param1;
      }
      
      public function get §"e§() : Boolean
      {
         return this.§@!O§;
      }
   }
}
