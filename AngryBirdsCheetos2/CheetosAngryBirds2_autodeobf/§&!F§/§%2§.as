package §&!F§
{
   import §1!E§.§>f§;
   import §12§.§25§;
   import §5G§.§39§;
   import §[h§.§7Z§;
   import §[h§.§[!U§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   
   public class §%2§ extends EventDispatcher implements §7Z§
   {
       
      
      private var §%!K§:§3S§;
      
      public function §%2§(param1:§3S§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            super();
            do
            {
               this.§%!K§ = param1;
            }
            while(_loc2_ && _loc2_);
            
         }
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         var _loc5_:Object = null;
         var _loc6_:Object = null;
         var _loc7_:Array = null;
         var _loc8_:* = null;
         var _loc2_:Object = §[!U§.§ !=§((param1.currentTarget as URLLoader).data);
         if(!(_loc12_ && this))
         {
            if(!_loc2_.error)
            {
               var _loc3_:int = 0;
               var _loc4_:Array = _loc2_.items;
               for each(_loc5_ in _loc4_)
               {
                  if(_loc5_.type == §"!d§.§;,§)
                  {
                     if(!_loc12_)
                     {
                        _loc3_ = _loc5_.count;
                     }
                  }
               }
               if(_loc11_ || param1)
               {
                  this.§%!K§.§5<§(_loc3_);
                  if(!(_loc12_ && this))
                  {
                     addr141:
                     dispatchEvent(new §25§(§25§.§&g§));
                  }
                  (_loc6_ = {}).type = §"!d§.§;,§;
                  if(_loc11_ || _loc2_)
                  {
                     _loc6_.count = _loc3_;
                  }
                  (_loc7_ = []).push(_loc6_);
                  if(!(_loc12_ && this))
                  {
                     if(§>f§.§%!`§)
                     {
                        addr235:
                        while(true)
                        {
                           §§push(§"!d§.§+!5§(§>f§.§%!`§.id,_loc7_));
                           if(!(_loc12_ && this))
                           {
                              §§push(§§pop());
                           }
                           addr259:
                           while(true)
                           {
                              _loc8_ = §§pop();
                              addr260:
                              while(true)
                              {
                              }
                           }
                        }
                        addr235:
                     }
                     loop1:
                     while(true)
                     {
                        §§push(_loc8_);
                        if(!_loc12_)
                        {
                           if(§§pop() == _loc2_.itemsSecurity)
                           {
                              while(true)
                              {
                                 dispatchEvent(new §25§(this.getCreditUseCompleteEventType()));
                                 if(!(_loc12_ && this))
                                 {
                                    if(_loc11_)
                                    {
                                       return;
                                    }
                                    break;
                                 }
                                 if(_loc11_ || _loc3_)
                                 {
                                    if(_loc11_)
                                    {
                                       continue;
                                    }
                                    continue loop1;
                                 }
                              }
                              addr224:
                              if(_loc11_ || _loc3_)
                              {
                                 break;
                              }
                              §§goto(addr235);
                           }
                           dispatchEvent(new §25§(this.getCreditUseErrorEventType()));
                           §§goto(addr224);
                        }
                        §§goto(addr259);
                     }
                     return;
                  }
                  §§goto(addr235);
               }
               §§goto(addr141);
            }
         }
         dispatchEvent(new §25§(this.getCreditUseErrorEventType()));
         this.§%!K§.§%!L§();
      }
      
      public function onHttpStatus(param1:HTTPStatusEvent) : void
      {
      }
      
      public function onIOError(param1:IOErrorEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            §5!9§.§-!O§.§;!;§(§39§.§3!?§);
         }
      }
      
      public function §6!a§(param1:int) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!_loc8_)
         {
            if(!§>f§.§%!`§)
            {
               if(!(_loc8_ && this))
               {
                  return;
               }
            }
         }
         §§push(§"!d§.§#u§);
         if(_loc7_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         var _loc3_:Object = {};
         if(_loc7_ || _loc2_)
         {
            _loc3_.type = §"!d§.§;,§;
            if(_loc7_ || _loc2_)
            {
               addr66:
               _loc3_.count = param1;
            }
            var _loc4_:Array;
            (_loc4_ = []).push(_loc3_);
            §§push(§"!d§.§+!5§(§>f§.§%!`§.id,_loc4_));
            if(!_loc8_)
            {
               §§push(§§pop());
            }
            var _loc5_:* = §§pop();
            var _loc6_:Object = {
               "id":§>f§.§%!`§.id,
               "items":_loc4_,
               "itemsSecurity":_loc5_
            };
            if(!(_loc8_ && _loc2_))
            {
               new §"!d§(_loc6_,§5!9§.§<V§ + _loc2_,this,§"!d§.§9X§);
            }
            return;
         }
         §§goto(addr66);
      }
      
      protected function getCreditUseErrorEventType() : String
      {
         return §25§.§3M§;
      }
      
      protected function getCreditUseCompleteEventType() : String
      {
         return §25§.§]5§;
      }
   }
}
