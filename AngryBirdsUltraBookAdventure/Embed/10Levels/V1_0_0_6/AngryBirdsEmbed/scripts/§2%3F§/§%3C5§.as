package §2?§
{
   import §+!?§.§"h§;
   import §0w§.§0#§;
   import §0w§.§06§;
   import §?!+§.§,!G§;
   import §?!+§.§3_§;
   import flash.events.MouseEvent;
   
   public class §<5§ extends Popup
   {
      
      private static const §,6§:Number = 0.001;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §,6§ = 0.001;
         }
      }
      
      private var §]! §:Boolean;
      
      protected var §]5§:§3_§;
      
      public function §<5§(param1:§0#§, param2:Boolean)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param2)
         {
            var _loc3_:XML = !!param2 ? §06§.§-`§.Views.PopupView_FullGame[0] : §06§.§-`§.Views.PopupView_FullScreen[0];
            super(_loc3_,param1);
            if(!_loc5_)
            {
               this.§]! § = param2;
               mClip.Container_Popup.ButtonClose.addEventListener(MouseEvent.CLICK,this.§&!>§);
               mClip.Container_Popup.ButtonFullGame.addEventListener(MouseEvent.CLICK,this.§04§);
               getItemByName("Container_Popup").setVisibility(false);
               if(_loc4_ || this)
               {
                  getItemByName("Container_Popup").mClip.scaleX = §,6§;
                  if(_loc4_ || _loc3_)
                  {
                     getItemByName("Container_Popup").mClip.scaleY = §,6§;
                     if(_loc4_)
                     {
                        §"h§.pause();
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr25);
      }
      
      override public function open(param1:Boolean = true) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            getItemByName("Container_Popup").setVisibility(true);
            if(param1)
            {
               if(_loc2_)
               {
                  getItemByName("Container_Popup").mClip.scaleX = §,6§;
                  getItemByName("Container_Popup").mClip.scaleY = §,6§;
                  if(_loc2_)
                  {
                     §§push(this.§]5§);
                     if(!(_loc3_ && param1))
                     {
                        if(§§pop() != null)
                        {
                           §§push(this.§]5§);
                           if(_loc2_)
                           {
                              §§pop().stop();
                           }
                           §§goto(addr106);
                        }
                        this.§]5§ = §,!G§.§@j§.§47§(getItemByName("Container_Popup").mClip,{
                           "scaleX":1,
                           "scaleY":1
                        },{
                           "scaleX":§,6§,
                           "scaleY":§,6§
                        },0.2,§,!G§.§5]§);
                        §§push(this.§]5§);
                     }
                     §§goto(addr106);
                  }
                  addr106:
                  §§pop().play();
                  §§goto(addr127);
               }
            }
            else
            {
               getItemByName("Container_Popup").mClip.scaleX = 1;
               if(_loc2_ || param1)
               {
                  addr121:
                  getItemByName("Container_Popup").mClip.scaleY = 1;
               }
            }
            addr127:
            super.open(param1);
            return;
         }
         §§goto(addr121);
      }
      
      private function §&!>§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §"h§.resume();
            if(!_loc2_)
            {
               mClip.Container_Popup.ButtonClose.removeEventListener(MouseEvent.CLICK,this.§&!>§);
               if(!_loc2_)
               {
                  mClip.Container_Popup.ButtonFullGame.removeEventListener(MouseEvent.CLICK,this.§04§);
                  if(!_loc2_)
                  {
                     addr53:
                     this.deActivate();
                  }
               }
               §§goto(addr53);
            }
            return;
         }
         §§goto(addr53);
      }
      
      private function §04§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            mClip.Container_Popup.ButtonClose.removeEventListener(MouseEvent.CLICK,this.§&!>§);
            if(_loc3_ || _loc2_)
            {
               mClip.Container_Popup.ButtonFullGame.removeEventListener(MouseEvent.CLICK,this.§04§);
               if(!(_loc2_ && param1))
               {
                  if(this.§]! §)
                  {
                     if(_loc3_ || param1)
                     {
                        addr79:
                        §§push(§+!0§.§2[§);
                        if(_loc3_)
                        {
                           §§push("PowerUp");
                           if(_loc3_)
                           {
                              §§pop().§5"§(§§pop());
                              if(!(_loc2_ && this))
                              {
                                 addr94:
                              }
                           }
                           else
                           {
                              addr98:
                              §§pop().§5"§(§§pop());
                           }
                           return;
                        }
                        addr97:
                        §§push("FullScreen");
                        §§goto(addr98);
                     }
                     §§goto(addr94);
                  }
                  else
                  {
                     §§push(§+!0§.§2[§);
                  }
                  §§goto(addr97);
               }
            }
         }
         §§goto(addr79);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            getItemByName("Container_Popup").setVisibility(false);
            if(!(_loc1_ && this))
            {
               getItemByName("Container_Popup").mClip.scaleX = §,6§;
               if(!(_loc1_ && _loc1_))
               {
                  getItemByName("Container_Popup").mClip.scaleY = §,6§;
                  if(_loc2_)
                  {
                     addr72:
                     super.deActivate();
                     if(!_loc1_)
                     {
                        close();
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr72);
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            super.viewWidth = param1;
            if(!(_loc3_ && this))
            {
               addr53:
               §§push(this.§]5§);
               if(!(_loc3_ && _loc3_))
               {
                  if(!§§pop())
                  {
                  }
                  §§goto(addr73);
               }
               §§pop().updateState();
            }
            addr73:
            if(_loc2_ || _loc3_)
            {
               §§push(this.§]5§);
            }
            return;
         }
         §§goto(addr53);
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            super.viewHeight = param1;
            if(!_loc3_)
            {
               §§push(this.§]5§);
               if(_loc2_)
               {
                  if(!§§pop())
                  {
                  }
                  §§goto(addr48);
               }
               §§pop().updateState();
            }
            addr48:
            if(!_loc3_)
            {
               addr45:
               §§push(this.§]5§);
            }
            return;
         }
         §§goto(addr45);
      }
   }
}
