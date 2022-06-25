package §0o§
{
   import § !k§.§=!#§;
   import § !x§.§5+§;
   import §!!§.LevelManager;
   import §&!h§.§]V§;
   import §1n§.§ C§;
   import §1n§.dynamic;
   import §5!t§.§+!g§;
   import §5i§.§4!]§;
   import §=R§.§7!"§;
   import §`M§.§&!G§;
   import §`M§.§3!@§;
   import §`M§.§9!#§;
   import com.angrybirds.friendsbar.§&E§;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.text.TextFieldAutoSize;
   
   public class §<2§ extends §=!#§
   {
       
      
      public function §<2§(param1:Boolean = false, param2:String = "PauseState")
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
         if(!(_loc2_ && this))
         {
            §[!?§ = true;
            loop0:
            while(true)
            {
               §`-§ = new § C§(this);
               while(true)
               {
                  addr52:
                  loop2:
                  while(true)
                  {
                     §`-§.init(dynamic.§[6§.Views.View_FacebookLevelPause[0]);
                     while(!_loc2_)
                     {
                        §`-§.getItemByName("Button_Fullscreen").setVisibility(false);
                        if(_loc2_ && _loc2_)
                        {
                           continue;
                        }
                        if(_loc2_)
                        {
                           break loop2;
                        }
                     }
                     continue loop0;
                  }
               }
            }
         }
         while(false)
         {
            §§goto(addr52);
         }
         var _loc1_:§3!@§ = §`-§.getItemByName("TextField_ChapterName") as §3!@§;
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.§!!2§.autoSize = TextFieldAutoSize.CENTER;
         }
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            super.activate();
         }
         do
         {
            (§4!]§.§7!G§ as §[!m§).§ P§(§&E§.§"!0§);
         }
         while(_loc2_ && _loc1_);
         
      }
      
      protected function §7#§(param1:String) : String
      {
         return §+!g§.§,!X§(param1);
      }
      
      override protected function openPauseMenu() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§3!@§ = null;
         if(_loc2_)
         {
            if(LevelManager.§^!F§ != null)
            {
               if(_loc2_ || _loc2_)
               {
                  _loc1_ = §`-§.getItemByName("TextField_ChapterName") as §3!@§;
                  if(_loc2_)
                  {
                     _loc1_.§!!2§.text = LevelManager.§5!K§().writtenName;
                     if(_loc2_ || _loc3_)
                     {
                     }
                     addr65:
                     (§`-§.getItemByName("Container_PauseMenu") as §9!#§).x = §=!#§.OFFSCREEN_X;
                     if(_loc2_ || _loc1_)
                     {
                        §"!f§(false);
                        while(true)
                        {
                           §4!]§.pause();
                        }
                        addr181:
                     }
                     while(true)
                     {
                        if(§'!N§ != null)
                        {
                           while(_loc2_)
                           {
                              §'!N§.stop();
                              while(true)
                              {
                              }
                           }
                           continue;
                           addr169:
                        }
                        while(true)
                        {
                           §'!N§ = §5+§.§^Z§.§>Y§(§5+§.§^Z§.§=!a§(§`-§.getItemByName("Container_PauseMenu") as §9!#§,{"x":0},null,0.25),§5+§.§^Z§.§=!a§((§`-§.getItemByName("MovieClip_DarkBG") as §&!G§).mClip,{"alpha":1},{"alpha":0},0.25));
                           loop5:
                           while(true)
                           {
                              if(!_loc3_)
                              {
                                 §'!N§.onComplete = §"4§;
                                 loop6:
                                 while(!_loc3_)
                                 {
                                    while(true)
                                    {
                                       §'!N§.play();
                                       if(_loc3_ && _loc3_)
                                       {
                                          continue loop6;
                                       }
                                       if(!_loc2_)
                                       {
                                          break loop5;
                                       }
                                       if(_loc2_)
                                       {
                                          break;
                                       }
                                       §§goto(addr181);
                                    }
                                    return;
                                 }
                                 continue;
                              }
                              §§goto(addr169);
                           }
                           §§goto(addr173);
                        }
                     }
                  }
                  (§`-§.getItemByName("TextField_LevelName") as §3!@§).§!!2§.text = this.§7#§(LevelManager.§^!F§);
                  §§goto(addr65);
               }
               §§goto(addr109);
            }
            §§goto(addr65);
         }
         §§goto(addr116);
      }
      
      override protected function setInitialButtonVisibilities() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §`-§.getItemByName("Button_Help").setVisibility(false);
         }
         do
         {
            §`-§.getItemByName("Button_Sound").setVisibility(false);
         }
         while(!(_loc1_ || this));
         
      }
      
      override protected function closePauseMenu() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(§'!N§ != null)
            {
               while(true)
               {
                  §'!N§.stop();
                  addr116:
                  §§goto(addr103);
               }
            }
            while(true)
            {
               §'!N§ = §5+§.§^Z§.§>Y§(§5+§.§^Z§.§=!a§(§`-§.getItemByName("Container_PauseMenu") as §9!#§,{"x":OFFSCREEN_X},null,0.25),§5+§.§^Z§.§=!a§((§`-§.getItemByName("MovieClip_DarkBG") as §&!G§).mClip,{"alpha":0},{"alpha":1},0.25));
               addr103:
               while(true)
               {
               }
               loop2:
               do
               {
                  if(_loc2_ && _loc1_)
                  {
                     continue loop0;
                  }
                  §'!N§.onComplete = §91§;
                  while(!(_loc2_ && this))
                  {
                     §'!N§.play();
                     if(!(_loc2_ && _loc1_))
                     {
                        continue loop2;
                     }
                  }
                  §§goto(addr116);
               }
               while(!_loc1_);
               
               return;
               §§goto(addr116);
            }
         }
         §§goto(addr116);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§7!"§) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc4_:* = false;
         var _loc5_:String = null;
         var _loc6_:URLRequest = null;
         var _loc7_:* = param2;
         if(!(_loc9_ && param2))
         {
            §§push("TOGGLE_SOUNDS");
            if(!_loc9_)
            {
               §§push(_loc7_);
               if(_loc8_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(_loc8_ || this)
                     {
                        addr156:
                        §§push(0);
                        if(_loc9_ && param2)
                        {
                           addr171:
                        }
                     }
                     else
                     {
                        addr168:
                        §§push(1);
                        if(_loc8_)
                        {
                           §§goto(addr171);
                        }
                     }
                     §§goto(addr176);
                  }
                  else
                  {
                     §§goto(addr167);
                  }
               }
               §§goto(addr167);
            }
            addr167:
            if("LEARN_MORE" === _loc7_)
            {
               §§goto(addr168);
            }
            else
            {
               §§push(2);
            }
            addr176:
            loop2:
            switch(§§pop())
            {
               case 0:
                  §§push(AngryBirdsFP11.§`;§());
                  if(!(_loc9_ && this))
                  {
                     §§push(!§§pop());
                  }
                  _loc4_ = §§pop();
                  AngryBirdsFP11.§0S§(_loc4_);
                  break;
                  addr95:
                  addr71:
               case 1:
                  _loc5_ = "http://www.intel.com/content/www/us/en/sponsors-of-tomorrow/ultrabook.html";
                  if(!(_loc9_ && param1))
                  {
                     if(!_loc9_)
                     {
                        loop0:
                        while(true)
                        {
                           §]V§.§ 4§(_loc5_);
                           while(true)
                           {
                              §[!m§.§1H§.§2!3§();
                              if(_loc8_)
                              {
                                 if(_loc9_ && this)
                                 {
                                    continue;
                                 }
                                 if(_loc8_ || param2)
                                 {
                                    if(true)
                                    {
                                       _loc6_ = new URLRequest(_loc5_);
                                       if(!_loc9_)
                                       {
                                          navigateToURL(_loc6_,"_blank");
                                          if(_loc8_ || this)
                                          {
                                             break loop2;
                                          }
                                       }
                                    }
                                    else
                                    {
                                       addr121:
                                    }
                                    continue loop0;
                                    break loop2;
                                 }
                              }
                              break loop2;
                           }
                           break loop2;
                        }
                     }
                     else
                     {
                        §§goto(addr95);
                     }
                     §§goto(addr71);
                  }
                  break;
               default:
                  super.uiInteractionHandler(param1,param2,param3);
                  §§goto(addr121);
            }
            return;
         }
         §§goto(addr156);
      }
   }
}
