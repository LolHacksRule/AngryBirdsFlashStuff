package §_-Y8§
{
   import §_-0BH§.§_-FK§;
   import flash.external.ExternalInterface;
   
   public class §_-qc§
   {
       
      
      public var §_-nA§:String = "";
      
      private var §_-oO§:Array = null;
      
      public function §_-qc§(param1:String)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            super();
            loop0:
            while(true)
            {
               this.§_-nA§ = param1;
               while(ExternalInterface.available)
               {
                  if(_loc2_ || param1)
                  {
                     if(_loc2_ || _loc2_)
                     {
                     }
                     continue;
                  }
                  continue loop0;
               }
               addr19:
               return;
            }
         }
         while(true)
         {
            ExternalInterface.addCallback(this.§_-nA§,this.§_-dM§);
            §§goto(addr67);
         }
      }
      
      public function §_-dM§(... rest) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc2_:* = null;
         var _loc3_:* = NaN;
         var _loc4_:Function = null;
         if(!(_loc8_ && rest))
         {
            §§push("call through externalInterface! ");
            if(_loc7_)
            {
               §§push(§§pop() + this.§_-nA§);
               if(_loc7_ || _loc2_)
               {
                  §§push(§§pop() + "(");
               }
            }
            _loc2_ = §§pop();
         }
         do
         {
            _loc3_ = Number(0);
         }
         while(_loc8_);
         
         while(true)
         {
            §§push(_loc3_);
            if(!(_loc8_ && _loc3_))
            {
               if(§§pop() >= rest.length)
               {
                  if(!(_loc8_ && _loc2_))
                  {
                     §§push(_loc2_);
                     if(!(_loc8_ && _loc3_))
                     {
                        if(_loc7_)
                        {
                           §§push(")");
                           if(!(_loc8_ && _loc2_))
                           {
                              §§push(§§pop() + §§pop());
                              if(!(_loc8_ && _loc2_))
                              {
                                 _loc2_ = §§pop();
                                 if(_loc7_)
                                 {
                                    §_-FK§.log(_loc2_);
                                    if(!(_loc8_ && this))
                                    {
                                       if(_loc8_)
                                       {
                                          addr125:
                                          continue;
                                       }
                                       if(false)
                                       {
                                          continue;
                                       }
                                       if(this.§_-oO§ != null)
                                       {
                                          if(_loc7_)
                                          {
                                             break;
                                          }
                                       }
                                    }
                                    break;
                                 }
                              }
                              else
                              {
                                 addr137:
                                 _loc2_ = §§pop();
                                 addr136:
                                 if(!(_loc8_ && _loc2_))
                                 {
                                    §§push(_loc3_);
                                    if(_loc7_ || _loc2_)
                                    {
                                       §§push(§§pop() + 1);
                                       if(_loc7_ || this)
                                       {
                                       }
                                       addr124:
                                       _loc3_ = §§pop();
                                       §§goto(addr125);
                                    }
                                    §§goto(addr124);
                                    §§push(Number(§§pop()));
                                 }
                              }
                              §§goto(addr214);
                           }
                           addr135:
                           §§push(§§pop() + §§pop());
                           §§goto(addr136);
                        }
                        else
                        {
                           addr130:
                           §§push(rest[_loc3_] + ",");
                        }
                        §§goto(addr135);
                     }
                     §§goto(addr137);
                  }
                  break;
               }
               §§push(_loc2_);
               §§goto(addr130);
            }
            §§goto(addr124);
         }
         var _loc5_:int = 0;
         if(!(_loc8_ && _loc2_))
         {
            for each(_loc4_ in this.§_-oO§)
            {
               _loc4_.apply(null,rest);
            }
         }
         addr214:
      }
      
      public function addCallback(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            §§push(this.§_-oO§);
            while(true)
            {
               if(§§pop() != null)
               {
                  continue;
               }
               if(_loc3_)
               {
                  this.§_-oO§ = new Array();
               }
            }
         }
         while(true)
         {
            §§goto(addr49);
         }
      }
      
      public function §_-tG§(param1:Function) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.§_-oO§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               if(_loc2_ || _loc2_)
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
                           §§push(this.§_-oO§);
                           if(_loc2_ || param1)
                           {
                              §§push(§§pop().indexOf(param1) == -1);
                              if(_loc2_ || this)
                              {
                                 if(_loc3_ && _loc2_)
                                 {
                                    continue loop5;
                                 }
                                 addr61:
                                 §§push(!§§pop());
                                 while(true)
                                 {
                                    §§goto(addr61);
                                 }
                              }
                              loop2:
                              while(§§pop())
                              {
                                 if(_loc2_)
                                 {
                                    while(true)
                                    {
                                       §§push(this.§_-oO§);
                                       break loop4;
                                    }
                                    addr76:
                                 }
                                 while(true)
                                 {
                                    if(!_loc3_)
                                    {
                                       break loop2;
                                    }
                                    continue loop4;
                                 }
                                 continue loop0;
                              }
                              return;
                           }
                           break;
                        }
                        while(true)
                        {
                           if(!_loc2_)
                           {
                              continue loop0;
                           }
                           §§pop().splice(this.§_-oO§.indexOf(param1),1);
                           §§goto(addr86);
                        }
                     }
                     addr101:
                  }
                  §§goto(addr62);
               }
               §§goto(addr101);
            }
         }
         §§goto(addr76);
      }
   }
}
