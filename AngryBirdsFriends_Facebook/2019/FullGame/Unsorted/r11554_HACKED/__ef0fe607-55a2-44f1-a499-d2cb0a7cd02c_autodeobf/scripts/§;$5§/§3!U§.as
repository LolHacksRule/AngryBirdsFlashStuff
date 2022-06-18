package §;$5§
{
   import §3"G§.§16§;
   import §8#?§.§?#;§;
   import §;w§.§5"_§;
   import §;w§.PopupLayerEvent;
   import flash.display.MovieClip;
   import flash.geom.Rectangle;
   
   public class §3!U§ extends §;!Z§ implements §<!s§
   {
       
      
      public function §3!U§(param1:int, param2:MovieClip, param3:§16§, param4:§?#;§, param5:Boolean = true, param6:Rectangle = null)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      override public function openPopup(param1:§##q§, param2:Boolean = false) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(§0#j§)
         {
            if(§0#j§.popup.id == param1.popup.id && !param2)
            {
               return;
            }
            _loc3_ = §0#j§.popup.priority;
            _loc4_ = param1.popup.priority;
            if(§>[§)
            {
               if(_loc4_ < _loc3_)
               {
                  §=#[§.push(param1);
               }
               else if(_loc4_ == §9#5§.§;!!§)
               {
                  if(§0#j§.popup.isTransitioning && !param2)
                  {
                     return;
                  }
                  §=#[§.length = 0;
                  §=#[§.unshift(param1);
                  this.closePopup(this.§8"0§(param1),true);
               }
               else if(_loc4_ == §9#5§.TOP)
               {
                  if(§0#j§.popup.isTransitioning && !param2)
                  {
                     return;
                  }
                  if(param1.§&$B§ == false && param1.useTransitionIn == false && param1.useTransitionOut == false)
                  {
                     §0#j§.useTransitionIn = false;
                  }
                  §=#[§.unshift(§0#j§);
                  §=#[§.unshift(param1);
                  this.closePopup(this.§8"0§(param1),true);
               }
               else if(_loc4_ == §9#5§.§%"H§)
               {
                  if(§0#j§.popup.isTransitioning && !param2)
                  {
                     return;
                  }
                  if(param1.§&$B§ == false && param1.useTransitionIn == false && param1.useTransitionOut == false)
                  {
                     §0#j§.useTransitionIn = false;
                  }
                  if(§=#[§.length > 0)
                  {
                     if(§=#[§[0] == §0#j§)
                     {
                        §=#[§.splice(0,1,param1);
                     }
                     else
                     {
                        §=#[§.unshift(param1);
                     }
                  }
                  else
                  {
                     §=#[§.push(param1);
                  }
                  §=#[§.unshift(§0#j§);
                  this.closePopup(this.§8"0§(param1),true,false);
               }
               else
               {
                  §=#[§.push(param1);
               }
            }
            else if(_loc4_ >= _loc3_)
            {
               if(§0#j§.popup.isTransitioning && !param2)
               {
                  return;
               }
               §=#[§.unshift(param1);
               this.closePopup(this.§8"0§(param1),true);
            }
         }
         else
         {
            this.§6"'§(param1);
         }
      }
      
      override public function closePopup(param1:Boolean = false, param2:Boolean = true, param3:Boolean = true) : void
      {
         if(§0#j§)
         {
            §0#j§.allowQueue = param2;
            §0#j§.popup.removeEventListener(§5"_§.CLOSE,this.§&#Z§);
            §0#j§.popup.close(param1,param3);
         }
      }
      
      protected function §8"0§(param1:§##q§) : Boolean
      {
         if(§0#j§)
         {
            return !!param1.§&$B§ ? Boolean(§0#j§.useTransitionOut) : Boolean(param1.§&$B§);
         }
         return false;
      }
      
      protected function §6"'§(param1:§##q§) : void
      {
         §0#j§ = param1;
         §0#j§.popup.open(§8#Y§,§1#@§,§<"u§,§0#j§.useTransitionIn);
         setViewSize(§="G§,§7!@§);
         §0#j§.popup.addEventListener(§5"_§.§4+§,this.§=W§);
         §0#j§.popup.addEventListener(§5"_§.CLOSE,this.§&#Z§);
         dispatchEvent(new PopupLayerEvent(PopupLayerEvent.OPEN,§%3§,§0#j§));
      }
      
      protected function §-]§() : void
      {
         var _loc1_:§@#G§ = null;
         if(§0#j§)
         {
            _loc1_ = §0#j§.popup;
            _loc1_.removeEventListener(§5"_§.CLOSE,this.§&#Z§);
            _loc1_.removeEventListener(§5"_§.§4+§,this.§=W§);
            §0#j§ = null;
            dispatchEvent(new PopupLayerEvent(PopupLayerEvent.CLOSE,§%3§));
         }
      }
      
      protected function §&#Z§(param1:§5"_§) : void
      {
         dispatchEvent(new PopupLayerEvent(PopupLayerEvent.§'"§,§%3§,§0#j§));
      }
      
      protected function §=W§(param1:§5"_§) : void
      {
         var _loc3_:§##q§ = null;
         var _loc2_:Boolean = true;
         if(§0#j§)
         {
            _loc2_ = §0#j§.allowQueue;
            this.§-]§();
         }
         if(§=#[§.length > 0)
         {
            if(_loc2_)
            {
               _loc3_ = §=#[§.shift();
               this.openPopup(_loc3_);
            }
         }
      }
   }
}
