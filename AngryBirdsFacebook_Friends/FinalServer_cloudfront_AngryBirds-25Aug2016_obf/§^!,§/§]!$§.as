package §^!,§
{
   import §'U§.§]#[§;
   import §1"0§.§4$#§;
   import §1"0§.PopupLayerEvent;
   import §<!'§.§ "6§;
   import flash.display.MovieClip;
   import flash.geom.Rectangle;
   
   public class §]!$§ extends § var§ implements §&Q§
   {
       
      
      public function §]!$§(param1:int, param2:MovieClip, param3:§]#[§, param4:§ "6§, param5:Boolean = true, param6:Rectangle = null)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      override public function openPopup(param1:§+[§, param2:Boolean = false) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(§7#Y§)
         {
            if(§7#Y§.popup.id == param1.popup.id && !param2)
            {
               return;
            }
            _loc3_ = §7#Y§.popup.priority;
            _loc4_ = param1.popup.priority;
            if(§3z§)
            {
               if(_loc4_ < _loc3_)
               {
                  §5$%§.push(param1);
               }
               else if(_loc4_ == §<d§.§8"K§)
               {
                  if(§7#Y§.popup.isTransitioning && !param2)
                  {
                     return;
                  }
                  §5$%§.length = 0;
                  §5$%§.unshift(param1);
                  this.closePopup(this.§-!d§(param1),true);
               }
               else if(_loc4_ == §<d§.TOP)
               {
                  if(§7#Y§.popup.isTransitioning && !param2)
                  {
                     return;
                  }
                  if(param1.§#!2§ == false && param1.useTransitionIn == false && param1.useTransitionOut == false)
                  {
                     §7#Y§.useTransitionIn = false;
                  }
                  §5$%§.unshift(§7#Y§);
                  §5$%§.unshift(param1);
                  this.closePopup(this.§-!d§(param1),true);
               }
               else if(_loc4_ == §<d§.§%^§)
               {
                  if(§7#Y§.popup.isTransitioning && !param2)
                  {
                     return;
                  }
                  if(param1.§#!2§ == false && param1.useTransitionIn == false && param1.useTransitionOut == false)
                  {
                     §7#Y§.useTransitionIn = false;
                  }
                  if(§5$%§.length > 0)
                  {
                     if(§5$%§[0] == §7#Y§)
                     {
                        §5$%§.splice(0,1,param1);
                     }
                     else
                     {
                        §5$%§.unshift(param1);
                     }
                  }
                  else
                  {
                     §5$%§.push(param1);
                  }
                  §5$%§.unshift(§7#Y§);
                  this.closePopup(this.§-!d§(param1),true,false);
               }
               else
               {
                  §5$%§.push(param1);
               }
            }
            else if(_loc4_ >= _loc3_)
            {
               if(§7#Y§.popup.isTransitioning && !param2)
               {
                  return;
               }
               §5$%§.unshift(param1);
               this.closePopup(this.§-!d§(param1),true);
            }
         }
         else
         {
            this.§[!m§(param1);
         }
      }
      
      override public function closePopup(param1:Boolean = false, param2:Boolean = true, param3:Boolean = true) : void
      {
         if(§7#Y§)
         {
            §7#Y§.allowQueue = param2;
            §7#Y§.popup.removeEventListener(§4$#§.CLOSE,this.§#"x§);
            §7#Y§.popup.close(param1,param3);
         }
      }
      
      protected function §-!d§(param1:§+[§) : Boolean
      {
         if(§7#Y§)
         {
            return !!param1.§#!2§ ? Boolean(§7#Y§.useTransitionOut) : Boolean(param1.§#!2§);
         }
         return false;
      }
      
      protected function §[!m§(param1:§+[§) : void
      {
         §7#Y§ = param1;
         §7#Y§.popup.open(§7!j§,§'#w§,§9"h§,§7#Y§.useTransitionIn);
         setViewSize(§1#u§,§1V§);
         §7#Y§.popup.addEventListener(§4$#§.§%#l§,this.§<"l§);
         §7#Y§.popup.addEventListener(§4$#§.CLOSE,this.§#"x§);
         dispatchEvent(new PopupLayerEvent(PopupLayerEvent.OPEN,§]"E§,§7#Y§));
      }
      
      protected function § X§() : void
      {
         var _loc1_:§8!H§ = null;
         if(§7#Y§)
         {
            _loc1_ = §7#Y§.popup;
            _loc1_.removeEventListener(§4$#§.CLOSE,this.§#"x§);
            _loc1_.removeEventListener(§4$#§.§%#l§,this.§<"l§);
            §7#Y§ = null;
            dispatchEvent(new PopupLayerEvent(PopupLayerEvent.CLOSE,§]"E§));
         }
      }
      
      protected function §#"x§(param1:§4$#§) : void
      {
         dispatchEvent(new PopupLayerEvent(PopupLayerEvent.§3$6§,§]"E§,§7#Y§));
      }
      
      protected function §<"l§(param1:§4$#§) : void
      {
         var _loc3_:§+[§ = null;
         var _loc2_:Boolean = true;
         if(§7#Y§)
         {
            _loc2_ = §7#Y§.allowQueue;
            this.§ X§();
         }
         if(§5$%§.length > 0)
         {
            if(_loc2_)
            {
               _loc3_ = §5$%§.shift();
               this.openPopup(_loc3_);
            }
         }
      }
   }
}
