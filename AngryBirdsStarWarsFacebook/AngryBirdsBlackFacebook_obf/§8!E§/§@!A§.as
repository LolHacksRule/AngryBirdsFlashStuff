package §8!E§
{
   import §"a§.§6#!§;
   import §+D§.§ #^§;
   import §<w§.§6#'§;
   import §="2§.§?!r§;
   
   public class §@!A§
   {
      
      private static const §9!`§:Number = 50;
      
      private static const §68§:Number = 0.05;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §9!`§ = 50;
            do
            {
               §68§ = 0.05;
            }
            while(_loc1_);
            
         }
      }
      
      private var §>#C§:Number = 0;
      
      private var §-!3§:Number = 0;
      
      protected var §=#=§:§ #^§;
      
      protected var § F§:§6#!§;
      
      public function §@!A§(param1:§ #^§)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            super();
            do
            {
               this.init(param1);
            }
            while(_loc3_);
            
         }
      }
      
      public function set §'!X§(param1:§6#!§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§ F§ = param1;
         }
      }
      
      protected function init(param1:§ #^§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§=#=§ = param1;
         }
         do
         {
            this.§=#=§.addEventListener(§6#'§.§+!>§,this.onUIInteraction);
         }
         while(!_loc2_);
         
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.§=#=§.removeEventListener(§6#'§.§+!>§,this.onUIInteraction);
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            §§push(this.§ F§);
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
                           §§push(this.§>#C§);
                           while(true)
                           {
                              §§push(Boolean(§§pop()));
                              if(_loc3_)
                              {
                                 break;
                              }
                              if(!(_loc2_ || param1))
                              {
                                 continue loop1;
                              }
                              while(true)
                              {
                                 §§push(this.§-!3§);
                                 if(!_loc2_)
                                 {
                                    break;
                                 }
                                 if(§§pop() <= §9!`§)
                                 {
                                    return;
                                 }
                                 addr24:
                                 addr24:
                                 continue loop0;
                                 loop9:
                                 while(!(_loc3_ && this))
                                 {
                                    this.§-!3§ = 0;
                                    if(!(_loc2_ || _loc3_))
                                    {
                                       continue;
                                    }
                                    if(_loc3_)
                                    {
                                       continue loop0;
                                    }
                                    addr41:
                                    if(_loc2_ || _loc2_)
                                    {
                                       if(_loc3_)
                                       {
                                          continue loop3;
                                       }
                                       §§goto(addr24);
                                    }
                                    else
                                    {
                                       addr104:
                                       while(true)
                                       {
                                          §§push(this);
                                          §§push(this.§-!3§);
                                          if(!(_loc3_ && this))
                                          {
                                             §§push(§§pop() + param1);
                                          }
                                          §§pop().§-!3§ = §§pop();
                                          break loop9;
                                          §§goto(addr41);
                                       }
                                       addr104:
                                    }
                                 }
                              }
                           }
                           continue loop2;
                        }
                     }
                  }
                  while(§§pop())
                  {
                     §§goto(addr104);
                  }
                  §§goto(addr24);
               }
            }
         }
         §§goto(addr104);
      }
      
      protected function onUIInteraction(param1:§6#'§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = param1.§=!k§;
         if(_loc4_ || _loc3_)
         {
            if("ZOOM_IN" !== _loc2_)
            {
               if("ZOOM_OUT" === _loc2_)
               {
                  if(_loc4_)
                  {
                     addr132:
                     §§push(1);
                     if(!(_loc4_ || _loc2_))
                     {
                        §§goto(addr171);
                     }
                  }
                  else
                  {
                     addr146:
                     §§push(2);
                     if(_loc3_)
                     {
                     }
                  }
               }
               else
               {
                  if("ZOOM_IN_RELEASE" === _loc2_)
                  {
                     if(_loc4_)
                     {
                        §§goto(addr146);
                     }
                     else
                     {
                        §§goto(addr153);
                     }
                  }
                  else if("ZOOM_OUT_RELEASE" === _loc2_)
                  {
                     §§goto(addr153);
                  }
                  else
                  {
                     §§push(4);
                  }
                  §§goto(addr153);
               }
               addr176:
               loop2:
               switch(§§pop())
               {
                  case 0:
                     §?!r§.§"#_§("misc_menubuttonproceed_1");
                     if(!_loc3_)
                     {
                        this.§>#C§ = §68§;
                        this.§-!3§ = §9!`§;
                        addr76:
                        break;
                        addr76:
                        addr81:
                     }
                     break;
                  case 1:
                     §?!r§.§"#_§("misc_menubuttonproceed_1");
                     loop0:
                     while(true)
                     {
                        §§push(this);
                        §§push(§68§);
                        if(!_loc3_)
                        {
                           §§push(-§§pop());
                        }
                        §§pop().§>#C§ = §§pop();
                        if(_loc4_)
                        {
                           if(_loc4_)
                           {
                              this.§-!3§ = §9!`§;
                              while(true)
                              {
                                 if(_loc4_)
                                 {
                                    addr30:
                                    break loop2;
                                 }
                                 continue loop0;
                              }
                              addr50:
                           }
                           else
                           {
                              §§goto(addr76);
                           }
                        }
                        break loop2;
                     }
                     break;
                  case 2:
                     this.§>#C§ = 0;
                     addr36:
                     if(!_loc3_)
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           break;
                        }
                        §§goto(addr81);
                     }
                     else
                     {
                        §§goto(addr50);
                     }
                     §§goto(addr76);
                  case 3:
                     this.§>#C§ = 0;
                     if(!_loc3_)
                     {
                        if(!_loc3_)
                        {
                           if(true)
                           {
                              break;
                           }
                        }
                        else
                        {
                           §§goto(addr36);
                        }
                        §§goto(addr30);
                     }
               }
               return;
            }
            if(!(_loc3_ && this))
            {
               §§push(0);
               if(_loc3_)
               {
                  addr171:
               }
            }
            else
            {
               addr153:
               §§push(3);
               if(!(_loc3_ && this))
               {
                  §§goto(addr171);
               }
            }
            §§goto(addr176);
            §§goto(addr153);
         }
         §§goto(addr132);
      }
   }
}
