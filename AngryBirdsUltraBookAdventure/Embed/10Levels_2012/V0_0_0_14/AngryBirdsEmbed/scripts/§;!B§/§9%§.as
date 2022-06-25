package §;!B§
{
   import §5H§.§[k§;
   import §<!G§.§!I§;
   import §<!G§.§^3§;
   import §`F§.§,B§;
   import §`F§.§?!3§;
   import flash.events.MouseEvent;
   
   public class §9%§ extends Popup
   {
      
      private static const §]!&§:Number = 0.001;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && §9%§))
         {
            §]!&§ = 0.001;
         }
      }
      
      private var §'! §:Boolean;
      
      protected var §#N§:§?!3§;
      
      public function §9%§(param1:§^3§, param2:Boolean)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && _loc3_))
         {
            var _loc3_:XML = !!param2 ? §!I§.§7y§.Views.PopupView_FullGame[0] : §!I§.§7y§.Views.PopupView_FullScreen[0];
            super(_loc3_,param1);
            if(!(_loc5_ && this))
            {
               this.§'! § = param2;
               if(!_loc5_)
               {
                  mClip.Container_Popup.ButtonClose.addEventListener(MouseEvent.CLICK,this.§];§);
                  if(_loc4_)
                  {
                     mClip.Container_Popup.ButtonFullGame.addEventListener(MouseEvent.CLICK,this.§ v§);
                     if(!_loc5_)
                     {
                        getItemByName("Container_Popup").setVisibility(false);
                        addr103:
                        getItemByName("Container_Popup").mClip.scaleX = §]!&§;
                        getItemByName("Container_Popup").mClip.scaleY = §]!&§;
                        §[k§.pause();
                     }
                     §§goto(addr103);
                  }
                  return;
               }
            }
            §§goto(addr103);
         }
         §§goto(addr25);
      }
      
      override public function open(param1:Boolean = true) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            getItemByName("Container_Popup").setVisibility(true);
            if(_loc3_ || this)
            {
               if(param1)
               {
                  getItemByName("Container_Popup").mClip.scaleX = §]!&§;
                  if(!(_loc2_ && this))
                  {
                     getItemByName("Container_Popup").mClip.scaleY = §]!&§;
                     addr52:
                     §§push(this.§#N§);
                     if(_loc3_ || this)
                     {
                        if(§§pop() != null)
                        {
                           if(!(_loc2_ && this))
                           {
                              §§push(this.§#N§);
                              if(!_loc2_)
                              {
                                 addr84:
                                 §§pop().stop();
                                 if(!_loc2_)
                                 {
                                    this.§#N§ = §,B§.§^n§.§2E§(getItemByName("Container_Popup").mClip,{
                                       "scaleX":1,
                                       "scaleY":1
                                    },{
                                       "scaleX":§]!&§,
                                       "scaleY":§]!&§
                                    },0.2,§,B§.§;C§);
                                    addr87:
                                 }
                                 §§push(this.§#N§);
                              }
                              §§pop().play();
                              addr144:
                              super.open(param1);
                              §§goto(addr147);
                           }
                           addr147:
                           return;
                        }
                        §§goto(addr87);
                     }
                     §§goto(addr84);
                  }
                  else
                  {
                     addr131:
                     getItemByName("Container_Popup").mClip.scaleY = 1;
                     if(_loc3_ || param1)
                     {
                        §§goto(addr144);
                     }
                  }
                  §§goto(addr144);
               }
               else
               {
                  getItemByName("Container_Popup").mClip.scaleX = 1;
                  if(_loc3_)
                  {
                     §§goto(addr131);
                  }
               }
               §§goto(addr144);
            }
         }
         §§goto(addr52);
      }
      
      private function §];§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            §[k§.resume();
            if(_loc2_)
            {
               mClip.Container_Popup.ButtonClose.removeEventListener(MouseEvent.CLICK,this.§];§);
               if(!(_loc3_ && _loc3_))
               {
                  mClip.Container_Popup.ButtonFullGame.removeEventListener(MouseEvent.CLICK,this.§ v§);
                  if(_loc3_)
                  {
                  }
                  §§goto(addr74);
               }
            }
            this.deActivate();
         }
         addr74:
      }
      
      private function § v§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            mClip.Container_Popup.ButtonClose.removeEventListener(MouseEvent.CLICK,this.§];§);
            if(_loc2_ || _loc3_)
            {
               mClip.Container_Popup.ButtonFullGame.removeEventListener(MouseEvent.CLICK,this.§ v§);
               if(_loc2_)
               {
                  if(this.§'! §)
                  {
                     if(!(_loc3_ && param1))
                     {
                        addr73:
                        §§push(§#W§.§[G§);
                        if(!(_loc3_ && param1))
                        {
                           §§push("PowerUp");
                           if(_loc2_ || _loc2_)
                           {
                              §§pop().§=K§(§§pop());
                              if(_loc2_)
                              {
                                 addr98:
                                 return;
                                 addr93:
                              }
                           }
                           §§goto(addr98);
                        }
                        else
                        {
                           addr96:
                           §§push("FullScreen");
                        }
                        §§pop().§=K§(§§pop());
                     }
                     §§goto(addr98);
                  }
                  else
                  {
                     §§push(§#W§.§[G§);
                  }
                  §§goto(addr96);
               }
               §§goto(addr93);
            }
            §§goto(addr98);
         }
         §§goto(addr73);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            getItemByName("Container_Popup").setVisibility(false);
            if(_loc2_ || _loc2_)
            {
               getItemByName("Container_Popup").mClip.scaleX = §]!&§;
               if(_loc2_ || _loc2_)
               {
                  getItemByName("Container_Popup").mClip.scaleY = §]!&§;
                  if(_loc2_ || _loc2_)
                  {
                     super.deActivate();
                     if(_loc2_ || this)
                     {
                        addr86:
                        close();
                     }
                  }
                  §§goto(addr86);
               }
            }
            return;
         }
         §§goto(addr86);
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            super.viewWidth = param1;
            if(!_loc3_)
            {
               §§push(this.§#N§);
               if(!(_loc3_ && _loc2_))
               {
                  if(!§§pop())
                  {
                  }
                  §§goto(addr48);
               }
               §§pop().updateState();
               §§goto(addr48);
            }
            §§goto(addr45);
         }
         addr48:
         if(_loc2_)
         {
            addr45:
            §§push(this.§#N§);
         }
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super.viewHeight = param1;
            if(!(_loc2_ && this))
            {
               §§push(this.§#N§);
               if(_loc3_ || _loc2_)
               {
                  if(!§§pop())
                  {
                  }
                  §§goto(addr59);
               }
               §§pop().updateState();
               §§goto(addr59);
            }
            §§goto(addr56);
         }
         addr59:
         if(_loc3_ || param1)
         {
            addr56:
            §§push(this.§#N§);
         }
      }
   }
}
