package § 7§
{
   import § "!§.§!"O§;
   import §,l§.§4"7§;
   import §,l§.§["K§;
   import §0D§.§3!R§;
   import §2!o§.§2"3§;
   import §3"F§.§2j§;
   import §9!2§.§[" §;
   import §9!n§.§!J§;
   import §9!n§.LevelManager;
   import §^"F§.§4!2§;
   import com.rovio.assets.§?q§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class §@!#§ extends §2"3§
   {
      
      public static const §0!s§:String = "unclaimed";
      
      public static const §#"0§:String = "claiming";
      
      public static const §=Y§:String = "claimed";
      
      public static const §3!y§:String = "giftedBack";
      
      public static const §'",§:String = "DAILY";
      
      public static const §^"E§:String = "INVITATION";
      
      public static var §+j§:Object;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §0!s§ = "unclaimed";
            loop0:
            while(true)
            {
               §#"0§ = "claiming";
               loop1:
               while(true)
               {
                  §=Y§ = "claimed";
                  while(true)
                  {
                     §3!y§ = "giftedBack";
                     loop3:
                     while(_loc1_ || _loc1_)
                     {
                        if(_loc1_)
                        {
                           if(!_loc2_)
                           {
                              while(true)
                              {
                                 §'",§ = "DAILY";
                                 while(true)
                                 {
                                    §^"E§ = "INVITATION";
                                    while(_loc1_)
                                    {
                                       §+j§ = {};
                                       if(!_loc2_)
                                       {
                                          if(!(_loc1_ || _loc2_))
                                          {
                                             continue loop3;
                                          }
                                          §§goto(addr46);
                                          continue loop3;
                                       }
                                    }
                                 }
                              }
                              return;
                              addr46:
                              addr84:
                           }
                           continue loop0;
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr84);
      }
      
      protected var §2!h§:MovieClip;
      
      protected var § !L§:§!"O§;
      
      public function §@!#§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            super();
            while(true)
            {
               this.§2!h§ = new §?q§.§ q§("GiftInboxItem")();
               loop1:
               while(true)
               {
                  addChild(this.§2!h§);
                  while(true)
                  {
                     this.§2!h§.mcGiftIcon.stop();
                     addr108:
                     while(!_loc2_)
                     {
                        continue loop1;
                     }
                  }
               }
            }
         }
      }
      
      protected function §7!S§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            dispatchEvent(new §[" §(§[" §.§!"[§,data,true));
         }
         do
         {
            this.§5"R§();
         }
         while(_loc2_);
         
      }
      
      protected function §>q§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            dispatchEvent(new §[" §(§[" §.§4"&§,data,true));
            do
            {
               this.§5"R§();
            }
            while(!_loc3_);
            
         }
      }
      
      protected function §<y§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            dispatchEvent(new §[" §(§[" §.§--§,data,true));
         }
      }
      
      protected function §["!§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            dispatchEvent(new §[" §(§[" §.§-G§,data,true));
         }
      }
      
      override public function set data(param1:Object) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            super.data = param1;
            do
            {
               this.§5"R§();
            }
            while(_loc2_ && _loc3_);
            
         }
      }
      
      protected function §5"R§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§ !L§);
            if(!(_loc3_ && _loc1_))
            {
               if(§§pop())
               {
                  loop0:
                  while(true)
                  {
                     §§push(this.§ !L§);
                     if(!_loc3_)
                     {
                        while(true)
                        {
                           if(§§pop().parent == this)
                           {
                              loop9:
                              while(true)
                              {
                                 removeChild(this.§ !L§);
                                 addr151:
                                 while(true)
                                 {
                                    addr122:
                                    loop12:
                                    while(!(_loc3_ && _loc1_))
                                    {
                                       addr129:
                                       loop2:
                                       while(true)
                                       {
                                          if(§+]§)
                                          {
                                             while(true)
                                             {
                                                if(!§+]§.lvl)
                                                {
                                                   this.§&"§();
                                                   loop4:
                                                   for(; _loc2_ || _loc3_; if(_loc3_ && _loc3_)
                                                   {
                                                      continue;
                                                   },if(_loc2_)
                                                   {
                                                      if(!_loc2_)
                                                      {
                                                         continue loop9;
                                                      }
                                                      if(_loc3_)
                                                      {
                                                         continue loop0;
                                                      }
                                                      this.§ !L§ = addChild(§+]§.cachedProfilePicture) as §!"O§;
                                                      if(!(_loc3_ && _loc2_))
                                                      {
                                                         if(_loc3_)
                                                         {
                                                            while(true)
                                                            {
                                                               §§goto(addr33);
                                                            }
                                                            addr103:
                                                         }
                                                         if(!_loc2_)
                                                         {
                                                            break loop2;
                                                         }
                                                         if(_loc3_)
                                                         {
                                                            continue loop12;
                                                         }
                                                         §§goto(addr182);
                                                      }
                                                      §§goto(addr180);
                                                   })
                                                   {
                                                      while(true)
                                                      {
                                                         if(!§+]§.cachedProfilePicture)
                                                         {
                                                            this.§ !L§ = new §!"O§(§+]§.i,false);
                                                            if(!_loc3_)
                                                            {
                                                               if(true)
                                                               {
                                                                  §§push(this.§ !L§);
                                                               }
                                                               continue;
                                                               break loop0;
                                                            }
                                                         }
                                                         if(_loc3_)
                                                         {
                                                            return;
                                                         }
                                                         addr197:
                                                         addr182:
                                                         addr197:
                                                         continue loop4;
                                                      }
                                                      addChild(this.§ !L§);
                                                      do
                                                      {
                                                         §+]§.cachedProfilePicture = this.§ !L§;
                                                      }
                                                      while(_loc3_ && this);
                                                      
                                                      §§goto(addr197);
                                                   }
                                                   continue;
                                                }
                                                while(true)
                                                {
                                                   this.§2!,§();
                                                   §§goto(addr103);
                                                }
                                             }
                                          }
                                          break;
                                          §§goto(addr129);
                                       }
                                       this.§2!h§.mcGiftIcon.gotoAndStop(1);
                                       if(!_loc3_)
                                       {
                                          return;
                                       }
                                       §§goto(addr197);
                                    }
                                 }
                              }
                           }
                           while(true)
                           {
                              this.§ !L§ = null;
                              §§goto(addr122);
                              §§goto(addr151);
                           }
                        }
                        addr144:
                     }
                     break;
                  }
                  §§pop().mouseEnabled = this.§ !L§.mouseChildren = false;
                  if(_loc2_ || _loc2_)
                  {
                     §§goto(addr180);
                  }
                  §§goto(addr202);
               }
               §§goto(addr107);
            }
            §§goto(addr144);
         }
         §§goto(addr110);
      }
      
      protected function §&"§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(!§+]§.status)
            {
               while(true)
               {
                  §+]§.status = §0!s§;
                  addr577:
                  while(true)
                  {
                  }
                  addr556:
                  if(!(_loc2_ || _loc1_))
                  {
                     continue;
                  }
                  var _loc1_:* = §+]§.status;
                  if(!(_loc3_ && _loc2_))
                  {
                     §§push(§0!s§);
                     if(_loc2_)
                     {
                        if(§§pop() === _loc1_)
                        {
                           if(_loc2_)
                           {
                              addr598:
                              §§push(0);
                              if(!(_loc2_ || this))
                              {
                                 addr668:
                              }
                           }
                           else
                           {
                              addr624:
                              §§push(1);
                              if(_loc3_ && _loc3_)
                              {
                                 addr675:
                              }
                           }
                        }
                        else
                        {
                           §§push(§#"0§);
                           if(_loc2_ || this)
                           {
                              if(§§pop() === _loc1_)
                              {
                                 if(_loc2_ || this)
                                 {
                                    §§goto(addr624);
                                 }
                              }
                              else
                              {
                                 §§push(§=Y§);
                                 if(!(_loc3_ && _loc1_))
                                 {
                                    addr641:
                                    if(§§pop() === _loc1_)
                                    {
                                       if(!(_loc3_ && this))
                                       {
                                          §§push(2);
                                          if(_loc2_ || _loc1_)
                                          {
                                             §§goto(addr668);
                                          }
                                          else
                                          {
                                             §§goto(addr675);
                                          }
                                       }
                                       else
                                       {
                                          addr672:
                                          §§push(3);
                                          if(_loc2_)
                                          {
                                             §§goto(addr675);
                                          }
                                          §§goto(addr680);
                                       }
                                       §§goto(addr680);
                                    }
                                    else
                                    {
                                       §§push(§3!y§);
                                    }
                                    §§goto(addr672);
                                 }
                                 if(§§pop() !== _loc1_)
                                 {
                                    addr680:
                                    loop30:
                                    switch(§§pop())
                                    {
                                       case 0:
                                          if(§+]§.t == §'",§)
                                          {
                                             if(_loc2_ || this)
                                             {
                                                this.§2!h§.txtTitle.text = §2j§.§'!f§.replace("%1",§+]§.n);
                                             }
                                             this.§2!h§.txtDescription.text = §2j§.§]!m§;
                                             loop3:
                                             while(true)
                                             {
                                                this.§2!h§.mcGiftIcon.gotoAndStop(1);
                                                addr490:
                                                while(true)
                                                {
                                                   this.§2!h§.btnClaim.visible = true;
                                                   addr483:
                                                   while(true)
                                                   {
                                                      this.§2!h§.btnGiftBack.visible = false;
                                                      addr476:
                                                      while(true)
                                                      {
                                                         this.§2!h§.btnClose.visible = false;
                                                         addr467:
                                                         while(true)
                                                         {
                                                            if(_loc2_)
                                                            {
                                                               break loop3;
                                                            }
                                                            continue loop3;
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             this.§2!h§.mcGiftCount.visible = false;
                                             addr484:
                                             break;
                                             addr484:
                                             addr460:
                                             addr545:
                                             addr520:
                                          }
                                          else
                                          {
                                             this.§2!h§.txtTitle.text = §2j§.§'x§.replace("%1",§+]§.n);
                                             this.§2!h§.txtDescription.text = §2j§.§=!X§;
                                             addr512:
                                          }
                                          while(true)
                                          {
                                             §§goto(addr484);
                                          }
                                          break;
                                          addr498:
                                       case 1:
                                          if(§+]§.t != §'",§)
                                          {
                                             this.§2!h§.txtTitle.text = §2j§.§'x§.replace("%1",§+]§.n);
                                             §§goto(addr404);
                                          }
                                          §§goto(addr434);
                                       case 2:
                                          this.§2!h§.txtTitle.text = §2j§.§]!p§.replace("%1",§+]§.n);
                                          this.§2!h§.txtDescription.text = this.§2"E§(§+]§);
                                          loop7:
                                          while(true)
                                          {
                                             this.§2!h§.mcGiftIcon.gotoAndStop(§+]§.itemId);
                                             addr310:
                                             while(true)
                                             {
                                                this.§2!h§.btnClaim.visible = false;
                                                continue loop7;
                                             }
                                          }
                                          break;
                                          addr343:
                                          addr319:
                                       case 3:
                                          this.§2!h§.txtTitle.text = §2j§.§]!p§.replace("%1",§+]§.n);
                                          while(_loc2_)
                                          {
                                             this.§2!h§.txtDescription.text = this.§2"E§(§+]§);
                                             loop12:
                                             while(true)
                                             {
                                                if(!(_loc3_ && _loc2_))
                                                {
                                                   if(_loc3_ && _loc2_)
                                                   {
                                                      break;
                                                   }
                                                   this.§2!h§.mcGiftIcon.gotoAndStop(§+]§.itemId);
                                                   while(_loc2_ || _loc1_)
                                                   {
                                                      this.§2!h§.btnClaim.visible = false;
                                                      continue loop12;
                                                      if(_loc3_ && this)
                                                      {
                                                         continue;
                                                      }
                                                      if(!(_loc3_ && _loc3_))
                                                      {
                                                         if(false)
                                                         {
                                                            loop21:
                                                            while(true)
                                                            {
                                                               this.§2!h§.mcGiftCount.txtCount.text = §+]§.quantity + "";
                                                               if(_loc2_)
                                                               {
                                                                  if(!(_loc3_ && _loc2_))
                                                                  {
                                                                     if(!(_loc3_ && _loc1_))
                                                                     {
                                                                        if(_loc2_ || this)
                                                                        {
                                                                           addr578:
                                                                           break loop30;
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr243);
                                                                     }
                                                                     §§goto(addr359);
                                                                  }
                                                                  else
                                                                  {
                                                                     while(_loc2_)
                                                                     {
                                                                        if(!_loc3_)
                                                                        {
                                                                           if(!(_loc3_ && _loc1_))
                                                                           {
                                                                              continue loop21;
                                                                           }
                                                                           §§goto(addr404);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr343);
                                                                        }
                                                                     }
                                                                     §§goto(addr279);
                                                                     addr104:
                                                                  }
                                                                  §§goto(addr319);
                                                               }
                                                               break;
                                                            }
                                                            §§goto(addr404);
                                                         }
                                                         §§goto(addr578);
                                                      }
                                                      §§goto(addr217);
                                                   }
                                                   §§goto(addr476);
                                                }
                                                else
                                                {
                                                   §§goto(addr390);
                                                }
                                             }
                                             §§goto(addr520);
                                          }
                                          §§goto(addr350);
                                    }
                                    this.§2!h§.btnClose.visible = false;
                                    addr404:
                                    if(_loc2_ || _loc1_)
                                    {
                                       this.§2!h§.txtDescription.text = §2j§.§=!X§;
                                       addr374:
                                       this.§2!h§.mcGiftIcon.gotoAndStop(2);
                                       if(!_loc3_)
                                       {
                                          this.§2!h§.btnClaim.visible = false;
                                          loop5:
                                          while(true)
                                          {
                                             this.§2!h§.btnGiftBack.visible = false;
                                             addr366:
                                             while(true)
                                             {
                                                this.§2!h§.btnClose.visible = false;
                                                addr359:
                                                while(true)
                                                {
                                                   this.§2!h§.mcGiftCount.visible = false;
                                                   continue loop5;
                                                }
                                             }
                                          }
                                          break loop30;
                                          addr373:
                                       }
                                       addr390:
                                    }
                                    else
                                    {
                                       addr434:
                                       this.§2!h§.txtTitle.text = §2j§.§'!f§.replace("%1",§+]§.n);
                                       if(!(_loc3_ && _loc3_))
                                       {
                                          if(!_loc3_)
                                          {
                                             this.§2!h§.txtDescription.text = §2j§.§]!m§;
                                             addr419:
                                             if(_loc2_ || this)
                                             {
                                                §§goto(addr374);
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr483);
                                          }
                                          §§goto(addr460);
                                       }
                                    }
                                    return;
                                    §§push(4);
                                 }
                              }
                              §§goto(addr680);
                           }
                           §§goto(addr641);
                        }
                        §§goto(addr680);
                     }
                     §§goto(addr641);
                  }
                  §§goto(addr598);
                  addr563:
               }
            }
            while(true)
            {
               this.§2!h§.btnPlay.visible = false;
               do
               {
                  this.§2!h§.mcGiftIcon.visible = true;
               }
               while(_loc3_);
               
               if(!_loc2_)
               {
                  continue;
               }
               §§goto(addr556);
            }
            §§goto(addr563);
         }
         §§goto(addr577);
      }
      
      private function §2"E§(param1:Object) : String
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(§+]§.itemId)
            {
               if(_loc3_)
               {
                  addr106:
                  if(!§4!2§.§2o§(§+]§.itemId))
                  {
                     while(true)
                     {
                        if(§+]§.itemId == §["K§.§0#§)
                        {
                           if(_loc3_ || _loc2_)
                           {
                              addr38:
                              if(_loc2_ && _loc2_)
                              {
                                 continue;
                              }
                              §§push(§2j§.§]!m§);
                              if(_loc3_ || _loc2_)
                              {
                                 §§push("%1");
                                 if(_loc3_ || param1)
                                 {
                                    §§push(§["K§.§9",§);
                                    if(_loc3_ || _loc3_)
                                    {
                                       return §§pop().replace(§§pop(),§§pop());
                                    }
                                 }
                                 else
                                 {
                                    addr114:
                                    §§push(§4!2§.§2o§(§+]§.itemId).§?"7§);
                                 }
                                 return §§pop().replace(§§pop(),§§pop());
                              }
                              addr113:
                              addr113:
                              §§push("%1");
                              §§goto(addr114);
                           }
                           else
                           {
                              if(!(_loc2_ && param1))
                              {
                                 §§goto(addr20);
                              }
                              else
                              {
                                 addr111:
                              }
                              §§push(§2j§.§[!=§);
                           }
                           §§goto(addr113);
                        }
                        §§goto(addr20);
                     }
                  }
                  §§goto(addr111);
               }
               §§goto(addr121);
            }
            addr20:
            return "";
         }
         §§goto(addr106);
      }
      
      protected function §2!,§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§2!h§.txtTitle.text = §2j§.§%!y§.replace("%1",§+]§.n);
            while(true)
            {
               this.§2!h§.txtDescription.text = LevelManager.§5!T§(§+]§.lvl).writtenName + " - " + §!J§.§;6§(§+]§.lvl);
               loop1:
               while(true)
               {
                  this.§2!h§.mcGiftIcon.gotoAndStop(1);
                  addr191:
                  while(true)
                  {
                     this.§2!h§.mcGiftIcon.visible = false;
                     while(true)
                     {
                        this.§2!h§.btnClaim.visible = false;
                        addr158:
                        while(_loc2_)
                        {
                           continue loop1;
                        }
                     }
                  }
               }
            }
         }
         loop7:
         while(true)
         {
            this.§2!h§.mcGiftCount.visible = false;
            for(; §+]§.lvl.indexOf("2000-") > -1; if(!(_loc2_ || _loc2_))
            {
               continue;
            },if(_loc1_)
            {
               continue loop7;
            },if(_loc2_)
            {
               if(§3!R§.§&"5§.isLevelOpen(§+]§.lvl))
               {
                  this.§2!h§.txtDescription.text = LevelManager.§5!T§(§+]§.lvl).writtenName + " - " + §3!R§.§&"5§.§5K§(§+]§.lvl);
                  if(!_loc1_)
                  {
                     if(_loc2_ || _loc2_)
                     {
                        if(!_loc1_)
                        {
                           §§goto(addr55);
                        }
                        else
                        {
                           addr108:
                           if(_loc2_)
                           {
                              this.§2!h§.txtDescription.text = §2j§.§4!M§;
                              §§goto(addr116);
                           }
                           else
                           {
                              §§goto(addr191);
                           }
                        }
                        §§goto(addr191);
                     }
                     §§goto(addr116);
                  }
                  §§goto(addr71);
               }
               §§goto(addr108);
            },§§goto(addr158))
            {
               if(!_loc1_)
               {
                  continue;
               }
               §§goto(addr116);
            }
            §§goto(addr20);
         }
      }
      
      override public function get height() : Number
      {
         return 60;
      }
   }
}
