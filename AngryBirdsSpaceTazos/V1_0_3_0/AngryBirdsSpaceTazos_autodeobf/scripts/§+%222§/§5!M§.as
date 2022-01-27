package §+"2§
{
   import §'!k§.§>!P§;
   import §71§.§;l§;
   import §=!"§.§2"&§;
   import §=!"§.PopupLayerEvent;
   import flash.display.MovieClip;
   import flash.geom.Rectangle;
   
   public class §5!M§ extends §3!5§ implements §5W§
   {
       
      
      public function §5!M§(param1:int, param2:MovieClip, param3:§;l§, param4:§>!P§, param5:Boolean = true, param6:Rectangle = null)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      public function §0"?§(param1:§>!p§, param2:Boolean = false) : Boolean
      {
         if(§29§)
         {
            if(§29§.popup.id == param1.popup.id && !param2)
            {
               return false;
            }
         }
         return true;
      }
      
      override public function openPopup(param1:§>!p§, param2:Boolean = false) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(§29§)
         {
            _loc3_ = §29§.popup.priority;
            _loc4_ = param1.popup.priority;
            if(static)
            {
               if(_loc4_ < _loc3_)
               {
                  §&"4§.push(param1);
               }
               else if(_loc4_ == §`B§.§[s§)
               {
                  if(§29§.popup.isTransitioning && !param2)
                  {
                     return;
                  }
                  §&"4§.length = 0;
                  §&"4§.unshift(param1);
                  this.closePopup(this.§&!K§(param1),true);
               }
               else if(_loc4_ == §`B§.TOP)
               {
                  if(§29§.popup.isTransitioning && !param2)
                  {
                     return;
                  }
                  if(param1.§ !0§ == false && param1.useTransitionIn == false && param1.useTransitionOut == false)
                  {
                     §29§.useTransitionIn = false;
                  }
                  §&"4§.unshift(§29§);
                  §&"4§.unshift(param1);
                  this.closePopup(this.§&!K§(param1),true);
               }
               else
               {
                  §&"4§.push(param1);
               }
            }
            else if(_loc4_ >= _loc3_)
            {
               if(§29§.popup.isTransitioning && !param2)
               {
                  return;
               }
               §&"4§.unshift(param1);
               this.closePopup(this.§&!K§(param1),true);
            }
         }
         else
         {
            this.§2A§(param1);
         }
      }
      
      override public function closePopup(param1:Boolean = false, param2:Boolean = true) : void
      {
         if(§29§)
         {
            §29§.allowQueue = param2;
            §29§.popup.removeEventListener(§2"&§.CLOSE,this.§&+§);
            §29§.popup.close(param1);
         }
      }
      
      protected function §&!K§(param1:§>!p§) : Boolean
      {
         if(§29§)
         {
            return !!param1.§ !0§ ? Boolean(§29§.useTransitionOut) : Boolean(param1.§ !0§);
         }
         return false;
      }
      
      protected function §2A§(param1:§>!p§) : void
      {
         §29§ = param1;
         §29§.popup.open(§ 1§,§3"%§,§1s§,§29§.useTransitionIn);
         setViewSize(§@!,§,§ $§);
         §29§.popup.addEventListener(§2"&§.§6!4§,this.§<!v§);
         §29§.popup.addEventListener(§2"&§.CLOSE,this.§&+§);
         dispatchEvent(new PopupLayerEvent(PopupLayerEvent.OPEN,§=!y§,§29§));
      }
      
      protected function §^! §() : void
      {
         var _loc1_:§<!X§ = null;
         if(§29§)
         {
            _loc1_ = §29§.popup;
            _loc1_.removeEventListener(§2"&§.CLOSE,this.§&+§);
            _loc1_.removeEventListener(§2"&§.§6!4§,this.§<!v§);
            §29§ = null;
            dispatchEvent(new PopupLayerEvent(PopupLayerEvent.CLOSE,§=!y§));
         }
      }
      
      protected function §&+§(param1:§2"&§) : void
      {
         dispatchEvent(new PopupLayerEvent(PopupLayerEvent.§4!r§,§=!y§,§29§));
      }
      
      protected function §<!v§(param1:§2"&§) : void
      {
         var _loc3_:§>!p§ = null;
         var _loc2_:Boolean = true;
         if(§29§)
         {
            _loc2_ = §29§.allowQueue;
            this.§^! §();
         }
         if(§&"4§.length > 0)
         {
            if(_loc2_)
            {
               _loc3_ = §&"4§.shift();
               this.openPopup(_loc3_);
            }
         }
      }
   }
}
