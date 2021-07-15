package §48§
{
   import §9!`§.§;g§;
   import §9!`§.PopupLayerEvent;
   import §;0§.§6h§;
   import §?""§.§6!A§;
   import flash.display.MovieClip;
   import flash.geom.Rectangle;
   
   public class §^A§ extends §4!<§ implements §2`§
   {
       
      
      public function §^A§(param1:int, param2:MovieClip, param3:§6h§, param4:§6!A§, param5:Boolean = true, param6:Rectangle = null)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      override public function openPopup(param1:§5!c§, param2:Boolean = false) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(§,!P§)
         {
            if(§,!P§.popup.id == param1.popup.id && !param2)
            {
               return;
            }
            _loc3_ = §,!P§.popup.priority;
            _loc4_ = param1.popup.priority;
            if(§0""§)
            {
               if(_loc4_ < _loc3_)
               {
                  §=!B§.push(param1);
               }
               else if(_loc4_ == §]l§.§%!#§)
               {
                  if(§,!P§.popup.isTransitioning && !param2)
                  {
                     return;
                  }
                  §=!B§.length = 0;
                  §=!B§.unshift(param1);
                  this.closePopup(this.§&!7§(param1),true);
               }
               else if(_loc4_ == §]l§.TOP)
               {
                  if(§,!P§.popup.isTransitioning && !param2)
                  {
                     return;
                  }
                  if(param1.§9!1§ == false && param1.useTransitionIn == false && param1.useTransitionOut == false)
                  {
                     §,!P§.useTransitionIn = false;
                  }
                  §=!B§.unshift(§,!P§);
                  §=!B§.unshift(param1);
                  this.closePopup(this.§&!7§(param1),true);
               }
               else
               {
                  §=!B§.push(param1);
               }
            }
            else if(_loc4_ >= _loc3_)
            {
               if(§,!P§.popup.isTransitioning && !param2)
               {
                  return;
               }
               §=!B§.unshift(param1);
               this.closePopup(this.§&!7§(param1),true);
            }
         }
         else
         {
            this.§6[§(param1);
         }
      }
      
      override public function closePopup(param1:Boolean = false, param2:Boolean = true) : void
      {
         if(§,!P§)
         {
            §,!P§.allowQueue = param2;
            §,!P§.popup.removeEventListener(§;g§.CLOSE,this.§^!Q§);
            §,!P§.popup.close(param1);
         }
      }
      
      protected function §&!7§(param1:§5!c§) : Boolean
      {
         if(§,!P§)
         {
            return !!param1.§9!1§ ? Boolean(§,!P§.useTransitionOut) : Boolean(param1.§9!1§);
         }
         return false;
      }
      
      protected function §6[§(param1:§5!c§) : void
      {
         §,!P§ = param1;
         §,!P§.popup.open(§@'§,§-!]§,§6!c§,§,!P§.useTransitionIn);
         setViewSize(§+q§,§;>§);
         §,!P§.popup.addEventListener(§;g§.§?C§,this.§0$§);
         §,!P§.popup.addEventListener(§;g§.CLOSE,this.§^!Q§);
         dispatchEvent(new PopupLayerEvent(PopupLayerEvent.OPEN,§7!`§,§,!P§));
      }
      
      protected function §>J§() : void
      {
         var _loc1_:§["#§ = null;
         if(§,!P§)
         {
            _loc1_ = §,!P§.popup;
            _loc1_.removeEventListener(§;g§.CLOSE,this.§^!Q§);
            _loc1_.removeEventListener(§;g§.§?C§,this.§0$§);
            §,!P§ = null;
            dispatchEvent(new PopupLayerEvent(PopupLayerEvent.CLOSE,§7!`§));
         }
      }
      
      protected function §^!Q§(param1:§;g§) : void
      {
         dispatchEvent(new PopupLayerEvent(PopupLayerEvent.§]]§,§7!`§,§,!P§));
      }
      
      protected function §0$§(param1:§;g§) : void
      {
         var _loc3_:§5!c§ = null;
         var _loc2_:Boolean = true;
         if(§,!P§)
         {
            _loc2_ = §,!P§.allowQueue;
            this.§>J§();
         }
         if(§=!B§.length > 0)
         {
            if(_loc2_)
            {
               _loc3_ = §=!B§.shift();
               this.openPopup(_loc3_);
            }
         }
      }
   }
}
