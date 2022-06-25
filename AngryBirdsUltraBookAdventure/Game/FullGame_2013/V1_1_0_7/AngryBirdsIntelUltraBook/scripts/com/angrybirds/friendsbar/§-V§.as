package com.angrybirds.friendsbar
{
   import §,@§.§ !U§;
   import §,@§.§'!6§;
   import §-5§.§+p§;
   import §-5§.§[!y§;
   import §1!B§.§<m§;
   import §4H§.§%Q§;
   import §4H§.§0c§;
   import §4H§.§4!R§;
   import §<-§.§!!K§;
   import §@! §.§ !5§;
   import §@! §.§[! §;
   import §[!b§.§-!Q§;
   import com.AngryBirds.friendsbar.FriendsBarAsset;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class §-V§ extends Sprite
   {
      
      public static const §,b§:String = "SidebarButtonStateInfo";
      
      public static const §-x§:String = "SidebarButtonStatePlay";
      
      public static const §6!;§:String = "SidebarButtonStateNone";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §,b§ = "SidebarButtonStateInfo";
            while(true)
            {
               §-x§ = "SidebarButtonStatePlay";
               §§goto(addr57);
            }
         }
         addr57:
         while(true)
         {
            §6!;§ = "SidebarButtonStateNone";
            if(!(_loc1_ && _loc1_))
            {
               if(_loc2_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      private var §6d§:§[!y§;
      
      private var §'4§:Array;
      
      private var §1@§:FriendsBarAsset;
      
      private var §0!m§:String;
      
      private var §-!0§:§ !U§;
      
      private var §'!U§:String = "";
      
      private var §>!8§:§'!6§;
      
      private var §][§:String;
      
      private var §!O§:Boolean;
      
      public function §-V§(param1:§ !U§, param2:String, param3:String)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            super();
            loop0:
            while(true)
            {
               §+p§.§!!I§ = param3;
               addr91:
               while(true)
               {
                  this.§][§ = param3;
                  continue loop0;
               }
            }
         }
         while(true)
         {
            this.§-!0§ = param1;
            loop4:
            while(true)
            {
               this.§0!m§ = param2;
               while(!_loc5_)
               {
                  this.init();
                  if(!_loc5_)
                  {
                     continue loop4;
                  }
               }
               §§goto(addr91);
            }
         }
         §§goto(addr52);
      }
      
      public function §3p§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§1@§.§^!&§.text = param1;
         }
      }
      
      private function init() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§1@§ = new FriendsBarAsset();
            loop0:
            while(true)
            {
               addChild(this.§1@§);
               loop1:
               while(true)
               {
                  this.§3p§("Total scores");
                  loop2:
                  while(true)
                  {
                     this.§68§();
                     loop3:
                     while(true)
                     {
                        MovieClip(this.§1@§.§"!f§.soundsOff).mouseEnabled = false;
                        while(true)
                        {
                           if(_loc3_)
                           {
                              MovieClip(this.§1@§.§"!f§.soundsOff).mouseChildren = false;
                              if(!(_loc3_ || _loc3_))
                              {
                                 break;
                              }
                              continue loop1;
                           }
                           continue loop3;
                           addr67:
                           if(!(_loc3_ || this))
                           {
                              continue;
                           }
                           if(_loc2_)
                           {
                              continue loop0;
                           }
                           §§push(this.§1@§);
                           if(_loc3_)
                           {
                              §§pop().§with§.addEventListener(MouseEvent.CLICK,this.§#!v§);
                              if(!(_loc2_ && _loc2_))
                              {
                                 if(!_loc3_)
                                 {
                                    continue loop2;
                                 }
                                 if(false)
                                 {
                                    loop7:
                                    while(true)
                                    {
                                       §§push(this.§1@§);
                                       if(!_loc2_)
                                       {
                                          §§pop().§4!t§.addEventListener(MouseEvent.CLICK,this.§<k§);
                                          if(_loc3_ || _loc2_)
                                          {
                                             addr60:
                                             if(_loc3_ || _loc3_)
                                             {
                                                §§goto(addr67);
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                   §§push(this.§6d§);
                                                   if(_loc3_ || _loc1_)
                                                   {
                                                      §§pop().scrollerSprite.rotation = 90;
                                                      while(true)
                                                      {
                                                         §§push(this.§6d§);
                                                         if(!(_loc2_ && _loc3_))
                                                         {
                                                            §§pop().scrollerSprite.x = 180 + 10;
                                                            if(!_loc2_)
                                                            {
                                                               §§push(this.§6d§);
                                                               if(_loc3_)
                                                               {
                                                                  §§pop().scrollerSprite.y = 150;
                                                                  if(_loc3_)
                                                                  {
                                                                     if(_loc3_)
                                                                     {
                                                                        continue loop7;
                                                                     }
                                                                     continue;
                                                                  }
                                                               }
                                                               break;
                                                            }
                                                            addr335:
                                                            §§push(this.§6d§);
                                                            break;
                                                            addr335:
                                                         }
                                                         break;
                                                      }
                                                   }
                                                   §§goto(addr60);
                                                }
                                                addr128:
                                             }
                                             §§pop().scrollerSprite.addEventListener(§[! §.§4!&§,this.§,!,§);
                                             addr311:
                                             if(_loc3_ || this)
                                             {
                                                while(true)
                                                {
                                                   §§push(this.§-!0§);
                                                   loop9:
                                                   while(true)
                                                   {
                                                      §§push(§§pop().§9!i§());
                                                      addr294:
                                                      while(true)
                                                      {
                                                         §§pop().addEventListener(§ !5§.§%"!§,this.§%8§);
                                                         addr299:
                                                         addr237:
                                                         while(true)
                                                         {
                                                            if(!_loc2_)
                                                            {
                                                               continue loop9;
                                                            }
                                                            addr364:
                                                            if(_loc3_ || _loc3_)
                                                            {
                                                               §§push(this.§1@§);
                                                               if(_loc2_ && this)
                                                               {
                                                                  addr339:
                                                                  if(_loc3_)
                                                                  {
                                                                     if(!(_loc2_ && this))
                                                                     {
                                                                        addr414:
                                                                        if(!(_loc2_ && _loc1_))
                                                                        {
                                                                           if(_loc3_)
                                                                           {
                                                                              §§pop().§"!f§.btnTutorial.addEventListener(MouseEvent.CLICK,this.§9!8§);
                                                                              §§goto(addr364);
                                                                           }
                                                                           addr424:
                                                                           §§pop().§"!f§.btnInvite.addEventListener(MouseEvent.CLICK,this.§!Y§);
                                                                           §§push(this.§1@§);
                                                                           addr431:
                                                                        }
                                                                        §§pop().§"!f§.btnFullscreen.addEventListener(MouseEvent.CLICK,this.§#G§);
                                                                        addr421:
                                                                        §§push(this.§1@§);
                                                                        addr421:
                                                                     }
                                                                     §§pop().§"!f§.btnSound.addEventListener(MouseEvent.CLICK,this.§7O§);
                                                                     addr410:
                                                                     §§push(this.§1@§);
                                                                     addr410:
                                                                  }
                                                                  §§pop().§"!f§.btnInfo.addEventListener(MouseEvent.CLICK,this.§7!2§);
                                                                  if(!(_loc2_ && _loc2_))
                                                                  {
                                                                     §§goto(addr339);
                                                                     §§push(this.§1@§);
                                                                  }
                                                                  §§goto(addr410);
                                                               }
                                                               addr329:
                                                               §§pop().§ @§.addEventListener(MouseEvent.CLICK,this.§!!v§);
                                                               §§goto(addr335);
                                                            }
                                                            §§goto(addr421);
                                                         }
                                                         return;
                                                      }
                                                   }
                                                   §§goto(addr311);
                                                }
                                                addr318:
                                             }
                                             §§goto(addr431);
                                          }
                                          §§goto(addr301);
                                       }
                                       break;
                                    }
                                    addr218:
                                    §§pop().§4!t§.visible = this.§1@§.§with§.visible = false;
                                    if(!(_loc2_ && this))
                                    {
                                       break;
                                    }
                                    §§goto(addr421);
                                 }
                                 §§push(this.§1@§);
                                 if(_loc3_)
                                 {
                                    §§goto(addr218);
                                 }
                                 §§goto(addr414);
                              }
                              §§goto(addr410);
                           }
                           §§goto(addr329);
                        }
                        §§goto(addr424);
                     }
                  }
               }
            }
         }
         §§goto(addr318);
      }
      
      public function §<!i§(param1:String = "SidebarButtonStateInfo") : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            §<m§.log("Changing state");
            loop0:
            while(true)
            {
               §§push(param1);
               loop1:
               while(true)
               {
                  §§push(§,b§);
                  loop2:
                  while(§§pop() != §§pop())
                  {
                     §§push(param1);
                     loop3:
                     while(_loc2_)
                     {
                        §§push(§6!;§);
                        loop4:
                        while(§§pop() != §§pop())
                        {
                           §§push(param1);
                           if(!_loc3_)
                           {
                              §§push(§-x§);
                              if(_loc3_ && this)
                              {
                                 continue;
                              }
                              if(_loc3_)
                              {
                                 continue loop2;
                              }
                              if(§§pop() == §§pop())
                              {
                                 while(true)
                                 {
                                    if(!_loc2_)
                                    {
                                       break loop4;
                                    }
                                    §<m§.log("Play state");
                                    while(true)
                                    {
                                       SimpleButton(this.§1@§.§"!f§.btnInfo).visible = false;
                                       while(true)
                                       {
                                          if(!(_loc3_ && param1))
                                          {
                                             if(!_loc3_)
                                             {
                                                SimpleButton(this.§1@§.§"!f§.btnTutorial).visible = true;
                                                loop17:
                                                while(true)
                                                {
                                                   addr67:
                                                   loop10:
                                                   while(true)
                                                   {
                                                      SimpleButton(this.§1@§.§"!f§.btnTutorial).alpha = param1 == §6!;§ ? Number(0.5) : Number(1);
                                                      loop11:
                                                      while(true)
                                                      {
                                                         if(!(_loc3_ && _loc2_))
                                                         {
                                                            if(_loc3_)
                                                            {
                                                               break;
                                                            }
                                                            if(!(_loc2_ || _loc3_))
                                                            {
                                                               while(!(_loc3_ && _loc2_))
                                                               {
                                                                  SimpleButton(this.§1@§.§"!f§.btnInfo).visible = false;
                                                                  break loop11;
                                                               }
                                                               break loop10;
                                                            }
                                                            addr205:
                                                            addr205:
                                                            continue;
                                                         }
                                                         continue loop17;
                                                      }
                                                      while(true)
                                                      {
                                                         SimpleButton(this.§1@§.§"!f§.btnTutorial).visible = true;
                                                         addr172:
                                                         while(true)
                                                         {
                                                            continue loop10;
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             else
                                             {
                                                loop7:
                                                while(true)
                                                {
                                                   SimpleButton(this.§1@§.§"!f§.btnTutorial).visible = false;
                                                   addr242:
                                                   addr267:
                                                   while(!(_loc3_ && param1))
                                                   {
                                                      SimpleButton(this.§1@§.§"!f§.btnFullscreen).visible = true;
                                                      break loop4;
                                                   }
                                                   while(true)
                                                   {
                                                      SimpleButton(this.§1@§.§"!f§.btnInfo).visible = true;
                                                      continue loop7;
                                                   }
                                                }
                                             }
                                             while(true)
                                             {
                                                §§goto(addr205);
                                             }
                                          }
                                          §§goto(addr172);
                                       }
                                    }
                                 }
                              }
                              §§goto(addr67);
                              continue;
                           }
                           continue loop3;
                        }
                        while(true)
                        {
                           if(_loc2_ || this)
                           {
                              if(!_loc2_)
                              {
                                 break loop2;
                              }
                              if(_loc3_)
                              {
                                 continue loop0;
                              }
                              §<m§.log("None state");
                              §§goto(addr205);
                           }
                           §§goto(addr242);
                        }
                     }
                     continue loop1;
                  }
                  while(true)
                  {
                     §<m§.log("Info state");
                     §§goto(addr267);
                  }
               }
            }
         }
         §§goto(addr172);
      }
      
      public function §68§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(!§-!Q§.§&c§())
            {
               MovieClip(this.§1@§.§"!f§.soundsOff).visible = true;
               if(!(_loc1_ || this))
               {
                  addr75:
               }
               return;
            }
            if(_loc1_)
            {
               MovieClip(this.§1@§.§"!f§.soundsOff).visible = false;
            }
         }
         §§goto(addr75);
      }
      
      private function §!Y§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            dispatchEvent(new §[! §(§[! §.§4!&§));
         }
      }
      
      private function §,!,§(param1:§[! §) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§%Q§ = param1.data as §%Q§;
         if(_loc3_)
         {
            §'!6§.§[!j§.push(_loc2_.userId);
            loop0:
            while(true)
            {
               §§push(this.§-!0§);
               if(_loc3_)
               {
                  §§push(§§pop().§9!i§());
                  if(!(_loc4_ && _loc3_))
                  {
                     if(§§pop().data.indexOf(_loc2_) != -1)
                     {
                        while(true)
                        {
                           §§push(this.§-!0§);
                           addr172:
                           while(true)
                           {
                              §§push(§§pop().§9!i§());
                              addr173:
                              while(true)
                              {
                                 §§pop().data.splice(this.§-!0§.§9!i§().data.indexOf(_loc2_),1);
                                 addr182:
                                 while(true)
                                 {
                                 }
                              }
                           }
                        }
                        addr170:
                     }
                     loop2:
                     while(true)
                     {
                        §§push(this.§>!8§);
                        loop3:
                        while(true)
                        {
                           §§push(Boolean(§§pop()));
                           if(!(_loc4_ && this))
                           {
                              if(§§pop())
                              {
                                 loop11:
                                 while(true)
                                 {
                                    §§pop();
                                    loop12:
                                    while(true)
                                    {
                                       if(_loc3_)
                                       {
                                          §§push(this.§>!8§);
                                          if(!(_loc4_ && param1))
                                          {
                                             if(_loc4_)
                                             {
                                                continue loop3;
                                             }
                                             §§push(§§pop().data.indexOf(_loc2_) == -1);
                                             if(!_loc4_)
                                             {
                                                continue loop11;
                                             }
                                             addr113:
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   while(true)
                                                   {
                                                      §§push(this.§>!8§);
                                                      addr116:
                                                      while(true)
                                                      {
                                                         §§pop().data.splice(this.§>!8§.data.indexOf(_loc2_),1);
                                                         addr124:
                                                         while(true)
                                                         {
                                                         }
                                                      }
                                                   }
                                                   addr114:
                                                }
                                                while(true)
                                                {
                                                   this.§3O§();
                                                   loop10:
                                                   while(!_loc4_)
                                                   {
                                                      while(true)
                                                      {
                                                         this.§'1§();
                                                         for(; !(_loc4_ && param1); dispatchEvent(new §[! §(§[! §.§4!&§,_loc2_)),if(!_loc3_)
                                                         {
                                                            continue;
                                                         },if(!(_loc3_ || _loc3_))
                                                         {
                                                            continue loop12;
                                                         },§§goto(addr46))
                                                         {
                                                            if(_loc3_ || _loc3_)
                                                            {
                                                               if(!_loc4_)
                                                               {
                                                                  if(!_loc3_)
                                                                  {
                                                                     break loop12;
                                                                  }
                                                                  continue;
                                                               }
                                                               §§goto(addr114);
                                                            }
                                                            §§goto(addr124);
                                                         }
                                                         continue loop10;
                                                      }
                                                      return;
                                                   }
                                                   continue loop0;
                                                }
                                             }
                                          }
                                          §§goto(addr116);
                                       }
                                       else
                                       {
                                          §§goto(addr170);
                                       }
                                    }
                                    continue loop2;
                                 }
                                 addr138:
                              }
                              while(true)
                              {
                                 §§goto(addr113);
                                 §§goto(addr111);
                              }
                           }
                           §§goto(addr138);
                        }
                     }
                  }
                  §§goto(addr173);
               }
               §§goto(addr172);
            }
         }
         §§goto(addr74);
      }
      
      private function §#G§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            dispatchEvent(new §[! §(§[! §.§6!f§));
         }
      }
      
      private function §7O§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            dispatchEvent(new §[! §(§[! §.§@Q§));
            do
            {
               this.§68§();
            }
            while(_loc2_ && _loc3_);
            
         }
      }
      
      private function §7!2§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §<m§.log(§[! §.§^!;§);
            do
            {
               dispatchEvent(new §[! §(§[! §.§^!;§));
            }
            while(_loc2_ && _loc3_);
            
         }
      }
      
      private function §9!8§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            §<m§.log(§[! §.§2R§);
         }
         do
         {
            dispatchEvent(new §[! §(§[! §.§2R§));
         }
         while(_loc2_);
         
      }
      
      private function §<k§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.scroll(-this.§6d§.final);
         }
      }
      
      private function §#!v§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.scroll(this.§6d§.final);
         }
      }
      
      private function §!!v§(param1:MouseEvent) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:String = "http://www.facebook.com/Intel";
         if(!_loc5_)
         {
            §!!K§.§%$§(_loc2_);
            if(!_loc5_)
            {
               §<t§.§`n§.§5!M§();
            }
         }
         var _loc3_:URLRequest = new URLRequest(_loc2_);
         if(!_loc5_)
         {
            navigateToURL(_loc3_,"_blank");
         }
      }
      
      override public function set height(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.resize(param1);
         }
      }
      
      private function resize(param1:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:Number = Math.max(param1,330);
         if(!_loc5_)
         {
            §§push(this.§1@§);
            loop0:
            while(true)
            {
               §§pop().§%!s§.height = _loc2_ - this.§1@§.§[R§.height - this.§1@§.§+!H§.height + 5;
               loop1:
               while(true)
               {
                  §§push(this.§1@§);
                  loop2:
                  while(_loc4_)
                  {
                     §§pop().§+!H§.y = this.§1@§.§%!s§.y + this.§1@§.§%!s§.height;
                     while(_loc4_)
                     {
                        while(true)
                        {
                           §§push(this.§1@§);
                           while(true)
                           {
                              §§pop().§"!f§.y = this.§1@§.§+!H§.y + 55;
                              addr67:
                              while(true)
                              {
                                 §§push(this.§1@§);
                                 if(_loc5_ && _loc3_)
                                 {
                                    break;
                                 }
                                 if(!(_loc4_ || this))
                                 {
                                    continue loop2;
                                 }
                                 §§pop().§with§.y = this.§1@§.§+!H§.y + 45;
                                 if(!_loc5_)
                                 {
                                    if(_loc4_)
                                    {
                                       while(false)
                                       {
                                          §§goto(addr56);
                                       }
                                       §§push(_loc2_);
                                       if(_loc4_ || _loc2_)
                                       {
                                          §§push(this.§1@§.§+!H§.height - 30);
                                          if(_loc4_)
                                          {
                                             §§push(§§pop() + this.§1@§.§[R§.height - 30);
                                          }
                                          §§push(§§pop() - §§pop());
                                          if(!(_loc5_ && _loc3_))
                                          {
                                             addr156:
                                             §§push(Number(§§pop()));
                                          }
                                          var _loc3_:* = §§pop();
                                          if(!_loc5_)
                                          {
                                             this.§6d§.§6P§(_loc3_);
                                          }
                                          do
                                          {
                                             this.§'1§();
                                          }
                                          while(!_loc4_);
                                          
                                          return;
                                       }
                                       §§goto(addr156);
                                       addr54:
                                    }
                                    §§goto(addr94);
                                 }
                                 §§goto(addr67);
                                 continue loop2;
                              }
                           }
                        }
                     }
                     continue loop1;
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr54);
      }
      
      public function §"I§(param1:String, param2:String, param3:§'!6§ = null, param4:Boolean = false) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            §§push(this.§'!U§);
            while(true)
            {
               §§push(param2);
               loop1:
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  while(true)
                  {
                     §§push(§§pop());
                     loop3:
                     while(true)
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              §§pop();
                              addr462:
                              while(true)
                              {
                                 §§push(this.§!O§);
                                 addr450:
                                 while(true)
                                 {
                                    §§push(!§§pop());
                                 }
                              }
                           }
                           addr461:
                        }
                        while(true)
                        {
                           while(true)
                           {
                              if(§§pop())
                              {
                                 addr453:
                                 return;
                              }
                              while(true)
                              {
                                 this.§!O§ = false;
                                 while(true)
                                 {
                                    §§push(this.§>!8§);
                                    while(true)
                                    {
                                       §§push(Boolean(§§pop()));
                                       loop12:
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          while(_loc6_)
                                          {
                                             if(§§pop())
                                             {
                                                loop14:
                                                while(true)
                                                {
                                                   §§pop();
                                                   addr441:
                                                   while(true)
                                                   {
                                                      §§push(this.§'!U§);
                                                      addr382:
                                                      while(true)
                                                      {
                                                         §§push(param2);
                                                         if(_loc5_)
                                                         {
                                                            break;
                                                         }
                                                         §§push(§§pop() == §§pop());
                                                         while(true)
                                                         {
                                                            if(_loc6_ || this)
                                                            {
                                                               if(!_loc5_)
                                                               {
                                                                  if(_loc6_)
                                                                  {
                                                                     §§push(!§§pop());
                                                                     continue loop14;
                                                                  }
                                                                  §§goto(addr461);
                                                               }
                                                               break;
                                                            }
                                                            continue loop12;
                                                         }
                                                         §§goto(addr450);
                                                      }
                                                      continue loop1;
                                                   }
                                                }
                                             }
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   §§goto(addr407);
                                                }
                                                else
                                                {
                                                   §§goto(addr358);
                                                }
                                             }
                                          }
                                          continue loop3;
                                       }
                                       while(_loc6_ || param2)
                                       {
                                          §§goto(addr418);
                                          §§push(§ !5§.§%"!§);
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
               }
               if(!(_loc6_ || param2))
               {
                  continue;
               }
               if(§§pop())
               {
                  §§goto(addr370);
               }
               this.§3p§("Total scores");
               §§goto(addr175);
            }
         }
         §§goto(addr431);
      }
      
      private function §%8§(param1:§ !5§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            if(!this.§>!8§)
            {
               loop0:
               while(true)
               {
                  §§push(this.§6d§);
                  while(§§pop().data == this.§-!0§.§9!i§().data)
                  {
                     §§push(this.§6d§);
                     if(_loc3_)
                     {
                        continue;
                     }
                     §§pop().§=!n§();
                     loop2:
                     while(true)
                     {
                        if(_loc3_ && param1)
                        {
                           loop3:
                           while(true)
                           {
                              this.§3O§();
                              while(true)
                              {
                                 addr60:
                                 if(_loc2_ || _loc3_)
                                 {
                                    if(_loc2_ || param1)
                                    {
                                       this.§'1§();
                                       if(_loc2_)
                                       {
                                          if(_loc2_)
                                          {
                                             return;
                                          }
                                          addr126:
                                          return;
                                       }
                                       continue loop2;
                                       addr74:
                                    }
                                    continue loop3;
                                 }
                              }
                           }
                           continue loop0;
                           addr122:
                        }
                        while(true)
                        {
                        }
                        while(true)
                        {
                           this.§;N§(this.§-!0§.§9!i§().§`!r§);
                           continue loop2;
                        }
                     }
                  }
                  while(true)
                  {
                     if(!_loc2_)
                     {
                        continue loop0;
                     }
                     this.§'4§ = this.§-!0§.§9!i§().data;
                     §§goto(addr122);
                  }
               }
            }
            §§goto(addr126);
         }
         §§goto(addr100);
      }
      
      private function §?Q§(param1:§ !5§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            §+p§.§'!I§ = true;
            loop0:
            while(true)
            {
               this.§'4§ = this.§>!8§.data;
               do
               {
                  this.§3O§();
                  continue loop0;
               }
               while(!(_loc2_ || this));
               
            }
         }
      }
      
      public function §"B§(param1:Array) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§!O§ = true;
            while(true)
            {
               §+p§.§'!I§ = false;
               addr72:
               while(_loc3_)
               {
               }
            }
         }
         while(true)
         {
            this.§'4§ = param1;
            loop3:
            do
            {
               this.§3O§();
               while(_loc3_)
               {
                  this.§'1§();
                  if(!_loc2_)
                  {
                     continue loop3;
                  }
               }
               §§goto(addr72);
            }
            while(_loc2_);
            
            return;
         }
      }
      
      public function §;N§(param1:int, param2:Boolean = false) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         if(!_loc6_)
         {
            §§push(param1);
            if(_loc7_ || this)
            {
               §§push(-1);
               loop0:
               while(§§pop() != §§pop())
               {
                  if(_loc7_)
                  {
                     §§push(this.§6d§);
                     loop1:
                     while(true)
                     {
                        §§push(int(§§pop().offset));
                        addr149:
                        loop2:
                        while(true)
                        {
                           _loc3_ = §§pop();
                           addr150:
                           loop3:
                           while(true)
                           {
                              §§push(int(Math.floor(this.§6d§.final / 2)));
                              loop4:
                              while(true)
                              {
                                 _loc4_ = §§pop();
                                 loop5:
                                 while(true)
                                 {
                                    §§push(param1);
                                    if(!(_loc6_ && this))
                                    {
                                       if(_loc6_)
                                       {
                                          continue loop4;
                                       }
                                       §§push(_loc4_);
                                       if(!_loc7_)
                                       {
                                          continue loop0;
                                       }
                                       §§push(§§pop() - §§pop());
                                       if(!(_loc6_ && _loc3_))
                                       {
                                          §§push(§§pop() - _loc3_);
                                       }
                                       §§push(int(§§pop()));
                                    }
                                    if(!(_loc7_ || _loc3_))
                                    {
                                       break;
                                    }
                                    _loc5_ = §§pop();
                                    while(_loc7_ || this)
                                    {
                                       §§push(_loc5_);
                                       §§push(param2);
                                       continue loop1;
                                       if(_loc7_ || param2)
                                       {
                                          §§push(!§§pop());
                                       }
                                       §§pop().scroll(§§pop(),§§pop());
                                       if(!_loc6_)
                                       {
                                          if(_loc7_ || param2)
                                          {
                                             break loop0;
                                          }
                                          continue loop5;
                                       }
                                    }
                                    continue loop3;
                                 }
                                 continue loop2;
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr150);
               }
               return;
            }
            §§goto(addr149);
         }
         §§goto(addr150);
      }
      
      private function scroll(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            if(param1 != 0)
            {
               if(!_loc3_)
               {
                  this.§6d§.scroll(param1);
                  do
                  {
                     this.§'1§();
                  }
                  while(!_loc2_);
                  
                  addr53:
               }
               §§goto(addr53);
            }
            return;
         }
         §§goto(addr53);
      }
      
      private function §'1§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(this.§6d§.offset == 0);
         if(!(_loc4_ && _loc3_))
         {
            §§push(!§§pop());
         }
         var _loc1_:* = §§pop();
         §§push(this.§6d§.offset == this.§6d§.data.length - this.§6d§.final);
         if(_loc3_ || this)
         {
            §§push(!§§pop());
         }
         var _loc2_:* = §§pop();
         if(!_loc4_)
         {
            §§push(this.§1@§);
            while(true)
            {
               §§pop().§4!t§.visible = _loc1_;
               while(true)
               {
                  §§push(this.§1@§);
                  if(_loc4_ && _loc3_)
                  {
                     break;
                  }
                  §§pop().§with§.visible = _loc2_;
                  if(_loc3_)
                  {
                     return;
                     addr93:
                  }
               }
            }
         }
         §§goto(addr93);
      }
      
      public function get §+Z§() : §'!6§
      {
         return this.§>!8§;
      }
      
      public function §`j§(param1:String, param2:int, param3:int, param4:int, param5:Array, param6:Boolean = false) : int
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         var _loc10_:Object = null;
         if(!(_loc14_ && param1))
         {
            §§push(!this.§>!8§);
            if(!_loc14_)
            {
               if(!§§pop())
               {
                  if(_loc13_ || param2)
                  {
                     §§goto(addr40);
                  }
               }
               §§goto(addr55);
            }
            addr40:
            §§pop();
            if(!_loc14_)
            {
               §§push(this.§'!U§ == param1);
               if(!(_loc14_ && param1))
               {
                  addr55:
                  if(!§§pop())
                  {
                     if(_loc13_ || this)
                     {
                        §§goto(addr63);
                     }
                  }
               }
               §§goto(addr55);
            }
            var _loc7_:Array = [];
            var _loc8_:int = this.§6d§.offset;
            §§push(this.§>!8§.§`j§(param2,param3,param4,_loc7_));
            if(!_loc14_)
            {
               §§push(int(§§pop()));
            }
            var _loc9_:* = §§pop();
            if(_loc13_)
            {
               this.§'4§ = this.§>!8§.data;
               loop0:
               while(true)
               {
                  addr107:
                  while(true)
                  {
                     this.§3O§();
                     addr110:
                     while(_loc13_)
                     {
                     }
                     continue loop0;
                  }
               }
            }
            while(true)
            {
               this.§;N§(_loc9_ - 1,true);
               if(_loc13_)
               {
                  if(true)
                  {
                     break;
                  }
                  §§goto(addr107);
               }
               §§goto(addr110);
            }
            for each(_loc10_ in _loc7_)
            {
               if(_loc13_)
               {
                  param5.push(_loc10_);
               }
            }
            if(_loc13_ || param3)
            {
               this.§'1§();
            }
            return _loc9_;
         }
         addr63:
         return 0;
      }
      
      public function §;!a§(param1:int) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:String = null;
         var _loc3_:MovieClip = null;
         var _loc4_:int = 0;
         if(!_loc6_)
         {
            if(param1 != 0)
            {
               §§push(this.§1@§);
               loop0:
               while(true)
               {
                  §§pop().§"!f§.txtInboxItemCount.visible = true;
                  addr114:
                  addr118:
                  while(true)
                  {
                     §§push(this.§1@§);
                     if(!_loc6_)
                     {
                        continue loop0;
                     }
                     addr146:
                     _loc3_ = §§pop().§"!f§.mcItemCountBg;
                     if(_loc5_)
                     {
                        _loc4_ = _loc3_.width;
                        while(true)
                        {
                           loop10:
                           while(true)
                           {
                              _loc3_.scaleX = 1 + (_loc2_.length - 1) / 7;
                              do
                              {
                                 _loc3_.x = this.§1@§.§"!f§.txtInboxItemCount.x + this.§1@§.§"!f§.txtInboxItemCount.width / 2 - _loc3_.width / 2;
                              }
                              while(!(_loc5_ || _loc2_));
                              
                              if(_loc6_)
                              {
                                 break;
                              }
                              while(true)
                              {
                                 if(true)
                                 {
                                    return;
                                 }
                                 addr211:
                                 addr211:
                                 continue loop10;
                              }
                           }
                        }
                     }
                     §§goto(addr193);
                  }
                  addr118:
                  if(!(_loc6_ && param1))
                  {
                     §§pop().§"!f§.mcItemCountBg.visible = false;
                     addr129:
                     if(!_loc6_)
                     {
                        addr131:
                        if(_loc6_)
                        {
                           loop5:
                           while(true)
                           {
                              §§push(this.§1@§);
                              addr139:
                              while(true)
                              {
                                 §§pop().§"!f§.txtInboxItemCount.visible = false;
                                 addr143:
                                 while(true)
                                 {
                                    §§goto(addr118);
                                 }
                                 continue loop5;
                              }
                           }
                           addr137:
                        }
                        §§goto(addr211);
                     }
                     §§goto(addr143);
                  }
                  §§goto(addr139);
               }
            }
            §§goto(addr137);
         }
         §§goto(addr73);
      }
      
      private function §3O§() : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc4_:§4!R§ = null;
         var _loc5_:* = null;
         var _loc1_:Array = §0c§.§[U§.§+!^§();
         var _loc2_:Array = this.§'4§.concat();
         var _loc3_:* = int(this.§'4§.length - 1);
         while(_loc3_ >= 0)
         {
            _loc4_ = this.§'4§[_loc3_];
            if(_loc8_ || _loc1_)
            {
               §§push(0);
               if(!_loc9_)
               {
                  var _loc6_:* = §§pop();
                  if(_loc8_)
                  {
                     var _loc7_:* = _loc1_;
                     if(!(_loc9_ && _loc1_))
                     {
                        loop1:
                        while(§§hasnext(_loc7_,_loc6_))
                        {
                           §§push(§§nextvalue(_loc6_,_loc7_));
                           if(_loc8_)
                           {
                              §§push(§§pop());
                              if(_loc8_)
                              {
                                 _loc5_ = §§pop();
                                 addr91:
                                 §§push(_loc4_.userId);
                              }
                              if(§§pop() != §§pop())
                              {
                                 continue;
                              }
                              if(!(_loc8_ || _loc3_))
                              {
                                 continue;
                              }
                              while(true)
                              {
                                 _loc2_.splice(_loc3_,1);
                                 continue loop1;
                              }
                           }
                           §§goto(addr91);
                        }
                        addr118:
                        if(_loc9_ && _loc2_)
                        {
                           continue;
                        }
                        addr126:
                        §§push(_loc3_);
                        if(!(_loc9_ && _loc3_))
                        {
                           addr135:
                           _loc3_ = §§pop() - 1;
                           continue;
                        }
                        §§goto(addr135);
                     }
                     §§goto(addr101);
                  }
                  §§goto(addr118);
               }
               §§goto(addr135);
            }
            §§goto(addr126);
         }
         if(!_loc9_)
         {
            this.§6d§.data = _loc2_;
         }
      }
      
      private function §4M§(param1:Number) : String
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = null;
         if(_loc4_ || _loc3_)
         {
            §§push(Number(Math.min(param1,99000000)));
            loop0:
            while(true)
            {
               param1 = §§pop();
               loop1:
               while(true)
               {
                  §§push(param1);
                  loop2:
                  while(true)
                  {
                     §§push(100000);
                     loop3:
                     while(true)
                     {
                        if(§§pop() < §§pop())
                        {
                           §§push(param1);
                           if(!(_loc3_ && _loc2_))
                           {
                              if(_loc3_)
                              {
                                 continue loop0;
                              }
                              §§push(1000);
                              if(!(_loc3_ && this))
                              {
                                 if(_loc4_ || this)
                                 {
                                    if(§§pop() < §§pop())
                                    {
                                       §§push(param1);
                                       if(!(_loc3_ && _loc2_))
                                       {
                                          if(!(_loc3_ && _loc2_))
                                          {
                                             if(_loc4_ || this)
                                             {
                                                §§push(§§pop().toString());
                                                loop4:
                                                while(true)
                                                {
                                                   _loc2_ = §§pop();
                                                   if(_loc3_)
                                                   {
                                                      while(_loc3_)
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(param1);
                                                            addr155:
                                                            while(true)
                                                            {
                                                               if(_loc4_)
                                                               {
                                                                  addr158:
                                                                  §§push(1000);
                                                                  while(true)
                                                                  {
                                                                     if(_loc3_ && param1)
                                                                     {
                                                                        while(!_loc3_)
                                                                        {
                                                                           §§goto(addr199);
                                                                           §§push(§§pop().toPrecision(§§pop()).slice(0,3) + "M");
                                                                        }
                                                                        continue loop3;
                                                                        addr181:
                                                                     }
                                                                     §§goto(addr166);
                                                                     §§push(§§pop() / §§pop());
                                                                     §§goto(addr214);
                                                                  }
                                                                  addr158:
                                                               }
                                                            }
                                                         }
                                                      }
                                                      continue;
                                                      addr122:
                                                   }
                                                   if(!_loc3_)
                                                   {
                                                      if(!(_loc4_ || _loc2_))
                                                      {
                                                         loop6:
                                                         while(true)
                                                         {
                                                            if(_loc4_)
                                                            {
                                                               continue loop4;
                                                            }
                                                            addr199:
                                                            while(true)
                                                            {
                                                               _loc2_ = §§pop();
                                                               continue loop6;
                                                            }
                                                         }
                                                         continue loop1;
                                                      }
                                                      if(_loc4_ || param1)
                                                      {
                                                         while(true)
                                                         {
                                                            continue loop4;
                                                         }
                                                         addr86:
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(param1);
                                                            addr208:
                                                            while(true)
                                                            {
                                                               §§push(1000000);
                                                               addr209:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() / §§pop());
                                                                  if(_loc4_)
                                                                  {
                                                                     addr213:
                                                                     §§push(Number(§§pop()));
                                                                     while(true)
                                                                     {
                                                                        param1 = §§pop();
                                                                     }
                                                                     addr213:
                                                                  }
                                                                  §§goto(addr213);
                                                               }
                                                            }
                                                         }
                                                         addr207:
                                                      }
                                                      while(true)
                                                      {
                                                         if(!_loc3_)
                                                         {
                                                            §§push(param1);
                                                            continue loop0;
                                                         }
                                                         continue loop1;
                                                      }
                                                      addr214:
                                                   }
                                                   else
                                                   {
                                                      loop5:
                                                      while(true)
                                                      {
                                                         §§push(param1);
                                                         addr89:
                                                         while(true)
                                                         {
                                                            if(_loc4_)
                                                            {
                                                               continue loop2;
                                                            }
                                                            addr166:
                                                            while(true)
                                                            {
                                                               if(_loc4_)
                                                               {
                                                                  §§push(Number(§§pop()));
                                                                  continue loop5;
                                                               }
                                                            }
                                                            continue loop5;
                                                         }
                                                         continue loop2;
                                                      }
                                                   }
                                                   §§goto(addr208);
                                                   §§goto(addr213);
                                                }
                                                return §§pop();
                                             }
                                             §§goto(addr155);
                                          }
                                          §§goto(addr169);
                                       }
                                       §§goto(addr89);
                                    }
                                    §§goto(addr154);
                                 }
                                 §§goto(addr209);
                              }
                              §§goto(addr158);
                           }
                           §§goto(addr169);
                        }
                        §§goto(addr207);
                     }
                  }
               }
            }
         }
         §§goto(addr86);
      }
   }
}
