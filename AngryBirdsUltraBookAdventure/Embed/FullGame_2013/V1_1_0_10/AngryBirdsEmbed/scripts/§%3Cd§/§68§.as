package §<d§
{
   import §3a§.§7!+§;
   import flash.external.ExternalInterface;
   
   public class §68§
   {
       
      
      public var §;T§:String = "";
      
      private var §6[§:Array = null;
      
      public function §68§(param1:String)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            super();
            if(!_loc2_)
            {
               this.§;T§ = param1;
               if(!_loc2_)
               {
                  addr38:
                  if(ExternalInterface.available)
                  {
                     if(!(_loc2_ && _loc2_))
                     {
                        ExternalInterface.addCallback(this.§;T§,this.§0!2§);
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr38);
      }
      
      public function §0!2§(... rest) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc2_:* = null;
         var _loc3_:* = NaN;
         var _loc4_:Function = null;
         if(_loc7_)
         {
            §§push("call through externalInterface! ");
            if(_loc7_ || rest)
            {
               §§push(§§pop() + this.§;T§);
               if(!(_loc8_ && this))
               {
                  addr44:
                  §§push(§§pop() + "(");
               }
               _loc2_ = §§pop();
               if(!(_loc8_ && _loc3_))
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
                     if(§§pop() >= rest.length)
                     {
                        if(_loc7_)
                        {
                           addr142:
                           _loc2_ += ")";
                           addr140:
                           if(_loc7_ || this)
                           {
                              break;
                           }
                        }
                        §§goto(addr197);
                     }
                     §§push(_loc2_);
                     if(!(_loc8_ && _loc3_))
                     {
                        §§push(rest[_loc3_] + ",");
                        if(!(_loc8_ && _loc2_))
                        {
                           §§push(§§pop() + §§pop());
                           if(!(_loc8_ && this))
                           {
                              §§push(§§pop());
                              if(!(_loc8_ && _loc3_))
                              {
                                 addr105:
                                 _loc2_ = §§pop();
                                 §§push(_loc3_);
                                 if(_loc7_ || _loc2_)
                                 {
                                    §§push(§§pop() + 1);
                                    if(!(_loc8_ && _loc3_))
                                    {
                                       §§push(Number(§§pop()));
                                       if(_loc8_ && this)
                                       {
                                          continue;
                                       }
                                    }
                                    _loc3_ = §§pop();
                                    if(_loc8_)
                                    {
                                       break;
                                    }
                                    continue loop0;
                                 }
                                 continue;
                              }
                              §§goto(addr140);
                           }
                        }
                        §§goto(addr142);
                     }
                     §§goto(addr105);
                     §§goto(addr142);
                  }
                  §7!+§.log(_loc2_);
                  if(this.§6[§ != null)
                  {
                     if(_loc7_ || _loc2_)
                     {
                        var _loc5_:int = 0;
                        if(!_loc8_)
                        {
                           for each(_loc4_ in this.§6[§)
                           {
                              _loc4_.apply(null,rest);
                           }
                        }
                     }
                  }
                  addr197:
                  return;
               }
            }
            §§goto(addr44);
         }
         §§goto(addr54);
      }
      
      public function addCallback(param1:Function) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            §§push(this.§6[§);
            if(_loc2_ || _loc3_)
            {
               if(§§pop() == null)
               {
                  if(_loc2_ || this)
                  {
                     this.§6[§ = new Array();
                     if(!_loc3_)
                     {
                        addr69:
                        this.§6[§.push(param1);
                        addr67:
                     }
                  }
                  return;
               }
               §§goto(addr67);
            }
         }
         §§goto(addr69);
      }
      
      public function §@u§(param1:Function) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.§6[§);
            if(_loc2_ || _loc3_)
            {
               §§push(Boolean(§§pop()));
               if(_loc2_)
               {
                  if(§§pop())
                  {
                     if(!(_loc3_ && this))
                     {
                        §§pop();
                        if(_loc2_ || _loc2_)
                        {
                           §§push(this.§6[§);
                           if(_loc2_)
                           {
                              §§push(§§pop().indexOf(param1) == -1);
                              if(!_loc3_)
                              {
                                 §§goto(addr78);
                              }
                              addr78:
                              if(!§§pop())
                              {
                                 if(_loc2_ || _loc3_)
                                 {
                                 }
                              }
                              §§goto(addr94);
                           }
                           §§goto(addr88);
                        }
                        addr88:
                        §§pop().splice(this.§6[§.indexOf(param1),1);
                        addr94:
                        return;
                        §§push(this.§6[§);
                     }
                  }
               }
               §§goto(addr78);
            }
            §§goto(addr88);
         }
         §§goto(addr94);
      }
   }
}
