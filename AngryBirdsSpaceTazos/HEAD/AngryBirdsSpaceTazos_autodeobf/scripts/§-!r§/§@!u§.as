package §-!r§
{
   import §%"%§.§2Z§;
   import §>%§.§ "3§;
   import §>%§.PopupLayerEvent;
   import §@u§.§1"&§;
   import flash.display.MovieClip;
   import flash.geom.Rectangle;
   
   public class §@!u§ extends §'j§ implements §#!'§
   {
       
      
      public function §@!u§(param1:int, param2:MovieClip, param3:§2Z§, param4:§1"&§, param5:Boolean = true, param6:Rectangle = null)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      public function §&G§(param1:§>!L§, param2:Boolean = false) : Boolean
      {
         if(§!!9§)
         {
            if(§!!9§.popup.id == param1.popup.id && !param2)
            {
               return false;
            }
         }
         return true;
      }
      
      override public function openPopup(param1:§>!L§, param2:Boolean = false) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(§!!9§)
         {
            _loc3_ = §!!9§.popup.priority;
            _loc4_ = param1.popup.priority;
            if(§0O§)
            {
               if(_loc4_ < _loc3_)
               {
                  §;R§.push(param1);
               }
               else if(_loc4_ == §'!h§.§%H§)
               {
                  if(§!!9§.popup.isTransitioning && !param2)
                  {
                     return;
                  }
                  §;R§.length = 0;
                  §;R§.unshift(param1);
                  this.closePopup(this.§]!'§(param1),true);
               }
               else if(_loc4_ == §'!h§.TOP)
               {
                  if(§!!9§.popup.isTransitioning && !param2)
                  {
                     return;
                  }
                  if(param1.§8! § == false && param1.useTransitionIn == false && param1.useTransitionOut == false)
                  {
                     §!!9§.useTransitionIn = false;
                  }
                  §;R§.unshift(§!!9§);
                  §;R§.unshift(param1);
                  this.closePopup(this.§]!'§(param1),true);
               }
               else
               {
                  §;R§.push(param1);
               }
            }
            else if(_loc4_ >= _loc3_)
            {
               if(§!!9§.popup.isTransitioning && !param2)
               {
                  return;
               }
               §;R§.unshift(param1);
               this.closePopup(this.§]!'§(param1),true);
            }
         }
         else
         {
            this.§9!m§(param1);
         }
      }
      
      override public function closePopup(param1:Boolean = false, param2:Boolean = true) : void
      {
         if(§!!9§)
         {
            §!!9§.allowQueue = param2;
            §!!9§.popup.removeEventListener(§ "3§.CLOSE,this.§use §);
            §!!9§.popup.close(param1);
         }
      }
      
      protected function §]!'§(param1:§>!L§) : Boolean
      {
         if(§!!9§)
         {
            return !!param1.§8! § ? Boolean(§!!9§.useTransitionOut) : Boolean(param1.§8! §);
         }
         return false;
      }
      
      protected function §9!m§(param1:§>!L§) : void
      {
         §!!9§ = param1;
         §!!9§.popup.open(§3!a§,§ "@§,§3!L§,§!!9§.useTransitionIn);
         setViewSize(§?m§,§4"%§);
         §!!9§.popup.addEventListener(§ "3§.§?!h§,this.§%b§);
         §!!9§.popup.addEventListener(§ "3§.CLOSE,this.§use §);
         dispatchEvent(new PopupLayerEvent(PopupLayerEvent.OPEN,§-!w§,§!!9§));
      }
      
      protected function §5">§() : void
      {
         var _loc1_:§+!B§ = null;
         if(§!!9§)
         {
            _loc1_ = §!!9§.popup;
            _loc1_.removeEventListener(§ "3§.CLOSE,this.§use §);
            _loc1_.removeEventListener(§ "3§.§?!h§,this.§%b§);
            §!!9§ = null;
            dispatchEvent(new PopupLayerEvent(PopupLayerEvent.CLOSE,§-!w§));
         }
      }
      
      protected function §use §(param1:§ "3§) : void
      {
         dispatchEvent(new PopupLayerEvent(PopupLayerEvent.§+V§,§-!w§,§!!9§));
      }
      
      protected function §%b§(param1:§ "3§) : void
      {
         var _loc3_:§>!L§ = null;
         var _loc2_:Boolean = true;
         if(§!!9§)
         {
            _loc2_ = §!!9§.allowQueue;
            this.§5">§();
         }
         if(§;R§.length > 0)
         {
            if(_loc2_)
            {
               _loc3_ = §;R§.shift();
               this.openPopup(_loc3_);
            }
         }
      }
   }
}
