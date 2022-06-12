package §1p§
{
   import § " §.§+!p§;
   import § each§.§>v§;
   import §#!e§.§ <§;
   import §#!e§.LevelManager;
   import §-!+§.§;!B§;
   import §2`§.§`"'§;
   import §3!7§.§>,§;
   import §7-§.§,!C§;
   import §]!>§.§0!!§;
   import §]!A§.§&A§;
   import com.rovio.assets.§8B§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class §]"E§ extends §;!B§
   {
      
      public static const §<!p§:String = "unclaimed";
      
      public static const §4!1§:String = "claiming";
      
      public static const §30§:String = "claimed";
      
      public static const §5"2§:String = "giftedBack";
      
      public static const §-"5§:String = "DAILY";
      
      public static const §?3§:String = "INVITATION";
      
      public static var §+!H§:Object;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §<!p§ = "unclaimed";
            while(true)
            {
               §4!1§ = "claiming";
               while(true)
               {
                  §30§ = "claimed";
                  addr97:
                  while(_loc1_)
                  {
                     §5"2§ = "giftedBack";
                  }
               }
               addr80:
               if(!(_loc1_ || _loc2_))
               {
                  continue;
               }
               §?3§ = "INVITATION";
               for(; _loc1_ || _loc2_; §+!H§ = {},if(!_loc2_)
               {
                  return;
               })
               {
                  if(_loc1_)
                  {
                     continue;
                  }
                  §§goto(addr97);
               }
               loop4:
               while(true)
               {
                  if(!(_loc2_ && _loc1_))
                  {
                     §§goto(addr80);
                  }
                  else
                  {
                     while(true)
                     {
                        §-"5§ = "DAILY";
                        continue loop4;
                     }
                     addr92:
                  }
               }
               addr49:
            }
         }
         §§goto(addr92);
      }
      
      protected var §3"§:MovieClip;
      
      protected var §?"C§:§+!p§;
      
      public function §]"E§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
         loop0:
         do
         {
            this.§3"§ = new §8B§.§6"C§("GiftInboxItem")();
            while(true)
            {
               addChild(this.§3"§);
               while(!(_loc1_ && _loc2_))
               {
                  this.§3"§.mcGiftIcon.stop();
                  while(!(_loc1_ && this))
                  {
                     this.§3"§.btnClaim.addEventListener(MouseEvent.CLICK,this.§3b§);
                     do
                     {
                        this.§3"§.btnGiftBack.addEventListener(MouseEvent.CLICK,this.§>!w§);
                        do
                        {
                           this.§3"§.btnClose.addEventListener(MouseEvent.CLICK,this.§3L§);
                           do
                           {
                              this.§3"§.btnPlay.addEventListener(MouseEvent.CLICK,this.§="4§);
                           }
                           while(!(_loc2_ || _loc1_));
                           
                        }
                        while(!(_loc2_ || this));
                        
                     }
                     while(_loc1_ && _loc2_);
                     
                     if(_loc2_)
                     {
                        continue loop0;
                     }
                  }
               }
            }
         }
         while(!_loc2_);
         
      }
      
      protected function §3b§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            dispatchEvent(new §`"'§(§`"'§.§^!z§,data,true));
         }
         do
         {
            this.§?$§();
         }
         while(!(_loc3_ || _loc3_));
         
      }
      
      protected function §>!w§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            dispatchEvent(new §`"'§(§`"'§.§!T§,data,true));
            do
            {
               this.§?$§();
            }
            while(_loc2_);
            
         }
      }
      
      protected function §3L§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            dispatchEvent(new §`"'§(§`"'§.§+x§,data,true));
         }
      }
      
      protected function §="4§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            dispatchEvent(new §`"'§(§`"'§.§<#§,data,true));
         }
      }
      
      override public function set data(param1:Object) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            super.data = param1;
         }
         do
         {
            this.§?$§();
         }
         while(!(_loc2_ || this));
         
      }
      
      protected function §?$§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            §§push(this.§?"C§);
            if(!(_loc3_ && this))
            {
               if(§§pop())
               {
                  loop0:
                  while(true)
                  {
                     §§push(this.§?"C§);
                     if(!(_loc3_ && this))
                     {
                        if(§§pop().parent == this)
                        {
                           while(true)
                           {
                              removeChild(this.§?"C§);
                              addr196:
                              addr139:
                              while(true)
                              {
                              }
                              if(_loc3_ && this)
                              {
                                 continue;
                              }
                              addr146:
                              while(true)
                              {
                                 if(!§>">§.lvl)
                                 {
                                    this.§]9§();
                                    continue loop0;
                                 }
                                 if(!_loc3_)
                                 {
                                    this.§4!;§();
                                 }
                                 loop6:
                                 while(true)
                                 {
                                    addr64:
                                    while(true)
                                    {
                                       if(§>">§.cachedProfilePicture)
                                       {
                                          if(_loc2_ || _loc3_)
                                          {
                                             if(_loc2_ || this)
                                             {
                                                continue loop6;
                                             }
                                             continue loop0;
                                          }
                                       }
                                       else
                                       {
                                          this.§?"C§ = new §+!p§(§>">§.i,false);
                                          if(!(_loc3_ && _loc2_))
                                          {
                                             if(!(_loc2_ || _loc2_))
                                             {
                                                break loop6;
                                             }
                                             if(_loc2_ || this)
                                             {
                                                if(_loc2_ || this)
                                                {
                                                   if(true)
                                                   {
                                                      §§push(this.§?"C§);
                                                      break loop0;
                                                   }
                                                   continue;
                                                }
                                                §§goto(addr196);
                                             }
                                             this.§3"§.mcGiftIcon.gotoAndStop(1);
                                             if(_loc2_ || _loc1_)
                                             {
                                                return;
                                             }
                                             addr242:
                                             addr222:
                                             do
                                             {
                                                §>">§.cachedProfilePicture = this.§?"C§;
                                             }
                                             while(_loc3_ && _loc1_);
                                             
                                             return;
                                             addr242:
                                          }
                                          addChild(this.§?"C§);
                                          addr220:
                                       }
                                       §§goto(addr242);
                                    }
                                 }
                                 §§goto(addr139);
                                 §§goto(addr146);
                              }
                           }
                        }
                        while(true)
                        {
                           this.§?"C§ = null;
                           if(_loc3_)
                           {
                           }
                           break;
                           §§goto(addr196);
                        }
                        §§goto(addr220);
                     }
                     break;
                  }
                  §§pop().mouseEnabled = this.§?"C§.mouseChildren = false;
                  addr199:
                  if(_loc2_)
                  {
                     §§goto(addr220);
                  }
                  §§goto(addr242);
               }
               while(true)
               {
                  if(§>">§)
                  {
                     §§goto(addr128);
                  }
                  §§goto(addr150);
               }
            }
            §§goto(addr199);
         }
         §§goto(addr220);
      }
      
      protected function §]9§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            if(!§>">§.status)
            {
               while(true)
               {
                  §>">§.status = §<!p§;
                  addr57:
                  while(true)
                  {
                  }
                  addr43:
                  if(!(_loc4_ || this))
                  {
                     continue;
                  }
                  this.§3"§.mcGiftIcon.visible = true;
                  if(_loc4_ || _loc1_)
                  {
                     if(false)
                     {
                        while(true)
                        {
                           this.§3"§.btnPlay.visible = false;
                           addr41:
                           while(!_loc3_)
                           {
                              §§goto(addr43);
                           }
                           §§goto(addr57);
                        }
                        addr35:
                     }
                     var _loc1_:int = 8;
                     var _loc2_:* = §>">§.status;
                     if(_loc4_)
                     {
                        §§push(§<!p§);
                        if(!_loc3_)
                        {
                           if(§§pop() !== _loc2_)
                           {
                              §§push(§4!1§);
                              if(!(_loc3_ && _loc2_))
                              {
                                 if(§§pop() === _loc2_)
                                 {
                                    if(_loc4_)
                                    {
                                       §§push(1);
                                       if(!_loc4_)
                                       {
                                          addr708:
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr722);
                                    }
                                    §§goto(addr735);
                                 }
                                 else
                                 {
                                    §§push(§30§);
                                    if(!(_loc3_ && _loc1_))
                                    {
                                       addr696:
                                       if(§§pop() === _loc2_)
                                       {
                                          if(!_loc3_)
                                          {
                                             §§push(2);
                                             if(!(_loc3_ && _loc3_))
                                             {
                                                §§goto(addr708);
                                             }
                                             else
                                             {
                                                §§goto(addr730);
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr722);
                                          }
                                          §§goto(addr735);
                                       }
                                       else
                                       {
                                          §§push(§5"2§);
                                       }
                                       §§goto(addr722);
                                    }
                                 }
                                 §§goto(addr722);
                              }
                              if(§§pop() === _loc2_)
                              {
                                 §§goto(addr722);
                              }
                              else
                              {
                                 §§push(4);
                              }
                              addr735:
                              loop26:
                              switch(§§pop())
                              {
                                 case 0:
                                    if(§>">§.t != §-"5§)
                                    {
                                       this.§3"§.txtTitle.text = §&A§.§43§.replace("%1",§>">§.n);
                                       while(true)
                                       {
                                          this.§3"§.txtDescription.text = §&A§.§3"4§;
                                          loop4:
                                          while(!(_loc3_ && _loc3_))
                                          {
                                             loop5:
                                             while(true)
                                             {
                                                this.§3"§.mcGiftIcon.gotoAndStop(1);
                                                addr591:
                                                while(true)
                                                {
                                                   if(!_loc4_)
                                                   {
                                                      continue loop4;
                                                   }
                                                   this.§3"§.btnClaim.visible = true;
                                                   while(true)
                                                   {
                                                      this.§3"§.btnGiftBack.visible = false;
                                                      if(!_loc3_)
                                                      {
                                                         if(!_loc3_)
                                                         {
                                                            this.§3"§.btnClose.visible = false;
                                                            this.§3"§.mcGiftCount.visible = false;
                                                            addr744:
                                                            this.§3"§.btnClose.visible = false;
                                                            break loop26;
                                                            addr566:
                                                            addr559:
                                                         }
                                                         else
                                                         {
                                                            addr637:
                                                         }
                                                         while(true)
                                                         {
                                                            this.§3"§.txtTitle.text = §&A§.§switch§.replace("%1",§>">§.n);
                                                            addr647:
                                                            while(true)
                                                            {
                                                               this.§3"§.txtDescription.text = §&A§.§0,§;
                                                               continue loop5;
                                                            }
                                                         }
                                                      }
                                                      break loop26;
                                                   }
                                                }
                                             }
                                             break loop26;
                                          }
                                       }
                                    }
                                    §§goto(addr637);
                                 case 1:
                                    if(§>">§.t == §-"5§)
                                    {
                                       if(!_loc3_)
                                       {
                                          this.§3"§.txtTitle.text = §&A§.§switch§.replace("%1",§>">§.n);
                                          this.§3"§.txtDescription.text = §&A§.§0,§;
                                          loop10:
                                          while(true)
                                          {
                                             addr492:
                                             loop7:
                                             while(true)
                                             {
                                                this.§3"§.mcGiftIcon.gotoAndStop(2);
                                                addr498:
                                                while(true)
                                                {
                                                   this.§3"§.btnClaim.visible = false;
                                                   addr484:
                                                   while(!(_loc3_ && _loc3_))
                                                   {
                                                      this.§3"§.btnGiftBack.visible = false;
                                                      while(true)
                                                      {
                                                         if(!_loc4_)
                                                         {
                                                            continue loop10;
                                                         }
                                                         this.§3"§.btnClose.visible = false;
                                                         this.§3"§.mcGiftCount.visible = false;
                                                         if(!(_loc3_ && _loc2_))
                                                         {
                                                            §§goto(addr744);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr630);
                                                         }
                                                      }
                                                   }
                                                   break loop7;
                                                }
                                                continue loop10;
                                             }
                                             §§goto(addr647);
                                          }
                                          addr552:
                                       }
                                       break;
                                    }
                                    this.§3"§.txtTitle.text = §&A§.§43§.replace("%1",§>">§.n);
                                    if(_loc4_)
                                    {
                                       this.§3"§.txtDescription.text = §&A§.§3"4§;
                                       if(_loc4_)
                                       {
                                          §§goto(addr492);
                                       }
                                    }
                                    §§goto(addr744);
                                 case 2:
                                    this.§3"§.txtTitle.text = §&A§.§5!J§.replace("%1",§>">§.n);
                                    this.§3"§.txtDescription.text = !!§>">§.content ? §&A§.§ "E§.replace("%1",§>,§.§'!i§(§>">§.content).§7!5§) : §&A§.§7k§;
                                    loop11:
                                    while(true)
                                    {
                                       this.§3"§.mcGiftIcon.gotoAndStop(!!§>">§.content ? 3 + this.§1q§(§>">§.content) : _loc1_);
                                       addr403:
                                       while(_loc4_ || _loc2_)
                                       {
                                          this.§3"§.btnClaim.visible = false;
                                          while(true)
                                          {
                                             if(_loc3_)
                                             {
                                                continue loop11;
                                             }
                                             this.§3"§.btnGiftBack.visible = §0!!§.§;"§.§>!Y§(§>">§.i);
                                             if(_loc4_)
                                             {
                                                this.§3"§.btnClose.visible = true;
                                                if(§>">§.receivedItems > 1)
                                                {
                                                   addr331:
                                                   if(_loc4_)
                                                   {
                                                      this.§3"§.mcGiftCount.visible = true;
                                                      while(!(_loc3_ && this))
                                                      {
                                                         this.§3"§.mcGiftCount.txtCount.text = §>">§.receivedItems;
                                                         if(_loc3_)
                                                         {
                                                            break loop26;
                                                         }
                                                         if(!(_loc4_ || _loc3_))
                                                         {
                                                            continue;
                                                         }
                                                         if(!_loc3_)
                                                         {
                                                            addr269:
                                                            §§goto(addr744);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr591);
                                                         }
                                                      }
                                                      §§goto(addr584);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr454);
                                                   }
                                                }
                                                else
                                                {
                                                   this.§3"§.mcGiftCount.visible = false;
                                                   addr298:
                                                   if(_loc4_ || _loc1_)
                                                   {
                                                      §§goto(addr269);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr552);
                                                   }
                                                }
                                                §§goto(addr647);
                                                addr352:
                                             }
                                             §§goto(addr475);
                                          }
                                       }
                                       break;
                                    }
                                    §§goto(addr468);
                                    addr447:
                                 case 3:
                                    this.§3"§.txtTitle.text = §&A§.§5!J§.replace("%1",§>">§.n);
                                    loop16:
                                    while(!(_loc3_ && this))
                                    {
                                       this.§3"§.txtDescription.text = !!§>">§.content ? §&A§.§ "E§.replace("%1",§>,§.§'!i§(§>">§.content).§7!5§) : §&A§.§7k§;
                                       loop17:
                                       while(!(_loc3_ && this))
                                       {
                                          this.§3"§.mcGiftIcon.gotoAndStop(!!§>">§.content ? 3 + this.§1q§(§>">§.content) : _loc1_);
                                          loop18:
                                          while(true)
                                          {
                                             this.§3"§.btnClaim.visible = false;
                                             loop19:
                                             while(true)
                                             {
                                                if(!_loc3_)
                                                {
                                                   if(!_loc3_)
                                                   {
                                                      if(!(_loc3_ && _loc1_))
                                                      {
                                                         this.§3"§.btnGiftBack.visible = false;
                                                         for(; _loc4_ || _loc3_; if(_loc4_ || _loc1_)
                                                         {
                                                            continue loop18;
                                                         })
                                                         {
                                                            if(_loc4_ || _loc1_)
                                                            {
                                                               this.§3"§.btnClose.visible = true;
                                                               if(_loc4_ || _loc3_)
                                                               {
                                                                  if(_loc4_ || _loc3_)
                                                                  {
                                                                     if(_loc4_)
                                                                     {
                                                                        if(§>">§.receivedItems > 1)
                                                                        {
                                                                           if(_loc4_ || _loc2_)
                                                                           {
                                                                              if(_loc4_ || _loc2_)
                                                                              {
                                                                                 if(!(_loc3_ && _loc1_))
                                                                                 {
                                                                                    this.§3"§.mcGiftCount.visible = true;
                                                                                    if(!(_loc3_ && _loc3_))
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                    §§goto(addr744);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr498);
                                                                                 }
                                                                              }
                                                                              §§goto(addr484);
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           this.§3"§.mcGiftCount.visible = false;
                                                                           if(_loc4_ || _loc2_)
                                                                           {
                                                                              if(!_loc3_)
                                                                              {
                                                                                 if(true)
                                                                                 {
                                                                                    addr80:
                                                                                    break loop18;
                                                                                 }
                                                                                 this.§3"§.mcGiftCount.txtCount.text = §>">§.receivedItems;
                                                                                 if(_loc3_ && this)
                                                                                 {
                                                                                    break loop26;
                                                                                 }
                                                                                 continue loop19;
                                                                              }
                                                                              continue loop17;
                                                                           }
                                                                        }
                                                                        §§goto(addr744);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr447);
                                                                     }
                                                                  }
                                                                  §§goto(addr403);
                                                               }
                                                               break loop26;
                                                            }
                                                            §§goto(addr566);
                                                         }
                                                         §§goto(addr331);
                                                      }
                                                      §§goto(addr559);
                                                   }
                                                   break;
                                                }
                                                continue loop16;
                                             }
                                             §§goto(addr352);
                                             if(!(_loc4_ || _loc3_))
                                             {
                                                continue;
                                             }
                                             §§goto(addr80);
                                          }
                                          §§goto(addr744);
                                       }
                                       §§goto(addr298);
                                    }
                                    §§goto(addr382);
                                 default:
                                    §§goto(addr744);
                              }
                              return;
                           }
                           if(!_loc3_)
                           {
                              §§push(0);
                              if(_loc4_ || this)
                              {
                              }
                           }
                           else
                           {
                              addr722:
                              §§push(3);
                              if(!(_loc3_ && _loc1_))
                              {
                                 addr730:
                              }
                           }
                           §§goto(addr735);
                           §§goto(addr722);
                        }
                        §§goto(addr696);
                     }
                     §§goto(addr722);
                  }
                  §§goto(addr41);
               }
            }
            §§goto(addr35);
         }
         §§goto(addr57);
      }
      
      protected function §4!;§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§3"§.txtTitle.text = §&A§.§7!@§.replace("%1",§>">§.n);
         }
         loop0:
         while(true)
         {
            this.§3"§.txtDescription.text = LevelManager.§^_§(§>">§.lvl).writtenName + " - " + § <§.§2!V§(§>">§.lvl);
            addr223:
            while(true)
            {
               this.§3"§.mcGiftIcon.gotoAndStop(1);
               continue loop0;
            }
         }
      }
      
      protected function §1q§(param1:String) : int
      {
         return §>v§.§89§.indexOf(param1);
      }
      
      override public function get height() : Number
      {
         return 60;
      }
   }
}
