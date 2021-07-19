package §=r§
{
   import §!?§.§'k§;
   import §7!0§.§-!^§;
   import §7!0§.§4!u§;
   import §7!B§.§@!^§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   
   public class §?"9§ extends EventDispatcher implements §-!^§
   {
       
      
      private var §`"+§:§7!r§;
      
      public function §?"9§(param1:§7!r§)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            super();
            do
            {
               this.§`"+§ = param1;
            }
            while(!(_loc2_ || param1));
            
         }
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc5_:Object = null;
         var _loc6_:Object = null;
         var _loc7_:Array = null;
         var _loc8_:* = null;
         var _loc2_:Object = §4!u§.§&"D§((param1.currentTarget as URLLoader).data);
         if(_loc12_ || _loc3_)
         {
            if(_loc2_.error)
            {
               while(true)
               {
                  dispatchEvent(new §=!<§(§=!<§.§7k§));
                  §§goto(addr75);
               }
            }
            else
            {
               var _loc3_:int = 0;
               var _loc4_:Array = _loc2_.items;
               for each(_loc5_ in _loc4_)
               {
                  if(_loc5_.type == "VuelaTazos")
                  {
                     if(_loc12_)
                     {
                        _loc3_ = _loc5_.count;
                     }
                  }
               }
               if(!_loc11_)
               {
                  this.§`"+§.§#!+§(_loc3_);
                  if(!(_loc11_ && _loc2_))
                  {
                     addr131:
                     dispatchEvent(new §=!<§(§=!<§.§9E§));
                  }
                  (_loc6_ = {}).type = "VuelaTazos";
                  if(!(_loc11_ && _loc3_))
                  {
                     _loc6_.count = _loc3_;
                  }
                  (_loc7_ = []).push(_loc6_);
                  if(!(_loc11_ && _loc3_))
                  {
                     §§push(§'k§.§5-§(§@!^§.§2j§.id,_loc7_));
                     if(_loc12_ || _loc2_)
                     {
                        §§push(§§pop());
                        if(_loc12_ || _loc3_)
                        {
                           addr214:
                           §§push(_loc8_ = §§pop());
                        }
                        if(§§pop() == _loc2_.itemsSecurity)
                        {
                           loop1:
                           while(true)
                           {
                              dispatchEvent(new §=!<§(§=!<§.§3!7§));
                              if(_loc12_)
                              {
                                 break;
                              }
                              addr192:
                              while(true)
                              {
                                 continue loop1;
                              }
                           }
                           if(!_loc11_)
                           {
                              if(!(_loc11_ && param1))
                              {
                                 return;
                              }
                              addr229:
                              dispatchEvent(new §=!<§(§=!<§.§7k§));
                           }
                           return;
                        }
                        §§goto(addr229);
                     }
                     §§goto(addr214);
                  }
                  §§goto(addr192);
               }
               §§goto(addr131);
            }
         }
         addr75:
         while(true)
         {
            §7!r§.§[!1§.§-!F§();
            if(!(_loc11_ && _loc3_))
            {
               break;
            }
            continue loop3;
         }
      }
      
      public function §9o§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §[G§(param1:IOErrorEvent) : void
      {
      }
      
      public function §="5§() : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc1_:String = "useItem";
         var _loc2_:Object = {};
         if(!_loc7_)
         {
            _loc2_.type = "VuelaTazos";
            if(!_loc7_)
            {
               addr29:
               _loc2_.count = 1;
            }
            var _loc3_:Array = [];
            if(!(_loc7_ && _loc1_))
            {
               _loc3_.push(_loc2_);
            }
            §§push(§'k§.§5-§(§@!^§.§2j§.id,_loc3_));
            if(!_loc7_)
            {
               §§push(§§pop());
            }
            var _loc4_:* = §§pop();
            var _loc5_:Object = {
               "id":§@!^§.§2j§.id,
               "items":_loc3_,
               "itemsSecurity":_loc4_
            };
            var _loc6_:§'k§ = new §'k§(_loc5_,§`Y§.§6T§ + _loc1_,this,§'k§.§;!^§);
            return;
         }
         §§goto(addr29);
      }
   }
}
