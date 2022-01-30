package §[<§
{
   import §7-§.§8!v§;
   import §7-§.PopupLayerEvent;
   import §<R§.§!@§;
   import §]!d§.§-!<§;
   import flash.display.MovieClip;
   import flash.geom.Rectangle;
   
   public class §,H§ extends §3!-§ implements §7!2§
   {
       
      
      public function §,H§(param1:int, param2:MovieClip, param3:§-!<§, param4:§!@§, param5:Boolean = true, param6:Rectangle = null)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      override public function openPopup(param1:§=T§, param2:Boolean = false) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(§#9§)
         {
            if(§#9§.popup.id == param1.popup.id && !param2)
            {
               return;
            }
            _loc3_ = §#9§.popup.priority;
            _loc4_ = param1.popup.priority;
            if(§-!J§)
            {
               if(_loc4_ < _loc3_)
               {
                  §5!E§.push(param1);
               }
               else if(_loc4_ == §#!q§.§"R§)
               {
                  if(§#9§.popup.isTransitioning && !param2)
                  {
                     return;
                  }
                  §5!E§.length = 0;
                  §5!E§.unshift(param1);
                  this.closePopup(this.§?;§(param1),true);
               }
               else if(_loc4_ == §#!q§.TOP)
               {
                  if(§#9§.popup.isTransitioning && !param2)
                  {
                     return;
                  }
                  if(param1.§&P§ == false && param1.useTransitionIn == false && param1.useTransitionOut == false)
                  {
                     §#9§.useTransitionIn = false;
                  }
                  §5!E§.unshift(§#9§);
                  §5!E§.unshift(param1);
                  this.closePopup(this.§?;§(param1),true);
               }
               else
               {
                  §5!E§.push(param1);
               }
            }
            else if(_loc4_ >= _loc3_)
            {
               if(§#9§.popup.isTransitioning && !param2)
               {
                  return;
               }
               §5!E§.unshift(param1);
               this.closePopup(this.§?;§(param1),true);
            }
         }
         else
         {
            this.§<"2§(param1);
         }
      }
      
      override public function closePopup(param1:Boolean = false, param2:Boolean = true) : void
      {
         if(§#9§)
         {
            §#9§.allowQueue = param2;
            §#9§.popup.removeEventListener(§8!v§.CLOSE,this.§'&§);
            §#9§.popup.close(param1);
         }
      }
      
      protected function §?;§(param1:§=T§) : Boolean
      {
         if(§#9§)
         {
            return !!param1.§&P§ ? Boolean(§#9§.useTransitionOut) : Boolean(param1.§&P§);
         }
         return false;
      }
      
      protected function §<"2§(param1:§=T§) : void
      {
         §#9§ = param1;
         §#9§.popup.open(§#t§,§@d§,§6R§,§#9§.useTransitionIn);
         setViewSize(§=!W§,§,"2§);
         §#9§.popup.addEventListener(§8!v§.§7!a§,this.§,"§);
         §#9§.popup.addEventListener(§8!v§.CLOSE,this.§'&§);
         dispatchEvent(new PopupLayerEvent(PopupLayerEvent.OPEN,§`y§,§#9§));
      }
      
      protected function §2!a§() : void
      {
         var _loc1_:§]!R§ = null;
         if(§#9§)
         {
            _loc1_ = §#9§.popup;
            _loc1_.removeEventListener(§8!v§.CLOSE,this.§'&§);
            _loc1_.removeEventListener(§8!v§.§7!a§,this.§,"§);
            §#9§ = null;
            dispatchEvent(new PopupLayerEvent(PopupLayerEvent.CLOSE,§`y§));
         }
      }
      
      protected function §'&§(param1:§8!v§) : void
      {
         dispatchEvent(new PopupLayerEvent(PopupLayerEvent.§ ;§,§`y§,§#9§));
      }
      
      protected function §,"§(param1:§8!v§) : void
      {
         var _loc3_:§=T§ = null;
         var _loc2_:Boolean = true;
         if(§#9§)
         {
            _loc2_ = §#9§.allowQueue;
            this.§2!a§();
         }
         if(§5!E§.length > 0)
         {
            if(_loc2_)
            {
               _loc3_ = §5!E§.shift();
               this.openPopup(_loc3_);
            }
         }
      }
   }
}
