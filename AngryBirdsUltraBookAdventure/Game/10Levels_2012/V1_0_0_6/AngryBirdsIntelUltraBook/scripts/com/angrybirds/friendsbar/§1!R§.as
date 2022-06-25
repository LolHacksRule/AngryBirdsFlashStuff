package com.angrybirds.friendsbar
{
   import §"x§.§-8§;
   import §#!"§.§"U§;
   import §#!"§.§0a§;
   import §#&§.§+!@§;
   import §#&§.§]!B§;
   import §#&§.§`S§;
   import §5!c§.§9'§;
   import §6!Y§.§"F§;
   import §6!Y§.§0!x§;
   import §7@§.§4C§;
   import §7@§.§?!7§;
   import §]+§.§@!J§;
   import com.AngryBirds.friendsbar.FriendsBarAsset;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class §1!R§ extends Sprite
   {
      
      public static const §7!U§:String = "SidebarButtonStateInfo";
      
      public static const §2a§:String = "SidebarButtonStatePlay";
      
      public static const §5!8§:String = "SidebarButtonStateNone";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || §1!R§)
         {
            §7!U§ = "SidebarButtonStateInfo";
            while(true)
            {
               §2a§ = "SidebarButtonStatePlay";
               while(!_loc1_)
               {
                  §5!8§ = "SidebarButtonStateNone";
                  if(_loc2_)
                  {
                     return;
                     addr45:
                  }
               }
            }
         }
         §§goto(addr45);
      }
      
      private var §`J§:§0a§;
      
      private var §8!K§:Array;
      
      private var §!!^§:FriendsBarAsset;
      
      private var § j§:String;
      
      private var §[!Y§:§"F§;
      
      private var §%^§:String = "";
      
      private var §-!-§:§0!x§;
      
      private var §^o§:String;
      
      private var §=!M§:Boolean;
      
      public function §1!R§(param1:§"F§, param2:String, param3:String)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param3)
         {
            super();
            loop0:
            while(true)
            {
               §"U§.§7!2§ = param3;
               do
               {
                  this.§^o§ = param3;
                  do
                  {
                     this.§[!Y§ = param1;
                     continue loop0;
                  }
                  while(!(_loc5_ || param3));
                  
               }
               while(_loc4_);
               
            }
         }
      }
      
      public function §++§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§!!^§.§4[§.text = param1;
         }
      }
      
      private function init() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§!!^§ = new FriendsBarAsset();
            if(_loc2_)
            {
               addChild(this.§!!^§);
               if(!_loc3_)
               {
                  this.§++§("Total scores");
                  loop0:
                  while(true)
                  {
                     this.§#!w§();
                     if(!_loc3_)
                     {
                        while(true)
                        {
                           MovieClip(this.§!!^§.§7!5§.soundsOff).mouseEnabled = false;
                           loop19:
                           while(true)
                           {
                              MovieClip(this.§!!^§.§7!5§.soundsOff).mouseChildren = false;
                              if(!(_loc3_ && this))
                              {
                                 this.§`J§ = new §0a§(250,250,[],§"U§,2,15);
                                 if(!(_loc3_ && _loc2_))
                                 {
                                    addChild(this.§`J§.scrollerSprite);
                                    if(!(_loc3_ && _loc1_))
                                    {
                                       §§push(this.§`J§);
                                       loop20:
                                       while(true)
                                       {
                                          §§pop().scrollerSprite.rotation = 90;
                                          if(_loc2_)
                                          {
                                             if(_loc3_)
                                             {
                                                continue loop19;
                                             }
                                             §§push(this.§`J§);
                                             while(true)
                                             {
                                                §§pop().scrollerSprite.x = 180 + 10;
                                                if(_loc2_ || _loc1_)
                                                {
                                                   §§push(this.§`J§);
                                                   if(!(_loc3_ && _loc3_))
                                                   {
                                                      if(!_loc2_)
                                                      {
                                                         continue;
                                                      }
                                                      if(!_loc2_)
                                                      {
                                                         continue loop20;
                                                      }
                                                      §§pop().scrollerSprite.y = 150;
                                                      if(_loc2_ || _loc2_)
                                                      {
                                                         addr49:
                                                         this.§!!^§.§%x§.addEventListener(MouseEvent.CLICK,this.§%3§);
                                                         addr46:
                                                         if(!(_loc3_ && _loc2_))
                                                         {
                                                            continue loop0;
                                                         }
                                                         addr240:
                                                         addr420:
                                                         addr413:
                                                         this.§!!^§.§7!5§.btnInvite.addEventListener(MouseEvent.CLICK,this.§0!6§);
                                                         loop8:
                                                         while(true)
                                                         {
                                                            §§push(this.§!!^§);
                                                            addr401:
                                                            while(true)
                                                            {
                                                               if(_loc2_)
                                                               {
                                                                  break loop8;
                                                               }
                                                               continue loop8;
                                                            }
                                                         }
                                                         §§pop().§7!5§.btnFullscreen.addEventListener(MouseEvent.CLICK,this.§=d§);
                                                         break loop20;
                                                         addr240:
                                                         addr420:
                                                      }
                                                      §§goto(addr240);
                                                   }
                                                   addr290:
                                                   §§pop().scrollerSprite.addEventListener(§4C§.§,>§,this.§;!d§);
                                                   loop2:
                                                   while(!(_loc3_ && _loc2_))
                                                   {
                                                      §§push(this.§[!Y§);
                                                      loop3:
                                                      while(true)
                                                      {
                                                         §§push(§§pop().§[!0§());
                                                         addr279:
                                                         while(true)
                                                         {
                                                            §§pop().addEventListener(§?!7§.§-t§,this.§4!t§);
                                                            addr284:
                                                            addr241:
                                                            while(true)
                                                            {
                                                               if(!_loc3_)
                                                               {
                                                                  continue loop3;
                                                               }
                                                               addr397:
                                                               addr397:
                                                               loop11:
                                                               while(_loc2_ || this)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§!!^§);
                                                                     if(!(_loc3_ && _loc3_))
                                                                     {
                                                                        addr380:
                                                                        if(!(_loc3_ && _loc2_))
                                                                        {
                                                                           if(_loc2_)
                                                                           {
                                                                              addr323:
                                                                              §§pop().§]!§.addEventListener(MouseEvent.CLICK,this.§]b§);
                                                                              break loop2;
                                                                           }
                                                                           §§goto(addr401);
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§pop().§7!5§.btnSound.addEventListener(MouseEvent.CLICK,this.§0!;§);
                                                                           break loop11;
                                                                        }
                                                                        addr380:
                                                                     }
                                                                     addr335:
                                                                     addr355:
                                                                     while(_loc2_)
                                                                     {
                                                                        §§pop().§7!5§.btnTutorial.addEventListener(MouseEvent.CLICK,this.§]!J§);
                                                                        continue loop11;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§pop().§7!5§.btnInfo.addEventListener(MouseEvent.CLICK,this.§>q§);
                                                                        addr362:
                                                                        while(!(_loc3_ && this))
                                                                        {
                                                                           if(!(_loc3_ && _loc3_))
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§goto(addr335);
                                                                              }
                                                                              addr376:
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr420);
                                                                           }
                                                                        }
                                                                        break loop20;
                                                                     }
                                                                  }
                                                               }
                                                               while(true)
                                                               {
                                                                  §§goto(addr355);
                                                               }
                                                            }
                                                            return;
                                                         }
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      if(!_loc3_)
                                                      {
                                                         break loop0;
                                                      }
                                                      §§goto(addr362);
                                                      §§goto(addr323);
                                                   }
                                                }
                                                §§goto(addr397);
                                             }
                                          }
                                          break;
                                       }
                                       while(true)
                                       {
                                          §§goto(addr380);
                                       }
                                    }
                                 }
                                 §§goto(addr420);
                              }
                              §§goto(addr397);
                           }
                        }
                        addr187:
                     }
                     break;
                  }
                  while(true)
                  {
                     §§goto(addr290);
                  }
               }
               §§goto(addr376);
            }
            §§goto(addr351);
         }
         §§goto(addr187);
      }
      
      public function §=!Q§(param1:String = "SidebarButtonStateInfo") : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            §-8§.log("Changing state");
            loop0:
            while(true)
            {
               §§push(param1);
               loop1:
               while(true)
               {
                  §§push(§7!U§);
                  addr247:
                  addr248:
                  while(§§pop() != §§pop())
                  {
                     §§push(param1);
                     continue loop1;
                  }
                  loop18:
                  while(true)
                  {
                     §-8§.log("Info state");
                     loop7:
                     for(; !_loc2_; if(_loc2_ && param1)
                     {
                        continue;
                     },§§goto(addr102))
                     {
                        SimpleButton(this.§!!^§.§7!5§.btnInfo).visible = true;
                        loop8:
                        while(true)
                        {
                           SimpleButton(this.§!!^§.§7!5§.btnTutorial).visible = false;
                           loop9:
                           while(true)
                           {
                              SimpleButton(this.§!!^§.§7!5§.btnFullscreen).visible = true;
                              loop17:
                              while(true)
                              {
                                 if(!_loc3_)
                                 {
                                    continue loop8;
                                 }
                                 loop12:
                                 while(true)
                                 {
                                    SimpleButton(this.§!!^§.§7!5§.btnTutorial).alpha = param1 == §5!8§ ? Number(0.5) : Number(1);
                                    loop13:
                                    for(; !_loc2_; SimpleButton(this.§!!^§.§7!5§.btnTutorial).mouseEnabled = param1 == §5!8§ ? false : true,if(!_loc3_)
                                    {
                                       continue;
                                    },if(!_loc2_)
                                    {
                                       if(_loc3_)
                                       {
                                          if(!_loc2_)
                                          {
                                             if(!_loc2_)
                                             {
                                                break loop12;
                                             }
                                             continue loop9;
                                          }
                                          §§goto(addr187);
                                       }
                                       else
                                       {
                                          loop14:
                                          while(true)
                                          {
                                             SimpleButton(this.§!!^§.§7!5§.btnInfo).visible = false;
                                             break loop13;
                                             addr140:
                                             while(true)
                                             {
                                                §-8§.log("Play state");
                                                continue loop14;
                                             }
                                          }
                                       }
                                    },while(_loc2_)
                                    {
                                       §§goto(addr140);
                                    },§§goto(addr88),addr86:)
                                    {
                                       if(!_loc2_)
                                       {
                                          continue;
                                       }
                                       loop10:
                                       while(true)
                                       {
                                          if(_loc3_ || this)
                                          {
                                             SimpleButton(this.§!!^§.§7!5§.btnTutorial).visible = true;
                                             while(true)
                                             {
                                                continue loop12;
                                                addr88:
                                                if(!(_loc2_ && _loc2_))
                                                {
                                                   continue loop7;
                                                }
                                             }
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                §-8§.log("None state");
                                                addr187:
                                                while(true)
                                                {
                                                   if(_loc3_ || _loc2_)
                                                   {
                                                      if(_loc3_ || _loc2_)
                                                      {
                                                         SimpleButton(this.§!!^§.§7!5§.btnInfo).visible = false;
                                                         continue loop10;
                                                      }
                                                      continue loop18;
                                                   }
                                                   continue loop17;
                                                }
                                                continue loop10;
                                             }
                                             addr184:
                                          }
                                       }
                                    }
                                    while(true)
                                    {
                                       SimpleButton(this.§!!^§.§7!5§.btnTutorial).visible = true;
                                       §§goto(addr86);
                                    }
                                 }
                              }
                           }
                        }
                     }
                     continue loop0;
                  }
               }
            }
         }
      }
      
      public function §#!w§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(!§9'§.§5h§())
            {
               MovieClip(this.§!!^§.§7!5§.soundsOff).visible = true;
               if(!(_loc1_ || _loc2_))
               {
                  addr75:
               }
               return;
            }
            if(_loc1_)
            {
               MovieClip(this.§!!^§.§7!5§.soundsOff).visible = false;
            }
         }
         §§goto(addr75);
      }
      
      private function §0!6§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            dispatchEvent(new §4C§(§4C§.§,>§));
         }
      }
      
      private function §;!d§(param1:§4C§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§]!B§ = param1.data as §]!B§;
         if(!_loc3_)
         {
            §0!x§.§,6§.push(_loc2_.userId);
            loop0:
            while(true)
            {
               §§push(this.§[!Y§);
               if(_loc4_ || this)
               {
                  §§push(§§pop().§[!0§());
                  if(!_loc3_)
                  {
                     if(§§pop().data.indexOf(_loc2_) != -1)
                     {
                        while(true)
                        {
                           §§push(this.§[!Y§);
                           addr193:
                           while(true)
                           {
                              §§push(§§pop().§[!0§());
                              addr194:
                              while(true)
                              {
                                 §§pop().data.splice(this.§[!Y§.§[!0§().data.indexOf(_loc2_),1);
                                 addr203:
                                 while(true)
                                 {
                                 }
                              }
                           }
                        }
                        addr191:
                     }
                     loop2:
                     while(true)
                     {
                        §§push(this.§-!-§);
                        loop3:
                        while(true)
                        {
                           §§push(Boolean(§§pop()));
                           loop4:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 loop5:
                                 while(true)
                                 {
                                    §§pop();
                                    loop6:
                                    while(true)
                                    {
                                       §§push(this.§-!-§);
                                       if(!_loc3_)
                                       {
                                          if(!_loc4_)
                                          {
                                             break;
                                          }
                                          §§push(§§pop().data.indexOf(_loc2_) == -1);
                                          if(!(_loc3_ && this))
                                          {
                                             §§push(!§§pop());
                                          }
                                          if(_loc3_ && this)
                                          {
                                             continue loop5;
                                          }
                                          if(_loc3_ && param1)
                                          {
                                             continue loop4;
                                          }
                                          while(true)
                                          {
                                             if(!§§pop())
                                             {
                                                while(true)
                                                {
                                                   this.§[!C§();
                                                   while(true)
                                                   {
                                                      this.§^!M§();
                                                      while(true)
                                                      {
                                                         if(!(_loc3_ && this))
                                                         {
                                                            if(_loc4_ || param1)
                                                            {
                                                               continue;
                                                            }
                                                            addr128:
                                                            while(true)
                                                            {
                                                               if(_loc4_)
                                                               {
                                                                  addr130:
                                                                  §§push(this.§-!-§);
                                                                  while(true)
                                                                  {
                                                                     §§pop().data.splice(this.§-!-§.data.indexOf(_loc2_),1);
                                                                     §§goto(addr130);
                                                                  }
                                                                  addr132:
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr191);
                                                               }
                                                            }
                                                         }
                                                         while(!(_loc3_ && param1))
                                                         {
                                                            continue loop0;
                                                         }
                                                         continue loop6;
                                                      }
                                                      continue loop2;
                                                      if(!(_loc3_ && param1))
                                                      {
                                                         if(_loc4_ || param1)
                                                         {
                                                            return;
                                                         }
                                                         continue loop2;
                                                      }
                                                   }
                                                }
                                                addr78:
                                             }
                                             §§goto(addr128);
                                          }
                                       }
                                       §§goto(addr132);
                                    }
                                    continue loop3;
                                 }
                              }
                              §§goto(addr126);
                           }
                        }
                     }
                  }
                  §§goto(addr194);
               }
               §§goto(addr193);
            }
         }
         §§goto(addr203);
      }
      
      private function §=d§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            dispatchEvent(new §4C§(§4C§.§=!L§));
         }
      }
      
      private function §0!;§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            dispatchEvent(new §4C§(§4C§.§`!c§));
         }
         do
         {
            this.§#!w§();
         }
         while(_loc3_ && _loc3_);
         
      }
      
      private function §>q§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §-8§.log(§4C§.§1j§);
            do
            {
               dispatchEvent(new §4C§(§4C§.§1j§));
            }
            while(!_loc3_);
            
         }
      }
      
      private function §]!J§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            §-8§.log(§4C§.§9P§);
            do
            {
               dispatchEvent(new §4C§(§4C§.§9P§));
            }
            while(_loc3_);
            
         }
      }
      
      private function §%3§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.scroll(-this.§`J§.§#X§);
         }
      }
      
      private function §0!U§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.scroll(this.§`J§.§#X§);
         }
      }
      
      private function §]b§(param1:MouseEvent) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:String = "http://www.facebook.com/Intel";
         if(_loc5_ || this)
         {
            §@!J§.§!v§(_loc2_);
            if(_loc5_ || param1)
            {
               addr56:
               §[!P§.§;!K§.§&2§();
            }
            var _loc3_:URLRequest = new URLRequest(_loc2_);
            if(_loc5_)
            {
               navigateToURL(_loc3_,"_blank");
            }
            return;
         }
         §§goto(addr56);
      }
      
      override public function set height(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.resize(param1);
         }
      }
      
      private function resize(param1:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:Number = Math.max(param1,330);
         if(!_loc4_)
         {
            §§push(this.§!!^§);
            while(true)
            {
               §§pop().§[<§.height = _loc2_ - this.§!!^§.§,!n§.height - this.§!!^§.§#!K§.height + 5;
               addr130:
               while(true)
               {
                  §§push(this.§!!^§);
                  addr101:
                  loop2:
                  while(true)
                  {
                     §§pop().§#!K§.y = this.§!!^§.§[<§.y + this.§!!^§.§[<§.height;
                     addr112:
                     while(true)
                     {
                        addr55:
                        while(true)
                        {
                           §§push(this.§!!^§);
                           continue loop2;
                        }
                     }
                  }
               }
               if(!(_loc5_ || param1))
               {
                  continue;
               }
               §§pop().§7!5§.y = this.§!!^§.§#!K§.y + 55;
               loop6:
               for(; !(_loc4_ && _loc3_); §§pop().§ !G§.y = this.§!!^§.§#!K§.y + 45,if(!(_loc5_ || param1))
               {
                  continue;
               },if(!_loc4_)
               {
                  if(false)
                  {
                     §§goto(addr55);
                  }
                  else
                  {
                     §§goto(addr131);
                  }
               }
               else
               {
                  §§goto(addr130);
               },§§goto(addr101))
               {
                  while(true)
                  {
                     §§push(this.§!!^§);
                     if(!(_loc4_ && _loc2_))
                     {
                        continue loop6;
                     }
                     §§goto(addr58);
                  }
                  §§push(_loc2_);
                  if(!_loc4_)
                  {
                     §§push(this.§!!^§.§#!K§.height - 30);
                     if(!_loc4_)
                     {
                        §§push(§§pop() + this.§!!^§.§,!n§.height - 30);
                     }
                     §§push(§§pop() - §§pop());
                     if(!(_loc4_ && param1))
                     {
                        addr167:
                        §§push(Number(§§pop()));
                     }
                     var _loc3_:* = §§pop();
                     if(!_loc4_)
                     {
                        this.§`J§.§?!]§(_loc3_);
                     }
                     do
                     {
                        this.§^!M§();
                     }
                     while(_loc4_);
                     
                     return;
                  }
                  §§goto(addr167);
               }
               §§goto(addr112);
            }
         }
         §§goto(addr97);
      }
      
      public function §5_§(param1:String, param2:String, param3:§0!x§ = null, param4:Boolean = false) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || param2)
         {
            §§push(this.§%^§);
            loop0:
            while(true)
            {
               §§push(param2);
               loop1:
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  if(_loc5_ || this)
                  {
                     §§push(§§pop());
                     loop2:
                     while(true)
                     {
                        if(§§pop())
                        {
                           addr420:
                           while(true)
                           {
                              §§pop();
                              addr421:
                              while(true)
                              {
                                 §§push(this.§=!M§);
                                 addr402:
                                 while(true)
                                 {
                                    §§push(!§§pop());
                                 }
                              }
                           }
                           addr420:
                        }
                        while(true)
                        {
                           loop4:
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 loop5:
                                 while(true)
                                 {
                                    this.§=!M§ = false;
                                    loop6:
                                    while(true)
                                    {
                                       §§push(this.§-!-§);
                                       loop7:
                                       while(true)
                                       {
                                          §§push(Boolean(§§pop()));
                                          if(_loc5_)
                                          {
                                             §§push(§§pop());
                                             continue loop2;
                                          }
                                          addr392:
                                          loop44:
                                          while(true)
                                          {
                                             §§pop();
                                             loop45:
                                             while(true)
                                             {
                                                §§push(this.§%^§);
                                                addr346:
                                                addr353:
                                                while(true)
                                                {
                                                   §§push(param2);
                                                   if(!_loc6_)
                                                   {
                                                      addr350:
                                                      §§push(§§pop() != §§pop());
                                                      if(!_loc6_)
                                                      {
                                                         break;
                                                      }
                                                      continue loop44;
                                                   }
                                                   continue loop1;
                                                }
                                                if(_loc6_ && this)
                                                {
                                                   continue loop4;
                                                }
                                                if(!_loc6_)
                                                {
                                                   while(true)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(this.§-!-§);
                                                            addr366:
                                                            while(true)
                                                            {
                                                               §§push(§?!7§.§-t§);
                                                               addr368:
                                                               while(true)
                                                               {
                                                                  §§pop().removeEventListener(§§pop(),this.§-2§);
                                                                  addr371:
                                                                  while(true)
                                                                  {
                                                                     this.§-!-§ = null;
                                                                     addr335:
                                                                     while(_loc5_ || this)
                                                                     {
                                                                     }
                                                                     continue loop5;
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         addr364:
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(param2);
                                                         if(!_loc5_)
                                                         {
                                                            break;
                                                         }
                                                         if(!_loc5_)
                                                         {
                                                            continue loop0;
                                                         }
                                                         if(!§§pop())
                                                         {
                                                            this.§++§("Total scores");
                                                            loop16:
                                                            while(true)
                                                            {
                                                               if(_loc5_ || param2)
                                                               {
                                                                  if(!_loc5_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  §"U§.§"!i§ = false;
                                                                  loop17:
                                                                  while(true)
                                                                  {
                                                                     if(_loc5_ || param3)
                                                                     {
                                                                        this.§8!K§ = this.§[!Y§.§[!0§().data;
                                                                        loop18:
                                                                        while(true)
                                                                        {
                                                                           if(!_loc6_)
                                                                           {
                                                                              if(!_loc5_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              this.§[!C§();
                                                                              loop19:
                                                                              while(_loc5_)
                                                                              {
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    if(!(_loc6_ && this))
                                                                                    {
                                                                                       if(!_loc6_)
                                                                                       {
                                                                                          this.§@!Q§(this.§[!Y§.§[!0§().§%X§);
                                                                                          loop20:
                                                                                          while(!_loc6_)
                                                                                          {
                                                                                             if(_loc6_)
                                                                                             {
                                                                                                return;
                                                                                             }
                                                                                             addr405:
                                                                                             this.§^!M§();
                                                                                             loop21:
                                                                                             while(!_loc6_)
                                                                                             {
                                                                                                if(!_loc6_)
                                                                                                {
                                                                                                   if(_loc5_ || param1)
                                                                                                   {
                                                                                                      this.§[!Y§.§[!0§().§-#§(0,0);
                                                                                                      loop22:
                                                                                                      for(; !_loc6_; while(_loc5_ || this)
                                                                                                      {
                                                                                                         if(_loc6_)
                                                                                                         {
                                                                                                            continue loop21;
                                                                                                         }
                                                                                                         §§goto(addr28);
                                                                                                      })
                                                                                                      {
                                                                                                         if(!_loc6_)
                                                                                                         {
                                                                                                            this.§=!Q§(§7!U§);
                                                                                                            continue;
                                                                                                         }
                                                                                                         addr327:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §"U§.§"!i§ = true;
                                                                                                            loop30:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               this.§++§("Level scores");
                                                                                                               addr312:
                                                                                                               while(_loc5_ || param2)
                                                                                                               {
                                                                                                                  if(param3 != null)
                                                                                                                  {
                                                                                                                     this.§-!-§ = param3;
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        loop26:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(false);
                                                                                                                           if(!(_loc6_ && this))
                                                                                                                           {
                                                                                                                              if(_loc5_)
                                                                                                                              {
                                                                                                                                 addr239:
                                                                                                                                 §§push(§§pop());
                                                                                                                                 if(_loc6_ && param3)
                                                                                                                                 {
                                                                                                                                    continue loop2;
                                                                                                                                 }
                                                                                                                                 param4 = §§pop();
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 §§goto(addr350);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           if(_loc6_ && param2)
                                                                                                                           {
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           if(_loc5_ || this)
                                                                                                                           {
                                                                                                                              if(§§pop())
                                                                                                                              {
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    loop32:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §"U§.§"!i§ = true;
                                                                                                                                       addr220:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(_loc5_ || param3)
                                                                                                                                          {
                                                                                                                                             this.§`J§.data = [];
                                                                                                                                             while(!(_loc6_ && param2))
                                                                                                                                             {
                                                                                                                                                this.§^!M§();
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(this.§-!-§);
                                                                                                                                                   if(!_loc6_)
                                                                                                                                                   {
                                                                                                                                                      addr168:
                                                                                                                                                      if(_loc5_ || param1)
                                                                                                                                                      {
                                                                                                                                                         if(!§§pop().§@B§)
                                                                                                                                                         {
                                                                                                                                                            addr299:
                                                                                                                                                            while(_loc5_)
                                                                                                                                                            {
                                                                                                                                                               §§push(this.§-!-§);
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc5_)
                                                                                                                                                                  {
                                                                                                                                                                     if(!_loc5_)
                                                                                                                                                                     {
                                                                                                                                                                        break;
                                                                                                                                                                     }
                                                                                                                                                                     addr185:
                                                                                                                                                                     §§pop().§-#§(0,0);
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr185);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr366);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               continue loop7;
                                                                                                                                                            }
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               this.§-!-§ = this.§[!Y§.§]!q§(param1,param2,param4);
                                                                                                                                                               addr307:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  continue loop26;
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            addr177:
                                                                                                                                                            addr299:
                                                                                                                                                         }
                                                                                                                                                         loop29:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            this.§=!Q§(§2a§);
                                                                                                                                                            addr160:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(_loc5_)
                                                                                                                                                               {
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     this.§%^§ = param2;
                                                                                                                                                                     if(!_loc5_)
                                                                                                                                                                     {
                                                                                                                                                                        break;
                                                                                                                                                                     }
                                                                                                                                                                     if(!_loc5_)
                                                                                                                                                                     {
                                                                                                                                                                        continue loop20;
                                                                                                                                                                     }
                                                                                                                                                                     if(!(_loc5_ || param1))
                                                                                                                                                                     {
                                                                                                                                                                        continue loop29;
                                                                                                                                                                     }
                                                                                                                                                                     if(_loc5_)
                                                                                                                                                                     {
                                                                                                                                                                        return;
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr162);
                                                                                                                                                                  }
                                                                                                                                                                  addr162:
                                                                                                                                                                  continue loop22;
                                                                                                                                                                  addr28:
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr177);
                                                                                                                                                               §§goto(addr307);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(§?!7§.§-t§);
                                                                                                                                                            if(_loc6_)
                                                                                                                                                            {
                                                                                                                                                               break;
                                                                                                                                                               addr273:
                                                                                                                                                            }
                                                                                                                                                            §§pop().addEventListener(§§pop(),this.§-2§);
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(!(_loc6_ && param3))
                                                                                                                                                               {
                                                                                                                                                                  if(!(_loc6_ && param1))
                                                                                                                                                                  {
                                                                                                                                                                     continue loop32;
                                                                                                                                                                  }
                                                                                                                                                                  continue loop45;
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr364);
                                                                                                                                                            }
                                                                                                                                                            continue loop45;
                                                                                                                                                            §§goto(addr168);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr368);
                                                                                                                                                         addr266:
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr366);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr181);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             continue loop6;
                                                                                                                                             addr208:
                                                                                                                                          }
                                                                                                                                          continue loop30;
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 addr263:
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 §§push(this.§-!-§);
                                                                                                                              }
                                                                                                                              §§goto(addr266);
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §§goto(addr402);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr350);
                                                                                                                     }
                                                                                                                     addr294:
                                                                                                                  }
                                                                                                                  §§goto(addr299);
                                                                                                               }
                                                                                                               §§goto(addr371);
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      continue loop19;
                                                                                                   }
                                                                                                   §§goto(addr263);
                                                                                                }
                                                                                                §§goto(addr192);
                                                                                             }
                                                                                             continue loop18;
                                                                                          }
                                                                                          continue loop16;
                                                                                       }
                                                                                       §§goto(addr312);
                                                                                    }
                                                                                    §§goto(addr294);
                                                                                 }
                                                                                 §§goto(addr160);
                                                                              }
                                                                              continue loop17;
                                                                           }
                                                                           §§goto(addr220);
                                                                        }
                                                                        §§goto(addr335);
                                                                     }
                                                                     §§goto(addr273);
                                                                  }
                                                               }
                                                               §§goto(addr208);
                                                            }
                                                            §§goto(addr421);
                                                         }
                                                         §§goto(addr327);
                                                      }
                                                      §§goto(addr346);
                                                      §§goto(addr353);
                                                   }
                                                   continue loop4;
                                                   addr362:
                                                }
                                                §§goto(addr420);
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                              §§goto(addr405);
                           }
                        }
                     }
                  }
                  §§goto(addr420);
               }
            }
         }
         §§goto(addr299);
      }
      
      private function §4!t§(param1:§?!7§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(!this.§-!-§)
            {
               while(true)
               {
                  §§push(this.§`J§);
                  loop1:
                  while(true)
                  {
                     if(§§pop().data == this.§[!Y§.§[!0§().data)
                     {
                        §§push(this.§`J§);
                        if(!(_loc2_ && this))
                        {
                           §§pop().§6!%§();
                           break;
                        }
                        continue;
                     }
                     if(_loc3_ || this)
                     {
                        this.§8!K§ = this.§[!Y§.§[!0§().data;
                     }
                     loop6:
                     while(true)
                     {
                        this.§[!C§();
                        addr93:
                        while(!_loc2_)
                        {
                           while(true)
                           {
                              addr49:
                              while(true)
                              {
                                 this.§@!Q§(this.§[!Y§.§[!0§().§%X§);
                                 do
                                 {
                                    this.§^!M§();
                                 }
                                 while(_loc2_ && this);
                                 
                                 if(_loc2_ && param1)
                                 {
                                    break loop1;
                                 }
                                 if(_loc3_ || _loc3_)
                                 {
                                    break;
                                 }
                                 continue loop6;
                              }
                              return;
                           }
                        }
                     }
                  }
                  while(true)
                  {
                     if(_loc3_ || _loc2_)
                     {
                        if(_loc2_)
                        {
                           break;
                        }
                        continue;
                     }
                     §§goto(addr93);
                  }
               }
            }
            return;
         }
         §§goto(addr105);
      }
      
      private function §-2§(param1:§?!7§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            §"U§.§"!i§ = true;
         }
         loop0:
         while(true)
         {
            this.§8!K§ = this.§-!-§.data;
            loop1:
            do
            {
               this.§[!C§();
               while(true)
               {
                  this.§@!Q§(this.§-!-§.§%X§);
                  while(!(_loc2_ && this))
                  {
                     continue loop0;
                     this.§^!M§();
                     if(_loc3_)
                     {
                        continue loop1;
                     }
                  }
               }
            }
            while(_loc2_);
            
            return;
         }
      }
      
      public function §56§(param1:Array) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§=!M§ = true;
            while(true)
            {
               §"U§.§"!i§ = false;
               while(_loc2_ || this)
               {
                  this.§8!K§ = param1;
                  do
                  {
                     this.§[!C§();
                     do
                     {
                        this.§^!M§();
                     }
                     while(!_loc2_);
                     
                  }
                  while(_loc3_);
                  
                  if(_loc3_)
                  {
                     continue;
                  }
                  return;
                  addr52:
               }
            }
         }
         §§goto(addr52);
      }
      
      public function §@!Q§(param1:int, param2:Boolean = false) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:int = 0;
         if(_loc7_ || this)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(-1);
               loop1:
               while(§§pop() != §§pop())
               {
                  loop2:
                  while(true)
                  {
                     §§push(this.§`J§);
                     while(true)
                     {
                        §§push(int(§§pop().offset));
                        while(true)
                        {
                           _loc3_ = §§pop();
                           while(true)
                           {
                              §§push(int(Math.floor(this.§`J§.§#X§ / 2)));
                              loop6:
                              while(true)
                              {
                                 if(_loc7_)
                                 {
                                    _loc4_ = §§pop();
                                    while(true)
                                    {
                                       §§push(param1);
                                       if(_loc7_ || param1)
                                       {
                                          §§push(_loc4_);
                                          if(_loc6_ && this)
                                          {
                                             break loop6;
                                          }
                                          §§push(§§pop() - §§pop());
                                          if(!(_loc6_ && this))
                                          {
                                             §§push(§§pop() - _loc3_);
                                          }
                                          §§push(int(§§pop()));
                                       }
                                       continue loop6;
                                       addr58:
                                       if(_loc7_ || this)
                                       {
                                          if(_loc7_)
                                          {
                                             break loop1;
                                          }
                                          continue loop2;
                                       }
                                    }
                                    continue;
                                 }
                                 continue loop0;
                              }
                              continue loop1;
                           }
                        }
                     }
                  }
               }
               return;
            }
         }
         §§goto(addr155);
      }
      
      private function scroll(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            if(param1 != 0)
            {
               do
               {
                  this.§`J§.scroll(param1);
                  do
                  {
                     this.§^!M§();
                  }
                  while(_loc3_ && _loc2_);
                  
               }
               while(_loc3_ && _loc3_);
               
               addr65:
            }
            return;
         }
         §§goto(addr65);
      }
      
      private function §^!M§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(this.§`J§.offset == 0);
         if(!_loc3_)
         {
            §§push(!§§pop());
         }
         var _loc1_:* = §§pop();
         §§push(this.§`J§.offset == this.§`J§.data.length - this.§`J§.§#X§);
         if(!(_loc3_ && _loc1_))
         {
            §§push(!§§pop());
         }
         var _loc2_:* = §§pop();
         if(!_loc3_)
         {
            §§push(this.§!!^§);
            while(true)
            {
               §§pop().§%x§.visible = _loc1_;
               §§goto(addr100);
            }
         }
         addr100:
         while(true)
         {
            §§push(this.§!!^§);
            if(_loc4_ || _loc2_)
            {
               §§pop().§ !G§.visible = _loc2_;
               if(!(_loc3_ && _loc2_))
               {
                  break;
               }
               continue;
            }
            continue loop0;
         }
      }
      
      public function get §0G§() : §0!x§
      {
         return this.§-!-§;
      }
      
      public function §@&§(param1:String, param2:int, param3:int, param4:int, param5:Array, param6:Boolean = false) : int
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         var _loc10_:Object = null;
         if(_loc13_ || param3)
         {
            §§push(!this.§-!-§);
            if(_loc13_)
            {
               if(!§§pop())
               {
                  if(_loc13_ || param2)
                  {
                     §§pop();
                     §§goto(addr63);
                  }
               }
            }
            if(§§pop())
            {
               if(!(_loc14_ && param1))
               {
                  §§goto(addr63);
               }
            }
            var _loc7_:Array = [];
            var _loc8_:int = this.§`J§.offset;
            §§push(this.§-!-§.§@&§(param2,param3,param4,_loc7_));
            if(_loc13_)
            {
               §§push(int(§§pop()));
            }
            var _loc9_:* = §§pop();
            if(!_loc14_)
            {
               this.§8!K§ = this.§-!-§.data;
               loop0:
               while(true)
               {
                  addr107:
                  while(true)
                  {
                     this.§[!C§();
                     while(true)
                     {
                        if(!_loc14_)
                        {
                           this.§@!Q§(_loc9_ - 1,true);
                           if(_loc13_)
                           {
                              break;
                           }
                           continue;
                        }
                        continue loop0;
                     }
                  }
               }
            }
            while(false)
            {
               §§goto(addr107);
            }
            for each(_loc10_ in _loc7_)
            {
               if(_loc13_ || param3)
               {
                  param5.push(_loc10_);
               }
            }
            if(!_loc14_)
            {
               this.§^!M§();
            }
            return _loc9_;
         }
         addr63:
         if(!_loc14_)
         {
            §§push(this.§%^§ == param1);
            if(!(_loc14_ && this))
            {
               §§push(!§§pop());
            }
         }
         return 0;
      }
      
      public function §4K§(param1:int) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:* = null;
         var _loc3_:MovieClip = null;
         var _loc4_:int = 0;
         if(_loc6_ || _loc2_)
         {
            if(param1 != 0)
            {
               §§push(this.§!!^§);
               while(true)
               {
                  §§pop().§7!5§.txtInboxItemCount.visible = true;
                  loop1:
                  while(true)
                  {
                     if(_loc6_)
                     {
                        §§push(this.§!!^§);
                        if(_loc6_ || this)
                        {
                           §§pop().§7!5§.mcItemCountBg.visible = true;
                           loop2:
                           while(true)
                           {
                              if(!_loc6_)
                              {
                                 continue loop1;
                              }
                              if(!_loc6_)
                              {
                                 §§push(this.§!!^§);
                                 break;
                                 addr154:
                              }
                              while(true)
                              {
                                 §§push(this.§1G§(param1));
                                 if(_loc6_)
                                 {
                                    §§push(§§pop());
                                 }
                                 _loc2_ = §§pop();
                                 continue loop2;
                              }
                           }
                           §§pop().§7!5§.mcItemCountBg.visible = false;
                           §§goto(addr137);
                        }
                     }
                     else
                     {
                        addr141:
                        §§push(this.§!!^§);
                        if(!(_loc5_ && this))
                        {
                           §§pop().§7!5§.txtInboxItemCount.visible = false;
                           §§goto(addr154);
                        }
                        else
                        {
                           addr157:
                           _loc3_ = §§pop().§7!5§.mcItemCountBg;
                           if(!(_loc5_ && this))
                           {
                              _loc4_ = _loc3_.width;
                              loop5:
                              while(true)
                              {
                                 addr204:
                                 while(true)
                                 {
                                    _loc3_.scaleX = 1 + (_loc2_.length - 1) / 7;
                                    continue loop5;
                                 }
                              }
                           }
                           while(true)
                           {
                              if(false)
                              {
                                 §§goto(addr204);
                              }
                           }
                        }
                        §§goto(addr227);
                     }
                     §§goto(addr157);
                  }
               }
            }
            §§goto(addr141);
         }
         §§goto(addr71);
      }
      
      private function §[!C§() : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc4_:§`S§ = null;
         var _loc5_:* = null;
         var _loc1_:Array = §+!@§.§7!j§.§]<§();
         var _loc2_:Array = this.§8!K§.concat();
         var _loc3_:* = int(this.§8!K§.length - 1);
         while(_loc3_ >= 0)
         {
            _loc4_ = this.§8!K§[_loc3_];
            if(_loc8_ || _loc3_)
            {
               §§push(0);
               if(!_loc9_)
               {
                  var _loc6_:* = §§pop();
                  if(_loc8_)
                  {
                     var _loc7_:* = _loc1_;
                     if(_loc9_)
                     {
                     }
                     while(§§hasnext(_loc7_,_loc6_))
                     {
                        §§push(§§nextvalue(_loc6_,_loc7_));
                        if(_loc8_ || this)
                        {
                           §§push(§§pop());
                           if(!(_loc9_ && _loc3_))
                           {
                              _loc5_ = §§pop();
                              addr96:
                              §§push(_loc4_.userId);
                           }
                           if(§§pop() == §§pop())
                           {
                              if(_loc8_ || _loc3_)
                              {
                                 _loc2_.splice(_loc3_,1);
                              }
                           }
                           continue;
                        }
                        §§goto(addr96);
                     }
                  }
                  if(_loc9_ && _loc3_)
                  {
                     continue;
                  }
                  §§push(_loc3_);
                  if(_loc8_)
                  {
                     §§push(§§pop() - 1);
                  }
               }
               _loc3_ = §§pop();
            }
         }
         if(!(_loc9_ && _loc1_))
         {
            this.§`J§.data = _loc2_;
         }
      }
      
      private function §1G§(param1:Number) : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = null;
         if(_loc3_ || _loc2_)
         {
            §§push(Number(Math.min(param1,99000000)));
            while(true)
            {
               param1 = §§pop();
               loop4:
               for(; _loc3_ || _loc3_; if(!(_loc3_ || _loc3_))
               {
                  continue;
               },if(_loc3_)
               {
                  if(_loc3_ || _loc2_)
                  {
                     §§push(2);
                     if(_loc3_ || _loc3_)
                     {
                        if(_loc3_)
                        {
                           if(_loc3_)
                           {
                              §§push(§§pop().toPrecision(§§pop()) + "k");
                              if(_loc3_ || _loc3_)
                              {
                                 _loc2_ = §§pop();
                                 §§goto(addr127);
                              }
                              §§goto(addr200);
                           }
                           §§goto(addr177);
                        }
                        §§goto(addr149);
                     }
                     §§goto(addr170);
                  }
                  §§goto(addr212);
               },§§goto(addr176))
               {
                  §§push(1000);
                  loop5:
                  while(true)
                  {
                     if(_loc3_)
                     {
                        if(§§pop() >= §§pop())
                        {
                           if(!(_loc4_ && _loc3_))
                           {
                              if(_loc3_ || _loc2_)
                              {
                                 §§push(param1);
                                 if(_loc3_)
                                 {
                                    §§push(1000);
                                    while(true)
                                    {
                                       §§push(§§pop() / §§pop());
                                    }
                                    addr170:
                                 }
                                 while(true)
                                 {
                                    §§push(Number(§§pop()));
                                    addr172:
                                    while(true)
                                    {
                                       param1 = §§pop();
                                    }
                                 }
                                 addr171:
                              }
                              else
                              {
                                 loop13:
                                 while(_loc3_)
                                 {
                                    §§push(param1);
                                    loop14:
                                    while(true)
                                    {
                                       §§push(2);
                                       addr177:
                                       while(true)
                                       {
                                          if(_loc3_ || _loc2_)
                                          {
                                             §§push(§§pop().toPrecision(§§pop()).slice(0,3) + "M");
                                             while(true)
                                             {
                                                _loc2_ = §§pop();
                                                loop17:
                                                while(true)
                                                {
                                                   loop18:
                                                   while(true)
                                                   {
                                                      §§push(_loc2_);
                                                      if(_loc4_ && _loc2_)
                                                      {
                                                         while(true)
                                                         {
                                                            _loc2_ = §§pop();
                                                            if(!_loc4_)
                                                            {
                                                               if(_loc3_)
                                                               {
                                                                  continue loop18;
                                                               }
                                                               continue loop17;
                                                            }
                                                            addr127:
                                                            while(true)
                                                            {
                                                               if(_loc3_)
                                                               {
                                                                  if(!(_loc4_ && this))
                                                                  {
                                                                     continue loop18;
                                                                  }
                                                                  addr206:
                                                                  while(true)
                                                                  {
                                                                     §§push(param1);
                                                                     addr207:
                                                                     while(true)
                                                                     {
                                                                        §§push(1000000);
                                                                        addr208:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() / §§pop());
                                                                           if(!_loc4_)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                           }
                                                                           addr212:
                                                                           while(true)
                                                                           {
                                                                              param1 = §§pop();
                                                                              continue loop13;
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(param1);
                                                                     addr71:
                                                                     while(true)
                                                                     {
                                                                        if(!(_loc4_ && param1))
                                                                        {
                                                                           continue loop4;
                                                                        }
                                                                        §§goto(addr171);
                                                                     }
                                                                     continue loop4;
                                                                  }
                                                                  addr173:
                                                               }
                                                            }
                                                            continue loop14;
                                                         }
                                                         addr63:
                                                      }
                                                      return §§pop();
                                                   }
                                                }
                                             }
                                             addr200:
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                if(§§pop() < §§pop())
                                                {
                                                   §§push(param1);
                                                   continue loop4;
                                                }
                                             }
                                             addr205:
                                          }
                                          §§goto(addr206);
                                       }
                                    }
                                 }
                                 while(true)
                                 {
                                    §§push(param1);
                                    break loop5;
                                 }
                                 addr222:
                              }
                           }
                           §§goto(addr173);
                        }
                        else
                        {
                           §§push(param1);
                           if(_loc3_ || _loc3_)
                           {
                              if(!(_loc4_ && this))
                              {
                                 if(_loc3_)
                                 {
                                    if(!_loc4_)
                                    {
                                       §§goto(addr63);
                                       §§push(§§pop().toString());
                                    }
                                    break;
                                 }
                                 §§goto(addr207);
                              }
                              §§goto(addr172);
                           }
                        }
                        §§goto(addr71);
                     }
                     §§goto(addr208);
                  }
                  while(true)
                  {
                     §§goto(addr205);
                  }
               }
            }
         }
         §§goto(addr222);
      }
   }
}
