package §;@§
{
   import §+D§.§ #^§;
   import §>"$§.§?g§;
   import §>@§.§5"H§;
   import flash.events.EventDispatcher;
   
   public class §2#C§ extends EventDispatcher implements §5!U§
   {
       
      
      protected var §=#=§:§ #^§;
      
      protected var §]"u§:Boolean;
      
      protected var §^"N§:§5"H§;
      
      protected var §7"p§:Boolean;
      
      public function §2#C§(param1:§ #^§, param2:§5"H§)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
         {
            super();
            loop0:
            while(true)
            {
               this.§=#=§ = param1;
               while(true)
               {
                  this.§^"N§ = param2;
                  loop2:
                  while(_loc3_)
                  {
                     while(true)
                     {
                        this.§]"u§ = false;
                        while(true)
                        {
                           this.§7"p§ = true;
                           while(true)
                           {
                              if(_loc3_)
                              {
                                 continue;
                              }
                              continue loop0;
                           }
                           if(_loc3_ || param1)
                           {
                              if(!_loc4_)
                              {
                                 return;
                              }
                              continue loop2;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr81);
      }
      
      public function get isLoaded() : Boolean
      {
         return this.§7"p§;
      }
      
      public function get §`Z§() : § #^§
      {
         return this.§=#=§;
      }
      
      protected function refresh() : void
      {
      }
      
      protected function init() : void
      {
         throw "--#AbstractShopTab[init]:: MUST BE IMPLEMENTED";
      }
      
      public function dispose() : void
      {
         throw "--#AbstractShopTab[init]:: MUST BE IMPLEMENTED";
      }
      
      public function disable() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§]"u§ = true;
         }
      }
      
      public function enable(param1:String = "") : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§]"u§ = false;
         }
      }
      
      public function initData(param1:§?g§) : void
      {
         throw "--#AbstractShopTab[init]:: MUST BE IMPLEMENTED";
      }
      
      public function purchaseAccepted(param1:Boolean) : void
      {
         throw "--#AbstractShopTab[init]:: MUST BE IMPLEMENTED";
      }
   }
}
