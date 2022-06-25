package §>R§
{
   import §>K§.§9X§;
   import flash.external.ExternalInterface;
   
   public class §5§
   {
       
      
      public var §8U§:String = "";
      
      private var §];§:Array = null;
      
      public function §5§(param1:String)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            super();
            if(!_loc2_)
            {
               this.§8U§ = param1;
               if(!_loc2_)
               {
                  addr43:
                  if(ExternalInterface.available)
                  {
                     if(!_loc2_)
                     {
                        addr48:
                        ExternalInterface.addCallback(this.§8U§,this.§4;§);
                     }
                  }
               }
               return;
            }
            §§goto(addr43);
         }
         §§goto(addr48);
      }
      
      public function §4;§(... rest) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc2_:* = null;
         var _loc3_:* = NaN;
         var _loc4_:Function = null;
         if(!_loc7_)
         {
            §§push("call through externalInterface! ");
            if(_loc8_ || rest)
            {
               §§push(§§pop() + this.§8U§);
               if(_loc8_)
               {
                  §§push(§§pop() + "(");
               }
            }
            _loc2_ = §§pop();
            if(_loc8_ || _loc3_)
            {
               _loc3_ = Number(0);
            }
         }
         loop0:
         while(true)
         {
            §§push(_loc3_);
            while(true)
            {
               if(§§pop() >= rest.length)
               {
                  §§push(_loc2_);
                  break;
               }
               §§push(_loc2_);
               if(_loc8_)
               {
                  §§push(rest[_loc3_] + ",");
                  if(!(_loc7_ && this))
                  {
                     §§push(§§pop() + §§pop());
                     if(!(_loc7_ && _loc2_))
                     {
                        §§push(§§pop());
                        if(!(_loc7_ && _loc3_))
                        {
                           _loc2_ = §§pop();
                           if(!_loc7_)
                           {
                              §§push(_loc3_);
                              if(!(_loc7_ && this))
                              {
                                 §§push(§§pop() + 1);
                                 if(_loc7_)
                                 {
                                    continue;
                                 }
                                 §§push(Number(§§pop()));
                                 if(!_loc8_)
                                 {
                                    continue;
                                 }
                              }
                              _loc3_ = §§pop();
                              if(!_loc7_)
                              {
                                 continue loop0;
                              }
                              addr151:
                              if(this.§];§ != null)
                              {
                                 if(_loc8_)
                                 {
                                    addr157:
                                    var _loc5_:int = 0;
                                    if(!_loc7_)
                                    {
                                       for each(_loc4_ in this.§];§)
                                       {
                                          _loc4_.apply(null,rest);
                                       }
                                    }
                                 }
                              }
                           }
                           return;
                        }
                        break;
                     }
                     addr123:
                     _loc2_ = §§pop();
                     if(!(_loc7_ && rest))
                     {
                        §9X§.log(_loc2_);
                        if(!(_loc7_ && _loc2_))
                        {
                           §§goto(addr151);
                        }
                     }
                     §§goto(addr157);
                  }
                  addr122:
                  §§goto(addr123);
                  §§push(§§pop() + §§pop());
               }
               break;
            }
            §§goto(addr122);
         }
      }
      
      public function addCallback(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§];§);
            if(!(_loc2_ && _loc2_))
            {
               if(§§pop() == null)
               {
                  if(_loc3_)
                  {
                     this.§];§ = new Array();
                     if(!_loc3_)
                     {
                     }
                     §§goto(addr52);
                  }
               }
               §§push(this.§];§);
            }
            §§pop().push(param1);
         }
         addr52:
      }
      
      public function §"!!§(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            §§push(this.§];§);
            if(_loc3_)
            {
               §§push(Boolean(§§pop()));
               if(_loc3_)
               {
                  if(§§pop())
                  {
                     if(_loc3_ || _loc3_)
                     {
                        addr50:
                        §§pop();
                        if(_loc3_ || param1)
                        {
                           §§push(this.§];§);
                           if(!(_loc2_ && _loc2_))
                           {
                              addr77:
                              §§push(§§pop().indexOf(param1) == -1);
                              if(_loc3_ || this)
                              {
                              }
                              §§goto(addr89);
                           }
                        }
                        §§goto(addr99);
                     }
                  }
                  addr89:
                  if(!§§pop())
                  {
                     if(!(_loc2_ && _loc3_))
                     {
                        addr99:
                        this.§];§.splice(this.§];§.indexOf(param1),1);
                     }
                  }
                  return;
               }
               §§goto(addr50);
            }
            §§goto(addr77);
         }
         §§goto(addr99);
      }
   }
}
