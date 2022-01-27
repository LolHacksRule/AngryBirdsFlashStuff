package §"_§
{
   import §"!>§.§<!o§;
   import §%"7§.§+"C§;
   import §%"7§.PopupLayerEvent;
   import §;!,§.§"q§;
   import flash.display.MovieClip;
   import flash.events.EventDispatcher;
   import flash.geom.Rectangle;
   
   public class §5S§ extends EventDispatcher implements §!!r§
   {
       
      
      protected var §&#§:MovieClip;
      
      protected var §9!&§:Number;
      
      protected var § !+§:Number;
      
      protected var §>Z§:Vector.<§4!N§>;
      
      private var §4!T§:§<!o§;
      
      private var §+!#§:§"q§;
      
      public function §5S§(param1:MovieClip, param2:§<!o§, param3:§"q§, param4:Number = 960, param5:Number = 560, param6:int = 11)
      {
         super();
         this.§>Z§ = new Vector.<§4!N§>(param6,true);
         this.§4!T§ = param2;
         this.§+!#§ = param3;
         this.§&#§ = param1;
         this.§9!&§ = param4;
         this.§ !+§ = param5;
      }
      
      public function setViewSize(param1:int, param2:int) : void
      {
         var _loc3_:§4!N§ = null;
         this.§9!&§ = param1;
         this.§ !+§ = param2;
         for each(_loc3_ in this.§>Z§)
         {
            if(_loc3_)
            {
               if(_loc3_.isPersistentLayer || _loc3_.index == §&r§.§8">§ || _loc3_.index == §&r§.§1Z§)
               {
                  _loc3_.setViewSize(param1,param2);
               }
            }
         }
      }
      
      public function §^X§() : Boolean
      {
         var _loc1_:§4!N§ = null;
         for each(_loc1_ in this.§>Z§)
         {
            if(_loc1_ && _loc1_.§^X§())
            {
               return true;
            }
         }
         return false;
      }
      
      public function isPopupOpenById(param1:String) : Boolean
      {
         var _loc2_:§4!N§ = null;
         for each(_loc2_ in this.§>Z§)
         {
            if(_loc2_ && _loc2_.isPopupOpenById(param1))
            {
               return true;
            }
         }
         return false;
      }
      
      public function §^"$§(param1:String) : §0"1§
      {
         var _loc2_:§4!N§ = null;
         for each(_loc2_ in this.§>Z§)
         {
            if(_loc2_ && _loc2_.isPopupOpenById(param1))
            {
               return _loc2_.§^"$§(param1);
            }
         }
         return null;
      }
      
      public function addLayer(param1:int, param2:Boolean = true, param3:Rectangle = null, param4:Boolean = false) : §4!N§
      {
         var _loc5_:§4!N§;
         if(_loc5_ = this.§>Z§[param1])
         {
            _loc5_.isPersistentLayer = param4;
            return _loc5_;
         }
         (_loc5_ = this.§>Z§[param1] = new §4!N§(param1,this.§&#§,this.§4!T§,this.§+!#§,param2,param3)).isPersistentLayer = param4;
         _loc5_.addEventListener(PopupLayerEvent.OPEN,this.§2!B§);
         _loc5_.addEventListener(PopupLayerEvent.CLOSE,this.§%#§);
         _loc5_.addEventListener(PopupLayerEvent.§79§,this.§8!H§);
         this.§7!#§();
         return _loc5_;
      }
      
      protected function §,!2§(param1:§4!N§, param2:§4!N§) : int
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
      
      protected function §7!#§() : void
      {
         var _loc2_:§4!N§ = null;
         var _loc1_:Vector.<§4!N§> = this.§>Z§.concat();
         _loc1_.sort(this.§,!2§);
         var _loc3_:int = 0;
         while(_loc3_ < _loc1_.length)
         {
            _loc2_ = _loc1_[_loc3_];
            if(_loc2_)
            {
               _loc2_.§7"0§();
            }
            _loc3_++;
         }
      }
      
      public function setPersistentLayer(param1:int, param2:Boolean) : void
      {
         if(this.§>Z§[param1])
         {
            this.§>Z§[param1].isPersistentLayer = param2;
         }
      }
      
      public function openPopup(param1:§0"1§, param2:Boolean = false, param3:Boolean = false, param4:Boolean = true, param5:Boolean = false) : void
      {
         var _loc6_:§4!N§ = this.§9!R§(param1.§ !o§);
         var _loc7_:§ !x§ = new § !x§(param1,param2,param3,param4);
         if(_loc6_.§7"F§(_loc7_,param5))
         {
            _loc6_.openPopup(_loc7_,param5);
            _loc6_.setViewSize(this.§9!&§,this.§ !+§);
         }
      }
      
      public function §-!>§(param1:String, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:§0"1§;
         if(_loc4_ = this.§^"$§(param1))
         {
            this.closePopup(_loc4_.§ !o§,param2,param3);
         }
      }
      
      public function §=!B§(param1:Boolean = false, param2:Boolean = true) : void
      {
         var _loc3_:§4!N§ = null;
         for each(_loc3_ in this.§>Z§)
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
         var _loc5_:§4!N§ = null;
         var _loc6_:int = 0;
         if(param1 >= 0 && !param4)
         {
            if(_loc5_ = this.§>Z§[param1])
            {
               _loc5_.closePopup(param2,param3);
            }
         }
         else
         {
            _loc6_ = this.§>Z§.length - 1;
            while(_loc6_ >= 0)
            {
               if(_loc5_ = this.§>Z§[_loc6_])
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
      
      protected function §8!H§(param1:PopupLayerEvent) : void
      {
         var _loc2_:§4!N§ = this.§>Z§[param1.§ !o§];
         if(_loc2_)
         {
            _loc2_.closePopup(param1.§`!U§.useTransitionOut,param1.§`!U§.allowQueue);
         }
      }
      
      protected function §%#§(param1:PopupLayerEvent) : void
      {
         if(!this.§^X§())
         {
            dispatchEvent(new §+"C§(§+"C§.CLOSE,null));
         }
      }
      
      protected function §2!B§(param1:PopupLayerEvent) : void
      {
         dispatchEvent(new §+"C§(§+"C§.OPEN,null));
      }
      
      protected function §9!R§(param1:int) : §4!N§
      {
         return this.addLayer(param1);
      }
   }
}
