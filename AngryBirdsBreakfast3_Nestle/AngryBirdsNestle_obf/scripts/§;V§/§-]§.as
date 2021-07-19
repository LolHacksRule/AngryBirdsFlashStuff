package §;V§
{
   import §24§.;
   import flash.external.ExternalInterface;
   
   public class §-]§
   {
       
      
      public var §with§:String = "";
      
      private var §`"6§:Array = null;
      
      public function §-]§(param1:String)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            super();
            loop0:
            while(true)
            {
               this.§with§ = param1;
               while(ExternalInterface.available)
               {
                  if(_loc3_)
                  {
                     continue loop0;
                  }
                  if(!(_loc2_ && param1))
                  {
                     addr70:
                     break;
                  }
               }
               return;
            }
         }
         §§goto(addr70);
      }
      
      public function §-S§(... rest) : *
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc3_:* = null;
         var _loc4_:Number = NaN;
         var _loc5_:Function = null;
         if(_loc9_ || this)
         {
            §§push("call through externalInterface! " + this.§with§);
            if(!(_loc8_ && _loc2_))
            {
               §§push(§§pop() + "(");
            }
            _loc3_ = §§pop();
            do
            {
               _loc4_ = 0;
            }
            while(_loc8_);
            
         }
         loop1:
         while(true)
         {
            §§push(_loc4_);
            if(!_loc8_)
            {
               if(_loc9_)
               {
                  if(_loc9_ || _loc3_)
                  {
                     if(§§pop() >= rest.length)
                     {
                        loop2:
                        while(true)
                        {
                           §§push(_loc3_);
                           if(!(_loc8_ && this))
                           {
                              if(_loc9_ || _loc3_)
                              {
                                 §§push(§§pop() + ")");
                                 if(!_loc8_)
                                 {
                                    _loc3_ = §§pop();
                                    while(!(_loc8_ && _loc2_))
                                    {
                                       if(_loc8_ && rest)
                                       {
                                          _loc4_++;
                                       }
                                       else
                                       {
                                          addr122:
                                       }
                                       §#7§.log(_loc3_);
                                       if(_loc9_)
                                       {
                                          if(_loc9_)
                                          {
                                             if(true)
                                             {
                                                break loop1;
                                             }
                                             continue loop1;
                                          }
                                          continue loop2;
                                       }
                                    }
                                    continue loop1;
                                 }
                              }
                              else
                              {
                                 addr114:
                                 §§push(§§pop() + (rest[_loc4_] + ","));
                              }
                              §§push(§§pop());
                              break;
                           }
                           break;
                        }
                        _loc3_ = §§pop();
                        §§goto(addr122);
                     }
                     else
                     {
                        §§push(_loc3_);
                     }
                     §§goto(addr114);
                  }
               }
            }
            §§goto(addr122);
         }
         var _loc2_:* = null;
         if(_loc9_)
         {
            if(this.§`"6§ != null)
            {
               if(_loc9_ || _loc3_)
               {
                  var _loc6_:int = 0;
                  if(!(_loc8_ && this))
                  {
                     for each(_loc5_ in this.§`"6§)
                     {
                        _loc2_ = _loc5_.apply(null,rest);
                     }
                  }
               }
            }
         }
         return _loc2_;
      }
      
      public function addCallback(param1:Function) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§`"6§);
            loop0:
            while(true)
            {
               if(§§pop() == null)
               {
                  while(true)
                  {
                     this.§`"6§ = new Array();
                     addr95:
                     while(true)
                     {
                     }
                  }
                  addr91:
               }
               loop3:
               while(true)
               {
                  §§push(this.§`"6§);
                  if(_loc2_ || param1)
                  {
                     if(!_loc2_)
                     {
                        continue loop0;
                     }
                     §§push(param1);
                     if(!(_loc3_ && param1))
                     {
                        if(§§pop().indexOf(§§pop()) == -1)
                        {
                           if(!_loc3_)
                           {
                              if(_loc2_ || param1)
                              {
                                 while(true)
                                 {
                                    §§push(this.§`"6§);
                                    addr67:
                                    while(true)
                                    {
                                       §§push(param1);
                                       addr68:
                                       while(true)
                                       {
                                          §§pop().push(§§pop());
                                          addr69:
                                          while(true)
                                          {
                                             if(!(_loc3_ && _loc3_))
                                             {
                                                break loop3;
                                             }
                                          }
                                       }
                                    }
                                 }
                                 addr65:
                              }
                              else
                              {
                                 §§goto(addr91);
                              }
                              §§goto(addr95);
                           }
                           §§goto(addr69);
                        }
                        §§goto(addr19);
                     }
                     §§goto(addr68);
                  }
                  §§goto(addr67);
               }
               addr19:
               return;
            }
         }
         §§goto(addr65);
      }
      
      public function §[u§(param1:Function) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§`"6§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        loop3:
                        while(true)
                        {
                           §§push(this.§`"6§);
                           if(!(_loc3_ && param1))
                           {
                              §§push(§§pop().indexOf(param1) == -1);
                              if(_loc2_)
                              {
                                 if(_loc3_ && _loc3_)
                                 {
                                    continue loop2;
                                 }
                                 §§push(!§§pop());
                              }
                              if(_loc2_)
                              {
                                 loop4:
                                 while(§§pop())
                                 {
                                    if(_loc2_ || _loc2_)
                                    {
                                       while(true)
                                       {
                                          §§push(this.§`"6§);
                                          addr70:
                                          while(true)
                                          {
                                             if(!_loc2_)
                                             {
                                                continue loop0;
                                             }
                                             §§pop().splice(this.§`"6§.indexOf(param1),1);
                                          }
                                       }
                                       addr68:
                                    }
                                    while(true)
                                    {
                                       if(!(_loc3_ && _loc3_))
                                       {
                                          break loop4;
                                       }
                                       continue loop3;
                                    }
                                 }
                                 return;
                                 addr59:
                              }
                              break;
                           }
                           §§goto(addr70);
                        }
                        continue loop1;
                     }
                  }
                  §§goto(addr59);
               }
            }
         }
         §§goto(addr68);
      }
      
      public function get §%!D§() : int
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §§push(this.§`"6§);
            if(!(_loc1_ && _loc2_))
            {
               if(!§§pop())
               {
                  if(_loc2_)
                  {
                     §§goto(addr56);
                  }
               }
               §§push(this.§`"6§);
            }
            return §§pop().length;
         }
         addr56:
         return 0;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            ExternalInterface.addCallback(this.§with§,null);
         }
      }
   }
}
