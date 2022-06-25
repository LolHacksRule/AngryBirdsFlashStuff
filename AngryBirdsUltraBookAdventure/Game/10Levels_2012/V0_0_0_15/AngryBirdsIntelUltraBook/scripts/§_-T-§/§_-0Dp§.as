package §_-T-§
{
   import §_-0A-§.§_-08e§;
   import §_-0AB§.§_-cx§;
   import §_-6C§.§_-0Eo§;
   import §_-6C§.§_-gt§;
   import §_-6C§.§_-k6§;
   import §_-Ga§.LevelManager;
   import §_-MN§.§_-wU§;
   import §_-Yl§.§_-5q§;
   import §_-Yl§.§_-vB§;
   import §_-ad§.§_-08C§;
   import §_-eS§.§_-OY§;
   import §_-qO§.§ in§;
   import com.angrybirds.friendsbar.§_-ri§;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.text.TextFieldAutoSize;
   
   public class §_-0Dp§ extends §_-08C§
   {
       
      
      public function §_-0Dp§(param1:Boolean = false, param2:String = "PauseState")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super(param1,param2);
         }
      }
      
      override public function init() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            §_-I8§ = true;
            loop0:
            while(true)
            {
               §_-s0§ = new §_-5q§(this);
               loop1:
               while(true)
               {
                  while(true)
                  {
                     §_-s0§.init(§_-vB§.§_-ky§.Views.View_FacebookLevelPause[0]);
                     addr54:
                     while(!_loc2_)
                     {
                        continue loop0;
                     }
                     continue loop1;
                     addr35:
                  }
               }
            }
         }
         while(true)
         {
            §_-s0§.getItemByName("Button_Fullscreen").setVisibility(false);
            if(!_loc2_)
            {
               if(true)
               {
                  break;
               }
               §§goto(addr35);
            }
            §§goto(addr54);
         }
         var _loc1_:§_-0Eo§ = §_-s0§.getItemByName("TextField_ChapterName") as §_-0Eo§;
         if(_loc3_)
         {
            _loc1_.§_-ab§.autoSize = TextFieldAutoSize.CENTER;
         }
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.activate();
         }
         do
         {
            (§ in§.§_-HY§ as §_-rG§).§_-KA§(§_-ri§.§_-02b§);
         }
         while(!_loc1_);
         
      }
      
      protected function §_-SH§(param1:String) : String
      {
         return §_-08e§.§_-i8§(param1);
      }
      
      override protected function openPauseMenu() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§_-0Eo§ = null;
         if(!_loc3_)
         {
            if(LevelManager.§_-HM§ != null)
            {
               if(!_loc3_)
               {
                  _loc1_ = §_-s0§.getItemByName("TextField_ChapterName") as §_-0Eo§;
                  if(_loc2_ || _loc2_)
                  {
                     _loc1_.§_-ab§.text = LevelManager.§_-1a§().writtenName;
                     if(!(_loc3_ && _loc1_))
                     {
                        (§_-s0§.getItemByName("TextField_LevelName") as §_-0Eo§).§_-ab§.text = this.§_-SH§(LevelManager.§_-HM§);
                        addr65:
                        (§_-s0§.getItemByName("Container_PauseMenu") as §_-gt§).x = §_-08C§.OFFSCREEN_X;
                        if(_loc2_ || this)
                        {
                           §_-zH§(false);
                           loop0:
                           while(true)
                           {
                              § in§.pause();
                              loop1:
                              while(true)
                              {
                                 if(§_-ox§ != null)
                                 {
                                    while(!_loc3_)
                                    {
                                       §_-ox§.stop();
                                       while(true)
                                       {
                                       }
                                    }
                                    continue loop0;
                                    addr174:
                                 }
                                 while(true)
                                 {
                                    §_-ox§ = §_-cx§.§_-3S§.§_-Tc§(§_-cx§.§_-3S§.§_-Wf§(§_-s0§.getItemByName("Container_PauseMenu") as §_-gt§,{"x":0},null,0.25),§_-cx§.§_-3S§.§_-Wf§((§_-s0§.getItemByName("MovieClip_DarkBG") as §_-k6§).mClip,{"alpha":1},{"alpha":0},0.25));
                                    while(!(_loc3_ && _loc2_))
                                    {
                                       §_-ox§.onComplete = §_-09M§;
                                       for(; _loc2_; §_-ox§.play(),if(_loc3_ && this)
                                       {
                                          continue;
                                       })
                                       {
                                          if(!_loc3_)
                                          {
                                             if(!_loc3_)
                                             {
                                                continue;
                                             }
                                             continue loop1;
                                          }
                                          §§goto(addr174);
                                       }
                                    }
                                    §§goto(addr178);
                                 }
                              }
                           }
                        }
                        §§goto(addr178);
                     }
                  }
                  §§goto(addr65);
               }
               return;
            }
            §§goto(addr65);
         }
         §§goto(addr178);
      }
      
      override protected function setInitialButtonVisibilities() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §_-s0§.getItemByName("Button_Help").setVisibility(false);
            do
            {
               §_-s0§.getItemByName("Button_Sound").setVisibility(false);
            }
            while(!(_loc1_ || _loc1_));
            
         }
      }
      
      override protected function closePauseMenu() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(§_-ox§ != null)
            {
               while(true)
               {
                  §_-ox§.stop();
                  addr117:
                  while(true)
                  {
                  }
               }
               addr115:
            }
            loop0:
            while(true)
            {
               §_-ox§ = §_-cx§.§_-3S§.§_-Tc§(§_-cx§.§_-3S§.§_-Wf§(§_-s0§.getItemByName("Container_PauseMenu") as §_-gt§,{"x":OFFSCREEN_X},null,0.25),§_-cx§.§_-3S§.§_-Wf§((§_-s0§.getItemByName("MovieClip_DarkBG") as §_-k6§).mClip,{"alpha":0},{"alpha":1},0.25));
               loop1:
               do
               {
                  if(_loc2_ || this)
                  {
                     §_-ox§.onComplete = §_-cl§;
                     while(_loc2_ || _loc1_)
                     {
                        §_-ox§.play();
                        if(!(_loc1_ && this))
                        {
                           continue loop1;
                        }
                     }
                     continue loop0;
                  }
               }
               while(_loc1_);
               
               return;
            }
         }
         §§goto(addr115);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§_-wU§) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc4_:* = false;
         var _loc5_:String = null;
         var _loc6_:URLRequest = null;
         var _loc7_:* = param2;
         if(!_loc9_)
         {
            §§push("TOGGLE_SOUNDS");
            if(!(_loc9_ && param3))
            {
               §§push(_loc7_);
               if(!_loc9_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(_loc8_)
                     {
                        §§push(0);
                        if(_loc8_ || param1)
                        {
                        }
                     }
                     else
                     {
                        addr148:
                        §§push(1);
                        if(!_loc8_)
                        {
                        }
                     }
                     §§goto(addr156);
                  }
                  else
                  {
                     addr146:
                     §§push("LEARN_MORE");
                     §§push(_loc7_);
                  }
                  §§goto(addr148);
               }
               if(§§pop() === §§pop())
               {
                  §§goto(addr148);
               }
               else
               {
                  §§push(2);
               }
               addr156:
               switch(§§pop())
               {
                  case 0:
                     §§push(AngryBirdsFP11.§_-Lz§());
                     if(!_loc9_)
                     {
                        §§push(!§§pop());
                     }
                     _loc4_ = §§pop();
                     AngryBirdsFP11.§_-mv§(_loc4_);
                     break;
                     addr85:
                     addr66:
                  case 1:
                     _loc5_ = "http://www.intel.com/content/www/us/en/sponsors-of-tomorrow/ultrabook.html";
                     loop0:
                     while(true)
                     {
                        if(!_loc9_)
                        {
                           while(true)
                           {
                              §_-OY§.§_-7i§(_loc5_);
                              continue loop0;
                           }
                           addr42:
                        }
                        else
                        {
                           §§goto(addr85);
                        }
                     }
                     §§goto(addr66);
                  default:
                     super.uiInteractionHandler(param1,param2,param3);
                     §§goto(addr106);
               }
               return;
            }
            §§goto(addr146);
         }
         §§goto(addr148);
      }
   }
}
