package §'!J§
{
   import §'!Q§.§ §;
   import §1!E§.§==§;
   import §3!G§.LevelManager;
   import §;!o§.§>!l§;
   import §;H§.§6M§;
   import §>! §.§^!c§;
   import §>7§.§,!c§;
   import §?N§.§]!e§;
   import §]+§.§@!J§;
   import com.angrybirds.friendsbar.§1!R§;
   import flash.display.MovieClip;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class §+!;§ extends §6M§
   {
       
      
      private var §=U§:Array;
      
      private var § O§:Boolean = false;
      
      private var §?!j§:Number = 41.666666666666664;
      
      private var §8"§:int = 0;
      
      public function §+!;§(param1:Boolean = false, param2:String = "LevelEndFailStateRio")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§=U§ = [];
            do
            {
               super(param1,param2);
            }
            while(_loc3_ && this);
            
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            super.init();
         }
         do
         {
            §&!m§.getItemByName("Button_Fullscreen").setVisibility(false);
            loop1:
            do
            {
               §§push(this.§=U§);
               while(true)
               {
                  §§pop().push((§&!m§.getItemByName("Button_Menu") as §==§).x);
                  while(true)
                  {
                     §§push(this.§=U§);
                     if(_loc2_)
                     {
                        break;
                     }
                     §§pop().push((§&!m§.getItemByName("Button_Replay") as §==§).x);
                     if(_loc1_)
                     {
                        continue loop1;
                     }
                  }
               }
            }
            while(!_loc1_);
            
         }
         while(!_loc1_);
         
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            super.activate();
            while(true)
            {
               (§^!c§.§2!w§ as §[!P§).§;e§(§1!R§.§5!8§);
               addr97:
               while(true)
               {
                  §^!c§.§5!Y§.background.§5!e§();
               }
               addr60:
               if(_loc2_ && _loc1_)
               {
                  continue;
               }
               §&!m§.getItemByName("Button_NextLevel").setVisibility(false);
               addr24:
               return;
               addr82:
            }
         }
         for(; LevelManager.§];§().name == "1000"; if(_loc2_ && _loc1_)
         {
            continue;
         },if(_loc1_)
         {
            §§goto(addr60);
         },§§goto(addr97))
         {
            if(!(_loc2_ && _loc1_))
            {
               continue;
            }
            §§goto(addr82);
         }
         §§goto(addr24);
      }
      
      override protected function setButtonStates(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            (§&!m§.getItemByName("Button_Menu") as §==§).setComponentVisualState(param1);
         }
         while(true)
         {
            (§&!m§.getItemByName("Button_Replay") as §==§).setComponentVisualState(param1);
            while(!_loc2_)
            {
               (§&!m§.getItemByName("Button_NextLevel") as §==§).setComponentVisualState(param1);
               if(!_loc2_)
               {
                  return;
               }
            }
         }
      }
      
      override protected function showButtons() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(LevelManager.§7!X§());
         if(_loc2_ || this)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         if(_loc2_)
         {
            §§push(Boolean(_loc1_));
            loop0:
            while(true)
            {
               §§push(§§pop());
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        loop3:
                        while(true)
                        {
                           §§push(AngryBirdsFP11.sUserProgress);
                           while(true)
                           {
                              §§push(_loc1_);
                              addr170:
                              while(true)
                              {
                                 §§push(§§pop().isLevelOpen(§§pop()));
                                 if(_loc2_ || _loc3_)
                                 {
                                    §§push(!§§pop());
                                 }
                                 addr179:
                                 while(true)
                                 {
                                    §§push(Boolean(§§pop()));
                                 }
                              }
                              loop10:
                              while(true)
                              {
                                 §§push(AngryBirdsFP11.sUserProgress);
                                 if(!_loc2_)
                                 {
                                    break;
                                 }
                                 §§push(LevelManager.§%n§);
                                 if(_loc2_ || _loc3_)
                                 {
                                    §§push(§§pop().§9!,§(§§pop()));
                                    if(_loc2_ || _loc3_)
                                    {
                                       if(!_loc3_)
                                       {
                                          if(!(_loc3_ && _loc1_))
                                          {
                                             continue loop0;
                                          }
                                          continue loop2;
                                       }
                                       §§goto(addr179);
                                    }
                                    loop11:
                                    while(!_loc3_)
                                    {
                                       loop12:
                                       while(true)
                                       {
                                          if(!§§pop())
                                          {
                                             §§push(LevelManager.§7!J§());
                                             if(!_loc2_)
                                             {
                                                continue loop11;
                                             }
                                             addr68:
                                             if(!(_loc2_ || _loc2_))
                                             {
                                                while(true)
                                                {
                                                   §§push(§§pop());
                                                   if(!_loc2_)
                                                   {
                                                      break;
                                                   }
                                                   if(!§§pop())
                                                   {
                                                      break loop11;
                                                   }
                                                   continue loop12;
                                                   §§goto(addr68);
                                                }
                                                continue loop1;
                                                addr182:
                                             }
                                             if(!§§pop())
                                             {
                                                (§&!m§.getItemByName("Button_NextLevel") as §==§).setVisibility(true);
                                                if(_loc2_ || this)
                                                {
                                                   if(_loc2_)
                                                   {
                                                      if(!(_loc2_ || _loc1_))
                                                      {
                                                         continue loop3;
                                                      }
                                                   }
                                                   else
                                                   {
                                                      addr76:
                                                      if(!(_loc3_ && _loc3_))
                                                      {
                                                         (§&!m§.getItemByName("Button_NextLevel") as §==§).setVisibility(false);
                                                         addr100:
                                                         if(_loc2_)
                                                         {
                                                            §§goto(addr30);
                                                         }
                                                         addr146:
                                                         if(_loc2_)
                                                         {
                                                            break;
                                                         }
                                                         continue loop10;
                                                      }
                                                      addr165:
                                                   }
                                                   addr30:
                                                   return;
                                                }
                                                §§goto(addr100);
                                             }
                                             §§goto(addr76);
                                          }
                                          §§goto(addr146);
                                       }
                                       (§&!m§.getItemByName("Button_NextLevel") as §==§).setVisibility(false);
                                       §§goto(addr165);
                                    }
                                    while(true)
                                    {
                                       §§pop();
                                       continue loop10;
                                    }
                                    addr142:
                                 }
                                 else
                                 {
                                    §§goto(addr170);
                                 }
                                 §§goto(addr179);
                              }
                           }
                        }
                     }
                  }
                  while(true)
                  {
                     §§goto(addr182);
                  }
               }
            }
         }
         §§goto(addr76);
      }
      
      override protected function hideButtons() : void
      {
      }
      
      protected function §2!#§(param1:MovieClip) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = param1.currentFrame + 1;
         if(!(_loc4_ && param1))
         {
            §§push(_loc2_);
            if(_loc3_)
            {
               if(§§pop() > param1.totalFrames)
               {
                  if(_loc3_ || this)
                  {
                     addr80:
                     _loc2_ = 1;
                  }
                  while(true)
                  {
                     §§goto(addr54);
                  }
               }
               addr54:
               while(true)
               {
                  param1.gotoAndStop(_loc2_);
                  if(!(_loc4_ && param1))
                  {
                     break;
                  }
                  continue loop0;
               }
               return;
            }
         }
         §§goto(addr80);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§8"§ += param1;
            loop0:
            while(true)
            {
               §§push(this.§8"§);
               while(true)
               {
                  if(§§pop() < this.§?!j§)
                  {
                     addr19:
                     §§push(super.run(param1));
                     if(!_loc3_)
                     {
                        return §§pop();
                     }
                     continue;
                  }
                  if(_loc3_)
                  {
                     continue loop0;
                  }
               }
            }
         }
         while(true)
         {
            this.§2!#§(§&!m§.getItemByName("MovieClip_LevelEndFailedPig").mClip["timmie"]);
            §§goto(addr78);
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§,!c§) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:String = null;
         var _loc5_:URLRequest = null;
         if(_loc8_)
         {
            super.uiInteractionHandler(param1,param2,param3);
         }
         var _loc6_:* = param2;
         if(!_loc7_)
         {
            §§push("FRIENDS_BUTTON");
            if(!(_loc7_ && param2))
            {
               §§push(_loc6_);
               if(_loc8_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(_loc8_ || this)
                     {
                        §§push(0);
                        if(_loc7_)
                        {
                           addr212:
                        }
                     }
                     else
                     {
                        addr216:
                        §§push(2);
                        if(_loc8_)
                        {
                           addr219:
                        }
                     }
                     §§goto(addr224);
                  }
                  else
                  {
                     §§push("SHARE_DEFAULT");
                     if(_loc8_)
                     {
                        §§push(_loc6_);
                        if(!(_loc7_ && param3))
                        {
                           if(§§pop() === §§pop())
                           {
                              if(!_loc7_)
                              {
                                 §§push(1);
                                 if(!_loc7_)
                                 {
                                    §§goto(addr212);
                                 }
                                 else
                                 {
                                    §§goto(addr219);
                                 }
                              }
                              else
                              {
                                 §§goto(addr216);
                              }
                              §§goto(addr224);
                           }
                           else
                           {
                              addr214:
                              §§push("EMBED");
                              §§push(_loc6_);
                           }
                           §§goto(addr216);
                        }
                     }
                     §§goto(addr214);
                  }
               }
               if(§§pop() === §§pop())
               {
                  §§goto(addr216);
               }
               else
               {
                  §§push(3);
               }
               addr224:
               switch(§§pop())
               {
                  case 0:
                     _loc4_ = "http://apps.facebook.com/angrybirds/?fb_source=facebook_intel";
                     loop0:
                     while(true)
                     {
                        addr46:
                        while(true)
                        {
                           §@!J§.§!v§(_loc4_);
                           continue loop0;
                        }
                     }
                     break;
                  case 1:
                     §§push(§>!l§);
                     §§push("shareDefault");
                     §§push(LevelManager.§%n§);
                     §§push(LevelManager.§];§().writtenName + "-");
                     if(!(_loc7_ && param2))
                     {
                        §§push(§§pop() + § §.§'!X§(LevelManager.§%n§));
                     }
                     §§pop().§ a§(§§pop(),§§pop(),§§pop(),0,false);
                     addr147:
                     if(!_loc7_)
                     {
                        break;
                     }
                     §§goto(addr154);
                     break;
                  case 2:
                     §§push(§]!e§);
                     §§push(LevelManager.§%n§);
                     §§push(LevelManager.§];§().writtenName + "-");
                     if(_loc8_)
                     {
                        §§push(§§pop() + § §.§'!X§(LevelManager.§%n§));
                     }
                     §§pop().§@!'§(§§pop(),§§pop(),§^!c§.§-U§.getScore(),"");
                     if(_loc8_)
                     {
                        §§goto(addr118);
                     }
                     else
                     {
                        §§goto(addr147);
                     }
               }
               return;
            }
            §§goto(addr214);
         }
         §§goto(addr216);
      }
   }
}
