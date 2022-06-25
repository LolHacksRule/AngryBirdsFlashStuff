package §=!4§
{
   import §"!&§.§ !5§;
   import §"!&§.§%!>§;
   import §"!5§.§,!!§;
   import §1;§.§!!1§;
   import §1;§.§0!&§;
   import flash.events.MouseEvent;
   
   public class §24§ extends Popup
   {
      
      private static const §8u§:Number = 0.001;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && §24§))
         {
            §8u§ = 0.001;
         }
      }
      
      private var §=!§:Boolean;
      
      protected var §9!F§:§ !5§;
      
      public function §24§(param1:§!!1§, param2:Boolean)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && _loc3_))
         {
            var _loc3_:XML = !!param2 ? §0!&§.§'^§.Views.PopupView_FullGame[0] : §0!&§.§'^§.Views.PopupView_FullScreen[0];
            super(_loc3_,param1);
            if(!(_loc5_ && this))
            {
               this.§=!§ = param2;
               if(!_loc5_)
               {
                  mClip.Container_Popup.ButtonClose.addEventListener(MouseEvent.CLICK,this.§6!F§);
                  if(_loc4_)
                  {
                     mClip.Container_Popup.ButtonFullGame.addEventListener(MouseEvent.CLICK,this.§=P§);
                     if(!_loc5_)
                     {
                        getItemByName("Container_Popup").setVisibility(false);
                        addr103:
                        getItemByName("Container_Popup").mClip.scaleX = §8u§;
                        getItemByName("Container_Popup").mClip.scaleY = §8u§;
                        §,!!§.pause();
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
                  getItemByName("Container_Popup").mClip.scaleX = §8u§;
                  if(!(_loc2_ && this))
                  {
                     getItemByName("Container_Popup").mClip.scaleY = §8u§;
                     addr52:
                     §§push(this.§9!F§);
                     if(_loc3_ || this)
                     {
                        if(§§pop() != null)
                        {
                           if(!(_loc2_ && this))
                           {
                              §§push(this.§9!F§);
                              if(!_loc2_)
                              {
                                 addr84:
                                 §§pop().stop();
                                 if(!_loc2_)
                                 {
                                    this.§9!F§ = §%!>§.§-]§.§?U§(getItemByName("Container_Popup").mClip,{
                                       "scaleX":1,
                                       "scaleY":1
                                    },{
                                       "scaleX":§8u§,
                                       "scaleY":§8u§
                                    },0.2,§%!>§.§>!'§);
                                    addr87:
                                 }
                                 §§push(this.§9!F§);
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
      
      private function §6!F§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            §,!!§.resume();
            if(_loc2_)
            {
               mClip.Container_Popup.ButtonClose.removeEventListener(MouseEvent.CLICK,this.§6!F§);
               if(!(_loc3_ && _loc3_))
               {
                  mClip.Container_Popup.ButtonFullGame.removeEventListener(MouseEvent.CLICK,this.§=P§);
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
      
      private function §=P§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            mClip.Container_Popup.ButtonClose.removeEventListener(MouseEvent.CLICK,this.§6!F§);
            if(_loc2_ || _loc3_)
            {
               mClip.Container_Popup.ButtonFullGame.removeEventListener(MouseEvent.CLICK,this.§=P§);
               if(_loc2_)
               {
                  if(this.§=!§)
                  {
                     if(!(_loc3_ && param1))
                     {
                        addr73:
                        §§push(§@!?§.§%P§);
                        if(!(_loc3_ && param1))
                        {
                           §§push("PowerUp");
                           if(_loc2_ || _loc2_)
                           {
                              §§pop().§7a§(§§pop());
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
                        §§pop().§7a§(§§pop());
                     }
                     §§goto(addr98);
                  }
                  else
                  {
                     §§push(§@!?§.§%P§);
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
               getItemByName("Container_Popup").mClip.scaleX = §8u§;
               if(_loc2_ || _loc2_)
               {
                  getItemByName("Container_Popup").mClip.scaleY = §8u§;
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
               §§push(this.§9!F§);
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
            §§push(this.§9!F§);
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
               §§push(this.§9!F§);
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
            §§push(this.§9!F§);
         }
      }
   }
}
