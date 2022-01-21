package §`!"§
{
   public class §"!b§
   {
       
      
      protected var §6!S§:Number = 0.0;
      
      protected var §",§:Number = 0.0;
      
      protected var §>m§:Function = null;
      
      protected var §^!6§:Boolean = true;
      
      protected var §5!R§:Boolean = true;
      
      protected var §6!j§:Boolean = true;
      
      public function §"!b§()
      {
         super();
      }
      
      public function set delay(param1:Number) : void
      {
         this.§",§ = param1;
         if(param1 < 0)
         {
            this.§",§ = 0;
         }
         this.§6!S§ = -this.§",§ * 1000;
      }
      
      public function get isCompleted() : Boolean
      {
         return false;
      }
      
      public function get isPaused() : Boolean
      {
         return false;
      }
      
      public function set §?!T§(param1:Boolean) : void
      {
         this.§^!6§ = param1;
      }
      
      public function set §#f§(param1:Boolean) : void
      {
         this.§5!R§ = param1;
      }
      
      public function get §#f§() : Boolean
      {
         return this.§5!R§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         if(!this.isCompleted)
         {
            this.§>m§ = param1;
         }
      }
      
      public function set §+!<§(param1:Boolean) : void
      {
         this.§6!j§ = param1;
      }
      
      public function get §+!<§() : Boolean
      {
         return this.§6!j§;
      }
   }
}
