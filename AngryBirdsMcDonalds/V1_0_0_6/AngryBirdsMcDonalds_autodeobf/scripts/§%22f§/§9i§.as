package §"f§
{
   public class §9i§
   {
       
      
      protected var §>!b§:Number = 0.0;
      
      protected var §?d§:Number = 0.0;
      
      protected var §]!K§:Function = null;
      
      protected var §`z§:Boolean = true;
      
      protected var §8D§:Boolean = true;
      
      protected var §5!J§:Boolean = true;
      
      public function §9i§()
      {
         super();
      }
      
      public function set delay(param1:Number) : void
      {
         this.§?d§ = param1;
         if(param1 < 0)
         {
            this.§?d§ = 0;
         }
         this.§>!b§ = -this.§?d§ * 1000;
      }
      
      public function get isCompleted() : Boolean
      {
         return false;
      }
      
      public function get isPaused() : Boolean
      {
         return false;
      }
      
      public function set §+! §(param1:Boolean) : void
      {
         this.§`z§ = param1;
      }
      
      public function set §9g§(param1:Boolean) : void
      {
         this.§8D§ = param1;
      }
      
      public function get §9g§() : Boolean
      {
         return this.§8D§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         if(!this.isCompleted)
         {
            this.§]!K§ = param1;
         }
      }
      
      public function set §4z§(param1:Boolean) : void
      {
         this.§5!J§ = param1;
      }
      
      public function get §4z§() : Boolean
      {
         return this.§5!J§;
      }
   }
}
