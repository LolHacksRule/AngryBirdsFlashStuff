package §9!Q§
{
   import §&!h§.§]V§;
   import §-2§.§ !O§;
   import §1n§.§ C§;
   import §9#§.§?!D§;
   import §9#§.Popup;
   import flash.display.MovieClip;
   import flash.display.Stage;
   
   public class §7o§
   {
      
      protected static var §1!$§:§ C§;
      
      protected static var §>b§:StatePopupManager;
      
      public static var §@!8§:Object;
      
      public static var §]T§:Popup;
      
      public static var §[e§:Boolean;
      
      private static var §[p§:Number;
      
      private static var §7!L§:Number;
       
      
      public function §7o§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            super();
         }
      }
      
      public static function §`!h§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(§]T§ == null);
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
            §§push(§1!$§);
            loop0:
            while(!§§pop())
            {
               loop1:
               while(true)
               {
                  §>b§ = new StatePopupManager();
                  addr117:
                  loop2:
                  while(true)
                  {
                     §1!$§ = new § !O§(§>b§);
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
                        §§push(§1!$§);
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
         if(_loc3_ || §7o§)
         {
            §§push(§1!$§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §§push(§1!$§);
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
                              §§push(§1!$§);
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
                                          §7!L§ = param2;
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
                  §[p§ = param1;
               }
            }
         }
         §§goto(addr68);
      }
      
      public static function §;M§(param1:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §§push(§]T§);
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
            §§push(§]T§);
         }
         var _loc2_:§`!!§ = new §`!!§(§1!$§,§>b§,param1);
         if(!_loc4_)
         {
            §=?§(_loc2_);
         }
      }
      
      public static function §=E§() : §&!a§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§&!a§ = new §&!a§(§1!$§,§>b§);
         if(!_loc3_)
         {
            §=?§(_loc1_);
         }
         return _loc1_;
      }
      
      public static function §-Y§(param1:String = null) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         try
         {
            §§push(§§findproperty(§=?§));
            §§push(§§findproperty(§2!S§));
            §§push(§1!$§);
            §§push(§>b§);
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
                           §§push(§2!S§.§;v§);
                           if(!_loc4_)
                           {
                              addr62:
                              §§push(§§pop());
                           }
                        }
                        §§goto(addr62);
                     }
                     §§pop().§=?§(new §§pop().§2!S§(§§pop(),§§pop(),§§pop()));
                     if(!_loc4_)
                     {
                        if(param1 == §2!S§.§2u§)
                        {
                           if(_loc3_ || _loc2_)
                           {
                              §]V§.§9f§();
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
      
      public static function §<!_§() : void
      {
         try
         {
            §=?§(new §0`§(§1!$§,§>b§));
         }
         catch(e:Error)
         {
         }
      }
      
      public static function § "§() : void
      {
         try
         {
            §=?§(new §,]§(§1!$§,§>b§));
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §,!h§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §=?§(new §1T§(§1!$§,§>b§));
         }
      }
      
      public static function §`J§(param1:String, param2:String, param3:int, param4:String) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && param1))
         {
            §=?§(new §<^§(§1!$§,§>b§,param1,param2,param3,param4));
         }
      }
      
      private static function §=?§(param1:Popup, param2:Boolean = true) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §§push(§]T§);
            loop0:
            while(true)
            {
               §§push(§§pop() is §2!S§);
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
                              §§push(§]T§);
                              addr238:
                              while(true)
                              {
                                 §§push(§§pop() is §0`§);
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
                              §§push(§]T§);
                              if(!_loc3_)
                              {
                                 if(§§pop())
                                 {
                                    loop9:
                                    while(true)
                                    {
                                       §§push(§]T§);
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
                                             §§push(§§pop() is §,]§);
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
                                                            §§push(§]T§);
                                                            addr197:
                                                            addr120:
                                                            while(true)
                                                            {
                                                               §§push(§§pop() is §&!a§);
                                                            }
                                                            if(_loc3_ && §7o§)
                                                            {
                                                               continue;
                                                            }
                                                            if(_loc4_ || §7o§)
                                                            {
                                                               addr134:
                                                               loop10:
                                                               while(true)
                                                               {
                                                                  §]T§ = param1;
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
                                                                           param1.mClip.addEventListener(§?!D§.§9!R§,§[S§);
                                                                           while(_loc4_ || param2)
                                                                           {
                                                                              continue loop9;
                                                                              setViewSize(§[p§,§7!L§);
                                                                              if(_loc4_ || §7o§)
                                                                              {
                                                                                 continue loop12;
                                                                              }
                                                                           }
                                                                           loop19:
                                                                           while(true)
                                                                           {
                                                                              §§push(param1 is §0`§);
                                                                              if(!(_loc3_ && §7o§))
                                                                              {
                                                                                 addr146:
                                                                                 if(_loc4_ || §7o§)
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
                                                                                                      §§push(§]T§);
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
                                                                                                §§push(param1 is §2!S§);
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
      
      private static function §[S§(param1:§?!D§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(param1.§#!!§ == §]T§)
            {
               if(_loc2_)
               {
                  §]T§ = null;
               }
            }
         }
      }
   }
}
