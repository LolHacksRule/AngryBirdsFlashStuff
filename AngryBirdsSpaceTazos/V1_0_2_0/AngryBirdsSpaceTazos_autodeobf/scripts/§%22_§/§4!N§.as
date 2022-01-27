package §"_§
{
   import §"!>§.§<!o§;
   import §%"7§.§+"C§;
   import §%"7§.PopupLayerEvent;
   import §;!,§.§"q§;
   import flash.display.MovieClip;
   import flash.geom.Rectangle;
   
   public class §4!N§ extends §3`§ implements § in§
   {
       
      
      public function §4!N§(param1:int, param2:MovieClip, param3:§<!o§, param4:§"q§, param5:Boolean = true, param6:Rectangle = null)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      public function §7"F§(param1:§ !x§, param2:Boolean = false) : Boolean
      {
         if(§8X§)
         {
            if(§8X§.popup.id == param1.popup.id && !param2)
            {
               return false;
            }
         }
         return true;
      }
      
      override public function openPopup(param1:§ !x§, param2:Boolean = false) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(§8X§)
         {
            _loc3_ = §8X§.popup.priority;
            _loc4_ = param1.popup.priority;
            if(§`I§)
            {
               if(_loc4_ < _loc3_)
               {
                  §,!A§.push(param1);
               }
               else if(_loc4_ == §3o§.§%!V§)
               {
                  if(§8X§.popup.isTransitioning && !param2)
                  {
                     return;
                  }
                  §,!A§.length = 0;
                  §,!A§.unshift(param1);
                  this.closePopup(this.§#",§(param1),true);
               }
               else if(_loc4_ == §3o§.TOP)
               {
                  if(§8X§.popup.isTransitioning && !param2)
                  {
                     return;
                  }
                  if(param1.§'!m§ == false && param1.useTransitionIn == false && param1.useTransitionOut == false)
                  {
                     §8X§.useTransitionIn = false;
                  }
                  §,!A§.unshift(§8X§);
                  §,!A§.unshift(param1);
                  this.closePopup(this.§#",§(param1),true);
               }
               else
               {
                  §,!A§.push(param1);
               }
            }
            else if(_loc4_ >= _loc3_)
            {
               if(§8X§.popup.isTransitioning && !param2)
               {
                  return;
               }
               §,!A§.unshift(param1);
               this.closePopup(this.§#",§(param1),true);
            }
         }
         else
         {
            this.§;w§(param1);
         }
      }
      
      override public function closePopup(param1:Boolean = false, param2:Boolean = true) : void
      {
         if(§8X§)
         {
            §8X§.allowQueue = param2;
            §8X§.popup.removeEventListener(§+"C§.CLOSE,this.§8!H§);
            §8X§.popup.close(param1);
         }
      }
      
      protected function §#",§(param1:§ !x§) : Boolean
      {
         if(§8X§)
         {
            return !!param1.§'!m§ ? Boolean(§8X§.useTransitionOut) : Boolean(param1.§'!m§);
         }
         return false;
      }
      
      protected function §;w§(param1:§ !x§) : void
      {
         §8X§ = param1;
         §8X§.popup.open(§&#§,§4!T§,§+!#§,§8X§.useTransitionIn);
         setViewSize(§9!&§,§ !+§);
         §8X§.popup.addEventListener(§+"C§.§6D§,this.§get §);
         §8X§.popup.addEventListener(§+"C§.CLOSE,this.§8!H§);
         dispatchEvent(new PopupLayerEvent(PopupLayerEvent.OPEN,§%u§,§8X§));
      }
      
      protected function §#!w§() : void
      {
         var _loc1_:§0"1§ = null;
         if(§8X§)
         {
            _loc1_ = §8X§.popup;
            _loc1_.removeEventListener(§+"C§.CLOSE,this.§8!H§);
            _loc1_.removeEventListener(§+"C§.§6D§,this.§get §);
            §8X§ = null;
            dispatchEvent(new PopupLayerEvent(PopupLayerEvent.CLOSE,§%u§));
         }
      }
      
      protected function §8!H§(param1:§+"C§) : void
      {
         dispatchEvent(new PopupLayerEvent(PopupLayerEvent.§79§,§%u§,§8X§));
      }
      
      protected function §get §(param1:§+"C§) : void
      {
         var _loc3_:§ !x§ = null;
         var _loc2_:Boolean = true;
         if(§8X§)
         {
            _loc2_ = §8X§.allowQueue;
            this.§#!w§();
         }
         if(§,!A§.length > 0)
         {
            if(_loc2_)
            {
               _loc3_ = §,!A§.shift();
               this.openPopup(_loc3_);
            }
         }
      }
   }
}
