package §<"8§
{
   import §0N§.§2!@§;
   import flash.external.ExternalInterface;
   
   public class §"I§
   {
       
      
      public var §@!W§:String = "";
      
      private var §2!A§:Array = null;
      
      public function §"I§(param1:String)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super();
            while(true)
            {
               this.§@!W§ = param1;
               loop1:
               while(_loc3_ || _loc3_)
               {
                  while(ExternalInterface.available)
                  {
                     if(_loc2_)
                     {
                        break;
                     }
                     addr53:
                     if(_loc2_ && _loc3_)
                     {
                        continue loop1;
                     }
                     ExternalInterface.addCallback(this.§@!W§,this.§"",§);
                     §§goto(addr53);
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr75);
      }
      
      public function §"",§(... rest) : *
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc3_:* = null;
         var _loc4_:Number = NaN;
         var _loc5_:Function = null;
         if(!(_loc9_ && _loc3_))
         {
            §§push("call through externalInterface! " + this.§@!W§);
            if(!_loc9_)
            {
               §§push(§§pop() + "(");
            }
            _loc3_ = §§pop();
            do
            {
               _loc4_ = 0;
            }
            while(_loc9_ && this);
            
         }
         loop1:
         while(true)
         {
            §§push(_loc4_);
            if(!(_loc9_ && _loc2_))
            {
               if(_loc8_ || rest)
               {
                  if(§§pop() >= rest.length)
                  {
                     loop2:
                     while(true)
                     {
                        §§push(_loc3_);
                        if(!(_loc9_ && this))
                        {
                           if(!_loc9_)
                           {
                              §§push(§§pop() + ")");
                              if(!(_loc9_ && _loc2_))
                              {
                                 _loc3_ = §§pop();
                                 while(!(_loc9_ && _loc3_))
                                 {
                                    §2!@§.log(_loc3_);
                                    if(_loc8_ || _loc2_)
                                    {
                                       if(!_loc9_)
                                       {
                                          if(!(_loc8_ || _loc3_))
                                          {
                                             §§push(_loc4_);
                                             if(_loc8_ || _loc2_)
                                             {
                                                §§push(§§pop() + 1);
                                             }
                                          }
                                          else
                                          {
                                             addr136:
                                          }
                                          if(true)
                                          {
                                             break loop1;
                                          }
                                          continue loop1;
                                          _loc4_ = §§pop();
                                          break;
                                       }
                                       continue loop2;
                                    }
                                 }
                                 continue loop1;
                              }
                           }
                           else
                           {
                              addr128:
                              §§push(§§pop() + (rest[_loc4_] + ","));
                           }
                           §§push(§§pop());
                           break;
                        }
                        break;
                     }
                     _loc3_ = §§pop();
                     §§goto(addr136);
                  }
                  else
                  {
                     §§push(_loc3_);
                  }
                  §§goto(addr128);
               }
            }
            §§goto(addr136);
         }
         var _loc2_:* = undefined;
         if(!(_loc9_ && rest))
         {
            if(this.§2!A§ != null)
            {
               if(_loc8_)
               {
                  addr175:
                  var _loc6_:int = 0;
                  if(_loc8_)
                  {
                     for each(_loc5_ in this.§2!A§)
                     {
                        _loc2_ = _loc5_.apply(null,rest);
                     }
                  }
               }
            }
            return _loc2_;
         }
         §§goto(addr175);
      }
      
      public function addCallback(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§2!A§);
            while(true)
            {
               if(§§pop() != null)
               {
                  continue;
               }
            }
         }
         §§goto(addr70);
      }
      
      public function §@!`§(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            §§push(this.§2!A§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               if(!_loc2_)
               {
                  if(§§pop())
                  {
                     loop5:
                     while(true)
                     {
                        §§pop();
                        loop4:
                        while(true)
                        {
                           §§push(this.§2!A§);
                           if(_loc3_ || this)
                           {
                              §§push(§§pop().indexOf(param1) == -1);
                              if(!(_loc2_ && this))
                              {
                                 if(!(_loc3_ || this))
                                 {
                                    continue loop5;
                                 }
                                 addr67:
                                 §§push(!§§pop());
                                 while(true)
                                 {
                                    §§goto(addr67);
                                 }
                              }
                              loop2:
                              while(§§pop())
                              {
                                 if(_loc2_ && _loc3_)
                                 {
                                    while(true)
                                    {
                                       if(!_loc2_)
                                       {
                                          break loop2;
                                       }
                                       continue loop4;
                                    }
                                    continue loop0;
                                    addr92:
                                 }
                                 while(true)
                                 {
                                    §§push(this.§2!A§);
                                    break loop4;
                                 }
                              }
                              return;
                           }
                           break;
                        }
                        continue loop0;
                     }
                     addr112:
                  }
                  §§goto(addr68);
               }
               §§goto(addr112);
            }
         }
         §§goto(addr77);
      }
   }
}
