package §<!0§
{
   public class §`v§
   {
       
      
      protected var §#!c§:Number = 0.0;
      
      protected var §9T§:Number = 0.0;
      
      protected var §%H§:Function = null;
      
      protected var §,s§:Boolean = true;
      
      protected var §2!H§:Boolean = true;
      
      protected var §=O§:Boolean = true;
      
      public function §`v§()
      {
         super();
      }
      
      public function set delay(param1:Number) : void
      {
         this.§9T§ = param1;
         if(param1 < 0)
         {
            this.§9T§ = 0;
         }
         this.§#!c§ = -this.§9T§ * 1000;
      }
      
      public function get isCompleted() : Boolean
      {
         return false;
      }
      
      public function get isPaused() : Boolean
      {
         return false;
      }
      
      public function set §[!#§(param1:Boolean) : void
      {
         this.§,s§ = param1;
      }
      
      public function set §8!F§(param1:Boolean) : void
      {
         this.§2!H§ = param1;
      }
      
      public function get §8!F§() : Boolean
      {
         return this.§2!H§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         if(!this.isCompleted)
         {
            this.§%H§ = param1;
         }
      }
      
      public function set §'!-§(param1:Boolean) : void
      {
         this.§=O§ = param1;
      }
      
      public function get §'!-§() : Boolean
      {
         return this.§=O§;
      }
   }
}
