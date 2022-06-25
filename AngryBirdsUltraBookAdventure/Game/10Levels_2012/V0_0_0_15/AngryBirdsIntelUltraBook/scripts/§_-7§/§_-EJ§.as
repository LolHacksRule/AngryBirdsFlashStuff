package §_-7§
{
   import §_-Yl§.§_-5q§;
   import §_-eS§.§_-OY§;
   import §_-gU§.Popup;
   import §_-gU§.§_-tk§;
   import §_-wA§.§_-0X§;
   import flash.display.MovieClip;
   import flash.display.Stage;
   
   public class §_-EJ§
   {
      
      protected static var §_-00v§:§_-5q§;
      
      protected static var §_-sI§:StatePopupManager;
      
      public static var §_-8k§:Object;
      
      public static var §_-Uf§:Popup;
      
      public static var §_-0DU§:Boolean;
      
      private static var §_-B6§:Number;
      
      private static var §_-9I§:Number;
       
      
      public function §_-EJ§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            super();
         }
      }
      
      public static function §_-Kf§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(§_-Uf§ == null);
         if(!_loc2_)
         {
            return !§§pop();
         }
      }
      
      public static function initialize(param1:Stage) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(§_-00v§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §_-sI§ = new StatePopupManager();
                     while(true)
                     {
                        §_-00v§ = new §_-0X§(§_-sI§);
                        loop3:
                        for(; !_loc2_; if(!(_loc2_ && param1))
                        {
                           if(!(_loc3_ || _loc3_))
                           {
                              continue loop1;
                           }
                           addr63:
                        },continue,return)
                        {
                           if(!(_loc2_ && param1))
                           {
                              §§push(§_-00v§);
                              while(_loc3_)
                              {
                                 §§pop().init(<xml></xml>,new MovieClip());
                                 loop5:
                                 while(true)
                                 {
                                    §§push(§_-00v§);
                                    if(!(_loc3_ || _loc2_))
                                    {
                                       break;
                                    }
                                    §§pop().activateView();
                                    addr74:
                                    while(true)
                                    {
                                       param1.addChild(§_-00v§.§_-jX§.mClip);
                                       if(!_loc2_)
                                       {
                                          if(!(_loc2_ && _loc2_))
                                          {
                                             continue loop3;
                                          }
                                          continue loop5;
                                       }
                                    }
                                    §§goto(addr63);
                                 }
                              }
                              continue loop0;
                           }
                        }
                     }
                  }
               }
               return;
            }
         }
         §§goto(addr74);
      }
      
      public static function setViewSize(param1:int, param2:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §§push(§_-00v§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §_-B6§ = param1;
                     loop2:
                     while(true)
                     {
                        if(_loc4_)
                        {
                           §_-9I§ = param2;
                           if(!_loc3_)
                           {
                              if(_loc4_ || _loc3_)
                              {
                                 break loop1;
                              }
                              while(!_loc4_)
                              {
                                 while(true)
                                 {
                                    §§push(§_-00v§);
                                    if(!_loc4_)
                                    {
                                       break loop2;
                                    }
                                    continue loop0;
                                 }
                                 continue loop0;
                                 §§pop().viewHeight = §§pop();
                              }
                              continue loop1;
                           }
                           continue;
                        }
                     }
                     addr91:
                     while(true)
                     {
                        §§push(param1);
                        addr92:
                        while(true)
                        {
                           §§pop().viewWidth = §§pop();
                           §§goto(addr93);
                        }
                     }
                  }
                  return;
               }
            }
         }
         while(true)
         {
            §§goto(addr91);
         }
      }
      
      public static function §_-4D§(param1:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §§push(§_-Uf§);
            if(_loc3_ || param1)
            {
               if(§§pop())
               {
                  if(!_loc4_)
                  {
                     addr40:
                     §_-Uf§.close();
                  }
               }
               var _loc2_:§_-g6§ = new §_-g6§(§_-00v§,§_-sI§,param1);
               if(!_loc4_)
               {
                  §_-HI§(_loc2_);
               }
               return;
            }
         }
         §§goto(addr40);
      }
      
      public static function §_-9a§() : §_-Ce§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§_-Ce§ = new §_-Ce§(§_-00v§,§_-sI§);
         if(_loc3_ || §_-EJ§)
         {
            §_-HI§(_loc1_);
         }
         return _loc1_;
      }
      
      public static function §_-QC§(param1:String = null) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         try
         {
            §§push(§§findproperty(§_-HI§));
            §§push(§§findproperty(§_-42§));
            §§push(§_-00v§);
            §§push(§_-sI§);
            if(_loc4_)
            {
               §§push(param1);
               if(_loc4_)
               {
                  §§push(§§pop());
                  if(_loc4_ || §_-EJ§)
                  {
                     addr34:
                     if(!§§pop())
                     {
                        if(!_loc3_)
                        {
                           addr48:
                           §§pop();
                           §§push(§_-42§.§_-aP§);
                           if(_loc4_)
                           {
                              §§push(§§pop());
                           }
                        }
                     }
                     §§pop().§_-HI§(new §§pop().§_-42§(§§pop(),§§pop(),§§pop()));
                     if(_loc4_ || _loc2_)
                     {
                        if(param1 == §_-42§.§_-06o§)
                        {
                           if(_loc4_ || param1)
                           {
                              addr84:
                              §_-OY§.§_-6V§();
                           }
                        }
                        §§goto(addr98);
                     }
                     §§goto(addr84);
                  }
                  §§goto(addr48);
               }
               §§goto(addr34);
            }
            §§goto(addr48);
         }
         catch(e:Error)
         {
         }
         addr98:
      }
      
      public static function §_-L7§() : void
      {
         try
         {
            §_-HI§(new §_-nD§(§_-00v§,§_-sI§));
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §_-8H§() : void
      {
         try
         {
            §_-HI§(new §_-ir§(§_-00v§,§_-sI§));
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §_-74§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §_-HI§(new §_-t6§(§_-00v§,§_-sI§));
         }
      }
      
      public static function §_-05y§(param1:String, param2:String, param3:int, param4:String) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            §_-HI§(new §_-Fz§(§_-00v§,§_-sI§,param1,param2,param3,param4));
         }
      }
      
      private static function §_-HI§(param1:Popup, param2:Boolean = true) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            §§push(§_-Uf§);
            loop0:
            while(true)
            {
               §§push(§§pop() is §_-42§);
               loop1:
               while(true)
               {
                  §§push(§§pop());
                  loop2:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        while(true)
                        {
                           §§pop();
                           addr260:
                           while(true)
                           {
                              §§push(§_-Uf§);
                              addr248:
                              while(true)
                              {
                                 §§push(§§pop() is §_-nD§);
                              }
                           }
                        }
                        addr259:
                     }
                     while(true)
                     {
                        loop7:
                        while(true)
                        {
                           if(!§§pop())
                           {
                              loop8:
                              while(true)
                              {
                                 §§push(§_-Uf§);
                                 loop9:
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       loop10:
                                       while(!_loc3_)
                                       {
                                          §§push(§_-Uf§);
                                          loop11:
                                          for(; !_loc3_; while(!(_loc3_ && _loc3_))
                                          {
                                             §§push(§§pop() is §_-Ce§);
                                             if(_loc4_ || _loc3_)
                                             {
                                                if(_loc3_)
                                                {
                                                   §§goto(addr235);
                                                }
                                                §§goto(addr208);
                                             }
                                             §§goto(addr211);
                                          })
                                          {
                                             §§push(§§pop() is §_-ir§);
                                             while(true)
                                             {
                                                §§push(§§pop());
                                                loop13:
                                                while(true)
                                                {
                                                   if(!§§pop())
                                                   {
                                                      continue loop7;
                                                   }
                                                   addr208:
                                                   while(true)
                                                   {
                                                      §§push(§§pop());
                                                      loop28:
                                                      while(true)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            loop17:
                                                            while(true)
                                                            {
                                                               if(_loc4_)
                                                               {
                                                                  §§pop();
                                                                  loop18:
                                                                  while(true)
                                                                  {
                                                                     §§push(param1 is §_-42§);
                                                                     loop19:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop());
                                                                        if(_loc3_)
                                                                        {
                                                                           continue loop28;
                                                                        }
                                                                        if(_loc3_ && §_-EJ§)
                                                                        {
                                                                           continue loop13;
                                                                        }
                                                                        if(_loc3_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        if(§§pop())
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§push(!§§pop());
                                                                              loop23:
                                                                              while(true)
                                                                              {
                                                                                 if(_loc4_ || param2)
                                                                                 {
                                                                                    if(_loc4_ || _loc3_)
                                                                                    {
                                                                                       loop24:
                                                                                       while(!§§pop())
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§_-Uf§);
                                                                                             if(!_loc3_)
                                                                                             {
                                                                                                if(_loc4_ || _loc3_)
                                                                                                {
                                                                                                   if(_loc3_)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   §§pop().deActivate();
                                                                                                   loop26:
                                                                                                   for(; _loc4_ || §_-EJ§; if(!(_loc4_ || param1))
                                                                                                   {
                                                                                                      continue;
                                                                                                   },if(_loc4_ || param1)
                                                                                                   {
                                                                                                      if(!(_loc3_ && param1))
                                                                                                      {
                                                                                                         §§goto(addr76);
                                                                                                      }
                                                                                                      break loop17;
                                                                                                   })
                                                                                                   {
                                                                                                      loop29:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §_-Uf§ = param1;
                                                                                                         loop30:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc3_)
                                                                                                            {
                                                                                                               break loop24;
                                                                                                            }
                                                                                                            param1.open(param2);
                                                                                                            loop31:
                                                                                                            while(_loc4_)
                                                                                                            {
                                                                                                               if(_loc3_ && param2)
                                                                                                               {
                                                                                                                  return;
                                                                                                               }
                                                                                                               addr252:
                                                                                                               param1.mClip.addEventListener(§_-tk§.§_-C9§,§_-67§);
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(_loc4_ || §_-EJ§)
                                                                                                                  {
                                                                                                                     if(!_loc3_)
                                                                                                                     {
                                                                                                                        continue loop26;
                                                                                                                     }
                                                                                                                     continue loop30;
                                                                                                                  }
                                                                                                                  continue loop31;
                                                                                                                  addr76:
                                                                                                                  setViewSize(§_-B6§,§_-9I§);
                                                                                                                  if(_loc4_)
                                                                                                                  {
                                                                                                                     if(_loc4_)
                                                                                                                     {
                                                                                                                        break loop29;
                                                                                                                     }
                                                                                                                     continue loop18;
                                                                                                                  }
                                                                                                               }
                                                                                                               continue loop26;
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§_-Uf§);
                                                                                                               continue loop11;
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      return;
                                                                                                   }
                                                                                                   if(!_loc3_)
                                                                                                   {
                                                                                                      continue;
                                                                                                   }
                                                                                                   continue loop10;
                                                                                                }
                                                                                                continue loop9;
                                                                                             }
                                                                                             continue loop11;
                                                                                          }
                                                                                          continue loop0;
                                                                                       }
                                                                                       addr163:
                                                                                       return;
                                                                                       addr161:
                                                                                    }
                                                                                    continue loop17;
                                                                                 }
                                                                                 addr184:
                                                                                 while(_loc4_)
                                                                                 {
                                                                                    §§pop();
                                                                                    continue loop23;
                                                                                 }
                                                                                 continue loop7;
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(param1 is §_-nD§);
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       continue loop19;
                                                                                    }
                                                                                    continue loop23;
                                                                                    §§goto(addr62);
                                                                                 }
                                                                                 continue loop1;
                                                                              }
                                                                           }
                                                                           addr145:
                                                                        }
                                                                        §§goto(addr184);
                                                                     }
                                                                     continue loop2;
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr259);
                                                               }
                                                            }
                                                            §§goto(addr260);
                                                            addr211:
                                                         }
                                                         §§goto(addr161);
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          §§goto(addr248);
                                       }
                                       continue loop8;
                                    }
                                    §§goto(addr91);
                                 }
                              }
                           }
                           §§goto(addr252);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr163);
      }
      
      private static function §_-67§(param1:§_-tk§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || §_-EJ§)
         {
            if(param1.§_-l-§ == §_-Uf§)
            {
               if(!(_loc2_ && param1))
               {
                  §_-Uf§ = null;
               }
            }
         }
      }
   }
}
