package §[<§
{
   import §7-§.§8!v§;
   import §7-§.PopupLayerEvent;
   import §<R§.§!@§;
   import §]!d§.§-!<§;
   import flash.display.MovieClip;
   import flash.events.EventDispatcher;
   import flash.geom.Rectangle;
   
   public class §'!P§ extends EventDispatcher implements §5t§
   {
       
      
      protected var §#t§:MovieClip;
      
      protected var §=!W§:Number;
      
      protected var §,"2§:Number;
      
      protected var §[!J§:Vector.<§,H§>;
      
      private var §@d§:§-!<§;
      
      private var §6R§:§!@§;
      
      public function §'!P§(param1:MovieClip, param2:§-!<§, param3:§!@§, param4:Number = 960, param5:Number = 560, param6:int = 11)
      {
         super();
         this.§[!J§ = new Vector.<§,H§>(param6,true);
         this.§@d§ = param2;
         this.§6R§ = param3;
         this.§#t§ = param1;
         this.§=!W§ = param4;
         this.§,"2§ = param5;
      }
      
      public function setViewSize(param1:int, param2:int) : void
      {
         var _loc3_:§,H§ = null;
         this.§=!W§ = param1;
         this.§,"2§ = param2;
         for each(_loc3_ in this.§[!J§)
         {
            if(_loc3_)
            {
               _loc3_.setViewSize(param1,param2);
            }
         }
      }
      
      public function §1s§() : Boolean
      {
         var _loc1_:§,H§ = null;
         for each(_loc1_ in this.§[!J§)
         {
            if(_loc1_ && _loc1_.§1s§())
            {
               return true;
            }
         }
         return false;
      }
      
      public function isPopupOpenById(param1:String) : Boolean
      {
         var _loc2_:§,H§ = null;
         for each(_loc2_ in this.§[!J§)
         {
            if(_loc2_ && _loc2_.isPopupOpenById(param1))
            {
               return true;
            }
         }
         return false;
      }
      
      public function §+!1§(param1:String) : Boolean
      {
         var _loc2_:§,H§ = null;
         for each(_loc2_ in this.§[!J§)
         {
            if(_loc2_ && _loc2_.§+!1§(param1))
            {
               return true;
            }
         }
         return false;
      }
      
      public function §-!8§(param1:String) : §]!R§
      {
         var _loc2_:§,H§ = null;
         for each(_loc2_ in this.§[!J§)
         {
            if(_loc2_ && _loc2_.isPopupOpenById(param1))
            {
               return _loc2_.§-!8§(param1);
            }
         }
         return null;
      }
      
      public function addLayer(param1:int, param2:Boolean = true, param3:Rectangle = null, param4:Boolean = false) : §,H§
      {
         var _loc5_:§,H§;
         if(_loc5_ = this.§[!J§[param1])
         {
            _loc5_.isPersistentLayer = param4;
            return _loc5_;
         }
         (_loc5_ = this.§[!J§[param1] = new §,H§(param1,this.§#t§,this.§@d§,this.§6R§,param2,param3)).isPersistentLayer = param4;
         _loc5_.addEventListener(PopupLayerEvent.OPEN,this.§4!&§);
         _loc5_.addEventListener(PopupLayerEvent.CLOSE,this.§6!u§);
         _loc5_.addEventListener(PopupLayerEvent.§ ;§,this.§'&§);
         this.§]!J§();
         return _loc5_;
      }
      
      protected function §,!I§(param1:§,H§, param2:§,H§) : int
      {
         if(param2 == null)
         {
            return -1;
         }
         if(param1 == null)
         {
            return 1;
         }
         return param1.index - param2.index;
      }
      
      protected function §]!J§() : void
      {
         var _loc2_:§,H§ = null;
         var _loc1_:Vector.<§,H§> = this.§[!J§.concat();
         _loc1_.sort(this.§,!I§);
         var _loc3_:int = 0;
         while(_loc3_ < _loc1_.length)
         {
            _loc2_ = _loc1_[_loc3_];
            if(_loc2_)
            {
               _loc2_.§?f§();
            }
            _loc3_++;
         }
      }
      
      public function setPersistentLayer(param1:int, param2:Boolean) : void
      {
         if(this.§[!J§[param1])
         {
            this.§[!J§[param1].isPersistentLayer = param2;
         }
      }
      
      public function openPopup(param1:§]!R§, param2:Boolean = false, param3:Boolean = false, param4:Boolean = true, param5:Boolean = false) : void
      {
         var _loc6_:§,H§ = this.§+!g§(param1.§<>§);
         var _loc7_:§=T§ = new §=T§(param1,param2,param3,param4);
         _loc6_.openPopup(_loc7_,param5);
         this.setViewSize(this.§=!W§,this.§,"2§);
      }
      
      public function §0!8§(param1:String, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:§]!R§;
         if(_loc4_ = this.§-!8§(param1))
         {
            this.closePopup(_loc4_.§<>§,param2,param3);
         }
      }
      
      public function closeAllPopups(param1:Boolean = false, param2:Boolean = true) : void
      {
         var _loc3_:§,H§ = null;
         for each(_loc3_ in this.§[!J§)
         {
            if(_loc3_)
            {
               if(!_loc3_.isPersistentLayer)
               {
                  _loc3_.closePopup(param1,param2);
               }
            }
         }
      }
      
      public function closePopup(param1:int = -1, param2:Boolean = false, param3:Boolean = true, param4:Boolean = false) : void
      {
         var _loc5_:§,H§ = null;
         var _loc6_:int = 0;
         if(param1 >= 0 && !param4)
         {
            if(_loc5_ = this.§[!J§[param1])
            {
               _loc5_.closePopup(param2,param3);
            }
         }
         else
         {
            _loc6_ = this.§[!J§.length - 1;
            while(_loc6_ >= 0)
            {
               if(_loc5_ = this.§[!J§[_loc6_])
               {
                  if(!param4)
                  {
                     _loc5_.closePopup(param2,param3);
                     return;
                  }
                  _loc5_.closePopup(param2,false);
               }
               _loc6_--;
            }
         }
      }
      
      protected function §'&§(param1:PopupLayerEvent) : void
      {
         var _loc2_:§,H§ = this.§[!J§[param1.§<>§];
         if(_loc2_)
         {
            _loc2_.closePopup(param1.§?U§.useTransitionOut,param1.§?U§.allowQueue);
         }
      }
      
      protected function §6!u§(param1:PopupLayerEvent) : void
      {
         if(!this.§1s§())
         {
            dispatchEvent(new §8!v§(§8!v§.CLOSE,null));
         }
      }
      
      protected function §4!&§(param1:PopupLayerEvent) : void
      {
         dispatchEvent(new §8!v§(§8!v§.OPEN,null));
      }
      
      protected function §+!g§(param1:int) : §,H§
      {
         return this.addLayer(param1);
      }
   }
}
