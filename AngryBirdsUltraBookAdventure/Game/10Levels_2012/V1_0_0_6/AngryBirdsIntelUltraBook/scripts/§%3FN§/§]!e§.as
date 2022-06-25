package §?N§
{
   import §,B§.§-!0§;
   import §,B§.Popup;
   import §8!;§.§`7§;
   import §[!+§.§4`§;
   import §]+§.§@!J§;
   import flash.display.MovieClip;
   import flash.display.Stage;
   
   public class §]!e§
   {
      
      protected static var §8!D§:§4`§;
      
      protected static var §;B§:StatePopupManager;
      
      public static var §[Q§:Object;
      
      public static var §implements§:Popup;
      
      public static var §8S§:Boolean;
      
      private static var §finally§:Number;
      
      private static var §3v§:Number;
       
      
      public function §]!e§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            super();
         }
      }
      
      public static function §`!V§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(§implements§ == null);
         if(_loc1_)
         {
            return !§§pop();
         }
      }
      
      public static function initialize(param1:Stage) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(§8!D§);
            loop0:
            while(!§§pop())
            {
               loop1:
               while(true)
               {
                  §;B§ = new StatePopupManager();
                  addr117:
                  loop2:
                  while(true)
                  {
                     §8!D§ = new §`7§(§;B§);
                     while(true)
                     {
                        if(!(_loc3_ || _loc3_))
                        {
                           continue loop2;
                        }
                        if(_loc2_ && param1)
                        {
                           break;
                        }
                        §§push(§8!D§);
                        while(true)
                        {
                           if(_loc3_)
                           {
                              §§pop().init(<xml></xml>,new MovieClip());
                              continue;
                           }
                           continue loop0;
                        }
                     }
                     continue loop1;
                  }
               }
            }
            return;
         }
         §§goto(addr117);
      }
      
      public static function setViewSize(param1:int, param2:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || §]!e§)
         {
            §§push(§8!D§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §§push(§8!D§);
                     loop2:
                     while(true)
                     {
                        §§push(param1);
                        loop3:
                        while(true)
                        {
                           §§pop().viewWidth = §§pop();
                           while(true)
                           {
                              §§push(§8!D§);
                              if(!_loc3_)
                              {
                                 break;
                              }
                              if(_loc3_)
                              {
                                 §§push(param2);
                                 if(_loc3_)
                                 {
                                    §§pop().viewHeight = §§pop();
                                    loop5:
                                    while(_loc3_)
                                    {
                                       while(true)
                                       {
                                          §3v§ = param2;
                                          if(_loc3_)
                                          {
                                             if(!(_loc4_ && param2))
                                             {
                                                if(_loc3_)
                                                {
                                                   break;
                                                }
                                                continue loop1;
                                             }
                                             continue loop5;
                                          }
                                       }
                                       return;
                                    }
                                    continue;
                                 }
                                 continue loop3;
                              }
                              continue loop0;
                           }
                           continue loop2;
                        }
                     }
                  }
               }
               while(true)
               {
                  §finally§ = param1;
               }
            }
         }
         §§goto(addr68);
      }
      
      public static function §+u§(param1:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §§push(§implements§);
            if(!_loc4_)
            {
               if(!§§pop())
               {
               }
               §§goto(addr41);
            }
            §§pop().close();
         }
         addr41:
         if(!(_loc4_ && _loc2_))
         {
            §§push(§implements§);
         }
         var _loc2_:§##§ = new §##§(§8!D§,§;B§,param1);
         if(!_loc4_)
         {
            §-j§(_loc2_);
         }
      }
      
      public static function §>§() : §?1§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§?1§ = new §?1§(§8!D§,§;B§);
         if(!_loc3_)
         {
            §-j§(_loc1_);
         }
         return _loc1_;
      }
      
      public static function §>k§(param1:String = null) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         try
         {
            §§push(§§findproperty(§-j§));
            §§push(§§findproperty(§!!m§));
            §§push(§8!D§);
            §§push(§;B§);
            if(_loc3_ || _loc2_)
            {
               §§push(param1);
               if(_loc3_ || _loc3_)
               {
                  §§push(§§pop());
                  if(_loc3_)
                  {
                     if(!§§pop())
                     {
                        if(!(_loc4_ && param1))
                        {
                           addr57:
                           §§pop();
                           §§push(§!!m§.§^![§);
                           if(!_loc4_)
                           {
                              addr62:
                              §§push(§§pop());
                           }
                        }
                        §§goto(addr62);
                     }
                     §§pop().§-j§(new §§pop().§!!m§(§§pop(),§§pop(),§§pop()));
                     if(!_loc4_)
                     {
                        if(param1 == §!!m§.§[!x§)
                        {
                           if(_loc3_ || _loc2_)
                           {
                              §@!J§.§"!C§();
                           }
                        }
                     }
                     §§goto(addr102);
                  }
                  §§goto(addr62);
               }
            }
            §§goto(addr57);
         }
         catch(e:Error)
         {
         }
         addr102:
      }
      
      public static function §1!&§() : void
      {
         try
         {
            §-j§(new §@S§(§8!D§,§;B§));
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §-!1§() : void
      {
         try
         {
            §-j§(new §[Y§(§8!D§,§;B§));
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §2L§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §-j§(new §@!1§(§8!D§,§;B§));
         }
      }
      
      public static function §@!'§(param1:String, param2:String, param3:int, param4:String) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && param1))
         {
            §-j§(new §0F§(§8!D§,§;B§,param1,param2,param3,param4));
         }
      }
      
      private static function §-j§(param1:Popup, param2:Boolean = true) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §§push(§implements§);
            loop0:
            while(true)
            {
               §§push(§§pop() is §!!m§);
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
                           addr250:
                           while(true)
                           {
                              §§push(§implements§);
                              addr238:
                              while(true)
                              {
                                 §§push(§§pop() is §@S§);
                              }
                           }
                        }
                        addr249:
                     }
                     while(true)
                     {
                        loop7:
                        while(!§§pop())
                        {
                           while(true)
                           {
                              §§push(§implements§);
                              if(!_loc3_)
                              {
                                 if(§§pop())
                                 {
                                    loop9:
                                    while(true)
                                    {
                                       §§push(§implements§);
                                       addr222:
                                       loop29:
                                       while(true)
                                       {
                                          if(_loc4_)
                                          {
                                             if(!_loc4_)
                                             {
                                                break;
                                             }
                                             §§push(§§pop() is §[Y§);
                                             loop30:
                                             while(true)
                                             {
                                                §§push(§§pop());
                                                loop31:
                                                while(!_loc3_)
                                                {
                                                   if(!§§pop())
                                                   {
                                                      loop20:
                                                      while(!_loc3_)
                                                      {
                                                         §§pop();
                                                         while(true)
                                                         {
                                                            §§push(§implements§);
                                                            addr197:
                                                            addr120:
                                                            while(true)
                                                            {
                                                               §§push(§§pop() is §?1§);
                                                            }
                                                            if(_loc3_ && §]!e§)
                                                            {
                                                               continue;
                                                            }
                                                            if(_loc4_ || §]!e§)
                                                            {
                                                               addr134:
                                                               loop10:
                                                               while(true)
                                                               {
                                                                  §implements§ = param1;
                                                                  loop11:
                                                                  while(_loc4_ || param2)
                                                                  {
                                                                     if(!_loc3_)
                                                                     {
                                                                        param1.open(param2);
                                                                        loop12:
                                                                        for(; _loc4_; if(!(_loc3_ && _loc3_))
                                                                        {
                                                                           if(_loc4_ || _loc3_)
                                                                           {
                                                                              return;
                                                                           }
                                                                           break loop10;
                                                                        })
                                                                        {
                                                                           param1.mClip.addEventListener(§-!0§.§>!R§,§[!_§);
                                                                           while(_loc4_ || param2)
                                                                           {
                                                                              continue loop9;
                                                                              setViewSize(§finally§,§3v§);
                                                                              if(_loc4_ || §]!e§)
                                                                              {
                                                                                 continue loop12;
                                                                              }
                                                                           }
                                                                           loop19:
                                                                           while(true)
                                                                           {
                                                                              §§push(param1 is §@S§);
                                                                              if(!(_loc3_ && §]!e§))
                                                                              {
                                                                                 addr146:
                                                                                 if(_loc4_ || §]!e§)
                                                                                 {
                                                                                    if(_loc3_)
                                                                                    {
                                                                                       continue loop20;
                                                                                    }
                                                                                    if(_loc3_)
                                                                                    {
                                                                                       continue loop7;
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(!§§pop());
                                                                                       addr159:
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc4_)
                                                                                          {
                                                                                             if(!(_loc3_ && param2))
                                                                                             {
                                                                                                addr168:
                                                                                                if(!§§pop())
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§implements§);
                                                                                                      if(!_loc3_)
                                                                                                      {
                                                                                                         if(!(_loc3_ && param2))
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         continue loop29;
                                                                                                      }
                                                                                                      §§goto(addr197);
                                                                                                   }
                                                                                                   addr107:
                                                                                                   §§pop().deActivate();
                                                                                                   break loop11;
                                                                                                   addr96:
                                                                                                }
                                                                                                break loop10;
                                                                                             }
                                                                                             continue loop30;
                                                                                          }
                                                                                          addr184:
                                                                                          loop16:
                                                                                          while(!(_loc3_ && param1))
                                                                                          {
                                                                                             if(!_loc3_)
                                                                                             {
                                                                                                §§pop();
                                                                                                continue loop19;
                                                                                             }
                                                                                             loop24:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop());
                                                                                                addr201:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!_loc4_)
                                                                                                   {
                                                                                                      continue loop31;
                                                                                                   }
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      break loop16;
                                                                                                   }
                                                                                                   §§goto(addr168);
                                                                                                }
                                                                                                addr199:
                                                                                                continue loop31;
                                                                                                while(true)
                                                                                                {
                                                                                                   continue loop24;
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          loop26:
                                                                                          while(true)
                                                                                          {
                                                                                             §§pop();
                                                                                             addr205:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(param1 is §!!m§);
                                                                                                continue loop26;
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    addr157:
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc4_)
                                                                                    {
                                                                                       §§push(§§pop());
                                                                                       if(!_loc3_)
                                                                                       {
                                                                                          if(§§pop())
                                                                                          {
                                                                                             §§goto(addr157);
                                                                                          }
                                                                                          §§goto(addr184);
                                                                                       }
                                                                                       §§goto(addr201);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr249);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr250);
                                                                              }
                                                                              §§goto(addr159);
                                                                           }
                                                                        }
                                                                        continue;
                                                                     }
                                                                     §§goto(addr205);
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     if(!_loc3_)
                                                                     {
                                                                        §§goto(addr120);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr96);
                                                                     }
                                                                  }
                                                                  §§goto(addr238);
                                                                  §§goto(addr134);
                                                               }
                                                               if(!_loc3_)
                                                               {
                                                                  return;
                                                               }
                                                               break loop7;
                                                               addr82:
                                                            }
                                                            §§goto(addr250);
                                                         }
                                                      }
                                                      continue loop1;
                                                   }
                                                   §§goto(addr199);
                                                }
                                                continue loop2;
                                             }
                                          }
                                          §§goto(addr238);
                                       }
                                       continue loop0;
                                    }
                                 }
                                 §§goto(addr82);
                              }
                              §§goto(addr222);
                           }
                        }
                     }
                  }
               }
            }
         }
      }
      
      private static function §[!_§(param1:§-!0§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(param1.§!!i§ == §implements§)
            {
               if(_loc2_)
               {
                  §implements§ = null;
               }
            }
         }
      }
   }
}
