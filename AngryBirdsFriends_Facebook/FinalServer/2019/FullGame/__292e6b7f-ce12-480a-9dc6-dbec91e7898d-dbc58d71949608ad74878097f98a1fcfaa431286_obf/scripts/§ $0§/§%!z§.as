package § $0§
{
   import §##y§.§#$"§;
   import §+`§.§%"q§;
   import §;#>§.§7!^§;
   import §;#>§.PopupLayerEvent;
   import flash.display.MovieClip;
   import flash.geom.Rectangle;
   
   public class §%!z§ extends §4e§ implements §1#q§
   {
       
      
      public function §%!z§(param1:int, param2:MovieClip, param3:§%"q§, param4:§#$"§, param5:Boolean = true, param6:Rectangle = null)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      override public function openPopup(param1:§#"K§, param2:Boolean = false) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(§"o§)
         {
            if(§"o§.popup.id == param1.popup.id && !param2)
            {
               return;
            }
            _loc3_ = §"o§.popup.priority;
            _loc4_ = param1.popup.priority;
            if(§;"O§)
            {
               if(_loc4_ < _loc3_)
               {
                  §'!X§.push(param1);
               }
               else if(_loc4_ == §5R§.§!#§)
               {
                  if(§"o§.popup.isTransitioning && !param2)
                  {
                     return;
                  }
                  §'!X§.length = 0;
                  §'!X§.unshift(param1);
                  this.closePopup(this.§2B§(param1),true);
               }
               else if(_loc4_ == §5R§.TOP)
               {
                  if(§"o§.popup.isTransitioning && !param2)
                  {
                     return;
                  }
                  if(param1.§+!+§ == false && param1.useTransitionIn == false && param1.useTransitionOut == false)
                  {
                     §"o§.useTransitionIn = false;
                  }
                  §'!X§.unshift(§"o§);
                  §'!X§.unshift(param1);
                  this.closePopup(this.§2B§(param1),true);
               }
               else if(_loc4_ == §5R§.§7$$§)
               {
                  if(§"o§.popup.isTransitioning && !param2)
                  {
                     return;
                  }
                  if(param1.§+!+§ == false && param1.useTransitionIn == false && param1.useTransitionOut == false)
                  {
                     §"o§.useTransitionIn = false;
                  }
                  if(§'!X§.length > 0)
                  {
                     if(§'!X§[0] == §"o§)
                     {
                        §'!X§.splice(0,1,param1);
                     }
                     else
                     {
                        §'!X§.unshift(param1);
                     }
                  }
                  else
                  {
                     §'!X§.push(param1);
                  }
                  §'!X§.unshift(§"o§);
                  this.closePopup(this.§2B§(param1),true,false);
               }
               else
               {
                  §'!X§.push(param1);
               }
            }
            else if(_loc4_ >= _loc3_)
            {
               if(§"o§.popup.isTransitioning && !param2)
               {
                  return;
               }
               §'!X§.unshift(param1);
               this.closePopup(this.§2B§(param1),true);
            }
         }
         else
         {
            this.§["3§(param1);
         }
      }
      
      override public function closePopup(param1:Boolean = false, param2:Boolean = true, param3:Boolean = true) : void
      {
         if(§"o§)
         {
            §"o§.allowQueue = param2;
            §"o§.popup.removeEventListener(§7!^§.CLOSE,this.§%!T§);
            §"o§.popup.close(param1,param3);
         }
      }
      
      protected function §2B§(param1:§#"K§) : Boolean
      {
         if(§"o§)
         {
            return !!param1.§+!+§ ? Boolean(§"o§.useTransitionOut) : Boolean(param1.§+!+§);
         }
         return false;
      }
      
      protected function §["3§(param1:§#"K§) : void
      {
         §"o§ = param1;
         §"o§.popup.open(§;#'§,§#$&§,§7!p§,§"o§.useTransitionIn);
         setViewSize(§6$'§,§?"4§);
         §"o§.popup.addEventListener(§7!^§.§;""§,this.§ "v§);
         §"o§.popup.addEventListener(§7!^§.CLOSE,this.§%!T§);
         dispatchEvent(new PopupLayerEvent(PopupLayerEvent.OPEN,§'!r§,§"o§));
      }
      
      protected function §]!J§() : void
      {
         var _loc1_:§,#@§ = null;
         if(§"o§)
         {
            _loc1_ = §"o§.popup;
            _loc1_.removeEventListener(§7!^§.CLOSE,this.§%!T§);
            _loc1_.removeEventListener(§7!^§.§;""§,this.§ "v§);
            §"o§ = null;
            dispatchEvent(new PopupLayerEvent(PopupLayerEvent.CLOSE,§'!r§));
         }
      }
      
      protected function §%!T§(param1:§7!^§) : void
      {
         dispatchEvent(new PopupLayerEvent(PopupLayerEvent.§ "<§,§'!r§,§"o§));
      }
      
      protected function § "v§(param1:§7!^§) : void
      {
         var _loc3_:§#"K§ = null;
         var _loc2_:Boolean = true;
         if(§"o§)
         {
            _loc2_ = §"o§.allowQueue;
            this.§]!J§();
         }
         if(§'!X§.length > 0)
         {
            if(_loc2_)
            {
               _loc3_ = §'!X§.shift();
               this.openPopup(_loc3_);
            }
         }
      }
   }
}
