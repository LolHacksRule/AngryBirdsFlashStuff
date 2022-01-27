package §+"2§
{
   import §'!k§.§>!P§;
   import §71§.§;l§;
   import §=!"§.§2"&§;
   import §=!"§.PopupLayerEvent;
   import flash.display.MovieClip;
   import flash.events.EventDispatcher;
   import flash.geom.Rectangle;
   
   public class §%!A§ extends EventDispatcher implements §-"F§
   {
       
      
      protected var § 1§:MovieClip;
      
      protected var §@!,§:Number;
      
      protected var § $§:Number;
      
      protected var §,!y§:Vector.<§5!M§>;
      
      private var §3"%§:§;l§;
      
      private var §1s§:§>!P§;
      
      public function §%!A§(param1:MovieClip, param2:§;l§, param3:§>!P§, param4:Number = 960, param5:Number = 560, param6:int = 11)
      {
         super();
         this.§,!y§ = new Vector.<§5!M§>(param6,true);
         this.§3"%§ = param2;
         this.§1s§ = param3;
         this.§ 1§ = param1;
         this.§@!,§ = param4;
         this.§ $§ = param5;
      }
      
      public function setViewSize(param1:int, param2:int) : void
      {
         var _loc3_:§5!M§ = null;
         this.§@!,§ = param1;
         this.§ $§ = param2;
         for each(_loc3_ in this.§,!y§)
         {
            if(_loc3_)
            {
               if(_loc3_.isPersistentLayer || _loc3_.index == §?d§.§1!Q§ || _loc3_.index == §?d§.§'I§)
               {
                  _loc3_.setViewSize(param1,param2);
               }
            }
         }
      }
      
      public function §["5§() : Boolean
      {
         var _loc1_:§5!M§ = null;
         for each(_loc1_ in this.§,!y§)
         {
            if(_loc1_ && _loc1_.§["5§())
            {
               return true;
            }
         }
         return false;
      }
      
      public function isPopupOpenById(param1:String) : Boolean
      {
         var _loc2_:§5!M§ = null;
         for each(_loc2_ in this.§,!y§)
         {
            if(_loc2_ && _loc2_.isPopupOpenById(param1))
            {
               return true;
            }
         }
         return false;
      }
      
      public function §2p§(param1:String) : §<!X§
      {
         var _loc2_:§5!M§ = null;
         for each(_loc2_ in this.§,!y§)
         {
            if(_loc2_ && _loc2_.isPopupOpenById(param1))
            {
               return _loc2_.§2p§(param1);
            }
         }
         return null;
      }
      
      public function addLayer(param1:int, param2:Boolean = true, param3:Rectangle = null, param4:Boolean = false) : §5!M§
      {
         var _loc5_:§5!M§;
         if(_loc5_ = this.§,!y§[param1])
         {
            _loc5_.isPersistentLayer = param4;
            return _loc5_;
         }
         (_loc5_ = this.§,!y§[param1] = new §5!M§(param1,this.§ 1§,this.§3"%§,this.§1s§,param2,param3)).isPersistentLayer = param4;
         _loc5_.addEventListener(PopupLayerEvent.OPEN,this.§#!i§);
         _loc5_.addEventListener(PopupLayerEvent.CLOSE,this.§<"7§);
         _loc5_.addEventListener(PopupLayerEvent.§4!r§,this.§&+§);
         this.§],§();
         return _loc5_;
      }
      
      protected function §9e§(param1:§5!M§, param2:§5!M§) : int
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
      
      protected function §],§() : void
      {
         var _loc2_:§5!M§ = null;
         var _loc1_:Vector.<§5!M§> = this.§,!y§.concat();
         _loc1_.sort(this.§9e§);
         var _loc3_:int = 0;
         while(_loc3_ < _loc1_.length)
         {
            _loc2_ = _loc1_[_loc3_];
            if(_loc2_)
            {
               _loc2_.§""6§();
            }
            _loc3_++;
         }
      }
      
      public function setPersistentLayer(param1:int, param2:Boolean) : void
      {
         if(this.§,!y§[param1])
         {
            this.§,!y§[param1].isPersistentLayer = param2;
         }
      }
      
      public function openPopup(param1:§<!X§, param2:Boolean = false, param3:Boolean = false, param4:Boolean = true, param5:Boolean = false) : void
      {
         var _loc6_:§5!M§ = this.§0!3§(param1.§#N§);
         var _loc7_:§>!p§ = new §>!p§(param1,param2,param3,param4);
         if(_loc6_.§0"?§(_loc7_,param5))
         {
            _loc6_.openPopup(_loc7_,param5);
            _loc6_.setViewSize(this.§@!,§,this.§ $§);
         }
      }
      
      public function §+!$§(param1:String, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:§<!X§;
         if(_loc4_ = this.§2p§(param1))
         {
            this.closePopup(_loc4_.§#N§,param2,param3);
         }
      }
      
      public function §`x§(param1:Boolean = false, param2:Boolean = true) : void
      {
         var _loc3_:§5!M§ = null;
         for each(_loc3_ in this.§,!y§)
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
         var _loc5_:§5!M§ = null;
         var _loc6_:int = 0;
         if(param1 >= 0 && !param4)
         {
            if(_loc5_ = this.§,!y§[param1])
            {
               _loc5_.closePopup(param2,param3);
            }
         }
         else
         {
            _loc6_ = this.§,!y§.length - 1;
            while(_loc6_ >= 0)
            {
               if(_loc5_ = this.§,!y§[_loc6_])
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
      
      protected function §&+§(param1:PopupLayerEvent) : void
      {
         var _loc2_:§5!M§ = this.§,!y§[param1.§#N§];
         if(_loc2_)
         {
            _loc2_.closePopup(param1.§6!d§.useTransitionOut,param1.§6!d§.allowQueue);
         }
      }
      
      protected function §<"7§(param1:PopupLayerEvent) : void
      {
         if(!this.§["5§())
         {
            dispatchEvent(new §2"&§(§2"&§.CLOSE,null));
         }
      }
      
      protected function §#!i§(param1:PopupLayerEvent) : void
      {
         dispatchEvent(new §2"&§(§2"&§.OPEN,null));
      }
      
      protected function §0!3§(param1:int) : §5!M§
      {
         return this.addLayer(param1);
      }
   }
}
