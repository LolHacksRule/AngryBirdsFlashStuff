package §<M§
{
   import § !B§.ColorFadeLayerEvent;
   import §"U§.§@4§;
   import §"U§.§^'§;
   import §'K§.§3C§;
   import §'K§.§[!9§;
   import §,!"§.§-O§;
   import §,!"§.§0!5§;
   import §8!B§.§#! §;
   import §]!-§.§`Z§;
   import §]!-§.§`o§;
   import §^]§.§;!P§;
   import §^]§.§`!K§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class §>!"§ extends Popup
   {
      
      private static var OFFSCREEN_X:Number = -250;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            OFFSCREEN_X = -250;
         }
      }
      
      private var §1o§:§[!9§;
      
      private var §0!F§:§[!9§;
      
      public function §>!"§(param1:§`o§, param2:StatePopupManager)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super(§`Z§.§5c§.Views.PopupView_Pause[0],param1);
            while(true)
            {
               mClip.Container_Popup.x = -100;
               loop1:
               while(_loc4_ || param2)
               {
                  while(true)
                  {
                     this.init();
                     if(_loc4_ || this)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr67);
      }
      
      protected function init() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:§@4§ = null;
         var _loc2_:String = null;
         mClip.Container_Popup.x = §>!"§.OFFSCREEN_X;
         loop0:
         while(true)
         {
            this.§1o§ = §3C§.§>o§.§<t§(mClip.Container_Popup,{"x":0},null,0.3,§3C§.§[!-§);
            do
            {
               §§push(this.§1o§);
               do
               {
                  §§pop().onComplete = this.activate;
                  §§push(this.§1o§);
               }
               while(!_loc4_);
               
               §§pop().play();
               §#! §.pause();
            }
            while(_loc3_);
            
            loop3:
            while(true)
            {
               AngryBirdsFP11.§`y§.§@9§();
               while(true)
               {
                  if(_loc4_)
                  {
                     (mClip.Container_Popup.MovieClip_SoundsOff as MovieClip).visible = !AngryBirdsFP11.§5e§();
                     if(_loc4_)
                     {
                        if(!_loc4_)
                        {
                           continue;
                        }
                        if(false)
                        {
                           continue loop3;
                        }
                        if(§`!K§.§5g§ != null)
                        {
                           _loc1_ = §%Q§.getItemByName("TextField_ChapterName") as §@4§;
                           if(!(_loc3_ && this))
                           {
                              addr186:
                              _loc2_ = §`!K§.§]V§().writtenName;
                              addr139:
                              addr187:
                              addr185:
                              §§push(_loc2_);
                              if(_loc4_ || _loc2_)
                              {
                                 if(!(_loc3_ && _loc2_))
                                 {
                                    if(§§pop())
                                    {
                                       if(_loc4_)
                                       {
                                          _loc1_.§!!@§.text = §`!K§.§]V§().writtenName;
                                       }
                                       addr174:
                                       if(!(_loc3_ && _loc1_))
                                       {
                                          addr118:
                                          (§%Q§.getItemByName("TextField_LevelName") as §@4§).§!!@§.text = §;!P§.§[e§(§`!K§.§5g§);
                                          if(_loc4_ || _loc1_)
                                          {
                                             if(false)
                                             {
                                                §§goto(addr139);
                                             }
                                             addr188:
                                             (§%Q§.getItemByName("Button_Friends") as §^'§).setVisibility(true);
                                             break;
                                          }
                                          §§goto(addr174);
                                          addr181:
                                       }
                                       §§goto(addr187);
                                    }
                                    §§goto(addr118);
                                 }
                                 §§goto(addr185);
                              }
                              §§goto(addr186);
                           }
                           §§goto(addr181);
                        }
                        §§goto(addr188);
                     }
                     break;
                  }
                  continue loop0;
               }
               return;
            }
         }
      }
      
      protected function activate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            (mClip.Container_Popup.MovieClip_SoundsOff as MovieClip).visible = !AngryBirdsFP11.§5e§();
            (mClip.Container_Popup.Button_Resume as MovieClip).addEventListener(MouseEvent.CLICK,this.§'!F§);
            do
            {
               (mClip.Container_Popup.Button_Menu as MovieClip).addEventListener(MouseEvent.CLICK,this.§"!=§);
               do
               {
                  (mClip.Container_Popup.Button_Replay as MovieClip).addEventListener(MouseEvent.CLICK,this.§9H§);
               }
               while(_loc1_ && this);
               
            }
            while(_loc1_);
            
         }
         (mClip.Container_Popup.Button_Sound as MovieClip).addEventListener(MouseEvent.CLICK,this.§><§);
         do
         {
            (mClip.Button_Friends as MovieClip).addEventListener(MouseEvent.CLICK,this.§6!§);
         }
         while(!(_loc2_ || _loc1_));
         
      }
      
      protected function §><§(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
         {
            (mClip.Container_Popup.MovieClip_SoundsOff as MovieClip).visible = !(mClip.Container_Popup.MovieClip_SoundsOff as MovieClip).visible;
         }
         §§push(AngryBirdsFP11.§5e§());
         if(!(_loc4_ && _loc2_))
         {
            §§push(!§§pop());
         }
         var _loc2_:* = §§pop();
         if(!_loc4_)
         {
            AngryBirdsFP11.§6r§(_loc2_);
         }
         loop0:
         while(true)
         {
            §!D§.§#!O§(§!D§.§8T§,int(_loc2_));
            loop1:
            do
            {
               §%Q§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc2_);
               while(_loc3_)
               {
                  §%Q§.getItemByName("Button_Sound").mActive = false;
                  if(_loc3_)
                  {
                     continue loop1;
                  }
               }
               continue loop0;
            }
            while(_loc4_ && _loc2_);
            
            return;
         }
      }
      
      protected function §9H§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.deActivate();
            while(true)
            {
               §#! §.§`'§.§4-§();
               addr53:
               if(_loc3_ && this)
               {
                  continue;
               }
               return;
               addr60:
            }
         }
         while(true)
         {
            §!D§.§46§.§@!@§().mNextState = §-O§.§-A§;
            while(_loc2_)
            {
               §-O§.§8!5§();
               if(!(_loc2_ || _loc3_))
               {
                  continue;
               }
               §§goto(addr53);
            }
         }
         §§goto(addr60);
      }
      
      protected function §"!=§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.deActivate();
         }
         do
         {
            §!D§.§46§.§@!@§().mNextState = §0!5§.§-A§;
         }
         while(!_loc2_);
         
      }
      
      private function §6!§(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:URLRequest = new URLRequest("http://apps.facebook.com/angrybirds/");
         if(_loc4_ || this)
         {
            navigateToURL(_loc2_,"_blank");
         }
      }
      
      protected function §'!F§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            (mClip.Container_Popup.Button_Resume as MovieClip).removeEventListener(MouseEvent.CLICK,this.§'!F§);
            (mClip.Container_Popup.Button_Menu as MovieClip).removeEventListener(MouseEvent.CLICK,this.§"!=§);
            (mClip.Container_Popup.Button_Replay as MovieClip).removeEventListener(MouseEvent.CLICK,this.§9H§);
            loop0:
            while(true)
            {
               (mClip.Container_Popup.Button_Sound as MovieClip).removeEventListener(MouseEvent.CLICK,this.§><§);
               do
               {
                  this.§1o§ = null;
               }
               while(!(_loc2_ || _loc2_));
               
               this.§1o§ = §3C§.§>o§.§<t§(mClip.Container_Popup,{"x":§>!"§.OFFSCREEN_X},null,0.3,§3C§.§%l§);
               while(true)
               {
                  this.§1o§.play();
                  loop3:
                  while(!(_loc3_ && _loc3_))
                  {
                     while(true)
                     {
                        §!>§.fadeToAlpha(0,§%5§);
                        while(!(_loc3_ && this))
                        {
                           §!>§.addEventListener(ColorFadeLayerEvent.§3n§,this.§-s§);
                           if(_loc3_ && _loc2_)
                           {
                              continue;
                           }
                           if(_loc3_)
                           {
                              continue loop0;
                           }
                           §§goto(addr44);
                        }
                        continue loop3;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr79);
      }
      
      private function §-s§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.deActivate();
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.deActivate();
            while(true)
            {
               §#! §.resume();
               loop1:
               while(!_loc2_)
               {
                  while(true)
                  {
                     this.close();
                     if(!_loc2_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr44);
      }
   }
}
