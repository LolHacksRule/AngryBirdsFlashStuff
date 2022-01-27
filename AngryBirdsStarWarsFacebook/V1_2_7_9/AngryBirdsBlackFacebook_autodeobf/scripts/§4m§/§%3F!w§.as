package §4m§
{
   import §#<§.§8!j§;
   import §#<§.PopupLayerEvent;
   import §'+§.§="B§;
   import §1G§.§8!a§;
   import flash.display.MovieClip;
   import flash.geom.Rectangle;
   
   public class §?!w§ extends §6">§ implements §9!B§
   {
       
      
      public function §?!w§(param1:int, param2:MovieClip, param3:§="B§, param4:§8!a§, param5:Boolean = true, param6:Rectangle = null)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      override public function openPopup(param1:§'!c§, param2:Boolean = false) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(§@!$§)
         {
            if(§@!$§.popup.id == param1.popup.id && !param2)
            {
               return;
            }
            _loc3_ = §@!$§.popup.priority;
            _loc4_ = param1.popup.priority;
            if(§;!R§)
            {
               if(_loc4_ < _loc3_)
               {
                  §+"3§.push(param1);
               }
               else if(_loc4_ == §^T§.§0O§)
               {
                  if(§@!$§.popup.isTransitioning && !param2)
                  {
                     return;
                  }
                  §+"3§.length = 0;
                  §+"3§.unshift(param1);
                  this.closePopup(this.§,"i§(param1),true);
               }
               else if(_loc4_ == §^T§.TOP)
               {
                  if(§@!$§.popup.isTransitioning && !param2)
                  {
                     return;
                  }
                  if(param1.§=!t§ == false && param1.useTransitionIn == false && param1.useTransitionOut == false)
                  {
                     §@!$§.useTransitionIn = false;
                  }
                  §+"3§.unshift(§@!$§);
                  §+"3§.unshift(param1);
                  this.closePopup(this.§,"i§(param1),true);
               }
               else
               {
                  §+"3§.push(param1);
               }
            }
            else if(_loc4_ >= _loc3_)
            {
               if(§@!$§.popup.isTransitioning && !param2)
               {
                  return;
               }
               §+"3§.unshift(param1);
               this.closePopup(this.§,"i§(param1),true);
            }
         }
         else
         {
            this.§%k§(param1);
         }
      }
      
      override public function closePopup(param1:Boolean = false, param2:Boolean = true) : void
      {
         if(§@!$§)
         {
            §@!$§.allowQueue = param2;
            §@!$§.popup.removeEventListener(§8!j§.CLOSE,this.onPopupCloseRequest);
            §@!$§.popup.close(param1);
         }
      }
      
      protected function §,"i§(param1:§'!c§) : Boolean
      {
         if(§@!$§)
         {
            return !!param1.§=!t§ ? Boolean(§@!$§.useTransitionOut) : Boolean(param1.§=!t§);
         }
         return false;
      }
      
      protected function §%k§(param1:§'!c§) : void
      {
         §@!$§ = param1;
         §@!$§.popup.open(§,r§,§8-§,§[!Y§,§@!$§.useTransitionIn);
         setViewSize(§<"z§,§5#0§);
         §@!$§.popup.addEventListener(§8!j§.§`!f§,this.§9!w§);
         §@!$§.popup.addEventListener(§8!j§.CLOSE,this.onPopupCloseRequest);
         dispatchEvent(new PopupLayerEvent(PopupLayerEvent.OPEN,§5S§,§@!$§));
      }
      
      protected function §?l§() : void
      {
         var _loc1_:§5!R§ = null;
         if(§@!$§)
         {
            _loc1_ = §@!$§.popup;
            _loc1_.removeEventListener(§8!j§.CLOSE,this.onPopupCloseRequest);
            _loc1_.removeEventListener(§8!j§.§`!f§,this.§9!w§);
            §@!$§ = null;
            dispatchEvent(new PopupLayerEvent(PopupLayerEvent.CLOSE,§5S§));
         }
      }
      
      protected function onPopupCloseRequest(param1:§8!j§) : void
      {
         dispatchEvent(new PopupLayerEvent(PopupLayerEvent.§`"o§,§5S§,§@!$§));
      }
      
      protected function §9!w§(param1:§8!j§) : void
      {
         var _loc3_:§'!c§ = null;
         var _loc2_:Boolean = true;
         if(§@!$§)
         {
            _loc2_ = §@!$§.allowQueue;
            this.§?l§();
         }
         if(§+"3§.length > 0)
         {
            if(_loc2_)
            {
               _loc3_ = §+"3§.shift();
               this.openPopup(_loc3_);
            }
         }
      }
   }
}
