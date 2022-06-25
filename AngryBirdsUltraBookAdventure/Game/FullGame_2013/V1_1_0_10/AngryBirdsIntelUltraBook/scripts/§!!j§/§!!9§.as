package §!!j§
{
   import §1!B§.§<m§;
   import §1!B§.§>!s§;
   import §40§.§<!P§;
   import §;!y§.§,!s§;
   import §=`§.§4s§;
   import §=`§.§6!I§;
   import §>f§.§&!G§;
   import flash.net.SharedObject;
   
   public class §!!9§
   {
      
      protected static var §'!+§:Class;
      
      protected static var §"?§:Class;
      
      protected static var §'J§:Class;
      
      private static var §8!K§:Array;
      
      private static var §9!§:Popup = null;
      
      private static var §4!L§:SharedObject;
      
      public static var isOpen:Boolean = false;
      
      private static var §,""§:Array;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §'!+§ = §#!W§;
            loop0:
            while(true)
            {
               §"?§ = §47§;
               while(true)
               {
                  §'J§ = §-!B§;
                  continue loop0;
                  addr59:
                  if(!(_loc2_ || §!!9§))
                  {
                     continue;
                  }
                  isOpen = false;
                  addr76:
                  if(_loc2_)
                  {
                     addr35:
                     if(!(_loc2_ || §!!9§))
                     {
                        while(true)
                        {
                           §9!§ = null;
                           addr57:
                           while(_loc2_)
                           {
                              §§goto(addr59);
                              §§goto(addr76);
                           }
                           continue loop0;
                           §§goto(addr35);
                        }
                        addr81:
                     }
                     return;
                  }
                  §§goto(addr57);
               }
            }
         }
         while(true)
         {
            §8!K§ = [];
            §§goto(addr81);
         }
      }
      
      public function §!!9§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
         }
      }
      
      private static function §2$§(param1:String, param2:§&!G§) : void
      {
         /*
          * Decompilation error
          * Timeout (1 minute) was reached
          * Instruction count: 487
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to timeout");
      }
      
      private static function §;!h§(param1:String, param2:§&!G§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(§§newactivation());
         while(true)
         {
            §§pop().§§slot[4] = null;
            loop1:
            while(true)
            {
               §§push(§§newactivation());
               loop2:
               while(true)
               {
                  §§push(param1);
                  addr87:
                  while(true)
                  {
                     §§pop().§§slot[1] = §§pop();
                     addr88:
                     while(_loc6_ || §!!9§)
                     {
                        do
                        {
                           §§push(§§newactivation());
                           continue loop2;
                        }
                        while(false);
                        
                        try
                        {
                           §§push(§§newactivation());
                           if(_loc6_)
                           {
                              §§pop().§§slot[4] = new §4U§(§>!s§.§;§(§"?§),currentUIView,§4s§.§4!8§(tutorialName,§6!I§.§[U§),tutorialName);
                              if(_loc6_ || param1)
                              {
                                 addr153:
                                 if(tutorialPopup)
                                 {
                                    if(_loc5_ && §!!9§)
                                    {
                                    }
                                 }
                                 §§goto(addr166);
                              }
                              §8!K§.push(tutorialPopup);
                              §§goto(addr166);
                           }
                           §§goto(addr153);
                        }
                        catch(e:Error)
                        {
                           §§goto(addr153);
                        }
                        addr166:
                        return;
                     }
                     continue loop1;
                  }
               }
            }
            if(!(_loc6_ || param1))
            {
               continue;
            }
            §§pop().§§slot[2] = param2;
            for(; !_loc5_; §§pop().§§slot[3] = §§pop(),if(!(_loc6_ || §!!9§))
            {
               continue;
            },§§goto(addr51))
            {
               §§push(§§newactivation());
               if(!_loc5_)
               {
                  §§push(powerUpName);
                  if(_loc6_ || §!!9§)
                  {
                     §§push(§§pop());
                  }
                  if(_loc6_ || param2)
                  {
                     continue;
                  }
                  §§goto(addr87);
               }
               §§goto(addr55);
            }
            §§goto(addr88);
         }
      }
      
      public static function §8f§(param1:String) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(§§newactivation());
         if(_loc6_)
         {
            §§push(null);
            if(_loc6_)
            {
               §§pop().§§slot[2] = §§pop();
               if(!_loc5_)
               {
                  addr33:
                  var storageName:String = param1;
               }
               try
               {
                  if(storageName)
                  {
                     if(!(_loc5_ && _loc2_))
                     {
                        if(!§4!L§)
                        {
                           if(!(_loc5_ && _loc3_))
                           {
                              §4!L§ = SharedObject.getLocal(storageName);
                              if(_loc6_)
                              {
                                 addr61:
                                 var _loc3_:int = 0;
                                 if(!(_loc5_ && _loc3_))
                                 {
                                    var _loc4_:* = §?q§();
                                    if(_loc5_)
                                    {
                                    }
                                    for each(birdName in _loc4_)
                                    {
                                       if(!(_loc5_ && §!!9§))
                                       {
                                          §4!L§.data[birdName] = false;
                                       }
                                    }
                                 }
                                 if(!(_loc5_ && §!!9§))
                                 {
                                    §4!L§.data["POWERUP_TUTORIAL_BIRDQUAKE"] = false;
                                    addr118:
                                 }
                                 loop3:
                                 while(true)
                                 {
                                    §4!L§.data["POWERUP_TUTORIAL_SUPERSEED"] = false;
                                    addr166:
                                    while(true)
                                    {
                                       addr136:
                                       while(true)
                                       {
                                          §4!L§.data["POWERUP_TUTORIAL_KINGSLING"] = false;
                                          addr142:
                                          while(!(_loc6_ || param1))
                                          {
                                             continue loop3;
                                          }
                                       }
                                       continue loop3;
                                    }
                                 }
                              }
                              while(true)
                              {
                                 §4!L§.data["POWERUP_TUTORIAL_SLINGSCOPE"] = false;
                                 if(!_loc6_)
                                 {
                                    continue;
                                 }
                                 if(!(_loc5_ && param1))
                                 {
                                    while(false)
                                    {
                                    }
                                    addr187:
                                    return;
                                    addr134:
                                    addr173:
                                 }
                                 §§goto(addr166);
                                 §§goto(addr136);
                              }
                           }
                           §§goto(addr118);
                        }
                        §§goto(addr61);
                     }
                     §§goto(addr134);
                  }
                  §§goto(addr173);
               }
               catch(e:Error)
               {
               }
               §§goto(addr187);
            }
         }
         §§goto(addr33);
      }
      
      private static function §?q§() : Array
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§<!P§ = null;
         var _loc1_:Array = [];
         for each(_loc2_ in §,!s§.§=!I§.slingshot.§ Y§)
         {
            if(!(_loc5_ && _loc1_))
            {
               if(_loc1_.indexOf(_loc2_.name) >= 0)
               {
                  continue;
               }
               if(_loc5_)
               {
                  continue;
               }
            }
            _loc1_.push(_loc2_.name);
         }
         return _loc1_;
      }
      
      public static function §;-§(param1:§&!G§, param2:String, param3:String) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§pop().§§slot[6] = 0;
            loop1:
            while(true)
            {
               §§push(§§newactivation());
               loop2:
               while(_loc7_)
               {
                  §§pop().§§slot[1] = param1;
                  loop3:
                  while(true)
                  {
                     §§push(§§newactivation());
                     loop4:
                     while(true)
                     {
                        §§push(param2);
                        loop5:
                        while(true)
                        {
                           §§pop().§§slot[2] = §§pop();
                           loop6:
                           while(true)
                           {
                              §§push(§§newactivation());
                              loop7:
                              while(true)
                              {
                                 §§push(param3);
                                 loop8:
                                 while(!(_loc8_ && param2))
                                 {
                                    §§pop().§§slot[3] = §§pop();
                                    loop9:
                                    while(!isOpen)
                                    {
                                       while(true)
                                       {
                                          §§push(§§newactivation());
                                          if(!_loc8_)
                                          {
                                             if(!_loc8_)
                                             {
                                                if(!_loc7_)
                                                {
                                                   break;
                                                }
                                                §§push(powerUpName);
                                                if(_loc7_)
                                                {
                                                   §§push(§§pop());
                                                }
                                                if(!(_loc8_ && §!!9§))
                                                {
                                                   §§pop().§§slot[4] = §§pop();
                                                   while(!_loc8_)
                                                   {
                                                      §,""§ = [];
                                                      if(_loc7_ || param2)
                                                      {
                                                         if(_loc8_)
                                                         {
                                                            break loop9;
                                                         }
                                                         continue loop3;
                                                      }
                                                   }
                                                   if(!(_loc7_ || param2))
                                                   {
                                                      continue loop9;
                                                   }
                                                   if(_loc8_)
                                                   {
                                                      continue loop1;
                                                   }
                                                   §§goto(addr310);
                                                   continue loop9;
                                                }
                                                continue loop8;
                                             }
                                             continue loop4;
                                          }
                                          continue loop7;
                                          addr310:
                                       }
                                       continue loop2;
                                    }
                                    if(!(_loc8_ && param1))
                                    {
                                       break loop6;
                                    }
                                    continue loop6;
                                 }
                                 continue loop5;
                              }
                           }
                           return;
                        }
                     }
                  }
               }
               continue loop0;
            }
         }
      }
      
      public static function §'%§(param1:§&!G§, param2:String = null) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§push(null);
            loop1:
            while(true)
            {
               §§pop().§§slot[4] = §§pop();
               loop2:
               while(true)
               {
                  §§push(§§newactivation());
                  loop3:
                  while(true)
                  {
                     §§pop().§§slot[5] = 0;
                     loop4:
                     while(true)
                     {
                        §§push(§§newactivation());
                        loop5:
                        while(true)
                        {
                           §§pop().§§slot[1] = param1;
                           loop6:
                           while(true)
                           {
                              §§push(§§newactivation());
                              loop7:
                              while(true)
                              {
                                 §§push(param2);
                                 if(!_loc6_)
                                 {
                                    break;
                                 }
                                 §§pop().§§slot[2] = §§pop();
                                 loop8:
                                 while(!(_loc7_ && _loc3_))
                                 {
                                    loop9:
                                    while(!isOpen)
                                    {
                                       while(true)
                                       {
                                          §§push(§§newactivation());
                                          if(!_loc6_)
                                          {
                                             break;
                                          }
                                          if(!_loc6_)
                                          {
                                             continue loop5;
                                          }
                                          if(!_loc6_)
                                          {
                                             continue loop3;
                                          }
                                          if(!_loc6_)
                                          {
                                             continue loop0;
                                          }
                                          §§pop().§§slot[3] = §?q§();
                                          if(!(_loc6_ || param2))
                                          {
                                             continue;
                                          }
                                          if(_loc7_)
                                          {
                                             break loop9;
                                          }
                                          if(!_loc6_)
                                          {
                                             continue loop8;
                                          }
                                          if(!_loc6_)
                                          {
                                             continue loop2;
                                          }
                                          if(false)
                                          {
                                             continue loop9;
                                          }
                                          try
                                          {
                                             §§push(§§newactivation());
                                             if(!(_loc7_ && param1))
                                             {
                                                if(§§pop().§§slot[2])
                                                {
                                                   if(!(_loc7_ && _loc3_))
                                                   {
                                                      if(!§4!L§)
                                                      {
                                                         if(!(_loc7_ && param2))
                                                         {
                                                            §4!L§ = SharedObject.getLocal(storageName);
                                                            if(!_loc7_)
                                                            {
                                                               addr302:
                                                               var i:int = birdsToShow.length - 1;
                                                               addr121:
                                                               addr306:
                                                               addr301:
                                                               addr300:
                                                               §§push(§§newactivation());
                                                               if(!(_loc7_ && param1))
                                                               {
                                                                  if(!(_loc7_ && param1))
                                                                  {
                                                                     if(!(_loc7_ && §!!9§))
                                                                     {
                                                                        addr144:
                                                                        §§push(§§pop().§§slot[5]);
                                                                        if(_loc6_)
                                                                        {
                                                                           if(_loc6_ || _loc3_)
                                                                           {
                                                                              if(§§pop() < 0)
                                                                              {
                                                                                 if(_loc6_)
                                                                                 {
                                                                                    if(!(_loc7_ && _loc3_))
                                                                                    {
                                                                                       §4!L§.flush();
                                                                                       if(_loc6_)
                                                                                       {
                                                                                          addr169:
                                                                                          if(false)
                                                                                          {
                                                                                             addr171:
                                                                                             §§push(i);
                                                                                             if(!(_loc7_ && param1))
                                                                                             {
                                                                                                addr192:
                                                                                                i = §§pop() - 1;
                                                                                                if(_loc6_ || param2)
                                                                                                {
                                                                                                   if(_loc6_ || param2)
                                                                                                   {
                                                                                                      §§goto(addr121);
                                                                                                   }
                                                                                                   addr219:
                                                                                                   if(_loc6_ || §!!9§)
                                                                                                   {
                                                                                                      if(!_loc7_)
                                                                                                      {
                                                                                                         addr228:
                                                                                                         §§goto(addr171);
                                                                                                      }
                                                                                                      §§goto(addr306);
                                                                                                   }
                                                                                                   addr248:
                                                                                                   if(_loc6_)
                                                                                                   {
                                                                                                      §4!L§.data[birdName] = true;
                                                                                                      §§goto(addr171);
                                                                                                      addr256:
                                                                                                   }
                                                                                                   if(!(_loc7_ && param1))
                                                                                                   {
                                                                                                      §§push(§4!L§.data[birdName] == false);
                                                                                                      if(_loc6_)
                                                                                                      {
                                                                                                         if(!(_loc7_ && §!!9§))
                                                                                                         {
                                                                                                            addr246:
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               §§goto(addr248);
                                                                                                            }
                                                                                                            birdsToShow.splice(i,1);
                                                                                                            §§goto(addr219);
                                                                                                         }
                                                                                                         addr265:
                                                                                                         if(!§§pop())
                                                                                                         {
                                                                                                            addr267:
                                                                                                            §§pop();
                                                                                                            §§goto(addr219);
                                                                                                         }
                                                                                                         §§goto(addr246);
                                                                                                      }
                                                                                                      §§goto(addr267);
                                                                                                      addr275:
                                                                                                   }
                                                                                                   §§goto(addr265);
                                                                                                   §§push(§4!L§.data[birdName] == undefined);
                                                                                                   addr298:
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr192);
                                                                                          }
                                                                                          addr332:
                                                                                          var _loc4_:int = 0;
                                                                                          addr331:
                                                                                          if(!(_loc7_ && §!!9§))
                                                                                          {
                                                                                             var _loc5_:* = birdsToShow;
                                                                                             if(!_loc6_)
                                                                                             {
                                                                                             }
                                                                                             addr377:
                                                                                             for each(birdName in _loc5_)
                                                                                             {
                                                                                                if(!(_loc7_ && §!!9§))
                                                                                                {
                                                                                                   §2$§(birdName,currentUIView);
                                                                                                }
                                                                                                §§goto(addr377);
                                                                                             }
                                                                                          }
                                                                                          if(_loc7_ && param2)
                                                                                          {
                                                                                          }
                                                                                          addr390:
                                                                                          return;
                                                                                          addr307:
                                                                                       }
                                                                                       §%!I§();
                                                                                       §§goto(addr390);
                                                                                    }
                                                                                    §§goto(addr256);
                                                                                 }
                                                                                 §§goto(addr169);
                                                                              }
                                                                              addr280:
                                                                              §§push(§§newactivation());
                                                                              if(_loc6_)
                                                                              {
                                                                                 §§push(§§newactivation());
                                                                                 if(!(_loc7_ && §!!9§))
                                                                                 {
                                                                                    §§push(§§pop().§§slot[3]);
                                                                                    if(!_loc7_)
                                                                                    {
                                                                                       §§pop().§§slot[4] = §§pop()[i];
                                                                                       §§goto(addr298);
                                                                                    }
                                                                                    §§goto(addr302);
                                                                                 }
                                                                                 §§goto(addr301);
                                                                              }
                                                                              §§goto(addr300);
                                                                           }
                                                                           §§goto(addr192);
                                                                        }
                                                                        §§goto(addr332);
                                                                     }
                                                                     §§goto(addr280);
                                                                  }
                                                                  §§goto(addr246);
                                                               }
                                                               §§goto(addr171);
                                                               addr299:
                                                            }
                                                            §§goto(addr228);
                                                         }
                                                         §§goto(addr169);
                                                      }
                                                      §§goto(addr299);
                                                   }
                                                   §§goto(addr275);
                                                }
                                                §§goto(addr307);
                                             }
                                             §§goto(addr144);
                                          }
                                          catch(e:Error)
                                          {
                                             if(!(_loc7_ && _loc3_))
                                             {
                                                §<m§.log("Unable to get local storage");
                                             }
                                             §§goto(addr331);
                                          }
                                          §§goto(addr169);
                                       }
                                       continue loop7;
                                    }
                                    if(_loc6_)
                                    {
                                       break loop6;
                                    }
                                    continue loop6;
                                 }
                                 continue loop4;
                              }
                              continue loop1;
                           }
                           return;
                        }
                     }
                  }
               }
            }
         }
      }
      
      private static function §%!I§(param1:Boolean = true) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(isOpen);
            loop0:
            while(true)
            {
               §§push(!§§pop());
               loop1:
               while(true)
               {
                  if(!§§pop())
                  {
                     while(§§pop())
                     {
                        if(!(_loc2_ && param1))
                        {
                           while(true)
                           {
                              isOpen = true;
                           }
                           addr96:
                        }
                        loop5:
                        do
                        {
                           §9!§ = §8!K§.pop();
                           while(_loc3_ || param1)
                           {
                              §9!§.open(param1);
                              if(_loc3_)
                              {
                                 continue loop5;
                              }
                           }
                           addr105:
                           addr104:
                           while(true)
                           {
                              §§push(§8!K§.length > 0);
                              if(!_loc3_)
                              {
                                 break;
                              }
                              if(!(_loc2_ && param1))
                              {
                                 continue loop0;
                              }
                              continue loop1;
                           }
                           while(true)
                           {
                              §§pop();
                              §§goto(addr105);
                           }
                        }
                        while(!_loc3_);
                        
                        break;
                     }
                     return;
                     addr87:
                  }
                  §§goto(addr104);
               }
            }
         }
         §§goto(addr96);
      }
      
      public static function §6S§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && §!!9§))
         {
            if(isOpen == true)
            {
               do
               {
                  if(§8!K§.length <= 0)
                  {
                     isOpen = false;
                     loop1:
                     for(; _loc1_ || _loc2_; §§pop().preClose(§§pop()),if(_loc1_)
                     {
                        §§goto(addr24);
                     })
                     {
                        if(!_loc2_)
                        {
                           §§push(§9!§);
                           if(!_loc2_)
                           {
                              §§push(true);
                              if(_loc1_)
                              {
                                 continue;
                              }
                           }
                           else
                           {
                              addr99:
                              §§push(false);
                           }
                           §§pop().preClose(§§pop());
                           while(true)
                           {
                              isOpen = false;
                              addr88:
                              while(!_loc2_)
                              {
                                 while(true)
                                 {
                                    §%!I§(false);
                                    break loop1;
                                 }
                              }
                           }
                        }
                        else
                        {
                           addr98:
                           §§push(§9!§);
                        }
                        §§goto(addr99);
                     }
                     while(!_loc1_)
                     {
                        §§goto(addr88);
                     }
                     continue;
                  }
                  §§goto(addr98);
               }
               while(!_loc1_);
               
            }
            addr24:
            return;
         }
         §§goto(addr90);
      }
      
      public static function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && §!!9§))
         {
            §§push(§9!§);
            if(!(_loc1_ && _loc2_))
            {
               if(§§pop())
               {
                  if(_loc2_ || §!!9§)
                  {
                     addr51:
                     §9!§.preClose(false);
                  }
               }
               return;
            }
         }
         §§goto(addr51);
      }
   }
}
