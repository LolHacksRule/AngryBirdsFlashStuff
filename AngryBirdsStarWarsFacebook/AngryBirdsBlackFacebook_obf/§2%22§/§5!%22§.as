package §2"§
{
   import § !m§.§^"j§;
   import § "4§.§7q§;
   import §!"e§.§`"W§;
   import §,!,§.§0!d§;
   import §,"N§.§=!1§;
   import §,"N§.§@"b§;
   import §,"N§.§@#B§;
   import §2!f§.§]!J§;
   import §7"a§.§@4§;
   import §="2§.§?!r§;
   import §?m§.§,"X§;
   import §[!m§.§+5§;
   import §[!m§.§[!j§;
   import com.angrybirds.§9#[§;
   import com.rovio.assets.§5_§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §5!"§ extends §0!d§
   {
      
      public static const §]#§:String = "unclaimed";
      
      public static const §!!i§:String = "claiming";
      
      public static const §]K§:String = "claimed";
      
      public static const §>!s§:String = "giftedBack";
      
      public static const §8!!§:String = "helpRequest";
      
      public static const §["D§:String = "helpRequestSent";
      
      public static const §<#=§:String = "DAILY";
      
      public static const §8"l§:String = "INVITATION";
      
      public static const §,!<§:String = "unclaimedInviteGift";
      
      public static const §2!N§:String = "claimingInviteGift";
      
      public static const §8l§:String = "claimedInviteGift";
      
      public static const §?S§:String = "giftedBackInviteGift";
      
      public static var §4"G§:Object;
      
      private static var §,"g§:§,"X§;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §]#§ = "unclaimed";
            loop0:
            while(true)
            {
               §!!i§ = "claiming";
               loop1:
               while(true)
               {
                  §]K§ = "claimed";
                  while(true)
                  {
                     §>!s§ = "giftedBack";
                     loop3:
                     for(; _loc1_ || §5!"§; if(_loc1_ || _loc2_)
                     {
                        return;
                     })
                     {
                        if(_loc2_)
                        {
                           continue loop1;
                        }
                        §8!!§ = "helpRequest";
                        loop4:
                        while(true)
                        {
                           §["D§ = "helpRequestSent";
                           while(true)
                           {
                              §<#=§ = "DAILY";
                              continue loop4;
                              addr93:
                              loop7:
                              while(_loc1_ || _loc2_)
                              {
                                 §,!<§ = "unclaimedInviteGift";
                                 loop8:
                                 while(true)
                                 {
                                    §2!N§ = "claimingInviteGift";
                                    addr64:
                                    loop9:
                                    while(_loc1_ || §5!"§)
                                    {
                                       if(!_loc2_)
                                       {
                                          §8l§ = "claimedInviteGift";
                                          while(true)
                                          {
                                             if(!(_loc2_ && §5!"§))
                                             {
                                                if(_loc1_)
                                                {
                                                   if(!_loc1_)
                                                   {
                                                      break;
                                                   }
                                                   §?S§ = "giftedBackInviteGift";
                                                   while(_loc1_)
                                                   {
                                                      §4"G§ = {};
                                                      if(_loc1_)
                                                      {
                                                         continue loop3;
                                                      }
                                                   }
                                                   continue;
                                                }
                                                continue loop8;
                                             }
                                             continue loop9;
                                          }
                                          continue loop7;
                                          continue;
                                       }
                                       continue loop0;
                                    }
                                    continue loop4;
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr122);
      }
      
      protected var § !&§:§@4§;
      
      private var §?"R§:MovieClip;
      
      private var §&"-§:§=!1§;
      
      public function §5!"§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
            loop0:
            while(true)
            {
               this.§?"R§ = new §5_§.§`"G§("InboxItemRendererAsset")();
               while(true)
               {
                  addChild(this.§?"R§);
                  loop2:
                  while(true)
                  {
                     this.§?"R§.btnClaim.addEventListener(MouseEvent.CLICK,this.§=!>§);
                     while(true)
                     {
                        this.§?"R§.btnGiftBack.addEventListener(MouseEvent.CLICK,this.§ !"§);
                        loop4:
                        while(true)
                        {
                           this.§?"R§.btnClose.addEventListener(MouseEvent.CLICK,this.§6!E§);
                           addr189:
                           while(true)
                           {
                              this.§?"R§.btnPlay.addEventListener(MouseEvent.CLICK,this.§^#O§);
                              while(_loc2_)
                              {
                                 this.§?"R§.btnHelp.addEventListener(MouseEvent.CLICK,this.§`!D§);
                                 while(_loc2_ || _loc1_)
                                 {
                                    this.§?"R§.btnPlayTournament.addEventListener(MouseEvent.CLICK,this.§2"i§);
                                    continue loop0;
                                 }
                              }
                              continue loop4;
                           }
                        }
                        addr82:
                        if(!(_loc2_ || _loc1_))
                        {
                           continue;
                        }
                        this.§?"R§.stop();
                        while(true)
                        {
                           if(_loc2_)
                           {
                              if(_loc1_)
                              {
                                 break;
                              }
                              continue;
                           }
                           continue loop2;
                        }
                        §§goto(addr189);
                     }
                  }
                  addr126:
                  while(_loc2_ || this)
                  {
                     while(true)
                     {
                        this.§?"R§.btnBuySpin.addEventListener(MouseEvent.CLICK,this.§5#[§);
                        §§goto(addr99);
                     }
                     §§goto(addr56);
                     §§goto(addr47);
                  }
               }
            }
         }
         §§goto(addr133);
      }
      
      public static function §;y§(param1:§,"X§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §,"g§ = param1;
         }
      }
      
      private function §#!A§(param1:MouseEvent) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && this))
         {
            §^"j§(§%4§).§^"#§();
         }
         var _loc2_:int = 14;
         var _loc3_:int = 0;
         while(true)
         {
            if(_loc3_ >= _loc2_)
            {
               if(_loc5_)
               {
                  break;
               }
               if(!(_loc5_ && _loc3_))
               {
                  this.§!"D§();
                  break;
               }
               loop1:
               while(_loc5_ && _loc2_)
               {
                  while(true)
                  {
                     _loc3_++;
                     continue loop1;
                  }
               }
               continue;
            }
            this.§?"R§.addChild(new §"!F§(425 + Math.random() * 20,20 + Math.random() * 20));
            §§goto(addr101);
         }
      }
      
      private function §5#[§(param1:MouseEvent) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§[!j§ = null;
         var _loc2_:§@#B§ = §@#B§(§4#;§.singleton.dataModel);
         if(_loc4_ || _loc3_)
         {
            if(_loc2_.§1!f§.§]"g§ <= _loc2_.§`!W§.starCoins)
            {
               if(!_loc5_)
               {
                  §?!r§.§"#_§("coins_added_1");
               }
            }
            else
            {
               _loc3_ = §]!J§.§9P§(§`"W§.§+v§,§+5§.TOP,§]!J§.§[!v§);
               if(!_loc5_)
               {
                  §4#;§.singleton.popupManager.openPopup(_loc3_,true,true);
               }
               §§goto(addr112);
            }
         }
         while(true)
         {
            while(true)
            {
               §^"j§(§%4§).§^"#§();
               do
               {
                  this.§!"D§();
               }
               while(!(_loc4_ || _loc2_));
               
               if(_loc5_ && _loc3_)
               {
                  break;
               }
               if(true)
               {
                  addr112:
               }
               continue;
               return;
            }
         }
      }
      
      private function §1^§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§?"R§.gotoAndStop("free_spin_unclaimed");
            while(true)
            {
               this.§?"R§.txtTitle.text = §9#[§.§ !N§;
               while(!(_loc1_ && _loc1_))
               {
                  this.§?"R§.txtDescription.text = §9#[§.§<"m§;
                  if(!(_loc2_ || this))
                  {
                     continue;
                  }
                  return;
                  addr48:
               }
            }
         }
         §§goto(addr48);
      }
      
      private function §]"G§(param1:Boolean) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:MovieClip = null;
         if(_loc7_)
         {
            this.§?"R§.gotoAndStop("spin_complete");
         }
         var _loc2_:§@#B§ = §@#B§(§4#;§.singleton.dataModel);
         §§push(§^"j§(§%4§).§^"s§.itemId);
         if(_loc7_)
         {
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         §§push(_loc2_.§]"<§.§;#?§.§<Z§(_loc3_).§?#`§);
         if(!(_loc6_ && _loc3_))
         {
            §§push(§§pop());
         }
         var _loc4_:* = §§pop();
         if(!_loc6_)
         {
            if(_loc3_)
            {
               if(_loc7_ || param1)
               {
                  _loc5_ = this.§?"R§.rewardClaimed;
                  if(!(_loc6_ && param1))
                  {
                     if(!param1)
                     {
                        _loc5_.gotoAndPlay(1);
                        loop0:
                        while(true)
                        {
                           if(_loc7_ || this)
                           {
                              continue;
                           }
                           addr127:
                           while(true)
                           {
                              addr107:
                              while(true)
                              {
                                 continue loop0;
                              }
                           }
                        }
                     }
                     while(true)
                     {
                        _loc5_.gotoAndStop(_loc5_.totalFrames);
                     }
                  }
                  §§goto(addr127);
               }
               §§goto(addr186);
            }
            §§goto(addr128);
         }
         §§goto(addr186);
      }
      
      private function §!"D§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.§?"R§.gotoAndStop("spinning");
            while(true)
            {
               this.§?"R§.txtTitle.text = §9#[§.§@!J§;
               §§goto(addr73);
            }
         }
         addr73:
         while(true)
         {
            this.§?"R§.txtDescription.text = §9#[§.§]"P§;
            if(_loc2_)
            {
               if(_loc2_ || this)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      protected function §=!>§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            dispatchEvent(new §%r§(§%r§.§4#U§,data,true));
            do
            {
               this.§;f§();
            }
            while(!(_loc3_ || _loc2_));
            
         }
      }
      
      protected function § !"§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            dispatchEvent(new §%r§(§%r§.§>#N§,data,true));
            do
            {
               this.§;f§();
            }
            while(!_loc2_);
            
         }
      }
      
      protected function §6!E§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            dispatchEvent(new §%r§(§%r§.§]x§,data,true));
         }
      }
      
      protected function §^#O§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            dispatchEvent(new §%r§(§%r§.§+!j§,data,true));
         }
      }
      
      protected function §2"i§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            dispatchEvent(new §%r§(§%r§.§1"l§,data,true));
         }
      }
      
      protected function §`!D§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            dispatchEvent(new §%r§(§%r§.§'""§,data,true));
            do
            {
               this.§;f§();
            }
            while(_loc2_);
            
         }
      }
      
      protected function §?"u§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            dispatchEvent(new §%r§(§%r§.§8"L§,data,true));
         }
         do
         {
            this.§;f§();
         }
         while(_loc2_ && param1);
         
      }
      
      override public function set data(param1:Object) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            if(§%4§ is §^"j§)
            {
               while(true)
               {
                  §^"j§(§%4§).removeEventListener(§^"j§.§-"9§,this.§!!h§);
                  addr95:
                  addr34:
                  while(true)
                  {
                  }
                  if(!(_loc2_ && param1))
                  {
                     return;
                  }
               }
            }
            while(true)
            {
               super.data = param1;
               addr65:
               while(!(_loc2_ && _loc3_))
               {
               }
               §§goto(addr95);
            }
         }
         while(true)
         {
            if(!data)
            {
               if(_loc3_)
               {
                  if(!_loc2_)
                  {
                     break;
                  }
                  §§goto(addr65);
               }
               else
               {
                  loop5:
                  while(true)
                  {
                     addr29:
                     while(true)
                     {
                        this.§;f§();
                        if(_loc3_)
                        {
                           break;
                        }
                        continue loop5;
                     }
                     §§goto(addr34);
                  }
               }
               §§goto(addr95);
            }
            §§goto(addr29);
         }
      }
      
      protected function §;f§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§ !&§);
            if(!(_loc2_ && _loc3_))
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§ !&§);
                     if(_loc3_ || _loc1_)
                     {
                        if(§§pop().parent == this)
                        {
                           while(true)
                           {
                              removeChild(this.§ !&§);
                              addr234:
                              while(true)
                              {
                              }
                           }
                           addr230:
                        }
                        while(true)
                        {
                           this.§ !&§ = null;
                           addr207:
                           while(true)
                           {
                           }
                           §§goto(addr234);
                        }
                     }
                     break;
                  }
                  addr237:
                  §§pop().mouseEnabled = this.§ !&§.mouseChildren = false;
                  if(_loc3_ || _loc2_)
                  {
                     addChild(this.§ !&§);
                     while(true)
                     {
                        §%4§.cachedProfilePicture = this.§ !&§;
                        if(_loc2_ && this)
                        {
                           continue;
                        }
                     }
                     addr285:
                     addr253:
                  }
                  return;
                  addr218:
                  addr280:
               }
               loop4:
               while(true)
               {
                  if(§%4§)
                  {
                     loop5:
                     while(true)
                     {
                        if(§%4§ is §^"j§)
                        {
                           if(_loc3_ || this)
                           {
                              if(_loc3_ || _loc3_)
                              {
                                 §^"j§(§%4§).addEventListener(§^"j§.§-"9§,this.§!!h§);
                                 loop6:
                                 while(true)
                                 {
                                    this.§%#9§();
                                    loop7:
                                    while(!(_loc2_ && _loc1_))
                                    {
                                       loop8:
                                       while(true)
                                       {
                                          if(!§%4§.cachedProfilePicture)
                                          {
                                             this.§ !&§ = new §@4§(§%4§.i);
                                             if(_loc3_ || _loc2_)
                                             {
                                                if(_loc3_)
                                                {
                                                   if(!(_loc2_ && _loc2_))
                                                   {
                                                      if(!_loc2_)
                                                      {
                                                         if(_loc2_ && _loc3_)
                                                         {
                                                            break loop5;
                                                         }
                                                         if(false)
                                                         {
                                                            continue;
                                                         }
                                                         §§goto(addr237);
                                                         §§push(this.§ !&§);
                                                      }
                                                      while(true)
                                                      {
                                                         continue loop8;
                                                      }
                                                      addr154:
                                                   }
                                                   else
                                                   {
                                                      addr60:
                                                      if(_loc3_ || _loc1_)
                                                      {
                                                         this.§ !&§ = addChild(§%4§.cachedProfilePicture) as §@4§;
                                                      }
                                                      else
                                                      {
                                                         addr115:
                                                         while(true)
                                                         {
                                                            if(!_loc2_)
                                                            {
                                                               continue loop6;
                                                            }
                                                            continue loop7;
                                                         }
                                                         addr115:
                                                      }
                                                   }
                                                }
                                                if(_loc3_)
                                                {
                                                   break;
                                                }
                                                addr128:
                                                while(true)
                                                {
                                                   if(_loc2_ && _loc1_)
                                                   {
                                                      return;
                                                   }
                                                   addr197:
                                                   continue loop8;
                                                }
                                             }
                                             §§goto(addr285);
                                          }
                                          §§goto(addr60);
                                       }
                                       §§goto(addr237);
                                    }
                                    continue loop4;
                                 }
                              }
                              else
                              {
                                 if(!_loc2_)
                                 {
                                    if(_loc3_)
                                    {
                                       continue;
                                    }
                                    §§goto(addr230);
                                 }
                                 §§goto(addr234);
                              }
                              §§goto(addr234);
                           }
                           break loop4;
                        }
                        if(!§%4§.isBrag)
                        {
                           if(!§%4§.isChallenge)
                           {
                              if(§%4§.isInviteGift)
                              {
                                 if(!(_loc2_ && _loc1_))
                                 {
                                    this.§^"5§();
                                    if(_loc3_)
                                    {
                                       §§goto(addr56);
                                    }
                                    §§goto(addr280);
                                 }
                                 break loop4;
                              }
                              this.§9"R§();
                              if(_loc3_ || _loc1_)
                              {
                                 §§goto(addr56);
                              }
                              §§goto(addr237);
                           }
                           §§goto(addr115);
                        }
                        break;
                        §§goto(addr115);
                     }
                     while(true)
                     {
                        this.§<#6§();
                        §§goto(addr154);
                     }
                  }
                  §§goto(addr197);
               }
               §§goto(addr253);
            }
            §§goto(addr237);
         }
         §§goto(addr234);
      }
      
      private function §%#9§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§^"j§ = §^"j§(§%4§);
         if(!(_loc2_ && _loc1_))
         {
            if(!_loc1_.§1"d§)
            {
               if(_loc1_.§8!Q§ <= 0)
               {
                  this.§]"G§(true);
                  if(_loc3_)
                  {
                     if(!_loc3_)
                     {
                        addr62:
                        if(!(_loc2_ && _loc1_))
                        {
                           this.§1^§();
                           addr81:
                           if(_loc3_)
                           {
                              §§goto(addr30);
                           }
                           else
                           {
                              addr87:
                              this.§!"D§();
                           }
                           §§goto(addr30);
                        }
                     }
                     else
                     {
                        addr54:
                     }
                     addr30:
                     return;
                  }
                  §§goto(addr81);
               }
               §§goto(addr62);
            }
            §§goto(addr87);
         }
         §§goto(addr54);
      }
      
      private function §!!h§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§]"G§(false);
         }
      }
      
      private function §9"R§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            if(!§%4§.status)
            {
               if(!(_loc2_ && _loc2_))
               {
                  if(§%4§.isHelpRequest)
                  {
                     if(!_loc2_)
                     {
                        §%4§.status = §8!!§;
                        addr349:
                     }
                     §§goto(addr349);
                  }
                  else
                  {
                     §%4§.status = §]#§;
                     if(!(_loc3_ || this))
                     {
                        §§goto(addr349);
                     }
                  }
               }
               §§goto(addr349);
            }
            var _loc1_:* = §%4§.status;
            if(_loc3_ || this)
            {
               §§push(§8!!§);
               if(!_loc2_)
               {
                  if(§§pop() === _loc1_)
                  {
                     if(!(_loc2_ && this))
                     {
                        §§push(0);
                        if(_loc2_)
                        {
                           addr431:
                        }
                     }
                     else
                     {
                        addr391:
                        §§push(1);
                        if(_loc2_)
                        {
                        }
                     }
                  }
                  else
                  {
                     §§push(§["D§);
                     if(_loc3_)
                     {
                        if(§§pop() === _loc1_)
                        {
                           if(!(_loc2_ && _loc2_))
                           {
                              §§goto(addr391);
                           }
                           else
                           {
                              addr423:
                              §§push(3);
                              if(_loc3_ || _loc2_)
                              {
                                 §§goto(addr431);
                              }
                              else
                              {
                                 addr459:
                              }
                           }
                        }
                        else
                        {
                           §§push(§]#§);
                           if(_loc3_)
                           {
                              if(§§pop() === _loc1_)
                              {
                                 if(_loc3_ || this)
                                 {
                                    addr407:
                                    §§push(2);
                                    if(!_loc3_)
                                    {
                                       addr447:
                                    }
                                 }
                              }
                              else
                              {
                                 §§push(§!!i§);
                                 if(_loc3_ || _loc2_)
                                 {
                                    addr419:
                                    if(§§pop() === _loc1_)
                                    {
                                       if(!_loc2_)
                                       {
                                          §§goto(addr423);
                                       }
                                       else
                                       {
                                          §§goto(addr444);
                                       }
                                    }
                                    else
                                    {
                                       §§push(§]K§);
                                       if(_loc3_ || _loc1_)
                                       {
                                          addr440:
                                          if(§§pop() === _loc1_)
                                          {
                                             if(_loc3_)
                                             {
                                                addr444:
                                                §§push(4);
                                                if(!_loc2_)
                                                {
                                                   §§goto(addr447);
                                                }
                                             }
                                             else
                                             {
                                                addr451:
                                                §§push(5);
                                                if(!(_loc2_ && _loc2_))
                                                {
                                                   §§goto(addr459);
                                                }
                                             }
                                             §§goto(addr464);
                                          }
                                          else
                                          {
                                             §§push(§>!s§);
                                          }
                                          §§goto(addr451);
                                       }
                                    }
                                    §§goto(addr464);
                                 }
                                 if(§§pop() !== _loc1_)
                                 {
                                    addr464:
                                    loop4:
                                    switch(§§pop())
                                    {
                                       case 0:
                                          this.§?"R§.gotoAndStop("help_request");
                                          this.§?"R§.txtTitle.text = §9#[§.§7"l§.replace("%1",§%4§.n);
                                          this.§?"R§.txtDescription.text = §9#[§.§?#9§;
                                          addr308:
                                          break;
                                          addr316:
                                          addr296:
                                          addr308:
                                       case 1:
                                          this.§?"R§.gotoAndStop("help_request_sent");
                                          while(true)
                                          {
                                             this.§?"R§.txtTitle.text = §9#[§.§7"l§.replace("%1",§%4§.n);
                                             loop1:
                                             while(_loc3_ || _loc2_)
                                             {
                                                this.§?"R§.txtDescription.text = §9#[§.§"#I§;
                                                while(true)
                                                {
                                                   if(!_loc2_)
                                                   {
                                                      break loop4;
                                                   }
                                                   continue loop1;
                                                }
                                             }
                                          }
                                          break;
                                       case 2:
                                          this.§?"R§.gotoAndStop("unclaimed");
                                          this.§?"R§.txtTitle.text = §9#[§.§?!,§.replace("%1",§%4§.n);
                                          this.§?"R§.txtDescription.text = §9#[§.§<"C§;
                                          break;
                                          addr221:
                                          addr251:
                                          addr233:
                                       case 3:
                                          this.§?"R§.gotoAndStop("claiming");
                                          if(!(_loc2_ && _loc1_))
                                          {
                                             if(!_loc2_)
                                             {
                                                this.§?"R§.txtTitle.text = §9#[§.§?!,§.replace("%1",§%4§.n);
                                                addr189:
                                                if(_loc3_ || this)
                                                {
                                                   this.§?"R§.txtDescription.text = §9#[§.§<"C§;
                                                   addr175:
                                                   if(_loc3_)
                                                   {
                                                      break;
                                                   }
                                                   §§goto(addr316);
                                                }
                                                else
                                                {
                                                   §§goto(addr221);
                                                }
                                             }
                                             else
                                             {
                                                §§goto(addr259);
                                             }
                                          }
                                          §§goto(addr488);
                                       case 4:
                                          this.§?"R§.gotoAndStop("claimed");
                                          if(!_loc2_)
                                          {
                                             this.§?"R§.txtTitle.text = §9#[§.§!!5§.replace("%1",§%4§.n);
                                             addr155:
                                             if(_loc3_)
                                             {
                                                this.§?"R§.txtDescription.text = !!§%4§.content ? §9#[§.§+"8§.replace("%1",§%4§.content) : §9#[§.§8p§;
                                                if(!(_loc2_ && this))
                                                {
                                                   if(!(_loc2_ && _loc2_))
                                                   {
                                                      this.§?"R§.btnGiftBack.visible = this.§&"-§.§%#-§(§%4§.i);
                                                      if(!_loc2_)
                                                      {
                                                         break;
                                                      }
                                                      §§goto(addr488);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr189);
                                                   }
                                                }
                                                §§goto(addr488);
                                             }
                                             §§goto(addr296);
                                          }
                                          §§goto(addr488);
                                       case 5:
                                          this.§?"R§.gotoAndStop("gifted_back");
                                          if(!_loc2_)
                                          {
                                             if(!(_loc2_ && this))
                                             {
                                                if(_loc3_ || _loc1_)
                                                {
                                                   if(!(_loc2_ && _loc1_))
                                                   {
                                                      while(true)
                                                      {
                                                         this.§?"R§.txtTitle.text = §9#[§.§!!5§.replace("%1",§%4§.n);
                                                         if(_loc3_)
                                                         {
                                                            if(_loc3_)
                                                            {
                                                               this.§?"R§.txtDescription.text = !!§%4§.content ? §9#[§.§+"8§.replace("%1",§%4§.content) : §9#[§.§8p§;
                                                               if(_loc3_)
                                                               {
                                                                  if(!_loc2_)
                                                                  {
                                                                     if(true)
                                                                     {
                                                                        break loop4;
                                                                     }
                                                                     continue;
                                                                  }
                                                                  §§goto(addr308);
                                                               }
                                                               §§goto(addr488);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr175);
                                                            }
                                                         }
                                                         break loop4;
                                                      }
                                                      break;
                                                   }
                                                   §§goto(addr251);
                                                }
                                                §§goto(addr233);
                                             }
                                             else
                                             {
                                                §§goto(addr155);
                                             }
                                          }
                                    }
                                    this.§?"R§.btnClose.visible = false;
                                    addr488:
                                    return;
                                    §§push(6);
                                 }
                              }
                              §§goto(addr464);
                           }
                           §§goto(addr440);
                        }
                     }
                     §§goto(addr419);
                  }
                  §§goto(addr464);
               }
               §§goto(addr419);
            }
            §§goto(addr407);
         }
         §§goto(addr349);
      }
      
      private function §^"5§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(!§%4§.status)
            {
               if(_loc3_ || _loc2_)
               {
                  §%4§.status = §,!<§;
                  addr221:
               }
               §§goto(addr221);
            }
            var _loc1_:* = §%4§.status;
            if(_loc3_ || _loc3_)
            {
               §§push(§,!<§);
               if(_loc3_ || _loc3_)
               {
                  if(§§pop() === _loc1_)
                  {
                     if(!_loc2_)
                     {
                        §§push(0);
                        if(_loc2_)
                        {
                        }
                     }
                     else
                     {
                        addr289:
                        §§push(2);
                        if(!_loc2_)
                        {
                           addr292:
                        }
                        else
                        {
                           addr309:
                        }
                     }
                  }
                  else
                  {
                     §§push(§2!N§);
                     if(_loc3_ || this)
                     {
                        if(§§pop() === _loc1_)
                        {
                           if(_loc3_ || _loc1_)
                           {
                              §§push(1);
                              if(_loc3_ || _loc3_)
                              {
                              }
                              §§goto(addr314);
                           }
                           else
                           {
                              §§goto(addr289);
                           }
                        }
                        else
                        {
                           §§push(§8l§);
                           if(_loc3_ || _loc2_)
                           {
                              addr285:
                              if(§§pop() === _loc1_)
                              {
                                 if(!_loc2_)
                                 {
                                    §§goto(addr289);
                                 }
                              }
                              else
                              {
                                 addr294:
                                 if(§?S§ !== _loc1_)
                                 {
                                    addr314:
                                    loop5:
                                    switch(§§pop())
                                    {
                                       case 0:
                                          this.§?"R§.gotoAndStop("invite_gift_unclaimed");
                                          while(true)
                                          {
                                             this.§?"R§.txtTitle.text = §9#[§.§&!0§.replace("%1",§%4§.n);
                                             if(!(_loc3_ || _loc1_))
                                             {
                                                break loop5;
                                             }
                                             if(_loc2_ && _loc1_)
                                             {
                                                continue;
                                             }
                                             this.§?"R§.txtDescription.text = §9#[§.§=!3§;
                                             break loop5;
                                             addr173:
                                          }
                                          break;
                                       case 1:
                                          this.§?"R§.gotoAndStop("invite_gift_claiming");
                                          this.§?"R§.txtTitle.text = §9#[§.§!!A§;
                                          if(!(_loc2_ && _loc1_))
                                          {
                                             this.§?"R§.txtDescription.text = §9#[§.§0t§;
                                             if(_loc3_ || _loc3_)
                                             {
                                                break;
                                             }
                                             break;
                                          }
                                          break;
                                          addr165:
                                       case 2:
                                          this.§?"R§.gotoAndStop("invite_gift_claimed");
                                          loop1:
                                          while(true)
                                          {
                                             this.§?"R§.txtTitle.text = §9#[§.§2!F§;
                                             addr107:
                                             while(true)
                                             {
                                                if(!_loc2_)
                                                {
                                                   this.§?"R§.txtDescription.text = §9#[§.§?"r§;
                                                   while(true)
                                                   {
                                                      this.§?"R§.btnGiftBack.visible = this.§&"-§.§%#-§(§%4§.i);
                                                      if(!(_loc3_ || _loc3_))
                                                      {
                                                         break loop5;
                                                      }
                                                      if(_loc3_)
                                                      {
                                                         break loop5;
                                                      }
                                                      continue loop1;
                                                   }
                                                   addr99:
                                                }
                                                else
                                                {
                                                   §§goto(addr165);
                                                }
                                             }
                                          }
                                          break;
                                       case 3:
                                          this.§?"R§.gotoAndStop("invite_gift_gifted_back");
                                          if(!(_loc2_ && _loc2_))
                                          {
                                             if(!_loc2_)
                                             {
                                                while(true)
                                                {
                                                   this.§?"R§.txtTitle.text = §9#[§.§@!b§;
                                                   if(_loc3_)
                                                   {
                                                      if(_loc3_)
                                                      {
                                                         this.§?"R§.txtDescription.text = §9#[§.§ !j§;
                                                         if(_loc3_ || this)
                                                         {
                                                            if(_loc3_ || _loc1_)
                                                            {
                                                               if(true)
                                                               {
                                                                  break loop5;
                                                               }
                                                               continue;
                                                            }
                                                            §§goto(addr107);
                                                         }
                                                         break loop5;
                                                      }
                                                      §§goto(addr173);
                                                   }
                                                   break loop5;
                                                }
                                             }
                                             §§goto(addr99);
                                          }
                                    }
                                    return;
                                    §§push(4);
                                 }
                              }
                              §§goto(addr314);
                              §§goto(addr314);
                           }
                           §§goto(addr294);
                        }
                     }
                     §§goto(addr285);
                  }
                  §§goto(addr314);
               }
               §§goto(addr285);
            }
            §§goto(addr289);
         }
         §§goto(addr221);
      }
      
      private function §<#6§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§@"b§ = null;
         if(_loc2_)
         {
            this.§?"R§.txtTitle.text = §9#[§.§;"@§.replace("%1",§%4§.n);
            if(_loc2_)
            {
               this.§?"R§.gotoAndStop("brag");
               if(!_loc3_)
               {
                  addr39:
                  if(§%4§.lvl.indexOf("2000-") != -1)
                  {
                     if(_loc2_)
                     {
                        addr47:
                        _loc1_ = §@#B§(§4#;§.singleton.dataModel).§!!C§;
                        if(_loc2_)
                        {
                           if(_loc1_.§["^§(§%4§.lvl))
                           {
                              if(_loc1_.isLevelOpen(§%4§.lvl))
                              {
                                 this.§?"R§.txtDescription.text = §,"g§.getPrettyLevelString(§%4§.lvl);
                                 loop0:
                                 for(; !_loc3_; this.§?"R§.btnPlay.visible = true,if(_loc3_)
                                 {
                                    continue;
                                 },if(false)
                                 {
                                    addr68:
                                 },§§goto(addr148))
                                 {
                                    if(!_loc3_)
                                    {
                                       if(_loc2_)
                                       {
                                          continue;
                                       }
                                    }
                                    else
                                    {
                                       loop1:
                                       while(true)
                                       {
                                          if(!_loc3_)
                                          {
                                             this.§?"R§.btnPlay.visible = false;
                                             break loop0;
                                          }
                                          addr141:
                                          this.§?"R§.txtDescription.text = §9#[§.§#"o§;
                                          addr118:
                                          while(true)
                                          {
                                             if(!_loc2_)
                                             {
                                                break loop1;
                                             }
                                             this.§?"R§.txtDescription.text = §9#[§.§%!u§;
                                             continue loop1;
                                          }
                                       }
                                       addr174:
                                       return;
                                       addr135:
                                       addr148:
                                    }
                                    this.§?"R§.btnPlay.visible = false;
                                    §§goto(addr135);
                                 }
                                 while(true)
                                 {
                                    if(!(_loc3_ && this))
                                    {
                                       addr109:
                                       §§goto(addr68);
                                    }
                                 }
                                 §§goto(addr135);
                              }
                              §§goto(addr118);
                           }
                           §§goto(addr141);
                        }
                        §§goto(addr109);
                     }
                  }
                  else
                  {
                     this.§?"R§.txtDescription.text = §,"g§.getPrettyLevelString(§%4§.lvl);
                     if(_loc2_)
                     {
                        addr169:
                        this.§?"R§.btnPlay.visible = true;
                     }
                  }
                  §§goto(addr174);
               }
               §§goto(addr169);
            }
            §§goto(addr47);
         }
         §§goto(addr39);
      }
      
      private function §"#<§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            this.§?"R§.gotoAndStop("challenge");
            loop0:
            while(true)
            {
               if(§7q§(§4#;§.singleton.dataModel.userProgress).§#F§)
               {
                  if(_loc2_ || this)
                  {
                     this.§?"R§.txtTitle.text = §9#[§.§?"t§.replace("%1",§%4§.n);
                     break;
                  }
                  break;
               }
               this.§?"R§.txtTitle.text = §9#[§.§6!r§.replace("%1",§%4§.n);
               while(true)
               {
                  if(_loc1_)
                  {
                     break loop0;
                  }
                  if(_loc2_)
                  {
                     this.§?"R§.txtDescription.text = §9#[§.§;>§;
                     continue;
                  }
                  continue loop0;
               }
               addr100:
               §§goto(addr25);
            }
            this.§?"R§.txtDescription.text = §9#[§.§2#O§;
         }
         §§goto(addr100);
      }
      
      override public function get height() : Number
      {
         return 55;
      }
   }
}
