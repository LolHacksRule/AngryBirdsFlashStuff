package §>L§
{
   import §1!B§.§<m§;
   import flash.external.ExternalInterface;
   
   public class § !2§
   {
       
      
      public var §;!E§:String = "";
      
      private var §'`§:Array = null;
      
      public function § !2§(param1:String)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            super();
            while(true)
            {
               this.§;!E§ = param1;
            }
            addr83:
         }
         for(; ExternalInterface.available; if(!(_loc3_ || this))
         {
            continue;
         },ExternalInterface.addCallback(this.§;!E§,this.§ !K§),§§goto(addr73))
         {
            if(!(_loc2_ && _loc3_))
            {
               continue;
            }
            addr73:
            if(_loc3_)
            {
               break;
            }
            §§goto(addr83);
         }
      }
      
      public function § !K§(... rest) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc2_:* = null;
         var _loc3_:Number = NaN;
         var _loc4_:Function = null;
         if(_loc7_)
         {
            §§push("call through externalInterface! ");
            if(!(_loc8_ && rest))
            {
               §§push(§§pop() + this.§;!E§);
               if(!(_loc8_ && _loc2_))
               {
                  §§push(§§pop() + "(");
               }
            }
            _loc2_ = §§pop();
         }
         do
         {
            _loc3_ = 0;
         }
         while(!(_loc7_ || this));
         
         loop1:
         while(true)
         {
            §§push(_loc3_);
            if(_loc7_ || rest)
            {
               if(§§pop() >= rest.length)
               {
                  if(_loc7_)
                  {
                     §§push(_loc2_);
                     if(_loc7_)
                     {
                        if(!(_loc8_ && this))
                        {
                           §§push(")");
                           if(_loc7_ || _loc3_)
                           {
                              §§push(§§pop() + §§pop());
                              if(_loc7_ || this)
                              {
                                 _loc2_ = §§pop();
                                 while(true)
                                 {
                                    §<m§.log(_loc2_);
                                    if(_loc8_ && _loc2_)
                                    {
                                       break;
                                    }
                                    if(_loc7_)
                                    {
                                       if(_loc7_ || rest)
                                       {
                                          if(true)
                                          {
                                             if(this.§'`§ != null)
                                             {
                                                if(!(_loc8_ && _loc3_))
                                                {
                                                   var _loc5_:int = 0;
                                                   if(!_loc8_)
                                                   {
                                                      for each(_loc4_ in this.§'`§)
                                                      {
                                                         _loc4_.apply(null,rest);
                                                      }
                                                   }
                                                   break;
                                                }
                                                break;
                                             }
                                             break;
                                          }
                                       }
                                       else
                                       {
                                          addr115:
                                       }
                                       continue loop1;
                                    }
                                 }
                              }
                              §§goto(addr214);
                           }
                           else
                           {
                              addr125:
                              §§push(§§pop() + §§pop());
                           }
                           addr127:
                           _loc2_ = §§pop();
                           if(!(_loc8_ && this))
                           {
                              §§push(_loc3_);
                              if(!(_loc8_ && _loc3_))
                              {
                                 §§push(§§pop() + 1);
                                 if(!_loc8_)
                                 {
                                    addr114:
                                    _loc3_ = §§pop();
                                    §§goto(addr115);
                                 }
                              }
                              §§goto(addr114);
                           }
                           else
                           {
                              §§goto(addr214);
                           }
                        }
                        else
                        {
                           addr120:
                           §§push(rest[_loc3_] + ",");
                        }
                        §§goto(addr125);
                     }
                     §§goto(addr127);
                  }
                  addr214:
                  return;
               }
               §§push(_loc2_);
               §§goto(addr120);
            }
            §§goto(addr114);
         }
      }
      
      public function addCallback(param1:Function) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            §§push(this.§'`§);
            loop0:
            while(true)
            {
               if(§§pop() != null)
               {
                  continue;
               }
               if(_loc2_ || param1)
               {
                  this.§'`§ = new Array();
               }
               while(true)
               {
                  continue loop0;
                  addr53:
                  §§pop().push(param1);
                  if(!(_loc3_ && param1))
                  {
                     return;
                     addr62:
                  }
               }
            }
         }
         §§goto(addr62);
      }
      
      public function §=+§(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            §§push(this.§'`§);
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
                           §§push(this.§'`§);
                           if(!_loc2_)
                           {
                              if(_loc2_)
                              {
                                 break;
                              }
                              §§push(§§pop().indexOf(param1) == -1);
                              if(!(_loc2_ && this))
                              {
                                 if(!(_loc3_ || this))
                                 {
                                    continue loop2;
                                 }
                                 §§push(!§§pop());
                              }
                              if(_loc3_ || param1)
                              {
                                 while(§§pop())
                                 {
                                    if(!_loc2_)
                                    {
                                       if(_loc3_)
                                       {
                                          addr90:
                                          this.§'`§.splice(this.§'`§.indexOf(param1),1);
                                          addr96:
                                          break;
                                       }
                                       continue loop3;
                                    }
                                    §§goto(addr96);
                                 }
                                 return;
                                 addr82:
                              }
                              continue loop1;
                           }
                           §§goto(addr90);
                        }
                        continue loop0;
                     }
                  }
                  §§goto(addr82);
               }
            }
         }
         §§goto(addr90);
      }
   }
}
