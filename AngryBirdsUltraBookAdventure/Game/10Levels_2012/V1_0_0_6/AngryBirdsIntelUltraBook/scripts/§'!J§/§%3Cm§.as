package §'!J§
{
   import §'!Q§.§ §;
   import §1!E§.§#?§;
   import §1!E§.§1!=§;
   import §1!E§.§?!x§;
   import §2!H§.§-!,§;
   import §3!G§.LevelManager;
   import §;H§.§-!X§;
   import §>! §.§^!c§;
   import §>7§.§,!c§;
   import §[!+§.§ !I§;
   import §[!+§.§4`§;
   import §]+§.§@!J§;
   import com.angrybirds.friendsbar.§1!R§;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.text.TextFieldAutoSize;
   
   public class §<m§ extends §-!X§
   {
       
      
      public function §<m§(param1:Boolean = false, param2:String = "PauseState")
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
            §?C§ = true;
            loop0:
            while(true)
            {
               §&!m§ = new §4`§(this);
               while(true)
               {
                  addr52:
                  loop2:
                  while(true)
                  {
                     §&!m§.init(§ !I§.§3!a§.Views.View_FacebookLevelPause[0]);
                     while(!_loc2_)
                     {
                        §&!m§.getItemByName("Button_Fullscreen").setVisibility(false);
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
         var _loc1_:§?!x§ = §&!m§.getItemByName("TextField_ChapterName") as §?!x§;
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.§,!F§.autoSize = TextFieldAutoSize.CENTER;
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
            (§^!c§.§2!w§ as §[!P§).§;e§(§1!R§.§5!8§);
         }
         while(_loc2_ && _loc1_);
         
      }
      
      protected function §5f§(param1:String) : String
      {
         return § §.§'!X§(param1);
      }
      
      override protected function openPauseMenu() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§?!x§ = null;
         if(_loc2_)
         {
            if(LevelManager.§%n§ != null)
            {
               if(_loc2_ || _loc2_)
               {
                  _loc1_ = §&!m§.getItemByName("TextField_ChapterName") as §?!x§;
                  if(_loc2_)
                  {
                     _loc1_.§,!F§.text = LevelManager.§];§().writtenName;
                     if(_loc2_ || _loc3_)
                     {
                     }
                     addr65:
                     (§&!m§.getItemByName("Container_PauseMenu") as §#?§).x = §-!X§.OFFSCREEN_X;
                     if(_loc2_ || _loc1_)
                     {
                        §3$§(false);
                        while(true)
                        {
                           §^!c§.pause();
                        }
                        addr181:
                     }
                     while(true)
                     {
                        if(§<!K§ != null)
                        {
                           while(_loc2_)
                           {
                              §<!K§.stop();
                              while(true)
                              {
                              }
                           }
                           continue;
                           addr169:
                        }
                        while(true)
                        {
                           §<!K§ = §-!,§.§7!j§.§+B§(§-!,§.§7!j§.§,!`§(§&!m§.getItemByName("Container_PauseMenu") as §#?§,{"x":0},null,0.25),§-!,§.§7!j§.§,!`§((§&!m§.getItemByName("MovieClip_DarkBG") as §1!=§).mClip,{"alpha":1},{"alpha":0},0.25));
                           loop5:
                           while(true)
                           {
                              if(!_loc3_)
                              {
                                 §<!K§.onComplete = §^!-§;
                                 loop6:
                                 while(!_loc3_)
                                 {
                                    while(true)
                                    {
                                       §<!K§.play();
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
                  (§&!m§.getItemByName("TextField_LevelName") as §?!x§).§,!F§.text = this.§5f§(LevelManager.§%n§);
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
            §&!m§.getItemByName("Button_Help").setVisibility(false);
         }
         do
         {
            §&!m§.getItemByName("Button_Sound").setVisibility(false);
         }
         while(!(_loc1_ || this));
         
      }
      
      override protected function closePauseMenu() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(§<!K§ != null)
            {
               while(true)
               {
                  §<!K§.stop();
                  addr116:
                  §§goto(addr103);
               }
            }
            while(true)
            {
               §<!K§ = §-!,§.§7!j§.§+B§(§-!,§.§7!j§.§,!`§(§&!m§.getItemByName("Container_PauseMenu") as §#?§,{"x":OFFSCREEN_X},null,0.25),§-!,§.§7!j§.§,!`§((§&!m§.getItemByName("MovieClip_DarkBG") as §1!=§).mClip,{"alpha":0},{"alpha":1},0.25));
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
                  §<!K§.onComplete = §6!1§;
                  while(!(_loc2_ && this))
                  {
                     §<!K§.play();
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
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§,!c§) : void
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
                  §§push(AngryBirdsFP11.§0!b§());
                  if(!(_loc9_ && this))
                  {
                     §§push(!§§pop());
                  }
                  _loc4_ = §§pop();
                  AngryBirdsFP11.§5!C§(_loc4_);
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
                           §@!J§.§!v§(_loc5_);
                           while(true)
                           {
                              §[!P§.§;!K§.§&2§();
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
