package §,"N§
{
   import §!"W§.§="5§;
   import flash.events.EventDispatcher;
   
   public class §=o§ extends EventDispatcher
   {
       
      
      private var §="K§:int;
      
      public function §=o§(param1:int = 0)
      {
         super();
         this.§="K§ = param1;
      }
      
      public function get starCoins() : int
      {
         return this.§="K§;
      }
      
      public function §@w§(param1:int) : void
      {
         this.§="K§ = param1;
         dispatchEvent(new §="5§(§="5§.§1c§,this.§="K§));
      }
      
      public function §9"I§(param1:int) : Boolean
      {
         this.§="K§ += param1;
         dispatchEvent(new §="5§(§="5§.ADD,this.§="K§));
         dispatchEvent(new §="5§(§="5§.§1c§,this.§="K§));
         return true;
      }
      
      public function §12§(param1:int) : Boolean
      {
         if(this.§="K§ - param1 >= 0)
         {
            this.§="K§ -= param1;
            dispatchEvent(new §="5§(§="5§.§["P§,this.§="K§));
            dispatchEvent(new §="5§(§="5§.§1c§,this.§="K§));
            return true;
         }
         return false;
      }
      
      public function §1#9§(param1:int) : Boolean
      {
         if(this.§="K§ >= param1)
         {
            return true;
         }
         return false;
      }
   }
}
