package §[!m§
{
   import §0!=§.§]"3§;
   import §1#R§.§+#[§;
   import §1#R§.PopupLayerEvent;
   import §>@§.§5"H§;
   import flash.display.MovieClip;
   import flash.geom.Rectangle;
   
   public class §7#S§ extends §"9§ implements §]"X§
   {
       
      
      public function §7#S§(param1:int, param2:MovieClip, param3:§5"H§, param4:§]"3§, param5:Boolean = true, param6:Rectangle = null)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      override public function openPopup(param1:§1!v§, param2:Boolean = false) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(§`p§)
         {
            if(§`p§.popup.id == param1.popup.id && !param2)
            {
               return;
            }
            _loc3_ = §`p§.popup.priority;
            _loc4_ = param1.popup.priority;
            if(§3!-§)
            {
               if(_loc4_ < _loc3_)
               {
                  §'"R§.push(param1);
               }
               else if(_loc4_ == §+5§.§>!g§)
               {
                  if(§`p§.popup.isTransitioning && !param2)
                  {
                     return;
                  }
                  §'"R§.length = 0;
                  §'"R§.unshift(param1);
                  this.closePopup(this.§2"l§(param1),true);
               }
               else if(_loc4_ == §+5§.TOP)
               {
                  if(§`p§.popup.isTransitioning && !param2)
                  {
                     return;
                  }
                  if(param1.§-!n§ == false && param1.useTransitionIn == false && param1.useTransitionOut == false)
                  {
                     §`p§.useTransitionIn = false;
                  }
                  §'"R§.unshift(§`p§);
                  §'"R§.unshift(param1);
                  this.closePopup(this.§2"l§(param1),true);
               }
               else
               {
                  §'"R§.push(param1);
               }
            }
            else if(_loc4_ >= _loc3_)
            {
               if(§`p§.popup.isTransitioning && !param2)
               {
                  return;
               }
               §'"R§.unshift(param1);
               this.closePopup(this.§2"l§(param1),true);
            }
         }
         else
         {
            this.§-!2§(param1);
         }
      }
      
      override public function closePopup(param1:Boolean = false, param2:Boolean = true) : void
      {
         if(§`p§)
         {
            §`p§.allowQueue = param2;
            §`p§.popup.removeEventListener(§+#[§.CLOSE,this.onPopupCloseRequest);
            §`p§.popup.close(param1);
         }
      }
      
      protected function §2"l§(param1:§1!v§) : Boolean
      {
         if(§`p§)
         {
            return !!param1.§-!n§ ? Boolean(§`p§.useTransitionOut) : Boolean(param1.§-!n§);
         }
         return false;
      }
      
      protected function §-!2§(param1:§1!v§) : void
      {
         §`p§ = param1;
         §`p§.popup.open(§^c§,§^"N§,§;D§,§`p§.useTransitionIn);
         setViewSize(§+"p§,§?!"§);
         §`p§.popup.addEventListener(§+#[§.§[%§,this.§#"R§);
         §`p§.popup.addEventListener(§+#[§.CLOSE,this.onPopupCloseRequest);
         dispatchEvent(new PopupLayerEvent(PopupLayerEvent.OPEN,§1`§,§`p§));
      }
      
      protected function §?"'§() : void
      {
         var _loc1_:§[!j§ = null;
         if(§`p§)
         {
            _loc1_ = §`p§.popup;
            _loc1_.removeEventListener(§+#[§.CLOSE,this.onPopupCloseRequest);
            _loc1_.removeEventListener(§+#[§.§[%§,this.§#"R§);
            §`p§ = null;
            dispatchEvent(new PopupLayerEvent(PopupLayerEvent.CLOSE,§1`§));
         }
      }
      
      protected function onPopupCloseRequest(param1:§+#[§) : void
      {
         dispatchEvent(new PopupLayerEvent(PopupLayerEvent.§!C§,§1`§,§`p§));
      }
      
      protected function §#"R§(param1:§+#[§) : void
      {
         var _loc3_:§1!v§ = null;
         var _loc2_:Boolean = true;
         if(§`p§)
         {
            _loc2_ = §`p§.allowQueue;
            this.§?"'§();
         }
         if(§'"R§.length > 0)
         {
            if(_loc2_)
            {
               _loc3_ = §'"R§.shift();
               this.openPopup(_loc3_);
            }
         }
      }
   }
}
