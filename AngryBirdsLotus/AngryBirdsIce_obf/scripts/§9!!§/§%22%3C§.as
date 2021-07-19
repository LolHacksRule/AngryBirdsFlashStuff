package §9!!§
{
   import §!Y§.§[o§;
   import §2!5§.§";§;
   import §2!5§.§?A§;
   import §2]§.§#H§;
   import §2]§.§set §;
   import flash.events.MouseEvent;
   
   public class §"<§ extends Popup
   {
      
      private static const §[g§:Number = 0.001;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §[g§ = 0.001;
         }
      }
      
      private var §`§:Boolean;
      
      protected var §;I§:§?A§;
      
      public function §"<§(param1:§#H§, param2:Boolean)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param2))
         {
            var _loc3_:XML = !!param2 ? §set §.§&!1§.Views.PopupView_FullGame[0] : §set §.§&!1§.Views.PopupView_FullScreen[0];
            super(_loc3_,param1);
            do
            {
               this.§`§ = param2;
            }
            while(!_loc4_);
            
            mClip.Container_Popup.ButtonClose.addEventListener(MouseEvent.CLICK,this.§2y§);
            do
            {
               mClip.Container_Popup.ButtonFullGame.addEventListener(MouseEvent.CLICK,this.§7!%§);
               getItemByName("Container_Popup").setVisibility(false);
            }
            while(!_loc4_);
            
            getItemByName("Container_Popup").mClip.scaleX = §[g§;
            getItemByName("Container_Popup").mClip.scaleY = §[g§;
            §[o§.pause();
            return;
         }
         §§goto(addr25);
      }
      
      override public function open(param1:Boolean = true) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            getItemByName("Container_Popup").setVisibility(true);
            if(param1)
            {
               getItemByName("Container_Popup").mClip.scaleX = §[g§;
               loop0:
               while(true)
               {
                  getItemByName("Container_Popup").mClip.scaleY = §[g§;
                  while(true)
                  {
                     §§push(this.§;I§);
                     if(_loc3_ || _loc2_)
                     {
                        if(§§pop() == null)
                        {
                           continue loop0;
                        }
                        §§push(this.§;I§);
                     }
                     addr140:
                     while(true)
                     {
                        §§pop().stop();
                        continue loop0;
                     }
                     addr30:
                     if(!(_loc2_ && param1))
                     {
                        return;
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
               if(_loc3_ || this)
               {
                  §§goto(addr24);
               }
            }
         }
         §§goto(addr84);
      }
      
      private function §2y§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §[o§.resume();
            while(true)
            {
               mClip.Container_Popup.ButtonClose.removeEventListener(MouseEvent.CLICK,this.§2y§);
               loop1:
               while(_loc2_ || this)
               {
                  mClip.Container_Popup.ButtonFullGame.removeEventListener(MouseEvent.CLICK,this.§7!%§);
                  while(true)
                  {
                     this.deActivate();
                     if(!_loc3_)
                     {
                        if(!_loc3_)
                        {
                           break;
                        }
                        continue loop1;
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr60);
      }
      
      private function §7!%§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            mClip.Container_Popup.ButtonClose.removeEventListener(MouseEvent.CLICK,this.§2y§);
            do
            {
               mClip.Container_Popup.ButtonFullGame.removeEventListener(MouseEvent.CLICK,this.§7!%§);
               do
               {
                  if(this.§`§)
                  {
                     continue;
                  }
                  §§push(§^y§.get);
                  if(_loc3_)
                  {
                     §§push("FullScreen");
                     if(!_loc2_)
                     {
                        §§pop().§!!=§(§§pop());
                        if(!_loc2_)
                        {
                           if(!_loc3_)
                           {
                              continue;
                           }
                        }
                        else
                        {
                           addr82:
                        }
                        return;
                     }
                     addr81:
                     §§pop().§!!=§(§§pop());
                     §§goto(addr82);
                  }
                  else
                  {
                     addr80:
                     §§push("PowerUp");
                  }
                  §§goto(addr81);
               }
               while(_loc2_ && param1);
               
            }
            while(_loc2_ && this);
            
         }
         §§goto(addr80);
         §§push(§^y§.get);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            getItemByName("Container_Popup").setVisibility(false);
            do
            {
               getItemByName("Container_Popup").mClip.scaleX = §[g§;
               do
               {
                  getItemByName("Container_Popup").mClip.scaleY = §[g§;
                  do
                  {
                     super.deActivate();
                     do
                     {
                        close();
                     }
                     while(!_loc2_);
                     
                  }
                  while(!(_loc2_ || _loc1_));
                  
               }
               while(_loc1_ && _loc2_);
               
            }
            while(_loc1_);
            
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
         while(true)
         {
            §§push(this.§;I§);
            if(!(_loc3_ && this))
            {
               if(§§pop())
               {
                  if(!(_loc3_ && _loc2_))
                  {
                     if(!_loc3_)
                     {
                        §§push(this.§;I§);
                        break;
                     }
                     continue;
                  }
                  addr71:
               }
               return;
            }
            break;
         }
         §§pop().updateState();
         §§goto(addr71);
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            super.viewHeight = param1;
         }
         while(true)
         {
            §§push(this.§;I§);
            if(_loc3_)
            {
               if(§§pop())
               {
                  if(_loc3_ || this)
                  {
                     continue;
                  }
                  addr67:
               }
               return;
            }
            break;
         }
         §§pop().updateState();
         §§goto(addr67);
      }
   }
}
