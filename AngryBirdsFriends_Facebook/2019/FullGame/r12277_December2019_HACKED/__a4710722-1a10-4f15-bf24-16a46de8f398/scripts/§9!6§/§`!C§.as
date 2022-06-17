package §9!6§
{
   import § #_§.§?!>§;
   import §&1§.§4""§;
   import §5"l§.§0!b§;
   import §5"l§.PopupLayerEvent;
   import flash.display.MovieClip;
   import flash.geom.Rectangle;
   
   public class §`!C§ extends §8"1§ implements §;"L§
   {
       
      
      public function §`!C§(param1:int, param2:MovieClip, param3:§?!>§, param4:§4""§, param5:Boolean = true, param6:Rectangle = null)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      override public function openPopup(param1:§7#%§, param2:Boolean = false) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(§-$+§)
         {
            if(§-$+§.popup.id == param1.popup.id && !param2)
            {
               return;
            }
            _loc3_ = §-$+§.popup.priority;
            _loc4_ = param1.popup.priority;
            if(§ "e§)
            {
               if(_loc4_ < _loc3_)
               {
                  §6#,§.push(param1);
               }
               else if(_loc4_ == §## §.§<#k§)
               {
                  if(§-$+§.popup.isTransitioning && !param2)
                  {
                     return;
                  }
                  §6#,§.length = 0;
                  §6#,§.unshift(param1);
                  this.closePopup(this.§5?§(param1),true);
               }
               else if(_loc4_ == §## §.TOP)
               {
                  if(§-$+§.popup.isTransitioning && !param2)
                  {
                     return;
                  }
                  if(param1.§9%§ == false && param1.useTransitionIn == false && param1.useTransitionOut == false)
                  {
                     §-$+§.useTransitionIn = false;
                  }
                  §6#,§.unshift(§-$+§);
                  §6#,§.unshift(param1);
                  this.closePopup(this.§5?§(param1),true);
               }
               else if(_loc4_ == §## §.§^!$§)
               {
                  if(§-$+§.popup.isTransitioning && !param2)
                  {
                     return;
                  }
                  if(param1.§9%§ == false && param1.useTransitionIn == false && param1.useTransitionOut == false)
                  {
                     §-$+§.useTransitionIn = false;
                  }
                  if(§6#,§.length > 0)
                  {
                     if(§6#,§[0] == §-$+§)
                     {
                        §6#,§.splice(0,1,param1);
                     }
                     else
                     {
                        §6#,§.unshift(param1);
                     }
                  }
                  else
                  {
                     §6#,§.push(param1);
                  }
                  §6#,§.unshift(§-$+§);
                  this.closePopup(this.§5?§(param1),true,false);
               }
               else
               {
                  §6#,§.push(param1);
               }
            }
            else if(_loc4_ >= _loc3_)
            {
               if(§-$+§.popup.isTransitioning && !param2)
               {
                  return;
               }
               §6#,§.unshift(param1);
               this.closePopup(this.§5?§(param1),true);
            }
         }
         else
         {
            this.§1#[§(param1);
         }
      }
      
      override public function closePopup(param1:Boolean = false, param2:Boolean = true, param3:Boolean = true) : void
      {
         if(§-$+§)
         {
            §-$+§.allowQueue = param2;
            §-$+§.popup.removeEventListener(§0!b§.CLOSE,this.§1#z§);
            §-$+§.popup.close(param1,param3);
         }
      }
      
      protected function §5?§(param1:§7#%§) : Boolean
      {
         if(§-$+§)
         {
            return !!param1.§9%§ ? Boolean(§-$+§.useTransitionOut) : Boolean(param1.§9%§);
         }
         return false;
      }
      
      protected function §1#[§(param1:§7#%§) : void
      {
         §-$+§ = param1;
         §-$+§.popup.open(§'o§,§,#a§,§@!y§,§-$+§.useTransitionIn);
         setViewSize(§;%§,§]"D§);
         §-$+§.popup.addEventListener(§0!b§.§9"5§,this.§<"f§);
         §-$+§.popup.addEventListener(§0!b§.CLOSE,this.§1#z§);
         dispatchEvent(new PopupLayerEvent(PopupLayerEvent.OPEN,§4!B§,§-$+§));
      }
      
      protected function § !P§() : void
      {
         var _loc1_:§?!y§ = null;
         if(§-$+§)
         {
            _loc1_ = §-$+§.popup;
            _loc1_.removeEventListener(§0!b§.CLOSE,this.§1#z§);
            _loc1_.removeEventListener(§0!b§.§9"5§,this.§<"f§);
            §-$+§ = null;
            dispatchEvent(new PopupLayerEvent(PopupLayerEvent.CLOSE,§4!B§));
         }
      }
      
      protected function §1#z§(param1:§0!b§) : void
      {
         dispatchEvent(new PopupLayerEvent(PopupLayerEvent.§7G§,§4!B§,§-$+§));
      }
      
      protected function §<"f§(param1:§0!b§) : void
      {
         var _loc3_:§7#%§ = null;
         var _loc2_:Boolean = true;
         if(§-$+§)
         {
            _loc2_ = §-$+§.allowQueue;
            this.§ !P§();
         }
         if(§6#,§.length > 0)
         {
            if(_loc2_)
            {
               _loc3_ = §6#,§.shift();
               this.openPopup(_loc3_);
            }
         }
      }
   }
}
