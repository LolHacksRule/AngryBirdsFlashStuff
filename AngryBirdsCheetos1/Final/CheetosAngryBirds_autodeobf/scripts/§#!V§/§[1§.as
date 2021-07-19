package §#!V§
{
   public class §[1§
   {
       
      
      protected var §3-§:Number = 0.0;
      
      protected var §2K§:Number = 0.0;
      
      protected var §='§:Function = null;
      
      protected var §^b§:Boolean = true;
      
      protected var §4!-§:Boolean = true;
      
      protected var §;m§:Boolean = true;
      
      public function §[1§()
      {
         super();
      }
      
      public function set delay(param1:Number) : void
      {
         this.§2K§ = param1;
         if(param1 < 0)
         {
            this.§2K§ = 0;
         }
         this.§3-§ = -this.§2K§ * 1000;
      }
      
      public function get isCompleted() : Boolean
      {
         return false;
      }
      
      public function get isPaused() : Boolean
      {
         return false;
      }
      
      public function set §-l§(param1:Boolean) : void
      {
         this.§^b§ = param1;
      }
      
      public function set §5J§(param1:Boolean) : void
      {
         this.§4!-§ = param1;
      }
      
      public function get §5J§() : Boolean
      {
         return this.§4!-§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         if(!this.isCompleted)
         {
            this.§='§ = param1;
         }
      }
      
      public function set §<!>§(param1:Boolean) : void
      {
         this.§;m§ = param1;
      }
      
      public function get §<!>§() : Boolean
      {
         return this.§;m§;
      }
   }
}
