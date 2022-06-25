package §^!m§
{
   import §!!j§.§5!`§;
   import §!!j§.Popup;
   import §9j§.§2A§;
   import §<-§.§!!K§;
   import §>f§.§&!G§;
   import flash.display.MovieClip;
   import flash.display.Stage;
   
   public class §4!i§
   {
      
      protected static var §1!K§:§&!G§;
      
      protected static var § V§:StatePopupManager;
      
      public static var §'0§:Object;
      
      public static var §'!"§:Popup;
      
      public static var §%D§:Boolean;
      
      private static var §-!G§:Number;
      
      private static var §>J§:Number;
       
      
      public function §4!i§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
      }
      
      public static function §+!V§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(§'!"§ == null);
         if(!(_loc2_ && §4!i§))
         {
            return !§§pop();
         }
      }
      
      public static function initialize(param1:Stage) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(§1!K§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  loop1:
                  while(true)
                  {
                     § V§ = new StatePopupManager();
                     while(_loc2_)
                     {
                        §1!K§ = new §2A§(§ V§);
                        while(!_loc3_)
                        {
                           while(true)
                           {
                              §§push(§1!K§);
                              continue loop0;
                           }
                           loop7:
                           while(!(_loc3_ && §4!i§))
                           {
                              param1.addChild(§1!K§.§^!W§.mClip);
                              if(!(_loc3_ && §4!i§))
                              {
                                 addr36:
                                 if(!(_loc3_ && param1))
                                 {
                                    return;
                                 }
                                 addr92:
                                 while(true)
                                 {
                                    if(_loc2_)
                                    {
                                       §§push(§1!K§);
                                       if(_loc3_)
                                       {
                                          break;
                                       }
                                       §§pop().activateView();
                                       continue loop7;
                                       addr94:
                                    }
                                    continue loop1;
                                    §§goto(addr36);
                                 }
                                 continue loop0;
                              }
                           }
                        }
                     }
                  }
                  addr104:
               }
               return;
            }
         }
         §§goto(addr103);
      }
      
      public static function setViewSize(param1:int, param2:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §§push(§1!K§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  while(true)
                  {
                     §-!G§ = param1;
                     do
                     {
                        §>J§ = param2;
                     }
                     while(!_loc3_);
                     
                     if(!(_loc4_ && param1))
                     {
                        if(!_loc4_)
                        {
                           break;
                        }
                        loop3:
                        while(true)
                        {
                           §§push(§1!K§);
                           if(_loc3_)
                           {
                              continue loop0;
                           }
                           addr96:
                           while(true)
                           {
                              §§pop().viewWidth = §§pop();
                              continue loop3;
                           }
                        }
                        continue loop0;
                     }
                     addr84:
                     while(!(_loc3_ || param1))
                     {
                        while(true)
                        {
                           §§push(§1!K§);
                        }
                     }
                     continue;
                     while(true)
                     {
                        §§goto(addr96);
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr94);
      }
      
      public static function §,!Z§(param1:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc2_)
         {
            §§push(§'!"§);
            if(!_loc4_)
            {
               if(§§pop())
               {
                  if(_loc3_)
                  {
                     addr40:
                     §'!"§.close();
                  }
               }
               var _loc2_:§^!<§ = new §^!<§(§1!K§,§ V§,param1);
               if(!_loc4_)
               {
                  §?!W§(_loc2_);
               }
               return;
            }
         }
         §§goto(addr40);
      }
      
      public static function §+!+§() : §^!S§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§^!S§ = new §^!S§(§1!K§,§ V§);
         if(!(_loc3_ && _loc1_))
         {
            §?!W§(_loc1_);
         }
         return _loc1_;
      }
      
      public static function §>t§(param1:String = null) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         try
         {
            §§push(§§findproperty(§?!W§));
            §§push(§§findproperty(§;0§));
            §§push(§1!K§);
            §§push(§ V§);
            if(!_loc3_)
            {
               §§push(param1);
               if(!(_loc3_ && _loc2_))
               {
                  §§push(§§pop());
                  if(_loc4_ || _loc3_)
                  {
                     if(!§§pop())
                     {
                        if(_loc4_)
                        {
                           addr53:
                           §§pop();
                           §§push(§;0§.§%!P§);
                           if(_loc4_)
                           {
                              §§push(§§pop());
                           }
                        }
                     }
                     §§pop().§?!W§(new §§pop().§;0§(§§pop(),§§pop(),§§pop()));
                     if(_loc4_ || _loc3_)
                     {
                        if(param1 == §;0§.§-!W§)
                        {
                           if(_loc4_)
                           {
                              addr84:
                              §!!K§.§%!,§();
                           }
                        }
                        §§goto(addr98);
                     }
                     §§goto(addr84);
                  }
               }
            }
            §§goto(addr53);
         }
         catch(e:Error)
         {
         }
         addr98:
      }
      
      public static function §<"§() : void
      {
         try
         {
            §?!W§(new §4!_§(§1!K§,§ V§));
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §^!P§() : void
      {
         try
         {
            §?!W§(new §`8§(§1!K§,§ V§));
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §[!g§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §?!W§(new §8!v§(§1!K§,§ V§));
         }
      }
      
      public static function §4!x§(param1:String, param2:String, param3:int, param4:String) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || param2)
         {
            §?!W§(new §]]§(§1!K§,§ V§,param1,param2,param3,param4));
         }
      }
      
      private static function §?!W§(param1:Popup, param2:Boolean = true) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param1))
         {
            §§push(§'!"§);
            while(true)
            {
               §§push(§§pop() is §;0§);
               while(true)
               {
                  §§push(§§pop());
                  while(true)
                  {
                     if(!§§pop())
                     {
                        while(true)
                        {
                           §§pop();
                           addr254:
                           while(true)
                           {
                              §§push(§'!"§);
                              addr242:
                              while(true)
                              {
                                 §§push(§§pop() is §4!_§);
                              }
                           }
                        }
                        addr253:
                     }
                     while(true)
                     {
                        while(true)
                        {
                           if(!§§pop())
                           {
                              loop8:
                              while(true)
                              {
                                 §§push(§'!"§);
                                 if(!_loc4_)
                                 {
                                    if(!§§pop())
                                    {
                                       loop10:
                                       while(true)
                                       {
                                          §'!"§ = param1;
                                          loop11:
                                          while(true)
                                          {
                                             if(!(_loc3_ || param2))
                                             {
                                                if(_loc3_ || param2)
                                                {
                                                   §§goto(addr90);
                                                }
                                                break;
                                             }
                                             if(_loc3_)
                                             {
                                                if(!_loc3_)
                                                {
                                                   continue loop8;
                                                }
                                                param1.open(param2);
                                                while(true)
                                                {
                                                   param1.mClip.addEventListener(§5!`§.§#V§,§%m§);
                                                   while(true)
                                                   {
                                                      if(!_loc4_)
                                                      {
                                                         if(!(_loc3_ || param2))
                                                         {
                                                            break;
                                                         }
                                                         if(_loc4_ && param1)
                                                         {
                                                            return;
                                                         }
                                                         addr246:
                                                         continue;
                                                      }
                                                      continue loop11;
                                                   }
                                                   if(_loc3_)
                                                   {
                                                      continue loop10;
                                                   }
                                                   §§goto(addr239);
                                                }
                                             }
                                             else
                                             {
                                                while(!_loc4_)
                                                {
                                                   §§goto(addr208);
                                                   §§push(§'!"§);
                                                }
                                                §§goto(addr254);
                                                addr205:
                                             }
                                             §§goto(addr208);
                                             §§goto(addr90);
                                          }
                                          while(true)
                                          {
                                             §§goto(addr167);
                                             §§goto(addr198);
                                          }
                                       }
                                    }
                                    §§goto(addr205);
                                 }
                                 §§goto(addr208);
                              }
                           }
                           §§goto(addr246);
                           while(_loc3_ || param1)
                           {
                              §§goto(addr230);
                              §§push(§§pop());
                              §§goto(addr210);
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr154);
      }
      
      private static function §%m§(param1:§5!`§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(param1.§%'§ == §'!"§)
            {
               if(!(_loc3_ && _loc3_))
               {
                  addr29:
                  §'!"§ = null;
               }
            }
            return;
         }
         §§goto(addr29);
      }
   }
}
