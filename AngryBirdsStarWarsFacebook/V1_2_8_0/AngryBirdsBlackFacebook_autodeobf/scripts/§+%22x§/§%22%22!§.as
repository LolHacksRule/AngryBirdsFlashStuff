package §+"x§
{
   import §&!j§.§5#+§;
   import §7!n§.§>"H§;
   import §7!n§.PopupLayerEvent;
   import §9&§.§]!`§;
   import flash.display.MovieClip;
   import flash.geom.Rectangle;
   
   public class §""!§ extends §9"C§ implements §]"G§
   {
       
      
      public function §""!§(param1:int, param2:MovieClip, param3:§5#+§, param4:§]!`§, param5:Boolean = true, param6:Rectangle = null)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      override public function openPopup(param1:§ !Y§, param2:Boolean = false) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(§3K§)
         {
            if(§3K§.popup.id == param1.popup.id && !param2)
            {
               return;
            }
            _loc3_ = §3K§.popup.priority;
            _loc4_ = param1.popup.priority;
            if(§@F§)
            {
               if(_loc4_ < _loc3_)
               {
                  §^",§.push(param1);
               }
               else if(_loc4_ == §2!s§.§@"$§)
               {
                  if(§3K§.popup.isTransitioning && !param2)
                  {
                     return;
                  }
                  §^",§.length = 0;
                  §^",§.unshift(param1);
                  this.closePopup(this.§%!5§(param1),true);
               }
               else if(_loc4_ == §2!s§.TOP)
               {
                  if(§3K§.popup.isTransitioning && !param2)
                  {
                     return;
                  }
                  if(param1.§'D§ == false && param1.useTransitionIn == false && param1.useTransitionOut == false)
                  {
                     §3K§.useTransitionIn = false;
                  }
                  §^",§.unshift(§3K§);
                  §^",§.unshift(param1);
                  this.closePopup(this.§%!5§(param1),true);
               }
               else
               {
                  §^",§.push(param1);
               }
            }
            else if(_loc4_ >= _loc3_)
            {
               if(§3K§.popup.isTransitioning && !param2)
               {
                  return;
               }
               §^",§.unshift(param1);
               this.closePopup(this.§%!5§(param1),true);
            }
         }
         else
         {
            this.§;!?§(param1);
         }
      }
      
      override public function closePopup(param1:Boolean = false, param2:Boolean = true) : void
      {
         if(§3K§)
         {
            §3K§.allowQueue = param2;
            §3K§.popup.removeEventListener(§>"H§.CLOSE,this.onPopupCloseRequest);
            §3K§.popup.close(param1);
         }
      }
      
      protected function §%!5§(param1:§ !Y§) : Boolean
      {
         if(§3K§)
         {
            return !!param1.§'D§ ? Boolean(§3K§.useTransitionOut) : Boolean(param1.§'D§);
         }
         return false;
      }
      
      protected function §;!?§(param1:§ !Y§) : void
      {
         §3K§ = param1;
         §3K§.popup.open(§[#,§,§-1§,§4!i§,§3K§.useTransitionIn);
         setViewSize(§5"[§,§%"8§);
         §3K§.popup.addEventListener(§>"H§.§6t§,this.§9B§);
         §3K§.popup.addEventListener(§>"H§.CLOSE,this.onPopupCloseRequest);
         dispatchEvent(new PopupLayerEvent(PopupLayerEvent.OPEN,§%"0§,§3K§));
      }
      
      protected function §!F§() : void
      {
         var _loc1_:§3!§ = null;
         if(§3K§)
         {
            _loc1_ = §3K§.popup;
            _loc1_.removeEventListener(§>"H§.CLOSE,this.onPopupCloseRequest);
            _loc1_.removeEventListener(§>"H§.§6t§,this.§9B§);
            §3K§ = null;
            dispatchEvent(new PopupLayerEvent(PopupLayerEvent.CLOSE,§%"0§));
         }
      }
      
      protected function onPopupCloseRequest(param1:§>"H§) : void
      {
         dispatchEvent(new PopupLayerEvent(PopupLayerEvent.§=s§,§%"0§,§3K§));
      }
      
      protected function §9B§(param1:§>"H§) : void
      {
         var _loc3_:§ !Y§ = null;
         var _loc2_:Boolean = true;
         if(§3K§)
         {
            _loc2_ = §3K§.allowQueue;
            this.§!F§();
         }
         if(§^",§.length > 0)
         {
            if(_loc2_)
            {
               _loc3_ = §^",§.shift();
               this.openPopup(_loc3_);
            }
         }
      }
   }
}
