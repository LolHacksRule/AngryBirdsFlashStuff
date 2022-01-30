package § S§
{
   import §"!G§.§3!f§;
   import §0P§.§+!l§;
   import §@!i§.§!!Y§;
   import §@!i§.PopupLayerEvent;
   import flash.display.MovieClip;
   import flash.geom.Rectangle;
   
   public class §]"5§ extends §2"5§ implements §"c§
   {
       
      
      public function §]"5§(param1:int, param2:MovieClip, param3:§3!f§, param4:§+!l§, param5:Boolean = true, param6:Rectangle = null)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      override public function openPopup(param1:§@0§, param2:Boolean = false) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(§!p§)
         {
            if(§!p§.popup.id == param1.popup.id && !param2)
            {
               return;
            }
            _loc3_ = §!p§.popup.priority;
            _loc4_ = param1.popup.priority;
            if(§<!U§)
            {
               if(_loc4_ < _loc3_)
               {
                  §^!I§.push(param1);
               }
               else if(_loc4_ == § !+§.§3"8§)
               {
                  if(§!p§.popup.isTransitioning && !param2)
                  {
                     return;
                  }
                  §^!I§.length = 0;
                  §^!I§.unshift(param1);
                  this.closePopup(this.§'U§(param1),true);
               }
               else if(_loc4_ == § !+§.TOP)
               {
                  if(§!p§.popup.isTransitioning && !param2)
                  {
                     return;
                  }
                  if(param1.§"!`§ == false && param1.useTransitionIn == false && param1.useTransitionOut == false)
                  {
                     §!p§.useTransitionIn = false;
                  }
                  §^!I§.unshift(§!p§);
                  §^!I§.unshift(param1);
                  this.closePopup(this.§'U§(param1),true);
               }
               else
               {
                  §^!I§.push(param1);
               }
            }
            else if(_loc4_ >= _loc3_)
            {
               if(§!p§.popup.isTransitioning && !param2)
               {
                  return;
               }
               §^!I§.unshift(param1);
               this.closePopup(this.§'U§(param1),true);
            }
         }
         else
         {
            this.§%!R§(param1);
         }
      }
      
      override public function closePopup(param1:Boolean = false, param2:Boolean = true) : void
      {
         if(§!p§)
         {
            §!p§.allowQueue = param2;
            §!p§.popup.removeEventListener(§!!Y§.CLOSE,this.§`!C§);
            §!p§.popup.close(param1);
         }
      }
      
      protected function §'U§(param1:§@0§) : Boolean
      {
         if(§!p§)
         {
            return !!param1.§"!`§ ? Boolean(§!p§.useTransitionOut) : Boolean(param1.§"!`§);
         }
         return false;
      }
      
      protected function §%!R§(param1:§@0§) : void
      {
         §!p§ = param1;
         §!p§.popup.open(§@!U§,§>!L§,§>!t§,§!p§.useTransitionIn);
         setViewSize(§'"+§,§,!T§);
         §!p§.popup.addEventListener(§!!Y§.§7A§,this.§^!'§);
         §!p§.popup.addEventListener(§!!Y§.CLOSE,this.§`!C§);
         dispatchEvent(new PopupLayerEvent(PopupLayerEvent.OPEN,§+!j§,§!p§));
      }
      
      protected function §?!L§() : void
      {
         var _loc1_:§?!`§ = null;
         if(§!p§)
         {
            _loc1_ = §!p§.popup;
            _loc1_.removeEventListener(§!!Y§.CLOSE,this.§`!C§);
            _loc1_.removeEventListener(§!!Y§.§7A§,this.§^!'§);
            §!p§ = null;
            dispatchEvent(new PopupLayerEvent(PopupLayerEvent.CLOSE,§+!j§));
         }
      }
      
      protected function §`!C§(param1:§!!Y§) : void
      {
         dispatchEvent(new PopupLayerEvent(PopupLayerEvent.§6"#§,§+!j§,§!p§));
      }
      
      protected function §^!'§(param1:§!!Y§) : void
      {
         var _loc3_:§@0§ = null;
         var _loc2_:Boolean = true;
         if(§!p§)
         {
            _loc2_ = §!p§.allowQueue;
            this.§?!L§();
         }
         if(§^!I§.length > 0)
         {
            if(_loc2_)
            {
               _loc3_ = §^!I§.shift();
               this.openPopup(_loc3_);
            }
         }
      }
   }
}
