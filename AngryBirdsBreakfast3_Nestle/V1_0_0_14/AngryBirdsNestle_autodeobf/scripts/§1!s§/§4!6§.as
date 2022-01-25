package §1!s§
{
   import §&"6§.§;G§;
   import §&"6§.PopupLayerEvent;
   import §'"&§.§4!2§;
   import §7"6§.§^!_§;
   import flash.display.MovieClip;
   import flash.geom.Rectangle;
   
   public class §4!6§ extends §^@§ implements §=%§
   {
       
      
      public function §4!6§(param1:int, param2:MovieClip, param3:§^!_§, param4:§4!2§, param5:Boolean = true, param6:Rectangle = null)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      override public function openPopup(param1:§]r§, param2:Boolean = false) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(§&"$§)
         {
            if(§&"$§.popup.id == param1.popup.id && !param2)
            {
               return;
            }
            _loc3_ = §&"$§.popup.priority;
            _loc4_ = param1.popup.priority;
            if(§?Z§)
            {
               if(_loc4_ < _loc3_)
               {
                  §7!5§.push(param1);
               }
               else if(_loc4_ == §finally§.§,C§)
               {
                  if(§&"$§.popup.isTransitioning && !param2)
                  {
                     return;
                  }
                  §7!5§.length = 0;
                  §7!5§.unshift(param1);
                  this.closePopup(this.§[&§(param1),true);
               }
               else if(_loc4_ == §finally§.TOP)
               {
                  if(§&"$§.popup.isTransitioning && !param2)
                  {
                     return;
                  }
                  if(param1.§]!3§ == false && param1.useTransitionIn == false && param1.useTransitionOut == false)
                  {
                     §&"$§.useTransitionIn = false;
                  }
                  §7!5§.unshift(§&"$§);
                  §7!5§.unshift(param1);
                  this.closePopup(this.§[&§(param1),true);
               }
               else
               {
                  §7!5§.push(param1);
               }
            }
            else if(_loc4_ >= _loc3_)
            {
               if(§&"$§.popup.isTransitioning && !param2)
               {
                  return;
               }
               §7!5§.unshift(param1);
               this.closePopup(this.§[&§(param1),true);
            }
         }
         else
         {
            this.§%!N§(param1);
         }
      }
      
      override public function closePopup(param1:Boolean = false, param2:Boolean = true) : void
      {
         if(§&"$§)
         {
            §&"$§.allowQueue = param2;
            §&"$§.popup.removeEventListener(§;G§.CLOSE,this.§8!V§);
            §&"$§.popup.close(param1);
         }
      }
      
      protected function §[&§(param1:§]r§) : Boolean
      {
         if(§&"$§)
         {
            return !!param1.§]!3§ ? Boolean(§&"$§.useTransitionOut) : Boolean(param1.§]!3§);
         }
         return false;
      }
      
      protected function §%!N§(param1:§]r§) : void
      {
         §&"$§ = param1;
         §&"$§.popup.open(§;"#§,§%E§,§1!!§,§&"$§.useTransitionIn);
         setViewSize(§;!j§,§#u§);
         §&"$§.popup.addEventListener(§;G§.§6"3§,this.§7!%§);
         §&"$§.popup.addEventListener(§;G§.CLOSE,this.§8!V§);
         dispatchEvent(new PopupLayerEvent(PopupLayerEvent.OPEN,§#!;§,§&"$§));
      }
      
      protected function §8"3§() : void
      {
         var _loc1_:§+!y§ = null;
         if(§&"$§)
         {
            _loc1_ = §&"$§.popup;
            _loc1_.removeEventListener(§;G§.CLOSE,this.§8!V§);
            _loc1_.removeEventListener(§;G§.§6"3§,this.§7!%§);
            §&"$§ = null;
            dispatchEvent(new PopupLayerEvent(PopupLayerEvent.CLOSE,§#!;§));
         }
      }
      
      protected function §8!V§(param1:§;G§) : void
      {
         dispatchEvent(new PopupLayerEvent(PopupLayerEvent.§[[§,§#!;§,§&"$§));
      }
      
      protected function §7!%§(param1:§;G§) : void
      {
         var _loc3_:§]r§ = null;
         var _loc2_:Boolean = true;
         if(§&"$§)
         {
            _loc2_ = §&"$§.allowQueue;
            this.§8"3§();
         }
         if(§7!5§.length > 0)
         {
            if(_loc2_)
            {
               _loc3_ = §7!5§.shift();
               this.openPopup(_loc3_);
            }
         }
      }
   }
}
