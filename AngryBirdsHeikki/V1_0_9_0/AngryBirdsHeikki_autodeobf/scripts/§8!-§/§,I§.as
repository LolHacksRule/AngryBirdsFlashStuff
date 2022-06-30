package §8!-§
{
   public class §,I§
   {
       
      
      protected var §"x§:Number = 0.0;
      
      protected var §=u§:Number = 0.0;
      
      protected var §&!A§:Function = null;
      
      protected var §3!b§:Boolean = true;
      
      protected var § q§:Boolean = true;
      
      protected var §-h§:Boolean = true;
      
      public function §,I§()
      {
         super();
      }
      
      public function set delay(param1:Number) : void
      {
         this.§=u§ = param1;
         if(param1 < 0)
         {
            this.§=u§ = 0;
         }
         this.§"x§ = -this.§=u§ * 1000;
      }
      
      public function get isCompleted() : Boolean
      {
         return false;
      }
      
      public function get isPaused() : Boolean
      {
         return false;
      }
      
      public function set §+`§(param1:Boolean) : void
      {
         this.§3!b§ = param1;
      }
      
      public function set §;!b§(param1:Boolean) : void
      {
         this.§ q§ = param1;
      }
      
      public function get §;!b§() : Boolean
      {
         return this.§ q§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         if(!this.isCompleted)
         {
            this.§&!A§ = param1;
         }
      }
      
      public function set §9q§(param1:Boolean) : void
      {
         this.§-h§ = param1;
      }
      
      public function get §9q§() : Boolean
      {
         return this.§-h§;
      }
   }
}
