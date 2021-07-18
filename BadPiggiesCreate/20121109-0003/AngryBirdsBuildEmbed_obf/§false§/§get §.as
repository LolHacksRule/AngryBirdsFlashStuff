package §false§
{
   import §!y§.§2U§;
   import §!y§.§=!Z§;
   import §9!n§.§0Y§;
   import §9!n§.§@!T§;
   import §?!-§.§'!V§;
   import flash.events.MouseEvent;
   
   public class §get § extends Popup
   {
      
      private static const § 4§:Number = 0.001;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            § 4§ = 0.001;
         }
      }
      
      private var §^!&§:Boolean;
      
      protected var §5f§:§0Y§;
      
      public function §get §(param1:§2U§, param2:Boolean)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            var _loc3_:XML = !!param2 ? §=!Z§.§;K§.Views.PopupView_FullGame[0] : §=!Z§.§;K§.Views.PopupView_FullScreen[0];
            super(_loc3_,param1);
            if(_loc4_ || param1)
            {
               this.§^!&§ = param2;
               if(!(_loc5_ && param1))
               {
                  mClip.Container_Popup.ButtonClose.addEventListener(MouseEvent.CLICK,this.§]y§);
                  mClip.Container_Popup.ButtonFullGame.addEventListener(MouseEvent.CLICK,this.§`!X§);
                  addr94:
                  getItemByName("Container_Popup").setVisibility(false);
                  getItemByName("Container_Popup").mClip.scaleX = § 4§;
                  getItemByName("Container_Popup").mClip.scaleY = § 4§;
               }
               §'!V§.pause();
               return;
            }
            §§goto(addr94);
         }
         §§goto(addr20);
      }
      
      override public function open(param1:Boolean = true) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         getItemByName("Container_Popup").setVisibility(true);
         if(param1)
         {
            getItemByName("Container_Popup").mClip.scaleX = § 4§;
            if(_loc2_ || _loc3_)
            {
               getItemByName("Container_Popup").mClip.scaleY = § 4§;
               §§push(this.§5f§);
               if(!(_loc3_ && this))
               {
                  if(§§pop() != null)
                  {
                     §§push(this.§5f§);
                     if(!_loc3_)
                     {
                        §§pop().stop();
                     }
                     addr102:
                     §§pop().play();
                     addr123:
                     super.open(param1);
                     return;
                     addr103:
                  }
                  this.§5f§ = §@!T§.§`!t§.§8!"§(getItemByName("Container_Popup").mClip,{
                     "scaleX":1,
                     "scaleY":1
                  },{
                     "scaleX":§ 4§,
                     "scaleY":§ 4§
                  },0.2,§@!T§.§41§);
                  §§push(this.§5f§);
               }
               §§goto(addr102);
            }
            §§goto(addr103);
         }
         else
         {
            getItemByName("Container_Popup").mClip.scaleX = 1;
            getItemByName("Container_Popup").mClip.scaleY = 1;
            if(_loc2_ || _loc2_)
            {
               §§goto(addr123);
            }
         }
         §§goto(addr102);
      }
      
      private function §]y§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §'!V§.resume();
            if(_loc2_)
            {
               mClip.Container_Popup.ButtonClose.removeEventListener(MouseEvent.CLICK,this.§]y§);
               if(_loc2_)
               {
                  addr42:
                  mClip.Container_Popup.ButtonFullGame.removeEventListener(MouseEvent.CLICK,this.§`!X§);
                  if(_loc2_ || _loc3_)
                  {
                     this.deActivate();
                  }
               }
            }
            return;
         }
         §§goto(addr42);
      }
      
      private function §`!X§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            mClip.Container_Popup.ButtonClose.removeEventListener(MouseEvent.CLICK,this.§]y§);
            if(_loc2_ || _loc2_)
            {
               addr43:
               mClip.Container_Popup.ButtonFullGame.removeEventListener(MouseEvent.CLICK,this.§`!X§);
               if(_loc2_)
               {
                  if(this.§^!&§)
                  {
                     if(_loc2_)
                     {
                        addr68:
                        §§push(§#!?§.§8;§);
                        if(_loc2_)
                        {
                           §§push("PowerUp");
                           if(_loc2_ || _loc3_)
                           {
                              §§pop().§4!`§(§§pop());
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
                        §§pop().§4!`§(§§pop());
                     }
                     §§goto(addr93);
                  }
                  else
                  {
                     §§push(§#!?§.§8;§);
                  }
                  §§goto(addr91);
               }
               §§goto(addr88);
            }
            §§goto(addr68);
         }
         §§goto(addr43);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            getItemByName("Container_Popup").setVisibility(false);
            if(_loc1_ || _loc1_)
            {
               addr45:
               getItemByName("Container_Popup").mClip.scaleX = § 4§;
               if(_loc1_ || _loc1_)
               {
                  §§goto(addr68);
               }
               §§goto(addr81);
            }
            addr68:
            getItemByName("Container_Popup").mClip.scaleY = § 4§;
            if(!(_loc2_ && _loc2_))
            {
               addr81:
               super.deActivate();
               if(!(_loc2_ && this))
               {
                  close();
               }
            }
            return;
         }
         §§goto(addr45);
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            super.viewWidth = param1;
            if(!_loc2_)
            {
               addr39:
               §§push(this.§5f§);
               if(!(_loc2_ && param1))
               {
                  if(§§pop())
                  {
                     if(!_loc2_)
                     {
                        addr53:
                        this.§5f§.updateState();
                     }
                  }
                  return;
               }
            }
            §§goto(addr53);
         }
         §§goto(addr39);
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            super.viewHeight = param1;
            if(!(_loc3_ && _loc3_))
            {
               §§push(this.§5f§);
               if(_loc2_)
               {
                  if(!§§pop())
                  {
                  }
                  §§goto(addr53);
               }
               §§pop().updateState();
               §§goto(addr53);
            }
            §§goto(addr50);
         }
         addr53:
         if(!_loc3_)
         {
            addr50:
            §§push(this.§5f§);
         }
      }
   }
}
