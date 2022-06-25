package §6!C§
{
   import §#P§.§ !=§;
   import §#P§.§@7§;
   import §-!D§.§4!,§;
   import §-!D§.§5A§;
   import §5!L§.§=w§;
   import flash.events.MouseEvent;
   
   public class §6!G§ extends Popup
   {
      
      private static const §0M§:Number = 0.001;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §0M§ = 0.001;
         }
      }
      
      private var §^!M§:Boolean;
      
      protected var §73§:§ !=§;
      
      public function §6!G§(param1:§4!,§, param2:Boolean)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param1)
         {
            var _loc3_:XML = !!param2 ? §5A§.§;L§.Views.PopupView_FullGame[0] : §5A§.§;L§.Views.PopupView_FullScreen[0];
            super(_loc3_,param1);
            this.§^!M§ = param2;
            mClip.Container_Popup.ButtonClose.addEventListener(MouseEvent.CLICK,this.§4!F§);
            mClip.Container_Popup.ButtonFullGame.addEventListener(MouseEvent.CLICK,this.§+!6§);
            if(!_loc4_)
            {
               getItemByName("Container_Popup").setVisibility(false);
               if(!(_loc4_ && this))
               {
                  getItemByName("Container_Popup").mClip.scaleX = §0M§;
               }
            }
            getItemByName("Container_Popup").mClip.scaleY = §0M§;
            if(_loc5_ || this)
            {
               §=w§.pause();
            }
            return;
         }
         §§goto(addr26);
      }
      
      override public function open(param1:Boolean = true) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            getItemByName("Container_Popup").setVisibility(true);
            if(_loc3_)
            {
               if(param1)
               {
                  if(_loc3_ || _loc2_)
                  {
                     getItemByName("Container_Popup").mClip.scaleX = §0M§;
                     getItemByName("Container_Popup").mClip.scaleY = §0M§;
                     if(!(_loc2_ && _loc3_))
                     {
                        §§push(this.§73§);
                        if(_loc3_)
                        {
                           if(§§pop() != null)
                           {
                              addr70:
                              §§push(this.§73§);
                              if(_loc3_)
                              {
                                 §§pop().stop();
                              }
                              addr111:
                              §§pop().play();
                              if(_loc3_)
                              {
                                 addr127:
                                 super.open(param1);
                              }
                              §§goto(addr130);
                           }
                           this.§73§ = §@7§.§@6§.§3!%§(getItemByName("Container_Popup").mClip,{
                              "scaleX":1,
                              "scaleY":1
                           },{
                              "scaleX":§0M§,
                              "scaleY":§0M§
                           },0.2,§@7§.§=;§);
                           if(_loc3_)
                           {
                              §§push(this.§73§);
                           }
                           addr130:
                           return;
                        }
                        §§goto(addr111);
                     }
                     §§goto(addr127);
                  }
                  §§goto(addr70);
               }
               else
               {
                  getItemByName("Container_Popup").mClip.scaleX = 1;
                  getItemByName("Container_Popup").mClip.scaleY = 1;
               }
            }
         }
         §§goto(addr127);
      }
      
      private function §4!F§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            §=w§.resume();
            if(!(_loc3_ && param1))
            {
               mClip.Container_Popup.ButtonClose.removeEventListener(MouseEvent.CLICK,this.§4!F§);
               if(_loc2_ || _loc3_)
               {
                  mClip.Container_Popup.ButtonFullGame.removeEventListener(MouseEvent.CLICK,this.§+!6§);
                  if(_loc2_)
                  {
                     this.deActivate();
                  }
               }
            }
         }
      }
      
      private function §+!6§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            mClip.Container_Popup.ButtonClose.removeEventListener(MouseEvent.CLICK,this.§4!F§);
            if(_loc2_ || this)
            {
               mClip.Container_Popup.ButtonFullGame.removeEventListener(MouseEvent.CLICK,this.§+!6§);
               if(!_loc3_)
               {
                  if(this.§^!M§)
                  {
                     if(!_loc3_)
                     {
                        addr73:
                        §§push(§<!7§.§4!"§);
                        if(!_loc3_)
                        {
                           §§push("PowerUp");
                           if(!_loc3_)
                           {
                              §§pop().§^"§(§§pop());
                              if(!(_loc3_ && param1))
                              {
                                 addr93:
                                 return;
                                 addr88:
                              }
                           }
                           §§goto(addr93);
                        }
                        else
                        {
                           addr91:
                           §§push("FullScreen");
                        }
                        §§pop().§^"§(§§pop());
                        §§goto(addr93);
                     }
                     §§goto(addr88);
                  }
                  else
                  {
                     §§push(§<!7§.§4!"§);
                  }
                  §§goto(addr91);
               }
               §§goto(addr93);
            }
            §§goto(addr73);
         }
         §§goto(addr93);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            getItemByName("Container_Popup").setVisibility(false);
            if(!(_loc2_ && _loc2_))
            {
               §§goto(addr50);
            }
            §§goto(addr71);
         }
         addr50:
         getItemByName("Container_Popup").mClip.scaleX = §0M§;
         if(!(_loc2_ && _loc1_))
         {
            getItemByName("Container_Popup").mClip.scaleY = §0M§;
            if(!_loc2_)
            {
               addr71:
               super.deActivate();
               if(!_loc2_)
               {
                  close();
               }
            }
         }
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
               §§push(this.§73§);
               if(!(_loc3_ && param1))
               {
                  if(!§§pop())
                  {
                  }
                  §§goto(addr48);
               }
               §§pop().updateState();
            }
            addr48:
            if(_loc2_)
            {
               addr45:
               §§push(this.§73§);
            }
            return;
         }
         §§goto(addr45);
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            super.viewHeight = param1;
            if(!(_loc2_ && this))
            {
               §§push(this.§73§);
               if(_loc3_ || _loc3_)
               {
                  if(!§§pop())
                  {
                  }
                  §§goto(addr59);
               }
               §§pop().updateState();
            }
            addr59:
            if(_loc3_)
            {
               addr56:
               §§push(this.§73§);
            }
            return;
         }
         §§goto(addr56);
      }
   }
}
