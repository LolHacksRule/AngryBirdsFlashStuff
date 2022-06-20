package §<#m§
{
   import §&$!§.§+#!§;
   import §4$<§.§?§;
   import §4$<§.PopupLayerEvent;
   import §<"P§.§[#$§;
   import flash.display.MovieClip;
   import flash.geom.Rectangle;
   
   public class §+$4§ extends §2$1§ implements §&V§
   {
       
      
      public function §+$4§(param1:int, param2:MovieClip, param3:§+#!§, param4:§[#$§, param5:Boolean = true, param6:Rectangle = null)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      override public function openPopup(param1:§`"g§, param2:Boolean = false) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(§[n§)
         {
            if(§[n§.popup.id == param1.popup.id && !param2)
            {
               return;
            }
            _loc3_ = §[n§.popup.priority;
            _loc4_ = param1.popup.priority;
            if(§!K§)
            {
               if(_loc4_ < _loc3_)
               {
                  §-#4§.push(param1);
               }
               else if(_loc4_ == §^#o§.§#!K§)
               {
                  if(§[n§.popup.isTransitioning && !param2)
                  {
                     return;
                  }
                  §-#4§.length = 0;
                  §-#4§.unshift(param1);
                  this.closePopup(this.§>a§(param1),true);
               }
               else if(_loc4_ == §^#o§.TOP)
               {
                  if(§[n§.popup.isTransitioning && !param2)
                  {
                     return;
                  }
                  if(param1.§#"K§ == false && param1.useTransitionIn == false && param1.useTransitionOut == false)
                  {
                     §[n§.useTransitionIn = false;
                  }
                  §-#4§.unshift(§[n§);
                  §-#4§.unshift(param1);
                  this.closePopup(this.§>a§(param1),true);
               }
               else if(_loc4_ == §^#o§.§%L§)
               {
                  if(§[n§.popup.isTransitioning && !param2)
                  {
                     return;
                  }
                  if(param1.§#"K§ == false && param1.useTransitionIn == false && param1.useTransitionOut == false)
                  {
                     §[n§.useTransitionIn = false;
                  }
                  if(§-#4§.length > 0)
                  {
                     if(§-#4§[0] == §[n§)
                     {
                        §-#4§.splice(0,1,param1);
                     }
                     else
                     {
                        §-#4§.unshift(param1);
                     }
                  }
                  else
                  {
                     §-#4§.push(param1);
                  }
                  §-#4§.unshift(§[n§);
                  this.closePopup(this.§>a§(param1),true,false);
               }
               else
               {
                  §-#4§.push(param1);
               }
            }
            else if(_loc4_ >= _loc3_)
            {
               if(§[n§.popup.isTransitioning && !param2)
               {
                  return;
               }
               §-#4§.unshift(param1);
               this.closePopup(this.§>a§(param1),true);
            }
         }
         else
         {
            this.§1k§(param1);
         }
      }
      
      override public function closePopup(param1:Boolean = false, param2:Boolean = true, param3:Boolean = true) : void
      {
         if(§[n§)
         {
            §[n§.allowQueue = param2;
            §[n§.popup.removeEventListener(§?#7§.CLOSE,this.§'"_§);
            §[n§.popup.close(param1,param3);
         }
      }
      
      protected function §>a§(param1:§`"g§) : Boolean
      {
         if(§[n§)
         {
            return !!param1.§#"K§ ? Boolean(§[n§.useTransitionOut) : Boolean(param1.§#"K§);
         }
         return false;
      }
      
      protected function §1k§(param1:§`"g§) : void
      {
         §[n§ = param1;
         §[n§.popup.open(§1"6§,§-"Q§,§8#0§,§[n§.useTransitionIn);
         setViewSize(§0?§,§,#k§);
         §[n§.popup.addEventListener(§?#7§.§7#o§,this.§'!2§);
         §[n§.popup.addEventListener(§?#7§.CLOSE,this.§'"_§);
         dispatchEvent(new PopupLayerEvent(PopupLayerEvent.OPEN,§;!%§,§[n§));
      }
      
      protected function §3#v§() : void
      {
         var _loc1_:§!"<§ = null;
         if(§[n§)
         {
            _loc1_ = §[n§.popup;
            _loc1_.removeEventListener(§?#7§.CLOSE,this.§'"_§);
            _loc1_.removeEventListener(§?#7§.§7#o§,this.§'!2§);
            §[n§ = null;
            dispatchEvent(new PopupLayerEvent(PopupLayerEvent.CLOSE,§;!%§));
         }
      }
      
      protected function §'"_§(param1:§?#7§) : void
      {
         dispatchEvent(new PopupLayerEvent(PopupLayerEvent.§'!x§,§;!%§,§[n§));
      }
      
      protected function §'!2§(param1:§?#7§) : void
      {
         var _loc3_:§`"g§ = null;
         var _loc2_:Boolean = true;
         if(§[n§)
         {
            _loc2_ = §[n§.allowQueue;
            this.§3#v§();
         }
         if(§-#4§.length > 0)
         {
            if(_loc2_)
            {
               _loc3_ = §-#4§.shift();
               this.openPopup(_loc3_);
            }
         }
      }
   }
}
