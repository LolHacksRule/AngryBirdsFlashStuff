package §6a§
{
   import §0!Q§.UIComponentRovio;
   import §=!5§.§`X§;
   import flash.display.MovieClip;
   
   public class UIRepeaterTabRovio extends UIContainerRovio
   {
       
      
      public var §]Y§:int;
      
      public var §"=§:int;
      
      public var §,C§:int;
      
      public var §@!]§:int;
      
      public var §6d§:Number;
      
      public var §@p§:Number;
      
      public var §"c§:Number;
      
      public var §05§:Number;
      
      public var §9Y§:Number;
      
      public function UIRepeaterTabRovio(param1:XML, param2:UIContainerRovio, param3:§`X§, param4:MovieClip = null)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            super(param1,param2,param3,param4);
         }
         do
         {
            §`!X§ = true;
         }
         while(_loc5_ && param1);
         
      }
      
      public function §-W§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(!(_loc9_ && param1))
         {
            this.§,C§ = param6;
            loop0:
            while(true)
            {
               this.§@!]§ = param1 * this.§,C§;
               while(true)
               {
                  this.§9Y§ = param7;
                  loop2:
                  while(!(_loc9_ && param3))
                  {
                     this.§"c§ = param2;
                     loop3:
                     while(true)
                     {
                        this.§05§ = param3;
                        while(true)
                        {
                           this.§6d§ = param4;
                           loop5:
                           while(_loc8_)
                           {
                              this.§@p§ = param5;
                              loop6:
                              while(true)
                              {
                                 §§push(false);
                                 loop7:
                                 while(true)
                                 {
                                    §§push(Boolean(§§pop()));
                                    loop8:
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       if(_loc8_ || this)
                                       {
                                          §§push(Boolean(§§pop()));
                                       }
                                       if(!§§pop())
                                       {
                                          while(true)
                                          {
                                             if(!§§pop())
                                             {
                                                this.§"=§ = 1;
                                                loop12:
                                                while(true)
                                                {
                                                   if(_loc9_ && this)
                                                   {
                                                      while(true)
                                                      {
                                                         if(!_loc8_)
                                                         {
                                                            loop10:
                                                            while(true)
                                                            {
                                                               §§push(param1 == param7);
                                                               if(!_loc8_)
                                                               {
                                                                  continue loop7;
                                                               }
                                                               addr121:
                                                               if(!(_loc9_ && param1))
                                                               {
                                                                  if(!_loc8_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  §§push(Boolean(§§pop()));
                                                                  continue loop7;
                                                               }
                                                               addr175:
                                                               while(true)
                                                               {
                                                                  §§pop();
                                                                  continue loop10;
                                                                  §§goto(addr121);
                                                               }
                                                            }
                                                            continue loop8;
                                                         }
                                                         if(_loc9_)
                                                         {
                                                            break;
                                                         }
                                                         if(_loc9_)
                                                         {
                                                            continue loop2;
                                                         }
                                                         this.§"=§ = Math.max(1,Math.ceil(§]6§.length / this.§@!]§));
                                                      }
                                                      continue loop6;
                                                      addr140:
                                                   }
                                                   if(_loc9_)
                                                   {
                                                      break;
                                                   }
                                                   while(true)
                                                   {
                                                      if(§]6§.length <= this.§@!]§)
                                                      {
                                                         do
                                                         {
                                                            this.§0!K§(0);
                                                            if(!(_loc8_ || param3))
                                                            {
                                                               continue loop3;
                                                            }
                                                         }
                                                         while(!(_loc8_ || param3));
                                                         
                                                         addr28:
                                                         if(_loc8_)
                                                         {
                                                            addr49:
                                                            if(_loc9_)
                                                            {
                                                               while(true)
                                                               {
                                                                  §§goto(addr28);
                                                                  §§goto(addr49);
                                                               }
                                                               addr161:
                                                            }
                                                            if(!_loc9_)
                                                            {
                                                               return;
                                                            }
                                                            continue loop0;
                                                         }
                                                         continue loop12;
                                                      }
                                                      while(true)
                                                      {
                                                         this.§"=§ += Math.ceil((§]6§.length - this.§@!]§) / (this.§,C§ * this.§9Y§));
                                                         continue loop3;
                                                      }
                                                   }
                                                   §§goto(addr161);
                                                }
                                                continue loop5;
                                             }
                                             §§goto(addr140);
                                          }
                                          addr138:
                                       }
                                       §§goto(addr175);
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr114);
      }
      
      public function §0!K§(param1:int) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && this))
         {
            §§push(param1);
            if(_loc5_)
            {
               §§push(0);
               loop0:
               while(true)
               {
                  if(§§pop() < §§pop())
                  {
                     while(true)
                     {
                        §§push(0);
                        addr97:
                        while(true)
                        {
                           §§push(int(§§pop()));
                           addr98:
                           while(true)
                           {
                              param1 = §§pop();
                              addr99:
                              while(true)
                              {
                              }
                           }
                        }
                     }
                     addr96:
                  }
                  while(true)
                  {
                     §§push(param1);
                     if(!_loc6_)
                     {
                        if(!(_loc6_ && _loc2_))
                        {
                           §§push(this.§"=§);
                           if(_loc5_)
                           {
                              if(§§pop() >= §§pop())
                              {
                                 if(!(_loc6_ && param1))
                                 {
                                    §§push(this.§"=§);
                                    if(_loc5_)
                                    {
                                       addr72:
                                       §§push(1);
                                       if(!_loc6_)
                                       {
                                          §§push(§§pop() - §§pop());
                                          if(_loc5_ || this)
                                          {
                                             §§push(int(§§pop()));
                                             if(_loc5_)
                                             {
                                                addr85:
                                                if(_loc5_)
                                                {
                                                   param1 = §§pop();
                                                   while(true)
                                                   {
                                                      if(!_loc6_)
                                                      {
                                                         continue;
                                                      }
                                                      §§goto(addr96);
                                                   }
                                                   §§goto(addr99);
                                                   addr88:
                                                }
                                                §§goto(addr98);
                                             }
                                             §§goto(addr104);
                                          }
                                          break;
                                       }
                                       continue loop0;
                                    }
                                    §§goto(addr104);
                                 }
                                 §§goto(addr88);
                              }
                              §§goto(addr24);
                           }
                           §§goto(addr72);
                        }
                        §§goto(addr97);
                     }
                     §§goto(addr85);
                  }
                  §§goto(addr112);
               }
            }
            §§goto(addr104);
         }
         §§goto(addr99);
      }
   }
}
