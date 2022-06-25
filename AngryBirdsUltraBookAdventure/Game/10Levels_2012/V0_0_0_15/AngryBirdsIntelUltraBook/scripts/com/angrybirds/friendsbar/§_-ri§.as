package com.angrybirds.friendsbar
{
   import §_-01E§.§_-5z§;
   import §_-01E§.§_-M3§;
   import §_-01E§.§_-xz§;
   import §_-05L§.§_-6G§;
   import §_-05L§.§_-K5§;
   import §_-0BH§.§_-FK§;
   import §_-0EZ§.§_-48§;
   import §_-0EZ§.§_-7n§;
   import §_-4g§.§_-pX§;
   import §_-AZ§.§_-07C§;
   import §_-AZ§.§_-Vh§;
   import §_-eS§.§_-OY§;
   import com.AngryBirds.friendsbar.FriendsBarAsset;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class §_-ri§ extends Sprite
   {
      
      public static const §_-f0§:String = "SidebarButtonStateInfo";
      
      public static const include:String = "SidebarButtonStatePlay";
      
      public static const §_-02b§:String = "SidebarButtonStateNone";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §_-f0§ = "SidebarButtonStateInfo";
            while(true)
            {
               include = "SidebarButtonStatePlay";
               while(!(_loc2_ && §_-ri§))
               {
                  §_-02b§ = "SidebarButtonStateNone";
                  if(_loc2_)
                  {
                     continue;
                  }
                  return;
                  addr39:
               }
            }
         }
         §§goto(addr39);
      }
      
      private var §_-Jt§:§_-6G§;
      
      private var §_-03x§:Array;
      
      private var §_-9-§:FriendsBarAsset;
      
      private var §_-pl§:String;
      
      private var §const§:§_-7n§;
      
      private var §_-Lp§:String = "";
      
      private var §_-05U§:§_-48§;
      
      private var §_-ck§:String;
      
      private var §_-p8§:Boolean;
      
      public function §_-ri§(param1:§_-7n§, param2:String, param3:String)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            super();
            while(true)
            {
               §_-K5§.§_-EE§ = param3;
            }
            addr90:
         }
         do
         {
            this.§_-ck§ = param3;
            loop2:
            while(true)
            {
               this.§const§ = param1;
               addr75:
               while(_loc5_)
               {
                  this.§_-pl§ = param2;
                  continue loop2;
               }
               §§goto(addr90);
            }
         }
         while(!_loc5_);
         
      }
      
      public function §_-0F1§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§_-9-§.§_-01t§.text = param1;
         }
      }
      
      private function init() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§_-9-§ = new FriendsBarAsset();
            if(!_loc2_)
            {
               addChild(this.§_-9-§);
               loop0:
               while(true)
               {
                  this.§_-0F1§("Total scores");
                  if(!_loc2_)
                  {
                     this.§_-xK§();
                     if(_loc3_ || this)
                     {
                        MovieClip(this.§_-9-§.§_-PF§.soundsOff).mouseEnabled = false;
                        loop1:
                        while(true)
                        {
                           MovieClip(this.§_-9-§.§_-PF§.soundsOff).mouseChildren = false;
                           if(_loc3_ || _loc1_)
                           {
                              this.§_-Jt§ = new §_-6G§(250,250,[],§_-K5§,2,15);
                              if(_loc3_)
                              {
                                 addChild(this.§_-Jt§.scrollerSprite);
                                 if(!(_loc2_ && _loc3_))
                                 {
                                    §§push(this.§_-Jt§);
                                    if(_loc3_ || _loc2_)
                                    {
                                       §§pop().scrollerSprite.rotation = 90;
                                       if(_loc3_)
                                       {
                                          if(!_loc3_)
                                          {
                                             continue loop0;
                                          }
                                          §§push(this.§_-Jt§);
                                          loop2:
                                          while(true)
                                          {
                                             §§pop().scrollerSprite.x = 180 + 10;
                                             if(!(_loc2_ && _loc2_))
                                             {
                                                if(!_loc3_)
                                                {
                                                   continue loop1;
                                                }
                                                §§push(this.§_-Jt§);
                                                if(!(_loc2_ && _loc1_))
                                                {
                                                   if(!_loc3_)
                                                   {
                                                      continue;
                                                   }
                                                   §§pop().scrollerSprite.y = 150;
                                                   if(_loc3_)
                                                   {
                                                      addr81:
                                                      while(true)
                                                      {
                                                         §§push(this.§_-9-§);
                                                         if(_loc3_ || _loc3_)
                                                         {
                                                            §§pop().§_-Eo§.addEventListener(MouseEvent.CLICK,this.§_-Jp§);
                                                            if(!(_loc2_ && _loc1_))
                                                            {
                                                               §§push(this.§_-9-§);
                                                               if(_loc3_)
                                                               {
                                                                  §§pop().§_-0DL§.addEventListener(MouseEvent.CLICK,this.§_-fA§);
                                                                  if(_loc3_ || _loc3_)
                                                                  {
                                                                     if(false)
                                                                     {
                                                                        continue;
                                                                     }
                                                                     §§push(this.§_-9-§);
                                                                     if(!(_loc2_ && _loc1_))
                                                                     {
                                                                        §§pop().§_-Eo§.visible = this.§_-9-§.§_-0DL§.visible = false;
                                                                        if(!_loc2_)
                                                                        {
                                                                           addr419:
                                                                           §§push(this.§_-9-§);
                                                                           while(true)
                                                                           {
                                                                              §§pop().§_-PF§.btnInvite.addEventListener(MouseEvent.CLICK,this.§_-Mj§);
                                                                              addr426:
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.§_-9-§);
                                                                                 addr409:
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop().§_-PF§.btnFullscreen.addEventListener(MouseEvent.CLICK,this.§_-06J§);
                                                                                    break loop0;
                                                                                 }
                                                                              }
                                                                           }
                                                                           addr419:
                                                                        }
                                                                        loop16:
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§const§);
                                                                           if(_loc3_)
                                                                           {
                                                                              §§push(§§pop().§_-0-1§());
                                                                              if(_loc3_ || _loc2_)
                                                                              {
                                                                                 if(!§§pop().§_-Er§)
                                                                                 {
                                                                                    if(!(_loc2_ && this))
                                                                                    {
                                                                                       if(!(_loc3_ || _loc2_))
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       if(!_loc2_)
                                                                                       {
                                                                                          if(!_loc2_)
                                                                                          {
                                                                                             if(_loc3_)
                                                                                             {
                                                                                                if(_loc3_ || _loc3_)
                                                                                                {
                                                                                                   addr283:
                                                                                                   this.§_-zu§(null);
                                                                                                   addr286:
                                                                                                   break;
                                                                                                }
                                                                                                §§goto(addr426);
                                                                                             }
                                                                                             break loop0;
                                                                                          }
                                                                                          break loop1;
                                                                                       }
                                                                                       loop13:
                                                                                       while(!(_loc2_ && _loc1_))
                                                                                       {
                                                                                          addr313:
                                                                                          if(!(_loc2_ && _loc1_))
                                                                                          {
                                                                                             break loop2;
                                                                                          }
                                                                                          addr405:
                                                                                          loop11:
                                                                                          for(; _loc3_ || _loc1_; §§goto(addr313))
                                                                                          {
                                                                                             loop18:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(this.§_-9-§);
                                                                                                if(_loc3_ || _loc2_)
                                                                                                {
                                                                                                   §§pop().§_-1M§.addEventListener(MouseEvent.CLICK,this.§_-cE§);
                                                                                                   break loop13;
                                                                                                }
                                                                                                addr386:
                                                                                                addr341:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!(_loc2_ && _loc2_))
                                                                                                   {
                                                                                                      addr348:
                                                                                                      if(_loc2_ && this)
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§pop().§_-PF§.btnTutorial.addEventListener(MouseEvent.CLICK,this.§_-TF§);
                                                                                                         continue loop11;
                                                                                                      }
                                                                                                   }
                                                                                                   addr373:
                                                                                                   while(!_loc2_)
                                                                                                   {
                                                                                                      §§pop().§_-PF§.btnInfo.addEventListener(MouseEvent.CLICK,this.§_-Yo§);
                                                                                                      break loop1;
                                                                                                   }
                                                                                                   §§goto(addr409);
                                                                                                   continue loop18;
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc3_)
                                                                                                   {
                                                                                                      §§pop().§_-PF§.btnSound.addEventListener(MouseEvent.CLICK,this.§_-6x§);
                                                                                                      break loop11;
                                                                                                   }
                                                                                                   break;
                                                                                                   §§goto(addr348);
                                                                                                }
                                                                                                §§goto(addr419);
                                                                                             }
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§goto(addr373);
                                                                                             §§goto(addr362);
                                                                                          }
                                                                                          addr362:
                                                                                       }
                                                                                       loop19:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(this.§_-Jt§);
                                                                                          addr300:
                                                                                          while(true)
                                                                                          {
                                                                                             §§pop().scrollerSprite.addEventListener(§_-07C§.§_-S1§,this.§_-Cl§);
                                                                                             §§goto(addr306);
                                                                                             continue loop19;
                                                                                          }
                                                                                       }
                                                                                       addr306:
                                                                                    }
                                                                                    §§goto(addr286);
                                                                                 }
                                                                                 break;
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§pop().addEventListener(§_-Vh§.§_-04P§,this.§_-zu§);
                                                                                 continue loop16;
                                                                              }
                                                                              addr291:
                                                                           }
                                                                           addr290:
                                                                           while(true)
                                                                           {
                                                                              §§goto(addr291);
                                                                              continue loop16;
                                                                           }
                                                                        }
                                                                        return;
                                                                     }
                                                                     §§goto(addr355);
                                                                  }
                                                                  §§goto(addr337);
                                                               }
                                                               §§goto(addr409);
                                                            }
                                                            §§goto(addr426);
                                                         }
                                                         §§goto(addr419);
                                                      }
                                                   }
                                                   §§goto(addr426);
                                                }
                                                §§goto(addr300);
                                             }
                                             break;
                                          }
                                       }
                                       while(true)
                                       {
                                          §§goto(addr290);
                                       }
                                    }
                                    §§goto(addr300);
                                 }
                                 §§goto(addr283);
                              }
                              §§goto(addr405);
                           }
                           break;
                        }
                        while(true)
                        {
                           §§goto(addr341);
                        }
                     }
                     §§goto(addr283);
                  }
                  break;
               }
               while(true)
               {
                  §§goto(addr386);
               }
            }
            §§goto(addr369);
         }
         §§goto(addr81);
      }
      
      public function §_-RB§(param1:String = "SidebarButtonStateInfo") : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            §_-FK§.log("Changing state");
            loop0:
            while(true)
            {
               §§push(param1);
               loop1:
               while(true)
               {
                  §§push(§_-f0§);
                  addr274:
                  addr275:
                  while(§§pop() != §§pop())
                  {
                     §§push(param1);
                     continue loop1;
                  }
                  loop19:
                  while(true)
                  {
                     §_-FK§.log("Info state");
                     loop16:
                     while(true)
                     {
                        SimpleButton(this.§_-9-§.§_-PF§.btnInfo).visible = true;
                        addr263:
                        addr270:
                        while(!(_loc3_ || param1))
                        {
                           continue loop19;
                        }
                        SimpleButton(this.§_-9-§.§_-PF§.btnTutorial).visible = false;
                        loop10:
                        while(true)
                        {
                           SimpleButton(this.§_-9-§.§_-PF§.btnFullscreen).visible = true;
                           loop11:
                           while(true)
                           {
                              if(!(_loc2_ && param1))
                              {
                                 loop13:
                                 while(true)
                                 {
                                    SimpleButton(this.§_-9-§.§_-PF§.btnTutorial).alpha = param1 == §_-02b§ ? Number(0.5) : Number(1);
                                    loop14:
                                    while(true)
                                    {
                                       if(!_loc2_)
                                       {
                                          if(_loc3_)
                                          {
                                             if(_loc3_)
                                             {
                                                continue loop0;
                                             }
                                             while(!(_loc3_ || _loc2_))
                                             {
                                                continue loop10;
                                             }
                                             SimpleButton(this.§_-9-§.§_-PF§.btnTutorial).visible = true;
                                             addr190:
                                             addr197:
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                if(_loc3_ || _loc3_)
                                                {
                                                   while(true)
                                                   {
                                                      SimpleButton(this.§_-9-§.§_-PF§.btnInfo).visible = false;
                                                      addr135:
                                                      while(true)
                                                      {
                                                         SimpleButton(this.§_-9-§.§_-PF§.btnTutorial).visible = true;
                                                         break loop14;
                                                      }
                                                   }
                                                   addr168:
                                                }
                                             }
                                             addr161:
                                          }
                                          while(true)
                                          {
                                             if(!_loc2_)
                                             {
                                                continue loop13;
                                             }
                                             addr211:
                                             while(true)
                                             {
                                                if(!_loc3_)
                                                {
                                                   continue loop11;
                                                }
                                                §_-FK§.log("None state");
                                                while(true)
                                                {
                                                   SimpleButton(this.§_-9-§.§_-PF§.btnInfo).visible = false;
                                                   §§goto(addr190);
                                                }
                                             }
                                             §§goto(addr197);
                                          }
                                          addr178:
                                       }
                                       break;
                                       addr96:
                                       SimpleButton(this.§_-9-§.§_-PF§.btnTutorial).mouseEnabled = param1 == §_-02b§ ? false : true;
                                       if(_loc2_ && param1)
                                       {
                                          continue;
                                       }
                                       if(_loc3_ || _loc3_)
                                       {
                                          if(!(_loc2_ && this))
                                          {
                                             break loop13;
                                          }
                                          continue loop16;
                                       }
                                       §§goto(addr135);
                                    }
                                    loop17:
                                    while(true)
                                    {
                                       if(_loc3_ || _loc2_)
                                       {
                                          if(!_loc2_)
                                          {
                                             continue loop13;
                                          }
                                          §§goto(addr216);
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             §_-FK§.log("Play state");
                                             §§goto(addr161);
                                             continue loop17;
                                          }
                                          addr158:
                                       }
                                       §§goto(addr178);
                                    }
                                 }
                                 return;
                                 addr66:
                              }
                              §§goto(addr263);
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr168);
      }
      
      public function §_-xK§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            if(!§_-pX§.§_-051§())
            {
               MovieClip(this.§_-9-§.§_-PF§.soundsOff).visible = true;
               if(!_loc1_)
               {
                  if(!(_loc2_ || _loc2_))
                  {
                     addr73:
                     MovieClip(this.§_-9-§.§_-PF§.soundsOff).visible = false;
                     addr81:
                  }
                  return;
               }
               §§goto(addr81);
            }
         }
         §§goto(addr73);
      }
      
      private function §_-Mj§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            dispatchEvent(new §_-07C§(§_-07C§.§_-S1§));
         }
      }
      
      private function §_-Cl§(param1:§_-07C§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§_-5z§ = param1.data as §_-5z§;
         if(!_loc3_)
         {
            §_-48§.§_-L0§.push(_loc2_.userId);
            loop0:
            while(true)
            {
               §§push(this.§const§);
               if(_loc4_ || _loc3_)
               {
                  §§push(§§pop().§_-0-1§());
                  if(!(_loc3_ && this))
                  {
                     if(§§pop().data.indexOf(_loc2_) != -1)
                     {
                        while(true)
                        {
                           §§push(this.§const§);
                           addr166:
                           while(true)
                           {
                              §§push(§§pop().§_-0-1§());
                              addr167:
                              while(true)
                              {
                                 §§pop().data.splice(this.§const§.§_-0-1§().data.indexOf(_loc2_),1);
                                 addr176:
                                 while(!_loc3_)
                                 {
                                 }
                                 continue loop0;
                              }
                           }
                        }
                        addr164:
                     }
                     while(true)
                     {
                        §§push(this.§_-05U§);
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
                                       §§push(this.§_-05U§);
                                       if(!(_loc3_ && this))
                                       {
                                          if(_loc3_ && param1)
                                          {
                                             break;
                                          }
                                          §§push(§§pop().data.indexOf(_loc2_) == -1);
                                          if(!_loc3_)
                                          {
                                             if(!(_loc4_ || _loc2_))
                                             {
                                                continue loop5;
                                             }
                                             if(!(_loc4_ || _loc3_))
                                             {
                                                continue loop4;
                                             }
                                             §§push(!§§pop());
                                             while(true)
                                             {
                                             }
                                          }
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                loop7:
                                                while(true)
                                                {
                                                   if(!_loc3_)
                                                   {
                                                      if(!_loc3_)
                                                      {
                                                         §§push(this.§_-05U§);
                                                         while(true)
                                                         {
                                                            §§pop().data.splice(this.§_-05U§.data.indexOf(_loc2_),1);
                                                            loop12:
                                                            while(true)
                                                            {
                                                               addr49:
                                                               while(true)
                                                               {
                                                                  this.§_-sJ§();
                                                                  loop9:
                                                                  while(true)
                                                                  {
                                                                     if(_loc3_)
                                                                     {
                                                                        continue loop12;
                                                                     }
                                                                     if(_loc4_)
                                                                     {
                                                                        this.§_-0-J§();
                                                                        do
                                                                        {
                                                                           if(!_loc3_)
                                                                           {
                                                                              if(_loc4_)
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              continue loop7;
                                                                           }
                                                                           continue loop9;
                                                                        }
                                                                        while(dispatchEvent(new §_-07C§(§_-07C§.§_-S1§,_loc2_)), !_loc4_);
                                                                        
                                                                        return;
                                                                        addr40:
                                                                     }
                                                                     §§goto(addr164);
                                                                  }
                                                                  continue loop12;
                                                               }
                                                            }
                                                         }
                                                         addr114:
                                                      }
                                                      break;
                                                   }
                                                   continue loop6;
                                                }
                                                §§goto(addr176);
                                             }
                                             §§goto(addr49);
                                          }
                                       }
                                       §§goto(addr114);
                                    }
                                    continue loop3;
                                 }
                              }
                              §§goto(addr106);
                           }
                        }
                        §§goto(addr178);
                     }
                  }
                  §§goto(addr167);
               }
               §§goto(addr166);
            }
         }
         §§goto(addr40);
      }
      
      private function §_-06J§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            dispatchEvent(new §_-07C§(§_-07C§.§_-Yr§));
         }
      }
      
      private function §_-6x§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            dispatchEvent(new §_-07C§(§_-07C§.§_-K8§));
         }
         do
         {
            this.§_-xK§();
         }
         while(!(_loc2_ || _loc3_));
         
      }
      
      private function §_-Yo§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            §_-FK§.log(§_-07C§.§_-H7§);
            do
            {
               dispatchEvent(new §_-07C§(§_-07C§.§_-H7§));
            }
            while(_loc3_);
            
         }
      }
      
      private function §_-TF§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §_-FK§.log(§_-07C§.§_-099§);
            do
            {
               dispatchEvent(new §_-07C§(§_-07C§.§_-099§));
            }
            while(!_loc3_);
            
         }
      }
      
      private function §_-Jp§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.scroll(-this.§_-Jt§.§_-xC§);
         }
      }
      
      private function §_-fA§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.scroll(this.§_-Jt§.§_-xC§);
         }
      }
      
      private function §_-cE§(param1:MouseEvent) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:String = "http://www.facebook.com/Intel";
         if(_loc5_ || _loc2_)
         {
            §_-OY§.§_-7i§(_loc2_);
            if(!_loc4_)
            {
               addr41:
               §_-rG§.§_-rY§.§_-DE§();
            }
            var _loc3_:URLRequest = new URLRequest(_loc2_);
            if(!_loc4_)
            {
               navigateToURL(_loc3_,"_blank");
            }
            return;
         }
         §§goto(addr41);
      }
      
      override public function set height(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
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
            §§push(this.§_-9-§);
            loop0:
            while(true)
            {
               §§pop().§_-08R§.height = _loc2_ - this.§_-9-§.§_-v3§.height - this.§_-9-§.§_-6n§.height + 5;
               addr110:
               while(true)
               {
                  §§push(this.§_-9-§);
                  addr69:
                  while(_loc5_)
                  {
                     §§pop().§_-6n§.y = this.§_-9-§.§_-08R§.y + this.§_-9-§.§_-08R§.height;
                  }
                  continue loop0;
               }
            }
         }
         loop3:
         while(true)
         {
            loop4:
            while(true)
            {
               §§push(this.§_-9-§);
               loop5:
               while(true)
               {
                  §§pop().§_-PF§.y = this.§_-9-§.§_-6n§.y + 55;
                  while(_loc5_)
                  {
                     §§push(this.§_-9-§);
                     if(!(_loc5_ || param1))
                     {
                        continue loop5;
                     }
                     if(!_loc4_)
                     {
                        §§pop().§_-0DL§.y = this.§_-9-§.§_-6n§.y + 45;
                        if(!_loc5_)
                        {
                           continue;
                        }
                        if(_loc5_)
                        {
                           if(true)
                           {
                              break loop4;
                           }
                           continue loop4;
                        }
                        §§goto(addr110);
                     }
                     §§goto(addr69);
                  }
                  continue loop3;
               }
            }
            §§push(_loc2_);
            if(!(_loc4_ && param1))
            {
               §§push(this.§_-9-§.§_-6n§.height - 30);
               if(!(_loc4_ && _loc3_))
               {
                  §§push(§§pop() + this.§_-9-§.§_-v3§.height - 30);
               }
               §§push(§§pop() - §§pop());
               if(!_loc4_)
               {
                  addr152:
                  §§push(Number(§§pop()));
               }
               var _loc3_:* = §§pop();
               if(_loc5_)
               {
                  this.§_-Jt§.§_-7Z§(_loc3_);
               }
               this.§_-0-J§();
               addr176:
               if(!(_loc5_ || param1))
               {
                  §§goto(addr176);
               }
               return;
            }
            §§goto(addr152);
         }
      }
      
      public function §_-0-j§(param1:String, param2:String, param3:§_-48§ = null, param4:Boolean = false) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && param1))
         {
            §§push(this.§_-Lp§);
            loop0:
            while(true)
            {
               §§push(param2);
               loop1:
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  loop2:
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
                              addr447:
                              while(true)
                              {
                                 §§push(this.§_-p8§);
                                 addr435:
                                 while(true)
                                 {
                                    §§push(!§§pop());
                                 }
                              }
                           }
                           addr446:
                        }
                        while(true)
                        {
                           loop8:
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 while(true)
                                 {
                                    this.§_-p8§ = false;
                                    loop10:
                                    while(true)
                                    {
                                       §§push(this.§_-05U§);
                                       loop11:
                                       while(true)
                                       {
                                          §§push(Boolean(§§pop()));
                                          loop12:
                                          while(!_loc5_)
                                          {
                                             if(_loc6_ || this)
                                             {
                                                §§push(§§pop());
                                                loop13:
                                                while(_loc6_ || this)
                                                {
                                                   if(§§pop())
                                                   {
                                                      loop14:
                                                      while(true)
                                                      {
                                                         §§pop();
                                                         loop15:
                                                         while(true)
                                                         {
                                                            §§push(this.§_-Lp§);
                                                            loop16:
                                                            for(; !_loc5_; while(true)
                                                            {
                                                               §§push(param2);
                                                               if(!(_loc6_ || param2))
                                                               {
                                                                  break;
                                                               }
                                                               if(!§§pop())
                                                               {
                                                                  this.§_-0F1§("Total scores");
                                                                  while(true)
                                                                  {
                                                                     §_-K5§.§_-dT§ = false;
                                                                     while(!(_loc5_ && this))
                                                                     {
                                                                        if(_loc6_)
                                                                        {
                                                                           if(_loc6_ || param2)
                                                                           {
                                                                              if(!_loc5_)
                                                                              {
                                                                                 this.§_-03x§ = this.§const§.§_-0-1§().data;
                                                                                 loop28:
                                                                                 while(_loc6_)
                                                                                 {
                                                                                    if(_loc6_)
                                                                                    {
                                                                                       this.§_-sJ§();
                                                                                       loop29:
                                                                                       while(true)
                                                                                       {
                                                                                          if(!_loc5_)
                                                                                          {
                                                                                             this.§_-01l§(this.§const§.§_-0-1§().§_-tm§);
                                                                                             continue;
                                                                                          }
                                                                                          addr298:
                                                                                          loop42:
                                                                                          while(true)
                                                                                          {
                                                                                             if(!(_loc5_ && param1))
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   §_-K5§.§_-dT§ = true;
                                                                                                   addr239:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      this.§_-Jt§.data = [];
                                                                                                      loop35:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!(_loc5_ && param2))
                                                                                                         {
                                                                                                            if(!(_loc5_ && param1))
                                                                                                            {
                                                                                                               if(_loc5_ && param3)
                                                                                                               {
                                                                                                                  break;
                                                                                                                  addr197:
                                                                                                               }
                                                                                                               this.§_-0-J§();
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(this.§_-05U§);
                                                                                                                  if(_loc6_)
                                                                                                                  {
                                                                                                                     if(!_loc5_)
                                                                                                                     {
                                                                                                                        if(_loc5_)
                                                                                                                        {
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        if(!§§pop().§_-Er§)
                                                                                                                        {
                                                                                                                           loop38:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(this.§_-05U§);
                                                                                                                              addr186:
                                                                                                                              while(_loc6_)
                                                                                                                              {
                                                                                                                                 §§pop().§_-0-C§(0,0);
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(_loc6_)
                                                                                                                                    {
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          addr159:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             this.§_-RB§(include);
                                                                                                                                             addr163:
                                                                                                                                             while(_loc6_)
                                                                                                                                             {
                                                                                                                                                if(!(_loc5_ && this))
                                                                                                                                                {
                                                                                                                                                   loop34:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      this.§_-Lp§ = param2;
                                                                                                                                                      if(_loc6_ || param3)
                                                                                                                                                      {
                                                                                                                                                         break;
                                                                                                                                                      }
                                                                                                                                                      loop33:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(!(_loc5_ && param2))
                                                                                                                                                         {
                                                                                                                                                            addr54:
                                                                                                                                                            if(!(_loc5_ && param1))
                                                                                                                                                            {
                                                                                                                                                               if(!_loc6_)
                                                                                                                                                               {
                                                                                                                                                                  break;
                                                                                                                                                               }
                                                                                                                                                               continue loop34;
                                                                                                                                                            }
                                                                                                                                                            continue loop29;
                                                                                                                                                         }
                                                                                                                                                         addr71:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(!_loc6_)
                                                                                                                                                            {
                                                                                                                                                               continue loop35;
                                                                                                                                                            }
                                                                                                                                                            if(!_loc5_)
                                                                                                                                                            {
                                                                                                                                                               this.§_-RB§(§_-f0§);
                                                                                                                                                               continue loop33;
                                                                                                                                                            }
                                                                                                                                                            addr343:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §_-K5§.§_-dT§ = true;
                                                                                                                                                               addr346:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  this.§_-0F1§("Level scores");
                                                                                                                                                                  addr332:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(param3 == null)
                                                                                                                                                                     {
                                                                                                                                                                        while(!_loc5_)
                                                                                                                                                                        {
                                                                                                                                                                           this.§_-05U§ = this.§const§.§_-0z§(param1,param2,param4);
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                           }
                                                                                                                                                                           continue loop42;
                                                                                                                                                                        }
                                                                                                                                                                        continue loop15;
                                                                                                                                                                        addr317:
                                                                                                                                                                     }
                                                                                                                                                                     addr312:
                                                                                                                                                                     this.§_-05U§ = param3;
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                     }
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(false);
                                                                                                                                                                        if(_loc6_ || param3)
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr249);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr262);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            continue loop33;
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      continue loop28;
                                                                                                                                                   }
                                                                                                                                                   if(!_loc6_)
                                                                                                                                                   {
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(_loc5_)
                                                                                                                                                         {
                                                                                                                                                            continue loop38;
                                                                                                                                                         }
                                                                                                                                                         this.§const§.§_-0-1§().§_-0-C§(0,0);
                                                                                                                                                         §§goto(addr71);
                                                                                                                                                      }
                                                                                                                                                      addr79:
                                                                                                                                                   }
                                                                                                                                                   return;
                                                                                                                                                }
                                                                                                                                                §§goto(addr378);
                                                                                                                                             }
                                                                                                                                             §§goto(addr351);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       addr193:
                                                                                                                                    }
                                                                                                                                    §§goto(addr327);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr380);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr159);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§_-Vh§.§_-04P§);
                                                                                                                           if(!_loc5_)
                                                                                                                           {
                                                                                                                              §§pop().addEventListener(§§pop(),this.§_-FZ§);
                                                                                                                              continue loop42;
                                                                                                                           }
                                                                                                                        }
                                                                                                                        addr291:
                                                                                                                     }
                                                                                                                     §§goto(addr382);
                                                                                                                  }
                                                                                                                  §§goto(addr186);
                                                                                                               }
                                                                                                               continue loop11;
                                                                                                            }
                                                                                                            §§goto(addr332);
                                                                                                         }
                                                                                                         §§goto(addr312);
                                                                                                      }
                                                                                                      §§goto(addr385);
                                                                                                   }
                                                                                                }
                                                                                                addr235:
                                                                                             }
                                                                                             §§goto(addr317);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr239);
                                                                                 }
                                                                                 continue;
                                                                              }
                                                                              §§goto(addr346);
                                                                           }
                                                                           §§goto(addr197);
                                                                        }
                                                                        §§goto(addr163);
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr343);
                                                            })
                                                            {
                                                               §§push(param2);
                                                               if(!_loc5_)
                                                               {
                                                                  §§push(§§pop() == §§pop());
                                                                  while(_loc6_ || param2)
                                                                  {
                                                                     §§push(!§§pop());
                                                                     if(_loc5_ && this)
                                                                     {
                                                                        continue;
                                                                     }
                                                                     if(_loc5_)
                                                                     {
                                                                        continue loop12;
                                                                     }
                                                                     §§push(§§pop());
                                                                     if(!_loc6_)
                                                                     {
                                                                        continue loop13;
                                                                     }
                                                                     param4 = §§pop();
                                                                     if(!_loc5_)
                                                                     {
                                                                        continue loop14;
                                                                     }
                                                                     addr377:
                                                                     while(true)
                                                                     {
                                                                        if(!§§pop())
                                                                        {
                                                                           continue loop16;
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§_-05U§);
                                                                           addr380:
                                                                           while(true)
                                                                           {
                                                                              §§push(§_-Vh§.§_-04P§);
                                                                              addr382:
                                                                              while(true)
                                                                              {
                                                                                 §§pop().removeEventListener(§§pop(),this.§_-FZ§);
                                                                                 addr385:
                                                                                 while(!(_loc5_ && this))
                                                                                 {
                                                                                    this.§_-05U§ = null;
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc6_ || param2)
                                                                                       {
                                                                                          continue loop16;
                                                                                       }
                                                                                       §§goto(addr447);
                                                                                    }
                                                                                    §§goto(addr435);
                                                                                 }
                                                                                 continue loop10;
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  continue loop2;
                                                               }
                                                               continue loop1;
                                                            }
                                                            continue loop0;
                                                         }
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      §§goto(addr377);
                                                   }
                                                }
                                                continue loop3;
                                             }
                                             §§goto(addr446);
                                             §§goto(addr447);
                                          }
                                          continue loop8;
                                       }
                                    }
                                 }
                              }
                              §§goto(addr438);
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr193);
      }
      
      private function §_-zu§(param1:§_-Vh§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            if(this.§_-05U§)
            {
               if(!(_loc3_ && param1))
               {
                  return;
               }
               while(true)
               {
                  addr74:
                  loop3:
                  while(!(_loc3_ && _loc2_))
                  {
                     while(true)
                     {
                        loop7:
                        while(true)
                        {
                           this.§_-01l§(this.§const§.§_-0-1§().§_-tm§);
                           while(_loc2_)
                           {
                              this.§_-0-J§();
                              if(!_loc2_)
                              {
                                 continue;
                              }
                              addr33:
                              if(_loc2_ || this)
                              {
                                 return;
                              }
                              loop6:
                              while(true)
                              {
                                 if(!(_loc3_ && this))
                                 {
                                    addr92:
                                    if(_loc2_)
                                    {
                                       continue loop7;
                                    }
                                    addr114:
                                    while(true)
                                    {
                                       this.§_-03x§ = this.§const§.§_-0-1§().data;
                                       break loop6;
                                       §§goto(addr92);
                                    }
                                 }
                                 break;
                                 §§goto(addr33);
                              }
                              while(true)
                              {
                                 this.§_-sJ§();
                                 §§goto(addr85);
                              }
                              addr85:
                           }
                           continue loop3;
                        }
                     }
                  }
               }
               addr132:
            }
            while(true)
            {
               §§push(this.§_-Jt§);
               while(§§pop().data == this.§const§.§_-0-1§().data)
               {
                  §§push(this.§_-Jt§);
                  if(!(_loc2_ || param1))
                  {
                     continue;
                  }
                  §§pop().§_-8B§();
                  §§goto(addr74);
               }
               §§goto(addr114);
               §§goto(addr132);
            }
         }
         §§goto(addr81);
      }
      
      private function §_-FZ§(param1:§_-Vh§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §_-K5§.§_-dT§ = true;
            while(true)
            {
               this.§_-03x§ = this.§_-05U§.data;
               loop1:
               for(; !(_loc3_ && this); if(!(_loc2_ || this))
               {
                  continue;
               },§§goto(addr69))
               {
                  this.§_-sJ§();
                  while(true)
                  {
                     this.§_-01l§(this.§_-05U§.§_-tm§);
                     loop3:
                     while(!(_loc3_ && _loc2_))
                     {
                        continue loop1;
                        while(true)
                        {
                           this.§_-0-J§();
                           if(!_loc3_)
                           {
                              break;
                           }
                           continue loop3;
                        }
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr69);
      }
      
      public function §_-HJ§(param1:Array) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§_-p8§ = true;
         }
         while(true)
         {
            §_-K5§.§_-dT§ = false;
            loop1:
            while(true)
            {
               this.§_-03x§ = param1;
               while(true)
               {
                  this.§_-sJ§();
                  while(!_loc2_)
                  {
                     continue loop1;
                     this.§_-0-J§();
                     if(_loc3_ || param1)
                     {
                        return;
                     }
                  }
               }
            }
            if(!(_loc3_ || _loc2_))
            {
               continue;
            }
            §§goto(addr79);
         }
      }
      
      public function §_-01l§(param1:int, param2:Boolean = false) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         if(_loc7_)
         {
            §§push(param1);
            if(!_loc6_)
            {
               §§push(-1);
               loop0:
               while(§§pop() != §§pop())
               {
                  loop1:
                  while(true)
                  {
                     §§push(this.§_-Jt§);
                     loop2:
                     while(true)
                     {
                        §§push(int(§§pop().offset));
                        addr134:
                        loop3:
                        while(true)
                        {
                           _loc3_ = §§pop();
                           addr135:
                           loop4:
                           while(true)
                           {
                              §§push(int(Math.floor(this.§_-Jt§.§_-xC§ / 2)));
                              loop5:
                              while(true)
                              {
                                 _loc4_ = §§pop();
                                 loop6:
                                 while(true)
                                 {
                                    §§push(param1);
                                    if(_loc7_)
                                    {
                                       §§push(_loc4_);
                                       if(_loc6_)
                                       {
                                          continue loop0;
                                       }
                                       §§push(§§pop() - §§pop());
                                       if(_loc7_ || _loc3_)
                                       {
                                          §§push(§§pop() - _loc3_);
                                       }
                                       §§push(int(§§pop()));
                                    }
                                    if(_loc7_)
                                    {
                                       if(_loc7_ || param2)
                                       {
                                          _loc5_ = §§pop();
                                          while(true)
                                          {
                                             if(_loc7_)
                                             {
                                                if(_loc7_)
                                                {
                                                   if(_loc6_ && param2)
                                                   {
                                                      break loop6;
                                                   }
                                                   §§push(this.§_-Jt§);
                                                   if(_loc6_ && param1)
                                                   {
                                                      break;
                                                   }
                                                   continue;
                                                }
                                                continue loop4;
                                             }
                                             continue loop6;
                                          }
                                          continue loop2;
                                       }
                                       continue loop3;
                                    }
                                    continue loop5;
                                 }
                                 continue loop1;
                              }
                           }
                        }
                     }
                  }
               }
               return;
            }
            §§goto(addr134);
         }
         §§goto(addr135);
      }
      
      private function scroll(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(param1 != 0)
            {
               if(_loc3_ || _loc3_)
               {
                  this.§_-Jt§.scroll(param1);
               }
               do
               {
                  this.§_-0-J§();
               }
               while(_loc2_);
               
               addr39:
            }
            return;
         }
         §§goto(addr39);
      }
      
      private function §_-0-J§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(this.§_-Jt§.offset == 0);
         if(!(_loc4_ && _loc1_))
         {
            §§push(!§§pop());
         }
         var _loc1_:* = §§pop();
         §§push(this.§_-Jt§.offset == this.§_-Jt§.data.length - this.§_-Jt§.§_-xC§);
         if(!(_loc4_ && _loc2_))
         {
            §§push(!§§pop());
         }
         var _loc2_:* = §§pop();
         if(_loc3_)
         {
            §§push(this.§_-9-§);
            while(true)
            {
               §§pop().§_-Eo§.visible = _loc1_;
               while(true)
               {
                  §§push(this.§_-9-§);
                  if(!_loc3_)
                  {
                     break;
                  }
                  §§pop().§_-0DL§.visible = _loc2_;
                  if(_loc3_)
                  {
                     return;
                     addr88:
                  }
               }
            }
         }
         §§goto(addr88);
      }
      
      public function get §with§() : §_-48§
      {
         return this.§_-05U§;
      }
      
      public function §_-R0§(param1:String, param2:int, param3:int, param4:int, param5:Array, param6:Boolean = false) : int
      {
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = true;
         var _loc10_:Object = null;
         if(_loc14_ || this)
         {
            §§push(!this.§_-05U§);
            if(!(_loc13_ && param3))
            {
               if(!§§pop())
               {
                  if(_loc14_ || param2)
                  {
                     §§pop();
                     if(_loc14_ || param1)
                     {
                        addr54:
                        §§push(this.§_-Lp§ == param1);
                        if(!_loc13_)
                        {
                           addr61:
                           if(!§§pop())
                           {
                              if(!_loc13_)
                              {
                                 return 0;
                              }
                           }
                        }
                        §§goto(addr61);
                     }
                     var _loc7_:Array = [];
                     var _loc8_:int = this.§_-Jt§.offset;
                     §§push(this.§_-05U§.§_-R0§(param2,param3,param4,_loc7_));
                     if(!(_loc13_ && param2))
                     {
                        §§push(int(§§pop()));
                     }
                     var _loc9_:* = §§pop();
                     if(!_loc13_)
                     {
                        this.§_-03x§ = this.§_-05U§.data;
                     }
                     loop0:
                     while(true)
                     {
                        loop1:
                        while(true)
                        {
                           this.§_-sJ§();
                           while(!_loc13_)
                           {
                              this.§_-01l§(_loc9_ - 1,true);
                              if(_loc14_)
                              {
                                 if(true)
                                 {
                                    break loop1;
                                 }
                                 continue loop1;
                              }
                           }
                           continue loop0;
                        }
                        for each(_loc10_ in _loc7_)
                        {
                           if(!_loc13_)
                           {
                              param5.push(_loc10_);
                           }
                        }
                        if(!(_loc13_ && this))
                        {
                           this.§_-0-J§();
                        }
                        return _loc9_;
                     }
                  }
               }
            }
            §§goto(addr61);
         }
         §§goto(addr54);
      }
      
      public function §_-hC§(param1:int) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:* = null;
         var _loc3_:MovieClip = null;
         var _loc4_:int = 0;
         if(_loc6_)
         {
            if(param1 != 0)
            {
               §§push(this.§_-9-§);
               if(_loc6_)
               {
                  §§pop().§_-PF§.txtInboxItemCount.visible = true;
                  loop4:
                  while(true)
                  {
                     §§push(this.§_-9-§);
                     if(!(_loc5_ && param1))
                     {
                        if(!_loc5_)
                        {
                           if(!_loc5_)
                           {
                              §§pop().§_-PF§.mcItemCountBg.visible = true;
                              loop5:
                              while(true)
                              {
                                 if(!_loc5_)
                                 {
                                    while(true)
                                    {
                                       §§push(this.§_-CZ§(param1));
                                       if(!_loc5_)
                                       {
                                          §§push(§§pop());
                                       }
                                       _loc2_ = §§pop();
                                       while(true)
                                       {
                                          if(_loc5_)
                                          {
                                             return;
                                          }
                                          addr129:
                                          addr207:
                                          §§push(this.§_-9-§);
                                          if(_loc5_ && _loc2_)
                                          {
                                             break;
                                          }
                                          §§pop().§_-PF§.txtInboxItemCount.text.text = _loc2_;
                                          if(!(_loc5_ && _loc2_))
                                          {
                                             if(_loc6_)
                                             {
                                                continue loop4;
                                             }
                                             continue loop5;
                                          }
                                       }
                                       addr142:
                                       _loc3_ = §§pop().§_-PF§.mcItemCountBg;
                                       if(!(_loc5_ && this))
                                       {
                                          _loc4_ = _loc3_.width;
                                          loop0:
                                          while(true)
                                          {
                                             addr189:
                                             while(true)
                                             {
                                                _loc3_.scaleX = 1 + (_loc2_.length - 1) / 7;
                                                while(true)
                                                {
                                                   if(_loc6_)
                                                   {
                                                      _loc3_.x = this.§_-9-§.§_-PF§.txtInboxItemCount.x + this.§_-9-§.§_-PF§.txtInboxItemCount.width / 2 - _loc3_.width / 2;
                                                      if(!_loc5_)
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
                                          §§goto(addr189);
                                       }
                                       §§goto(addr207);
                                    }
                                    continue loop4;
                                    addr68:
                                 }
                                 else
                                 {
                                    addr133:
                                 }
                                 §§push(this.§_-9-§);
                              }
                              addr139:
                              §§push(this.§_-9-§);
                              break;
                              addr139:
                           }
                           §§pop().§_-PF§.txtInboxItemCount.visible = false;
                           §§goto(addr139);
                        }
                        break;
                     }
                  }
                  §§pop().§_-PF§.mcItemCountBg.visible = false;
                  §§goto(addr129);
                  addr121:
               }
               §§goto(addr142);
            }
            §§goto(addr133);
         }
         §§goto(addr121);
      }
      
      private function §_-sJ§() : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc4_:§_-M3§ = null;
         var _loc5_:* = null;
         var _loc1_:Array = §_-xz§.§_-3S§.§_-Fj§();
         var _loc2_:Array = this.§_-03x§.concat();
         var _loc3_:* = int(this.§_-03x§.length - 1);
         while(_loc3_ >= 0)
         {
            _loc4_ = this.§_-03x§[_loc3_];
            if(_loc8_ && _loc1_)
            {
               continue;
            }
            §§push(0);
            if(!(_loc8_ && _loc2_))
            {
               var _loc6_:* = §§pop();
               if(_loc9_)
               {
                  var _loc7_:* = _loc1_;
                  if(!_loc8_)
                  {
                     loop1:
                     while(§§hasnext(_loc7_,_loc6_))
                     {
                        §§push(§§nextvalue(_loc6_,_loc7_));
                        if(!_loc8_)
                        {
                           §§push(§§pop());
                           if(!(_loc8_ && this))
                           {
                              _loc5_ = §§pop();
                              addr97:
                              §§push(_loc4_.userId);
                           }
                           if(§§pop() != §§pop())
                           {
                              continue;
                           }
                           if(_loc8_ && _loc1_)
                           {
                              continue;
                           }
                           while(true)
                           {
                              _loc2_.splice(_loc3_,1);
                              continue loop1;
                           }
                        }
                        §§goto(addr97);
                     }
                     addr124:
                     if(!(_loc9_ || this))
                     {
                        continue;
                     }
                     §§push(_loc3_);
                     if(!_loc8_)
                     {
                        addr136:
                        _loc3_ = §§pop() - 1;
                        continue;
                     }
                     §§goto(addr136);
                  }
                  §§goto(addr107);
               }
               §§goto(addr124);
            }
            §§goto(addr136);
         }
         if(!(_loc8_ && _loc3_))
         {
            this.§_-Jt§.data = _loc2_;
         }
      }
      
      private function §_-CZ§(param1:Number) : String
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = null;
         if(!_loc3_)
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
                           if(!(_loc4_ || this))
                           {
                              continue loop0;
                           }
                           if(!(_loc3_ && param1))
                           {
                              §§push(1000);
                              loop4:
                              while(true)
                              {
                                 if(§§pop() < §§pop())
                                 {
                                    §§push(param1);
                                    if(_loc4_)
                                    {
                                       if(_loc4_)
                                       {
                                          §§push(§§pop().toString());
                                          loop5:
                                          while(true)
                                          {
                                             _loc2_ = §§pop();
                                             if(!(_loc3_ && this))
                                             {
                                                if(!_loc3_)
                                                {
                                                   if(_loc4_ || this)
                                                   {
                                                      continue;
                                                   }
                                                   loop8:
                                                   while(true)
                                                   {
                                                      §§push(param1);
                                                      addr170:
                                                      while(true)
                                                      {
                                                         if(!_loc4_)
                                                         {
                                                            continue loop8;
                                                         }
                                                         if(_loc3_)
                                                         {
                                                            break;
                                                         }
                                                         §§push(2);
                                                         while(true)
                                                         {
                                                            if(!(_loc3_ && _loc3_))
                                                            {
                                                               if(_loc3_)
                                                               {
                                                                  continue loop3;
                                                               }
                                                               §§push(§§pop().toPrecision(§§pop()).slice(0,3) + "M");
                                                               while(true)
                                                               {
                                                                  _loc2_ = §§pop();
                                                               }
                                                            }
                                                            else
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() / §§pop());
                                                                  addr209:
                                                                  while(true)
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                     continue loop8;
                                                                  }
                                                               }
                                                               addr208:
                                                            }
                                                         }
                                                      }
                                                      continue loop2;
                                                   }
                                                }
                                                while(true)
                                                {
                                                   continue loop5;
                                                }
                                             }
                                             else
                                             {
                                                loop6:
                                                while(true)
                                                {
                                                   if(!_loc3_)
                                                   {
                                                      if(_loc3_ && param1)
                                                      {
                                                         while(!_loc3_)
                                                         {
                                                            §§push(param1);
                                                            if(!(_loc4_ || _loc2_))
                                                            {
                                                               continue loop0;
                                                            }
                                                            §§push(1000);
                                                            loop18:
                                                            while(true)
                                                            {
                                                               §§push(§§pop() / §§pop());
                                                               if(!_loc4_)
                                                               {
                                                                  while(!_loc3_)
                                                                  {
                                                                     if(_loc4_ || this)
                                                                     {
                                                                        param1 = §§pop();
                                                                        while(true)
                                                                        {
                                                                           §§push(param1);
                                                                           addr60:
                                                                           while(true)
                                                                           {
                                                                              §§push(2);
                                                                              if(_loc4_ || param1)
                                                                              {
                                                                                 continue loop4;
                                                                              }
                                                                              continue loop18;
                                                                           }
                                                                           continue loop4;
                                                                        }
                                                                        addr167:
                                                                     }
                                                                  }
                                                                  break loop6;
                                                               }
                                                               addr157:
                                                               addr157:
                                                               continue loop0;
                                                            }
                                                         }
                                                         continue loop1;
                                                         addr135:
                                                      }
                                                      if(!(_loc3_ && this))
                                                      {
                                                         continue loop5;
                                                      }
                                                      addr206:
                                                      while(true)
                                                      {
                                                         §§push(param1);
                                                         addr207:
                                                         while(true)
                                                         {
                                                            §§goto(addr208);
                                                         }
                                                      }
                                                      §§goto(addr209);
                                                   }
                                                   §§goto(addr167);
                                                   addr87:
                                                   _loc2_ = §§pop();
                                                }
                                             }
                                             §§goto(addr170);
                                          }
                                          return §§pop();
                                       }
                                       §§goto(addr157);
                                    }
                                    §§goto(addr60);
                                 }
                                 §§goto(addr135);
                              }
                           }
                           §§goto(addr207);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr206);
      }
   }
}
