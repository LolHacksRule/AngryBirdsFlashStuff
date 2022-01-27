package §`"8§
{
   import §1!o§.§<"W§;
   import flash.events.EventDispatcher;
   
   public class §6`§ extends EventDispatcher
   {
       
      
      private var §9x§:int;
      
      public function §6`§(param1:int = 0)
      {
         super();
         this.§9x§ = param1;
      }
      
      public function get starCoins() : int
      {
         return this.§9x§;
      }
      
      public function §8"2§(param1:int) : void
      {
         this.§9x§ = param1;
         dispatchEvent(new §<"W§(§<"W§.§4f§,this.§9x§));
      }
      
      public function §"M§(param1:int) : Boolean
      {
         this.§9x§ += param1;
         dispatchEvent(new §<"W§(§<"W§.§<!F§,this.§9x§));
         dispatchEvent(new §<"W§(§<"W§.§4f§,this.§9x§));
         return true;
      }
      
      public function §1"F§(param1:int) : Boolean
      {
         if(this.§9x§ - param1 >= 0)
         {
            this.§9x§ -= param1;
            dispatchEvent(new §<"W§(§<"W§.§ !]§,this.§9x§));
            dispatchEvent(new §<"W§(§<"W§.§4f§,this.§9x§));
            return true;
         }
         return false;
      }
      
      public function §2!D§(param1:int) : Boolean
      {
         if(this.§9x§ >= param1)
         {
            return true;
         }
         return false;
      }
   }
}
