package §1!i§
{
   import §,!'§.§5O§;
   import §,M§.§+f§;
   import §8]§.§7O§;
   import §8]§.PopupLayerEvent;
   import flash.display.MovieClip;
   import flash.geom.Rectangle;
   
   public class § 3§ extends §,!O§ implements §]7§
   {
       
      
      public function § 3§(param1:int, param2:MovieClip, param3:§+f§, param4:§5O§, param5:Boolean = true, param6:Rectangle = null)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      override public function openPopup(param1:§?O§, param2:Boolean = false) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(§?q§)
         {
            if(§?q§.popup.id == param1.popup.id && !param2)
            {
               return;
            }
            _loc3_ = §?q§.popup.priority;
            _loc4_ = param1.popup.priority;
            if(§,,§)
            {
               if(_loc4_ < _loc3_)
               {
                  §2!i§.push(param1);
               }
               else if(_loc4_ == §4z§.§&-§)
               {
                  if(§?q§.popup.isTransitioning && !param2)
                  {
                     return;
                  }
                  §2!i§.length = 0;
                  §2!i§.unshift(param1);
                  this.closePopup(this.§6h§(param1),true);
               }
               else if(_loc4_ == §4z§.TOP)
               {
                  if(§?q§.popup.isTransitioning && !param2)
                  {
                     return;
                  }
                  if(param1.§2!T§ == false && param1.useTransitionIn == false && param1.useTransitionOut == false)
                  {
                     §?q§.useTransitionIn = false;
                  }
                  §2!i§.unshift(§?q§);
                  §2!i§.unshift(param1);
                  this.closePopup(this.§6h§(param1),true);
               }
               else
               {
                  §2!i§.push(param1);
               }
            }
            else if(_loc4_ >= _loc3_)
            {
               if(§?q§.popup.isTransitioning && !param2)
               {
                  return;
               }
               §2!i§.unshift(param1);
               this.closePopup(this.§6h§(param1),true);
            }
         }
         else
         {
            this.§4!F§(param1);
         }
      }
      
      override public function closePopup(param1:Boolean = false, param2:Boolean = true) : void
      {
         if(§?q§)
         {
            §?q§.allowQueue = param2;
            §?q§.popup.removeEventListener(§7O§.CLOSE,this.§-!^§);
            §?q§.popup.close(param1);
         }
      }
      
      protected function §6h§(param1:§?O§) : Boolean
      {
         if(§?q§)
         {
            return !!param1.§2!T§ ? Boolean(§?q§.useTransitionOut) : Boolean(param1.§2!T§);
         }
         return false;
      }
      
      protected function §4!F§(param1:§?O§) : void
      {
         §?q§ = param1;
         §?q§.popup.open(§29§,§8&§,§-p§,§?q§.useTransitionIn);
         setViewSize(§^!J§,§+=§);
         §?q§.popup.addEventListener(§7O§.§&G§,this.§8g§);
         §?q§.popup.addEventListener(§7O§.CLOSE,this.§-!^§);
         dispatchEvent(new PopupLayerEvent(PopupLayerEvent.OPEN,§#W§,§?q§));
      }
      
      protected function §7!e§() : void
      {
         var _loc1_:§?!a§ = null;
         if(§?q§)
         {
            _loc1_ = §?q§.popup;
            _loc1_.removeEventListener(§7O§.CLOSE,this.§-!^§);
            _loc1_.removeEventListener(§7O§.§&G§,this.§8g§);
            §?q§ = null;
            dispatchEvent(new PopupLayerEvent(PopupLayerEvent.CLOSE,§#W§));
         }
      }
      
      protected function §-!^§(param1:§7O§) : void
      {
         dispatchEvent(new PopupLayerEvent(PopupLayerEvent.§9! §,§#W§,§?q§));
      }
      
      protected function §8g§(param1:§7O§) : void
      {
         var _loc3_:§?O§ = null;
         var _loc2_:Boolean = true;
         if(§?q§)
         {
            _loc2_ = §?q§.allowQueue;
            this.§7!e§();
         }
         if(§2!i§.length > 0)
         {
            if(_loc2_)
            {
               _loc3_ = §2!i§.shift();
               this.openPopup(_loc3_);
            }
         }
      }
   }
}
