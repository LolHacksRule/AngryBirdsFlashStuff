package §<M§
{
   import §'K§.§3C§;
   import §'K§.§[!9§;
   import §8!B§.§#! §;
   import §]!-§.§`Z§;
   import §]!-§.§`o§;
   import flash.events.MouseEvent;
   
   public class §5?§ extends Popup
   {
      
      private static const §=s§:Number = 0.001;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §=s§ = 0.001;
         }
      }
      
      private var §89§:Boolean;
      
      protected var §,$§:§[!9§;
      
      public function §5?§(param1:§`o§, param2:Boolean)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            var _loc3_:XML = !!param2 ? §`Z§.§5c§.Views.PopupView_FullGame[0] : §`Z§.§5c§.Views.PopupView_FullScreen[0];
            super(_loc3_,param1);
            this.§89§ = param2;
            do
            {
               mClip.Container_Popup.ButtonClose.addEventListener(MouseEvent.CLICK,this.§[T§);
               do
               {
                  mClip.Container_Popup.ButtonFullGame.addEventListener(MouseEvent.CLICK,this.§!! §);
               }
               while(!_loc4_);
               
               getItemByName("Container_Popup").setVisibility(false);
               do
               {
                  getItemByName("Container_Popup").mClip.scaleX = §=s§;
               }
               while(_loc5_);
               
               getItemByName("Container_Popup").mClip.scaleY = §=s§;
               §#! §.pause();
            }
            while(_loc5_ && this);
            
            return;
         }
         §§goto(addr20);
      }
      
      override public function open(param1:Boolean = true) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         getItemByName("Container_Popup").setVisibility(true);
         loop0:
         while(true)
         {
            if(param1)
            {
               getItemByName("Container_Popup").mClip.scaleX = §=s§;
               while(true)
               {
                  getItemByName("Container_Popup").mClip.scaleY = §=s§;
                  §§push(this.§,$§);
                  loop2:
                  while(true)
                  {
                     if(§§pop() != null)
                     {
                        §§push(this.§,$§);
                        while(true)
                        {
                           §§pop().stop();
                           addr118:
                           while(_loc2_)
                           {
                           }
                           §§push(this.§,$§);
                           addr99:
                           continue loop0;
                           if(_loc2_)
                           {
                              continue loop2;
                           }
                        }
                     }
                     while(true)
                     {
                        this.§,$§ = §3C§.§>o§.§<t§(getItemByName("Container_Popup").mClip,{
                           "scaleX":1,
                           "scaleY":1
                        },{
                           "scaleX":§=s§,
                           "scaleY":§=s§
                        },0.2,§3C§.§%l§);
                        addr97:
                        while(!_loc3_)
                        {
                           §§goto(addr99);
                        }
                        §§goto(addr118);
                     }
                  }
               }
            }
            else
            {
               getItemByName("Container_Popup").mClip.scaleX = 1;
               getItemByName("Container_Popup").mClip.scaleY = 1;
            }
            while(true)
            {
               §§goto(addr21);
            }
         }
      }
      
      private function §[T§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §#! §.resume();
            while(true)
            {
               mClip.Container_Popup.ButtonClose.removeEventListener(MouseEvent.CLICK,this.§[T§);
               addr70:
               while(_loc2_)
               {
               }
            }
         }
         while(true)
         {
            mClip.Container_Popup.ButtonFullGame.removeEventListener(MouseEvent.CLICK,this.§!! §);
            while(_loc2_)
            {
               this.deActivate();
               if(!_loc3_)
               {
                  return;
               }
            }
            §§goto(addr70);
         }
      }
      
      private function §!! §(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            mClip.Container_Popup.ButtonClose.removeEventListener(MouseEvent.CLICK,this.§[T§);
         }
         loop0:
         while(true)
         {
            mClip.Container_Popup.ButtonFullGame.removeEventListener(MouseEvent.CLICK,this.§!! §);
            while(true)
            {
               if(this.§89§)
               {
                  if(_loc2_)
                  {
                     if(!_loc3_)
                     {
                        §§push(§!D§.§46§);
                        break;
                     }
                     continue loop0;
                  }
               }
               else
               {
                  §§push(§!D§.§46§);
                  if(_loc3_)
                  {
                     break;
                  }
                  §§push("FullScreen");
                  if(!_loc3_)
                  {
                     §§pop().§<!E§(§§pop());
                     if(!_loc3_)
                     {
                        continue;
                     }
                  }
                  else
                  {
                     addr80:
                     §§pop().§<!E§(§§pop());
                  }
               }
               addr24:
               return;
            }
            §§goto(addr80);
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            getItemByName("Container_Popup").setVisibility(false);
         }
         loop0:
         while(true)
         {
            getItemByName("Container_Popup").mClip.scaleX = §=s§;
            while(true)
            {
               getItemByName("Container_Popup").mClip.scaleY = §=s§;
               while(_loc1_)
               {
                  if(!_loc2_)
                  {
                     super.deActivate();
                     while(_loc1_)
                     {
                        close();
                        if(_loc1_ || _loc1_)
                        {
                           return;
                        }
                     }
                     continue;
                  }
                  continue loop0;
               }
            }
         }
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            super.viewWidth = param1;
         }
         do
         {
            §§push(this.§,$§);
            if(!_loc3_)
            {
               if(!§§pop())
               {
                  §§goto(addr34);
               }
               if(_loc3_ && this)
               {
                  continue;
               }
               §§push(this.§,$§);
            }
            §§pop().updateState();
         }
         while(!(_loc2_ || param1));
         
         addr34:
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            super.viewHeight = param1;
         }
         do
         {
            §§push(this.§,$§);
            if(!(_loc3_ && param1))
            {
               if(!§§pop())
               {
                  §§goto(addr29);
               }
               if(!_loc2_)
               {
                  continue;
               }
               §§push(this.§,$§);
            }
            §§pop().updateState();
         }
         while(_loc3_);
         
         addr29:
      }
   }
}
