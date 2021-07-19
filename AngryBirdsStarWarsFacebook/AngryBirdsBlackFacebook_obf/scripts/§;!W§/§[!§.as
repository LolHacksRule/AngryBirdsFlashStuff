package §;!W§
{
   import §+D§.§ #^§;
   import §,"N§.§@>§;
   import §<"c§.§+#?§;
   import §<"c§.§<2§;
   import §>@§.§5"H§;
   import §?m§.§+"2§;
   import flash.events.EventDispatcher;
   
   public class §[!§ extends EventDispatcher implements §8#0§
   {
       
      
      protected var §=#=§:§ #^§;
      
      protected var §]"u§:Boolean;
      
      protected var §4#J§:§@>§;
      
      protected var §^"N§:§5"H§;
      
      protected var §+!b§:§+"2§;
      
      public function §[!§(param1:§ #^§, param2:§+"2§, param3:§@>§, param4:§5"H§)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && param2))
         {
            super();
         }
         loop0:
         while(true)
         {
            this.§=#=§ = param1;
            loop1:
            do
            {
               this.§+!b§ = param2;
               loop2:
               while(true)
               {
                  this.§^"N§ = param4;
                  while(!_loc5_)
                  {
                     this.§4#J§ = param3;
                     loop4:
                     do
                     {
                        this.§]"u§ = true;
                        while(!_loc5_)
                        {
                           this.init();
                           if(!(_loc5_ && param2))
                           {
                              continue loop4;
                           }
                        }
                        continue loop2;
                     }
                     while(!(_loc6_ || this));
                     
                     if(!_loc5_)
                     {
                        continue loop1;
                     }
                  }
                  continue loop0;
               }
            }
            while(_loc5_ && param1);
            
            return;
         }
      }
      
      public function get §`Z§() : § #^§
      {
         return this.§=#=§;
      }
      
      protected function refresh() : void
      {
      }
      
      public function update(param1:Number) : void
      {
      }
      
      public function isEnabled() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§]"u§);
         if(!_loc1_)
         {
            return !§§pop();
         }
      }
      
      protected function init() : void
      {
         throw "--#AbstractShopTab[init]:: MUST BE IMPLEMENTED";
      }
      
      public function dispose() : void
      {
         throw "--#AbstractShopTab[init]:: MUST BE IMPLEMENTED";
      }
      
      public function disable(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§]"u§ = true;
         }
      }
      
      public function enable(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§]"u§ = false;
         }
      }
      
      protected function getLevelSelectionStateName() : String
      {
         return §+#?§.§^!7§;
      }
      
      protected function getLevelLoadStateName() : String
      {
         return §<2§.§^!7§;
      }
   }
}
