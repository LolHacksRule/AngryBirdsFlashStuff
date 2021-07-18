package §=V§
{
   import § !r§.§`![§;
   import flash.external.ExternalInterface;
   
   public class §-!9§
   {
       
      
      public var §'!I§:String = "";
      
      private var §6!L§:Array = null;
      
      public function §-!9§(param1:String)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            super();
            if(_loc2_)
            {
               §§goto(addr32);
            }
            §§goto(addr47);
         }
         addr32:
         this.§'!I§ = param1;
         if(_loc2_)
         {
            if(ExternalInterface.available)
            {
               if(_loc2_ || _loc3_)
               {
                  addr47:
                  ExternalInterface.addCallback(this.§'!I§,this.§-!G§);
               }
            }
         }
      }
      
      public function §-!G§(... rest) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc2_:* = null;
         var _loc3_:* = NaN;
         var _loc4_:Function = null;
         if(_loc7_ || this)
         {
            §§push("call through externalInterface! ");
            if(_loc7_)
            {
               §§push(§§pop() + this.§'!I§);
               if(!(_loc8_ && rest))
               {
                  §§push(§§pop() + "(");
               }
            }
            _loc2_ = §§pop();
            if(_loc7_ || _loc3_)
            {
               addr54:
               _loc3_ = Number(0);
            }
            loop0:
            while(true)
            {
               §§push(_loc3_);
               while(true)
               {
                  if(§§pop() < rest.length)
                  {
                     §§push(_loc2_);
                     if(!_loc8_)
                     {
                        §§push(rest[_loc3_] + ",");
                        if(!_loc8_)
                        {
                           §§push(§§pop() + §§pop());
                           if(_loc8_ && this)
                           {
                              addr122:
                              _loc2_ = §§pop();
                              addr123:
                              §`![§.log(_loc2_);
                           }
                           §§push(§§pop());
                           if(!_loc7_)
                           {
                              break;
                           }
                           _loc2_ = §§pop();
                           if(!_loc7_)
                           {
                              continue loop0;
                              if(this.§6!L§ != null)
                              {
                                 if(!_loc8_)
                                 {
                                    var _loc5_:int = 0;
                                    if(_loc7_ || rest)
                                    {
                                       for each(_loc4_ in this.§6!L§)
                                       {
                                          _loc4_.apply(null,rest);
                                       }
                                    }
                                 }
                              }
                           }
                           §§push(_loc3_);
                           if(!(_loc8_ && this))
                           {
                              §§push(§§pop() + 1);
                              if(!(_loc7_ || rest))
                              {
                                 continue;
                              }
                           }
                           §§push(Number(§§pop()));
                           if(_loc8_)
                           {
                              continue;
                              return;
                           }
                           _loc3_ = §§pop();
                           continue loop0;
                        }
                        addr121:
                        §§goto(addr122);
                        §§push(§§pop() + §§pop());
                     }
                     break;
                  }
                  if(!_loc8_)
                  {
                     §§push(_loc2_);
                     break;
                  }
                  §§goto(addr123);
               }
               §§goto(addr121);
            }
         }
         §§goto(addr54);
      }
      
      public function addCallback(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            §§push(this.§6!L§);
            if(!_loc2_)
            {
               if(§§pop() == null)
               {
                  if(!(_loc2_ && _loc3_))
                  {
                     this.§6!L§ = new Array();
                     if(_loc3_)
                     {
                        addr55:
                        this.§6!L§.push(param1);
                        addr53:
                     }
                     return;
                  }
               }
               §§goto(addr53);
            }
         }
         §§goto(addr55);
      }
      
      public function § s§(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            §§push(this.§6!L§);
            if(_loc3_ || this)
            {
               §§push(Boolean(§§pop()));
               if(_loc3_ || param1)
               {
                  if(§§pop())
                  {
                     if(_loc3_ || _loc2_)
                     {
                        §§goto(addr60);
                     }
                  }
                  §§goto(addr89);
               }
               addr60:
               §§pop();
               if(!(_loc2_ && this))
               {
                  §§push(this.§6!L§);
                  if(!_loc2_)
                  {
                     addr82:
                     §§push(§§pop().indexOf(param1) == -1);
                     if(_loc3_)
                     {
                        §§goto(addr89);
                     }
                     addr89:
                     if(§§pop())
                     {
                     }
                     §§goto(addr105);
                  }
                  §§pop().splice(this.§6!L§.indexOf(param1),1);
               }
               §§goto(addr105);
            }
            §§goto(addr82);
         }
         addr105:
         if(_loc3_ || _loc2_)
         {
            §§push(this.§6!L§);
         }
      }
   }
}
