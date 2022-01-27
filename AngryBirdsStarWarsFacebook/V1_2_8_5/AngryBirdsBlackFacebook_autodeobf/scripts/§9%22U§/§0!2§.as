package §9"U§
{
   import §?!u§.§,!$§;
   import flash.events.EventDispatcher;
   
   public class §0!2§ extends EventDispatcher
   {
       
      
      private var §6g§:int;
      
      public function §0!2§(param1:int = 0)
      {
         super();
         this.§6g§ = param1;
      }
      
      public function get starCoins() : int
      {
         return this.§6g§;
      }
      
      public function §?c§(param1:int) : void
      {
         this.§6g§ = param1;
         dispatchEvent(new §,!$§(§,!$§.§6,§,this.§6g§));
      }
      
      public function §%P§(param1:int) : Boolean
      {
         this.§6g§ += param1;
         dispatchEvent(new §,!$§(§,!$§.§!!+§,this.§6g§));
         dispatchEvent(new §,!$§(§,!$§.§6,§,this.§6g§));
         return true;
      }
      
      public function §&"-§(param1:int) : Boolean
      {
         if(this.§6g§ - param1 >= 0)
         {
            this.§6g§ -= param1;
            dispatchEvent(new §,!$§(§,!$§.§>z§,this.§6g§));
            dispatchEvent(new §,!$§(§,!$§.§6,§,this.§6g§));
            return true;
         }
         return false;
      }
      
      public function §8!J§(param1:int) : Boolean
      {
         if(this.§6g§ >= param1)
         {
            return true;
         }
         return false;
      }
   }
}
