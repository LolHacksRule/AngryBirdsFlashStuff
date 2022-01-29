package §1!=§
{
   import §!$;§.§8#F§;
   import §!$;§.PopupLayerEvent;
   import §5P§.§""C§;
   import §@l§.§6$9§;
   import flash.display.MovieClip;
   import flash.geom.Rectangle;
   
   public class §?#I§ extends §9!!§ implements §6!<§
   {
       
      
      public function §?#I§(param1:int, param2:MovieClip, param3:§""C§, param4:§6$9§, param5:Boolean = true, param6:Rectangle = null)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      override public function openPopup(param1:§>"q§, param2:Boolean = false) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(§ "&§)
         {
            if(§ "&§.popup.id == param1.popup.id && !param2)
            {
               return;
            }
            _loc3_ = § "&§.popup.priority;
            _loc4_ = param1.popup.priority;
            if(§^$A§)
            {
               if(_loc4_ < _loc3_)
               {
                  §=@§.push(param1);
               }
               else if(_loc4_ == §^"U§.§-#s§)
               {
                  if(§ "&§.popup.isTransitioning && !param2)
                  {
                     return;
                  }
                  §=@§.length = 0;
                  §=@§.unshift(param1);
                  this.closePopup(this.§&" §(param1),true);
               }
               else if(_loc4_ == §^"U§.TOP)
               {
                  if(§ "&§.popup.isTransitioning && !param2)
                  {
                     return;
                  }
                  if(param1.§!v§ == false && param1.useTransitionIn == false && param1.useTransitionOut == false)
                  {
                     § "&§.useTransitionIn = false;
                  }
                  §=@§.unshift(§ "&§);
                  §=@§.unshift(param1);
                  this.closePopup(this.§&" §(param1),true);
               }
               else if(_loc4_ == §^"U§.§""H§)
               {
                  if(§ "&§.popup.isTransitioning && !param2)
                  {
                     return;
                  }
                  if(param1.§!v§ == false && param1.useTransitionIn == false && param1.useTransitionOut == false)
                  {
                     § "&§.useTransitionIn = false;
                  }
                  if(§=@§.length > 0)
                  {
                     if(§=@§[0] == § "&§)
                     {
                        §=@§.splice(0,1,param1);
                     }
                     else
                     {
                        §=@§.unshift(param1);
                     }
                  }
                  else
                  {
                     §=@§.push(param1);
                  }
                  §=@§.unshift(§ "&§);
                  this.closePopup(this.§&" §(param1),true,false);
               }
               else
               {
                  §=@§.push(param1);
               }
            }
            else if(_loc4_ >= _loc3_)
            {
               if(§ "&§.popup.isTransitioning && !param2)
               {
                  return;
               }
               §=@§.unshift(param1);
               this.closePopup(this.§&" §(param1),true);
            }
         }
         else
         {
            this.§[#U§(param1);
         }
      }
      
      override public function closePopup(param1:Boolean = false, param2:Boolean = true, param3:Boolean = true) : void
      {
         if(§ "&§)
         {
            § "&§.allowQueue = param2;
            § "&§.popup.removeEventListener(§8#F§.CLOSE,this.§"#^§);
            § "&§.popup.close(param1,param3);
         }
      }
      
      protected function §&" §(param1:§>"q§) : Boolean
      {
         if(§ "&§)
         {
            return !!param1.§!v§ ? Boolean(§ "&§.useTransitionOut) : Boolean(param1.§!v§);
         }
         return false;
      }
      
      protected function §[#U§(param1:§>"q§) : void
      {
         § "&§ = param1;
         § "&§.popup.open(§,#2§,§1a§,§'#g§,§ "&§.useTransitionIn);
         setViewSize(§!"T§,§0F§);
         § "&§.popup.addEventListener(§8#F§.§^$4§,this.§8!0§);
         § "&§.popup.addEventListener(§8#F§.CLOSE,this.§"#^§);
         dispatchEvent(new PopupLayerEvent(PopupLayerEvent.OPEN,§7$9§,§ "&§));
      }
      
      protected function §+"$§() : void
      {
         var _loc1_:§%#;§ = null;
         if(§ "&§)
         {
            _loc1_ = § "&§.popup;
            _loc1_.removeEventListener(§8#F§.CLOSE,this.§"#^§);
            _loc1_.removeEventListener(§8#F§.§^$4§,this.§8!0§);
            § "&§ = null;
            dispatchEvent(new PopupLayerEvent(PopupLayerEvent.CLOSE,§7$9§));
         }
      }
      
      protected function §"#^§(param1:§8#F§) : void
      {
         dispatchEvent(new PopupLayerEvent(PopupLayerEvent.§1#§,§7$9§,§ "&§));
      }
      
      protected function §8!0§(param1:§8#F§) : void
      {
         var _loc3_:§>"q§ = null;
         var _loc2_:Boolean = true;
         if(§ "&§)
         {
            _loc2_ = § "&§.allowQueue;
            this.§+"$§();
         }
         if(§=@§.length > 0)
         {
            if(_loc2_)
            {
               _loc3_ = §=@§.shift();
               this.openPopup(_loc3_);
            }
         }
      }
   }
}
