package §0!s§
{
   import § !j§.§4#c§;
   import §&m§.§#U§;
   import §'M§.§"Z§;
   import §'M§.PopupLayerEvent;
   import flash.display.MovieClip;
   import flash.geom.Rectangle;
   
   public class §@2§ extends §0!r§ implements §;!R§
   {
       
      
      public function §@2§(param1:int, param2:MovieClip, param3:§4#c§, param4:§#U§, param5:Boolean = true, param6:Rectangle = null)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      override public function openPopup(param1:§9"r§, param2:Boolean = false) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(§!v§)
         {
            if(§!v§.popup.id == param1.popup.id && !param2)
            {
               return;
            }
            _loc3_ = §!v§.popup.priority;
            _loc4_ = param1.popup.priority;
            if(§84§)
            {
               if(_loc4_ < _loc3_)
               {
                  §@!%§.push(param1);
               }
               else if(_loc4_ == §]"Y§.§]a§)
               {
                  if(§!v§.popup.isTransitioning && !param2)
                  {
                     return;
                  }
                  §@!%§.length = 0;
                  §@!%§.unshift(param1);
                  this.closePopup(this.§!"w§(param1),true);
               }
               else if(_loc4_ == §]"Y§.TOP)
               {
                  if(§!v§.popup.isTransitioning && !param2)
                  {
                     return;
                  }
                  if(param1.§`!a§ == false && param1.useTransitionIn == false && param1.useTransitionOut == false)
                  {
                     §!v§.useTransitionIn = false;
                  }
                  §@!%§.unshift(§!v§);
                  §@!%§.unshift(param1);
                  this.closePopup(this.§!"w§(param1),true);
               }
               else if(_loc4_ == §]"Y§.§&T§)
               {
                  if(§!v§.popup.isTransitioning && !param2)
                  {
                     return;
                  }
                  if(param1.§`!a§ == false && param1.useTransitionIn == false && param1.useTransitionOut == false)
                  {
                     §!v§.useTransitionIn = false;
                  }
                  if(§@!%§.length > 0)
                  {
                     if(§@!%§[0] == §!v§)
                     {
                        §@!%§.splice(0,1,param1);
                     }
                     else
                     {
                        §@!%§.unshift(param1);
                     }
                  }
                  else
                  {
                     §@!%§.push(param1);
                  }
                  §@!%§.unshift(§!v§);
                  this.closePopup(this.§!"w§(param1),true,false);
               }
               else
               {
                  §@!%§.push(param1);
               }
            }
            else if(_loc4_ >= _loc3_)
            {
               if(§!v§.popup.isTransitioning && !param2)
               {
                  return;
               }
               §@!%§.unshift(param1);
               this.closePopup(this.§!"w§(param1),true);
            }
         }
         else
         {
            this.§ !q§(param1);
         }
      }
      
      override public function closePopup(param1:Boolean = false, param2:Boolean = true, param3:Boolean = true) : void
      {
         if(§!v§)
         {
            §!v§.allowQueue = param2;
            §!v§.popup.removeEventListener(§"Z§.CLOSE,this.§%"s§);
            §!v§.popup.close(param1,param3);
         }
      }
      
      protected function §!"w§(param1:§9"r§) : Boolean
      {
         if(§!v§)
         {
            return !!param1.§`!a§ ? Boolean(§!v§.useTransitionOut) : Boolean(param1.§`!a§);
         }
         return false;
      }
      
      protected function § !q§(param1:§9"r§) : void
      {
         §!v§ = param1;
         §!v§.popup.open(§&!M§,§+" §,§0"L§,§!v§.useTransitionIn);
         setViewSize(§[z§,§`#9§);
         §!v§.popup.addEventListener(§"Z§.§=#m§,this.§,"K§);
         §!v§.popup.addEventListener(§"Z§.CLOSE,this.§%"s§);
         dispatchEvent(new PopupLayerEvent(PopupLayerEvent.OPEN,§&"'§,§!v§));
      }
      
      protected function §0"!§() : void
      {
         var _loc1_:§5!-§ = null;
         if(§!v§)
         {
            _loc1_ = §!v§.popup;
            _loc1_.removeEventListener(§"Z§.CLOSE,this.§%"s§);
            _loc1_.removeEventListener(§"Z§.§=#m§,this.§,"K§);
            §!v§ = null;
            dispatchEvent(new PopupLayerEvent(PopupLayerEvent.CLOSE,§&"'§));
         }
      }
      
      protected function §%"s§(param1:§"Z§) : void
      {
         dispatchEvent(new PopupLayerEvent(PopupLayerEvent.§&!u§,§&"'§,§!v§));
      }
      
      protected function §,"K§(param1:§"Z§) : void
      {
         var _loc3_:§9"r§ = null;
         var _loc2_:Boolean = true;
         if(§!v§)
         {
            _loc2_ = §!v§.allowQueue;
            this.§0"!§();
         }
         if(§@!%§.length > 0)
         {
            if(_loc2_)
            {
               _loc3_ = §@!%§.shift();
               this.openPopup(_loc3_);
            }
         }
      }
   }
}
