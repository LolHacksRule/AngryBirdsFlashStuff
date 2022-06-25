package §`!#§
{
   import §"!i§.LevelManager;
   import §+!f§.§@!c§;
   import §2!U§.§@!A§;
   import §2y§.§54§;
   import §2y§.§7!p§;
   import §2y§.§^! §;
   import §;!y§.§,!s§;
   import §<-§.§!!K§;
   import §>f§.§&!G§;
   import §>f§.§2!z§;
   import §@!&§.§'!o§;
   import §]F§.§`!G§;
   import com.angrybirds.friendsbar.§-V§;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.text.TextFieldAutoSize;
   
   public class §>!U§ extends §@!A§
   {
       
      
      public function §>!U§(param1:Boolean = false, param2:String = "PauseState")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            super(param1,param2);
         }
      }
      
      override public function init() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §]!E§ = true;
            while(true)
            {
               §'!Q§ = new §&!G§(this);
               addr27:
               if(!(_loc3_ && _loc3_))
               {
                  if(false)
                  {
                     loop2:
                     while(true)
                     {
                        §'!Q§.init(§2!z§.§ _§.Views.View_FacebookLevelPause[0]);
                        addr55:
                        addr79:
                        while(!(_loc3_ && _loc1_))
                        {
                           §'!Q§.getItemByName("Button_Fullscreen").setVisibility(false);
                           if(!_loc2_)
                           {
                              continue;
                           }
                           §§goto(addr27);
                        }
                        while(true)
                        {
                           continue loop2;
                           §§goto(addr55);
                        }
                     }
                  }
                  var _loc1_:§54§ = §'!Q§.getItemByName("TextField_ChapterName") as §54§;
                  if(_loc2_)
                  {
                     _loc1_.§5!B§.autoSize = TextFieldAutoSize.CENTER;
                  }
                  return;
               }
            }
         }
         §§goto(addr79);
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            super.activate();
         }
         do
         {
            (§,!s§.§]!J§ as §<t§).§'!0§(§-V§.§6!;§);
         }
         while(!(_loc2_ || this));
         
      }
      
      protected function §5![§(param1:String) : String
      {
         return §@!c§.§<!N§(param1);
      }
      
      override protected function openPauseMenu() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§54§ = null;
         if(_loc2_ || _loc3_)
         {
            if(LevelManager.§"L§ != null)
            {
               if(_loc2_)
               {
                  _loc1_ = §'!Q§.getItemByName("TextField_ChapterName") as §54§;
                  if(!(_loc3_ && this))
                  {
                     _loc1_.§5!B§.text = LevelManager.§+!$§().writtenName;
                     if(!_loc3_)
                     {
                        (§'!Q§.getItemByName("TextField_LevelName") as §54§).§5!B§.text = this.§5![§(LevelManager.§"L§);
                        addr65:
                        (§'!Q§.getItemByName("Container_PauseMenu") as §^! §).x = §@!A§.OFFSCREEN_X;
                        if(!_loc3_)
                        {
                           §3^§(false);
                           loop8:
                           while(true)
                           {
                              §,!s§.pause();
                              addr187:
                              loop2:
                              while(§ !d§ != null)
                              {
                                 while(true)
                                 {
                                    § !d§.stop();
                                    addr181:
                                    while(true)
                                    {
                                       if(_loc3_)
                                       {
                                          continue loop8;
                                       }
                                       while(true)
                                       {
                                          break loop2;
                                       }
                                    }
                                 }
                              }
                              while(true)
                              {
                                 § !d§ = §`!G§.§[U§.§`h§(§`!G§.§[U§.§-]§(§'!Q§.getItemByName("Container_PauseMenu") as §^! §,{"x":0},null,0.25),§`!G§.§[U§.§-]§((§'!Q§.getItemByName("MovieClip_DarkBG") as §7!p§).mClip,{"alpha":1},{"alpha":0},0.25));
                                 loop1:
                                 while(true)
                                 {
                                    if(!_loc3_)
                                    {
                                       if(!(_loc3_ && _loc3_))
                                       {
                                          § !d§.onComplete = §^R§;
                                          while(!(_loc2_ || _loc2_))
                                          {
                                          }
                                          while(true)
                                          {
                                             § !d§.play();
                                             if(!(_loc3_ && _loc2_))
                                             {
                                                if(_loc2_ || _loc2_)
                                                {
                                                   break;
                                                }
                                                continue loop1;
                                             }
                                             §§goto(addr112);
                                          }
                                          addr112:
                                          return;
                                          addr119:
                                       }
                                       §§goto(addr187);
                                       §§goto(addr181);
                                    }
                                    §§goto(addr179);
                                 }
                              }
                           }
                           addr75:
                        }
                        §§goto(addr183);
                     }
                  }
                  §§goto(addr65);
               }
               §§goto(addr119);
            }
            §§goto(addr65);
         }
         §§goto(addr75);
      }
      
      override protected function setInitialButtonVisibilities() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §'!Q§.getItemByName("Button_Help").setVisibility(false);
         }
         do
         {
            §'!Q§.getItemByName("Button_Sound").setVisibility(false);
         }
         while(_loc2_ && _loc2_);
         
      }
      
      override protected function closePauseMenu() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            if(§ !d§ != null)
            {
               while(true)
               {
                  § !d§.stop();
                  while(true)
                  {
                  }
               }
               addr115:
            }
            do
            {
               § !d§ = §`!G§.§[U§.§`h§(§`!G§.§[U§.§-]§(§'!Q§.getItemByName("Container_PauseMenu") as §^! §,{"x":OFFSCREEN_X},null,0.25),§`!G§.§[U§.§-]§((§'!Q§.getItemByName("MovieClip_DarkBG") as §7!p§).mClip,{"alpha":0},{"alpha":1},0.25));
               do
               {
                  § !d§.onComplete = §7g§;
                  do
                  {
                     § !d§.play();
                  }
                  while(!_loc2_);
                  
               }
               while(_loc1_);
               
               if(!(_loc2_ || _loc1_))
               {
                  continue;
               }
            }
            while(_loc1_ && _loc2_);
            
            return;
         }
         §§goto(addr115);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§'!o§) : void
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
               if(!(_loc8_ && param3))
               {
                  if(§§pop() === §§pop())
                  {
                     if(_loc9_)
                     {
                        addr162:
                        §§push(0);
                        if(!_loc9_)
                        {
                           addr177:
                        }
                     }
                     else
                     {
                        addr169:
                        §§push(1);
                        if(!(_loc8_ && param3))
                        {
                           §§goto(addr177);
                        }
                     }
                     §§goto(addr182);
                  }
                  else
                  {
                     §§goto(addr168);
                  }
               }
               §§goto(addr168);
            }
            addr168:
            if("LEARN_MORE" === _loc7_)
            {
               §§goto(addr169);
            }
            else
            {
               §§push(2);
            }
            addr182:
            loop1:
            switch(§§pop())
            {
               case 0:
                  §§push(AngryBirdsFP11.§"C§());
                  if(!(_loc8_ && this))
                  {
                     §§push(!§§pop());
                  }
                  _loc4_ = §§pop();
                  AngryBirdsFP11.§]!G§(_loc4_);
                  break;
                  addr101:
                  addr77:
               case 1:
                  _loc5_ = "http://www.amazon.com/gp/feature.html?ie=UTF8&docId=1000859891";
                  if(!(_loc8_ && this))
                  {
                     while(true)
                     {
                        §!!K§.§%$§(_loc5_);
                        if(!(_loc8_ && param1))
                        {
                           if(!_loc8_)
                           {
                              §<t§.§`n§.§5!M§();
                              if(!(_loc8_ && param1))
                              {
                                 if(_loc9_ || this)
                                 {
                                    if(true)
                                    {
                                       _loc6_ = new URLRequest(_loc5_);
                                       if(_loc9_ || this)
                                       {
                                          navigateToURL(_loc6_,"_blank");
                                          if(!_loc9_)
                                          {
                                             addr127:
                                             break loop1;
                                          }
                                       }
                                    }
                                    continue;
                                    break loop1;
                                 }
                              }
                              break loop1;
                           }
                           §§goto(addr101);
                           §§goto(addr77);
                        }
                        break loop1;
                     }
                     break;
                  }
                  break;
               default:
                  super.uiInteractionHandler(param1,param2,param3);
                  §§goto(addr127);
            }
            return;
         }
         §§goto(addr162);
      }
   }
}
