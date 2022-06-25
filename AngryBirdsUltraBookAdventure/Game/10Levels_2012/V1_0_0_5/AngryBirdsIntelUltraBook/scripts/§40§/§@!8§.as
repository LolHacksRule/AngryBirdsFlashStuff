package §40§
{
   import §0!N§.LevelManager;
   import §0X§.§'N§;
   import §2h§.§'!^§;
   import §2h§.§[!'§;
   import §4e§.§=!p§;
   import §57§.§,!b§;
   import §9!5§.§%@§;
   import §9Y§.§6!8§;
   import §?!7§.§"j§;
   import §?!7§.§8;§;
   import §?!7§.§[I§;
   import com.angrybirds.friendsbar.§`Y§;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.text.TextFieldAutoSize;
   import §true§.§ _§;
   
   public class §@!8§ extends §%@§
   {
       
      
      public function §@!8§(param1:Boolean = false, param2:String = "PauseState")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super(param1,param2);
         }
      }
      
      override public function init() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §<"§ = true;
            loop0:
            while(true)
            {
               §5!P§ = new §'!^§(this);
               while(true)
               {
                  addr49:
                  while(true)
                  {
                     §5!P§.init(§[!'§.§+@§.Views.View_FacebookLevelPause[0]);
                     do
                     {
                        §5!P§.getItemByName("Button_Fullscreen").setVisibility(false);
                     }
                     while(!_loc3_);
                     
                     if(_loc2_)
                     {
                        break;
                     }
                     continue loop0;
                  }
               }
            }
         }
         while(false)
         {
            §§goto(addr49);
         }
         var _loc1_:§"j§ = §5!P§.getItemByName("TextField_ChapterName") as §"j§;
         if(!(_loc2_ && this))
         {
            _loc1_.§"E§.autoSize = TextFieldAutoSize.CENTER;
         }
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            super.activate();
         }
         do
         {
            (§ _§.§1s§ as §@!9§).§>=§(§`Y§.§9!O§);
         }
         while(!_loc2_);
         
      }
      
      protected function §"w§(param1:String) : String
      {
         return §=!p§.§1!j§(param1);
      }
      
      override protected function openPauseMenu() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§"j§ = null;
         if(!(_loc3_ && _loc1_))
         {
            if(LevelManager.§4Y§ != null)
            {
               if(_loc2_ || _loc2_)
               {
                  _loc1_ = §5!P§.getItemByName("TextField_ChapterName") as §"j§;
                  if(!(_loc3_ && _loc3_))
                  {
                     _loc1_.§"E§.text = LevelManager.§0v§().writtenName;
                     if(_loc2_ || this)
                     {
                        (§5!P§.getItemByName("TextField_LevelName") as §"j§).§"E§.text = this.§"w§(LevelManager.§4Y§);
                        addr75:
                        (§5!P§.getItemByName("Container_PauseMenu") as §8;§).x = §%@§.OFFSCREEN_X;
                        if(_loc2_ || _loc3_)
                        {
                           §`!^§(false);
                           loop5:
                           while(true)
                           {
                              § _§.pause();
                              loop4:
                              while(true)
                              {
                                 if(§74§ != null)
                                 {
                                    if(_loc3_ && _loc3_)
                                    {
                                       break;
                                    }
                                    if(!(_loc3_ && _loc3_))
                                    {
                                       §74§.stop();
                                       break;
                                    }
                                    continue loop5;
                                 }
                                 addr137:
                                 while(true)
                                 {
                                    §74§ = §,!b§.§<d§.§=!o§(§,!b§.§<d§.§>a§(§5!P§.getItemByName("Container_PauseMenu") as §8;§,{"x":0},null,0.25),§,!b§.§<d§.§>a§((§5!P§.getItemByName("MovieClip_DarkBG") as §[I§).mClip,{"alpha":1},{"alpha":0},0.25));
                                    loop2:
                                    while(true)
                                    {
                                       §74§.onComplete = §]Z§;
                                       addr127:
                                       while(true)
                                       {
                                          if(_loc2_)
                                          {
                                             if(!(_loc3_ && _loc1_))
                                             {
                                                continue;
                                             }
                                             continue loop4;
                                          }
                                          continue loop2;
                                       }
                                       addr115:
                                       if(!(_loc3_ && _loc2_))
                                       {
                                          return;
                                          addr122:
                                       }
                                       break loop4;
                                    }
                                 }
                              }
                              addr203:
                              while(true)
                              {
                                 §§goto(addr137);
                              }
                           }
                        }
                        while(true)
                        {
                           §74§.play();
                           if(!(_loc3_ && _loc2_))
                           {
                              §§goto(addr115);
                           }
                           §§goto(addr127);
                        }
                        §§goto(addr122);
                     }
                  }
                  §§goto(addr75);
               }
               §§goto(addr203);
            }
            §§goto(addr75);
         }
         §§goto(addr122);
      }
      
      override protected function setInitialButtonVisibilities() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §5!P§.getItemByName("Button_Help").setVisibility(false);
            do
            {
               §5!P§.getItemByName("Button_Sound").setVisibility(false);
            }
            while(!(_loc1_ || this));
            
         }
      }
      
      override protected function closePauseMenu() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            if(§74§ != null)
            {
               loop0:
               while(true)
               {
                  §74§.stop();
                  addr127:
                  addr114:
                  while(true)
                  {
                  }
                  while(true)
                  {
                     if(_loc2_ || _loc1_)
                     {
                        §74§.onComplete = §8w§;
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
            while(true)
            {
               §74§ = §,!b§.§<d§.§=!o§(§,!b§.§<d§.§>a§(§5!P§.getItemByName("Container_PauseMenu") as §8;§,{"x":OFFSCREEN_X},null,0.25),§,!b§.§<d§.§>a§((§5!P§.getItemByName("MovieClip_DarkBG") as §[I§).mClip,{"alpha":0},{"alpha":1},0.25));
               §§goto(addr114);
               §§goto(addr127);
            }
         }
         §§goto(addr127);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§6!8§) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc4_:* = false;
         var _loc5_:String = null;
         var _loc6_:URLRequest = null;
         var _loc7_:* = param2;
         if(!(_loc8_ && param3))
         {
            §§push("TOGGLE_SOUNDS");
            if(!_loc8_)
            {
               §§push(_loc7_);
               if(_loc9_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(_loc9_ || this)
                     {
                        §§push(0);
                        if(_loc8_ && param1)
                        {
                        }
                     }
                     else
                     {
                        addr164:
                        §§push(1);
                        if(_loc9_ || param1)
                        {
                        }
                     }
                     §§goto(addr177);
                  }
                  else
                  {
                     addr162:
                     §§push("LEARN_MORE");
                     §§push(_loc7_);
                  }
                  §§goto(addr164);
               }
               if(§§pop() === §§pop())
               {
                  §§goto(addr164);
               }
               else
               {
                  §§push(2);
               }
               addr177:
               loop4:
               switch(§§pop())
               {
                  case 0:
                     §§push(AngryBirdsFP11.§"!u§());
                     if(!(_loc8_ && this))
                     {
                        §§push(!§§pop());
                     }
                     _loc4_ = §§pop();
                     loop0:
                     while(true)
                     {
                        AngryBirdsFP11.§-#§(_loc4_);
                        addr60:
                        while(true)
                        {
                           if(!(_loc8_ && param2))
                           {
                              break loop0;
                           }
                           continue loop0;
                        }
                     }
                     break;
                  case 1:
                     _loc5_ = "http://www.intel.com/content/www/us/en/sponsors-of-tomorrow/ultrabook.html";
                     if(!_loc8_)
                     {
                        loop1:
                        while(true)
                        {
                           §'N§.§`I§(_loc5_);
                           while(true)
                           {
                              if(!_loc8_)
                              {
                                 §@!9§.§6!f§.§5C§();
                                 if(!(_loc9_ || this))
                                 {
                                    break loop4;
                                 }
                                 if(!_loc8_)
                                 {
                                    if(true)
                                    {
                                       _loc6_ = new URLRequest(_loc5_);
                                       if(_loc9_)
                                       {
                                          navigateToURL(_loc6_,"_blank");
                                          if(_loc9_ || this)
                                          {
                                             break loop4;
                                          }
                                       }
                                    }
                                    else
                                    {
                                       addr117:
                                    }
                                    continue loop1;
                                    break loop4;
                                 }
                                 continue;
                              }
                              §§goto(addr60);
                           }
                           break loop4;
                        }
                     }
                     break;
                  default:
                     super.uiInteractionHandler(param1,param2,param3);
                     §§goto(addr117);
               }
               return;
            }
            §§goto(addr162);
         }
         §§goto(addr164);
      }
   }
}
