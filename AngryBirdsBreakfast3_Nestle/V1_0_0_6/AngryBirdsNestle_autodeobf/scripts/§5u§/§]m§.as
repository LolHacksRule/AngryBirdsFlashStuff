package §5u§
{
   import § ,§.§>u§;
   import §3"!§.§&U§;
   import §3"!§.PopupLayerEvent;
   import §6!^§.§1!7§;
   import flash.display.MovieClip;
   import flash.geom.Rectangle;
   
   public class §]m§ extends §]i§ implements §;!o§
   {
       
      
      public function §]m§(param1:int, param2:MovieClip, param3:§>u§, param4:§1!7§, param5:Boolean = true, param6:Rectangle = null)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      override public function openPopup(param1:§ z§, param2:Boolean = false) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(§7V§)
         {
            if(§7V§.popup.id == param1.popup.id && !param2)
            {
               return;
            }
            _loc3_ = §7V§.popup.priority;
            _loc4_ = param1.popup.priority;
            if(§^!r§)
            {
               if(_loc4_ < _loc3_)
               {
                  §"!S§.push(param1);
               }
               else if(_loc4_ == §+!]§.§4Y§)
               {
                  if(§7V§.popup.isTransitioning && !param2)
                  {
                     return;
                  }
                  §"!S§.length = 0;
                  §"!S§.unshift(param1);
                  this.closePopup(this.§3"%§(param1),true);
               }
               else if(_loc4_ == §+!]§.TOP)
               {
                  if(§7V§.popup.isTransitioning && !param2)
                  {
                     return;
                  }
                  if(param1.§@!c§ == false && param1.useTransitionIn == false && param1.useTransitionOut == false)
                  {
                     §7V§.useTransitionIn = false;
                  }
                  §"!S§.unshift(§7V§);
                  §"!S§.unshift(param1);
                  this.closePopup(this.§3"%§(param1),true);
               }
               else
               {
                  §"!S§.push(param1);
               }
            }
            else if(_loc4_ >= _loc3_)
            {
               if(§7V§.popup.isTransitioning && !param2)
               {
                  return;
               }
               §"!S§.unshift(param1);
               this.closePopup(this.§3"%§(param1),true);
            }
         }
         else
         {
            this.§^+§(param1);
         }
      }
      
      override public function closePopup(param1:Boolean = false, param2:Boolean = true) : void
      {
         if(§7V§)
         {
            §7V§.allowQueue = param2;
            §7V§.popup.removeEventListener(§&U§.CLOSE,this.§1w§);
            §7V§.popup.close(param1);
         }
      }
      
      protected function §3"%§(param1:§ z§) : Boolean
      {
         if(§7V§)
         {
            return !!param1.§@!c§ ? Boolean(§7V§.useTransitionOut) : Boolean(param1.§@!c§);
         }
         return false;
      }
      
      protected function §^+§(param1:§ z§) : void
      {
         §7V§ = param1;
         §7V§.popup.open(§[!<§,§2e§,§&X§,§7V§.useTransitionIn);
         setViewSize(§;!;§,§36§);
         §7V§.popup.addEventListener(§&U§.§5e§,this.§7!K§);
         §7V§.popup.addEventListener(§&U§.CLOSE,this.§1w§);
         dispatchEvent(new PopupLayerEvent(PopupLayerEvent.OPEN,§&D§,§7V§));
      }
      
      protected function §`_§() : void
      {
         var _loc1_:§<!k§ = null;
         if(§7V§)
         {
            _loc1_ = §7V§.popup;
            _loc1_.removeEventListener(§&U§.CLOSE,this.§1w§);
            _loc1_.removeEventListener(§&U§.§5e§,this.§7!K§);
            §7V§ = null;
            dispatchEvent(new PopupLayerEvent(PopupLayerEvent.CLOSE,§&D§));
         }
      }
      
      protected function §1w§(param1:§&U§) : void
      {
         dispatchEvent(new PopupLayerEvent(PopupLayerEvent.§<!§,§&D§,§7V§));
      }
      
      protected function §7!K§(param1:§&U§) : void
      {
         var _loc3_:§ z§ = null;
         var _loc2_:Boolean = true;
         if(§7V§)
         {
            _loc2_ = §7V§.allowQueue;
            this.§`_§();
         }
         if(§"!S§.length > 0)
         {
            if(_loc2_)
            {
               _loc3_ = §"!S§.shift();
               this.openPopup(_loc3_);
            }
         }
      }
   }
}
