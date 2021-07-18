package §7!A§
{
   import §#"&§.§4!W§;
   import §0"$§.§"!a§;
   import §8!K§.§5!Y§;
   import §;!§.§4!9§;
   import §;!§.§[j§;
   import §;0§.§6h§;
   import flash.events.EventDispatcher;
   
   public class §#"'§ extends EventDispatcher implements §-J§
   {
       
      
      protected var §!O§:§"!a§;
      
      protected var §2!,§:Boolean;
      
      protected var §^!8§:§4!W§;
      
      protected var §-!]§:§6h§;
      
      protected var §&" §:§5!Y§;
      
      public function §#"'§(param1:§"!a§, param2:§5!Y§, param3:§4!W§, param4:§6h§)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || param3)
         {
            super();
            while(true)
            {
               this.§!O§ = param1;
               loop1:
               for(; !(_loc6_ && param3); if(!(_loc5_ || param3))
               {
                  continue;
               },while(true)
               {
                  this.§^!8§ = param3;
                  §§goto(addr65);
               },addr86:)
               {
                  this.§&" § = param2;
                  while(true)
                  {
                     this.§-!]§ = param4;
                     while(!_loc6_)
                     {
                        continue loop1;
                        while(_loc5_ || param1)
                        {
                           this.§2!,§ = true;
                           do
                           {
                              this.init();
                           }
                           while(!(_loc5_ || param1));
                           
                           if(!(_loc6_ && param1))
                           {
                              return;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr86);
      }
      
      public function get §&$§() : §"!a§
      {
         return this.§!O§;
      }
      
      protected function refresh() : void
      {
      }
      
      public function update(param1:Number) : void
      {
      }
      
      public function §+4§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§2!,§);
         if(_loc1_)
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
         if(!_loc3_)
         {
            this.§2!,§ = true;
         }
      }
      
      public function enable(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§2!,§ = false;
         }
      }
      
      protected function §2§() : String
      {
         return §4!9§.§-!q§;
      }
      
      protected function §0!S§() : String
      {
         return §[j§.§-!q§;
      }
   }
}
