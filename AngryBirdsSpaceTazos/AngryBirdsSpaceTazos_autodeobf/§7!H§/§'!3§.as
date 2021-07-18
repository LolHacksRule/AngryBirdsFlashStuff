package §7!H§
{
   import §#!b§.§'y§;
   import §%!r§.§3!'§;
   import §^r§.§@!T§;
   import §^r§.PopupLayerEvent;
   import flash.display.MovieClip;
   import flash.geom.Rectangle;
   
   public class §'!3§ extends §]!P§ implements §&!k§
   {
       
      
      public function §'!3§(param1:int, param2:MovieClip, param3:§3!'§, param4:§'y§, param5:Boolean = true, param6:Rectangle = null)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      public function §<! §(param1:§'"H§, param2:Boolean = false) : Boolean
      {
         if(§'!s§)
         {
            if(§'!s§.popup.id == param1.popup.id && !param2)
            {
               return false;
            }
         }
         return true;
      }
      
      override public function openPopup(param1:§'"H§, param2:Boolean = false) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(§'!s§)
         {
            _loc3_ = §'!s§.popup.priority;
            _loc4_ = param1.popup.priority;
            if(§6!%§)
            {
               if(_loc4_ < _loc3_)
               {
                  §null §.push(param1);
               }
               else if(_loc4_ == §8"6§.§8p§)
               {
                  if(§'!s§.popup.isTransitioning && !param2)
                  {
                     return;
                  }
                  §null §.length = 0;
                  §null §.unshift(param1);
                  this.closePopup(this.§5z§(param1),true);
               }
               else if(_loc4_ == §8"6§.TOP)
               {
                  if(§'!s§.popup.isTransitioning && !param2)
                  {
                     return;
                  }
                  if(param1.§&!G§ == false && param1.useTransitionIn == false && param1.useTransitionOut == false)
                  {
                     §'!s§.useTransitionIn = false;
                  }
                  §null §.unshift(§'!s§);
                  §null §.unshift(param1);
                  this.closePopup(this.§5z§(param1),true);
               }
               else
               {
                  §null §.push(param1);
               }
            }
            else if(_loc4_ >= _loc3_)
            {
               if(§'!s§.popup.isTransitioning && !param2)
               {
                  return;
               }
               §null §.unshift(param1);
               this.closePopup(this.§5z§(param1),true);
            }
         }
         else
         {
            this.§@$§(param1);
         }
      }
      
      override public function closePopup(param1:Boolean = false, param2:Boolean = true) : void
      {
         if(§'!s§)
         {
            §'!s§.allowQueue = param2;
            §'!s§.popup.removeEventListener(§@!T§.CLOSE,this.§6'§);
            §'!s§.popup.close(param1);
         }
      }
      
      protected function §5z§(param1:§'"H§) : Boolean
      {
         if(§'!s§)
         {
            return !!param1.§&!G§ ? Boolean(§'!s§.useTransitionOut) : Boolean(param1.§&!G§);
         }
         return false;
      }
      
      protected function §@$§(param1:§'"H§) : void
      {
         §'!s§ = param1;
         §'!s§.popup.open(§[S§,§7Z§,§3!+§,§'!s§.useTransitionIn);
         setViewSize(§ !%§,§=D§);
         §'!s§.popup.addEventListener(§@!T§.§7!l§,this.§<8§);
         §'!s§.popup.addEventListener(§@!T§.CLOSE,this.§6'§);
         dispatchEvent(new PopupLayerEvent(PopupLayerEvent.OPEN,§?"<§,§'!s§));
      }
      
      protected function §!3§() : void
      {
         var _loc1_:§3z§ = null;
         if(§'!s§)
         {
            _loc1_ = §'!s§.popup;
            _loc1_.removeEventListener(§@!T§.CLOSE,this.§6'§);
            _loc1_.removeEventListener(§@!T§.§7!l§,this.§<8§);
            §'!s§ = null;
            dispatchEvent(new PopupLayerEvent(PopupLayerEvent.CLOSE,§?"<§));
         }
      }
      
      protected function §6'§(param1:§@!T§) : void
      {
         dispatchEvent(new PopupLayerEvent(PopupLayerEvent.§^!I§,§?"<§,§'!s§));
      }
      
      protected function §<8§(param1:§@!T§) : void
      {
         var _loc3_:§'"H§ = null;
         var _loc2_:Boolean = true;
         if(§'!s§)
         {
            _loc2_ = §'!s§.allowQueue;
            this.§!3§();
         }
         if(§null §.length > 0)
         {
            if(_loc2_)
            {
               _loc3_ = §null §.shift();
               this.openPopup(_loc3_);
            }
         }
      }
   }
}
