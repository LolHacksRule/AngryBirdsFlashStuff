package §8!v§
{
   public class §'!6§
   {
       
      
      protected var §?!x§:Number = 0.0;
      
      protected var §0!t§:Number = 0.0;
      
      protected var §>!8§:Function = null;
      
      protected var §3"!§:Boolean = true;
      
      protected var §,k§:Boolean = true;
      
      protected var §%"?§:Boolean = true;
      
      public function §'!6§()
      {
         super();
      }
      
      public function set delay(param1:Number) : void
      {
         this.§0!t§ = param1;
         if(param1 < 0)
         {
            this.§0!t§ = 0;
         }
         this.§?!x§ = -this.§0!t§ * 1000;
      }
      
      public function get isCompleted() : Boolean
      {
         return false;
      }
      
      public function get isPaused() : Boolean
      {
         return false;
      }
      
      public function set §]!]§(param1:Boolean) : void
      {
         this.§3"!§ = param1;
      }
      
      public function set §'l§(param1:Boolean) : void
      {
         this.§,k§ = param1;
      }
      
      public function get §'l§() : Boolean
      {
         return this.§,k§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         if(!this.isCompleted)
         {
            this.§>!8§ = param1;
         }
      }
      
      public function set §+"#§(param1:Boolean) : void
      {
         this.§%"?§ = param1;
      }
      
      public function get §+"#§() : Boolean
      {
         return this.§%"?§;
      }
   }
}
