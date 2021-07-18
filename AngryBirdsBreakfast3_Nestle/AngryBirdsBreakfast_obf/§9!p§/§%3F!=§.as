package §9!p§
{
   import §%!B§.§0![§;
   import §,M§.§+f§;
   import §1![§.§`w§;
   import §1!c§.§'8§;
   import §1!c§.§^j§;
   import §2u§.§,6§;
   import flash.events.EventDispatcher;
   
   public class §?!=§ extends EventDispatcher implements §@!n§
   {
       
      
      protected var §!o§:§,6§;
      
      protected var §4R§:Boolean;
      
      protected var §6!4§:§`w§;
      
      protected var §8&§:§+f§;
      
      protected var §4a§:§0![§;
      
      public function §?!=§(param1:§,6§, param2:§0![§, param3:§`w§, param4:§+f§)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            super();
            while(true)
            {
               this.§!o§ = param1;
               loop1:
               while(_loc5_ || param1)
               {
                  this.§4a§ = param2;
                  loop2:
                  while(true)
                  {
                     this.§8&§ = param4;
                     loop3:
                     while(_loc5_)
                     {
                        this.§6!4§ = param3;
                        do
                        {
                           this.§4R§ = true;
                           while(_loc5_ || this)
                           {
                              continue loop2;
                              this.init();
                              if(!_loc5_)
                              {
                                 continue;
                              }
                              §§goto(addr28);
                           }
                           continue loop3;
                        }
                        while(!(_loc5_ || param3));
                        
                        return;
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr69);
      }
      
      public function get §?e§() : §,6§
      {
         return this.§!o§;
      }
      
      protected function refresh() : void
      {
      }
      
      public function update(param1:Number) : void
      {
      }
      
      public function §5!W§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§4R§);
         if(_loc1_ || _loc2_)
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
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§4R§ = true;
         }
      }
      
      public function enable(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§4R§ = false;
         }
      }
      
      protected function §@f§() : String
      {
         return §^j§.§8"%§;
      }
      
      protected function §5!B§() : String
      {
         return §'8§.§8"%§;
      }
   }
}
