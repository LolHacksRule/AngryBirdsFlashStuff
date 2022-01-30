package §!!`§
{
   import §&!+§.§@z§;
   import §&!+§.PopupLayerEvent;
   import §'!u§.§&S§;
   import §="3§.§[N§;
   import flash.display.MovieClip;
   import flash.geom.Rectangle;
   
   public class §=!q§ extends §1C§ implements §'X§
   {
       
      
      public function §=!q§(param1:int, param2:MovieClip, param3:§&S§, param4:§[N§, param5:Boolean = true, param6:Rectangle = null)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      override public function openPopup(param1:§9@§, param2:Boolean = false) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(§1+§)
         {
            if(§1+§.popup.id == param1.popup.id && !param2)
            {
               return;
            }
            _loc3_ = §1+§.popup.priority;
            _loc4_ = param1.popup.priority;
            if(§="$§)
            {
               if(_loc4_ < _loc3_)
               {
                  §8f§.push(param1);
               }
               else if(_loc4_ == §4!f§.§`s§)
               {
                  if(§1+§.popup.isTransitioning && !param2)
                  {
                     return;
                  }
                  §8f§.length = 0;
                  §8f§.unshift(param1);
                  this.closePopup(this.§7!W§(param1),true);
               }
               else if(_loc4_ == §4!f§.TOP)
               {
                  if(§1+§.popup.isTransitioning && !param2)
                  {
                     return;
                  }
                  if(param1.§`<§ == false && param1.useTransitionIn == false && param1.useTransitionOut == false)
                  {
                     §1+§.useTransitionIn = false;
                  }
                  §8f§.unshift(§1+§);
                  §8f§.unshift(param1);
                  this.closePopup(this.§7!W§(param1),true);
               }
               else
               {
                  §8f§.push(param1);
               }
            }
            else if(_loc4_ >= _loc3_)
            {
               if(§1+§.popup.isTransitioning && !param2)
               {
                  return;
               }
               §8f§.unshift(param1);
               this.closePopup(this.§7!W§(param1),true);
            }
         }
         else
         {
            this.§@B§(param1);
         }
      }
      
      override public function closePopup(param1:Boolean = false, param2:Boolean = true) : void
      {
         if(§1+§)
         {
            §1+§.allowQueue = param2;
            §1+§.popup.removeEventListener(§@z§.CLOSE,this.§>!-§);
            §1+§.popup.close(param1);
         }
      }
      
      protected function §7!W§(param1:§9@§) : Boolean
      {
         if(§1+§)
         {
            return !!param1.§`<§ ? Boolean(§1+§.useTransitionOut) : Boolean(param1.§`<§);
         }
         return false;
      }
      
      protected function §@B§(param1:§9@§) : void
      {
         §1+§ = param1;
         §1+§.popup.open(§-"1§,§-F§,§6!x§,§1+§.useTransitionIn);
         setViewSize(§-!k§,§]v§);
         §1+§.popup.addEventListener(§@z§.§,F§,this.§<4§);
         §1+§.popup.addEventListener(§@z§.CLOSE,this.§>!-§);
         dispatchEvent(new PopupLayerEvent(PopupLayerEvent.OPEN,§2B§,§1+§));
      }
      
      protected function §;"§() : void
      {
         var _loc1_:§3%§ = null;
         if(§1+§)
         {
            _loc1_ = §1+§.popup;
            _loc1_.removeEventListener(§@z§.CLOSE,this.§>!-§);
            _loc1_.removeEventListener(§@z§.§,F§,this.§<4§);
            §1+§ = null;
            dispatchEvent(new PopupLayerEvent(PopupLayerEvent.CLOSE,§2B§));
         }
      }
      
      protected function §>!-§(param1:§@z§) : void
      {
         dispatchEvent(new PopupLayerEvent(PopupLayerEvent.§`[§,§2B§,§1+§));
      }
      
      protected function §<4§(param1:§@z§) : void
      {
         var _loc3_:§9@§ = null;
         var _loc2_:Boolean = true;
         if(§1+§)
         {
            _loc2_ = §1+§.allowQueue;
            this.§;"§();
         }
         if(§8f§.length > 0)
         {
            if(_loc2_)
            {
               _loc3_ = §8f§.shift();
               this.openPopup(_loc3_);
            }
         }
      }
   }
}
