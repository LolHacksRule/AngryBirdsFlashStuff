package §?N§
{
   import §"m§.§,g§;
   import §;!b§.§%>§;
   import §?Z§.§5-§;
   import §?Z§.PopupLayerEvent;
   import flash.display.MovieClip;
   import flash.geom.Rectangle;
   
   public class §&j§ extends § !b§ implements §9!?§
   {
       
      
      public function §&j§(param1:int, param2:MovieClip, param3:§%>§, param4:§,g§, param5:Boolean = true, param6:Rectangle = null)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      override public function openPopup(param1:§!q§, param2:Boolean = false) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(§8n§)
         {
            if(§8n§.popup.id == param1.popup.id && !param2)
            {
               return;
            }
            _loc3_ = §8n§.popup.priority;
            _loc4_ = param1.popup.priority;
            if(§try §)
            {
               if(_loc4_ < _loc3_)
               {
                  §"![§.push(param1);
               }
               else if(_loc4_ == §>!H§.§,"0§)
               {
                  if(§8n§.popup.isTransitioning && !param2)
                  {
                     return;
                  }
                  §"![§.length = 0;
                  §"![§.unshift(param1);
                  this.closePopup(this.§+!w§(param1),true);
               }
               else if(_loc4_ == §>!H§.TOP)
               {
                  if(§8n§.popup.isTransitioning && !param2)
                  {
                     return;
                  }
                  if(param1.§@!q§ == false && param1.useTransitionIn == false && param1.useTransitionOut == false)
                  {
                     §8n§.useTransitionIn = false;
                  }
                  §"![§.unshift(§8n§);
                  §"![§.unshift(param1);
                  this.closePopup(this.§+!w§(param1),true);
               }
               else
               {
                  §"![§.push(param1);
               }
            }
            else if(_loc4_ >= _loc3_)
            {
               if(§8n§.popup.isTransitioning && !param2)
               {
                  return;
               }
               §"![§.unshift(param1);
               this.closePopup(this.§+!w§(param1),true);
            }
         }
         else
         {
            this.§&!'§(param1);
         }
      }
      
      override public function closePopup(param1:Boolean = false, param2:Boolean = true) : void
      {
         if(§8n§)
         {
            §8n§.allowQueue = param2;
            §8n§.popup.removeEventListener(§5-§.CLOSE,this.§`" §);
            §8n§.popup.close(param1);
         }
      }
      
      protected function §+!w§(param1:§!q§) : Boolean
      {
         if(§8n§)
         {
            return !!param1.§@!q§ ? Boolean(§8n§.useTransitionOut) : Boolean(param1.§@!q§);
         }
         return false;
      }
      
      protected function §&!'§(param1:§!q§) : void
      {
         §8n§ = param1;
         §8n§.popup.open(§0+§,§"q§,§9!1§,§8n§.useTransitionIn);
         setViewSize(§!5§,§!&§);
         §8n§.popup.addEventListener(§5-§.§&C§,this.§4z§);
         §8n§.popup.addEventListener(§5-§.CLOSE,this.§`" §);
         dispatchEvent(new PopupLayerEvent(PopupLayerEvent.OPEN,§<u§,§8n§));
      }
      
      protected function §8s§() : void
      {
         var _loc1_:§;!E§ = null;
         if(§8n§)
         {
            _loc1_ = §8n§.popup;
            _loc1_.removeEventListener(§5-§.CLOSE,this.§`" §);
            _loc1_.removeEventListener(§5-§.§&C§,this.§4z§);
            §8n§ = null;
            dispatchEvent(new PopupLayerEvent(PopupLayerEvent.CLOSE,§<u§));
         }
      }
      
      protected function §`" §(param1:§5-§) : void
      {
         dispatchEvent(new PopupLayerEvent(PopupLayerEvent.§1^§,§<u§,§8n§));
      }
      
      protected function §4z§(param1:§5-§) : void
      {
         var _loc3_:§!q§ = null;
         var _loc2_:Boolean = true;
         if(§8n§)
         {
            _loc2_ = §8n§.allowQueue;
            this.§8s§();
         }
         if(§"![§.length > 0)
         {
            if(_loc2_)
            {
               _loc3_ = §"![§.shift();
               this.openPopup(_loc3_);
            }
         }
      }
   }
}
