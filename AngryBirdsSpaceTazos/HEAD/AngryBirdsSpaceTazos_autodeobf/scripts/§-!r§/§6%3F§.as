package §-!r§
{
   import §%"%§.§2Z§;
   import §>%§.§ "3§;
   import §>%§.PopupLayerEvent;
   import §@u§.§1"&§;
   import flash.display.MovieClip;
   import flash.events.EventDispatcher;
   import flash.geom.Rectangle;
   
   public class §6?§ extends EventDispatcher implements §=!n§
   {
       
      
      protected var §3!a§:MovieClip;
      
      protected var §?m§:Number;
      
      protected var §4"%§:Number;
      
      protected var §0"-§:Vector.<§@!u§>;
      
      private var § "@§:§2Z§;
      
      private var §3!L§:§1"&§;
      
      public function §6?§(param1:MovieClip, param2:§2Z§, param3:§1"&§, param4:Number = 960, param5:Number = 560, param6:int = 11)
      {
         super();
         this.§0"-§ = new Vector.<§@!u§>(param6,true);
         this.§ "@§ = param2;
         this.§3!L§ = param3;
         this.§3!a§ = param1;
         this.§?m§ = param4;
         this.§4"%§ = param5;
      }
      
      public function setViewSize(param1:int, param2:int) : void
      {
         var _loc3_:§@!u§ = null;
         this.§?m§ = param1;
         this.§4"%§ = param2;
         for each(_loc3_ in this.§0"-§)
         {
            if(_loc3_)
            {
               if(_loc3_.isPersistentLayer || _loc3_.index == §>§.§@t§ || _loc3_.index == §>§.§%!§)
               {
                  _loc3_.setViewSize(param1,param2);
               }
            }
         }
      }
      
      public function §"r§() : Boolean
      {
         var _loc1_:§@!u§ = null;
         for each(_loc1_ in this.§0"-§)
         {
            if(_loc1_ && _loc1_.§"r§())
            {
               return true;
            }
         }
         return false;
      }
      
      public function isPopupOpenById(param1:String) : Boolean
      {
         var _loc2_:§@!u§ = null;
         for each(_loc2_ in this.§0"-§)
         {
            if(_loc2_ && _loc2_.isPopupOpenById(param1))
            {
               return true;
            }
         }
         return false;
      }
      
      public function §`!G§(param1:String) : §+!B§
      {
         var _loc2_:§@!u§ = null;
         for each(_loc2_ in this.§0"-§)
         {
            if(_loc2_ && _loc2_.isPopupOpenById(param1))
            {
               return _loc2_.§`!G§(param1);
            }
         }
         return null;
      }
      
      public function addLayer(param1:int, param2:Boolean = true, param3:Rectangle = null, param4:Boolean = false) : §@!u§
      {
         var _loc5_:§@!u§;
         if(_loc5_ = this.§0"-§[param1])
         {
            _loc5_.isPersistentLayer = param4;
            return _loc5_;
         }
         (_loc5_ = this.§0"-§[param1] = new §@!u§(param1,this.§3!a§,this.§ "@§,this.§3!L§,param2,param3)).isPersistentLayer = param4;
         _loc5_.addEventListener(PopupLayerEvent.OPEN,this.§,x§);
         _loc5_.addEventListener(PopupLayerEvent.CLOSE,this.§;"!§);
         _loc5_.addEventListener(PopupLayerEvent.§+V§,this.§use §);
         this.§8!c§();
         return _loc5_;
      }
      
      protected function §'D§(param1:§@!u§, param2:§@!u§) : int
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
      
      protected function §8!c§() : void
      {
         var _loc2_:§@!u§ = null;
         var _loc1_:Vector.<§@!u§> = this.§0"-§.concat();
         _loc1_.sort(this.§'D§);
         var _loc3_:int = 0;
         while(_loc3_ < _loc1_.length)
         {
            _loc2_ = _loc1_[_loc3_];
            if(_loc2_)
            {
               _loc2_.§4"!§();
            }
            _loc3_++;
         }
      }
      
      public function setPersistentLayer(param1:int, param2:Boolean) : void
      {
         if(this.§0"-§[param1])
         {
            this.§0"-§[param1].isPersistentLayer = param2;
         }
      }
      
      public function openPopup(param1:§+!B§, param2:Boolean = false, param3:Boolean = false, param4:Boolean = true, param5:Boolean = false) : void
      {
         var _loc6_:§@!u§ = this.§7!o§(param1.§[r§);
         var _loc7_:§>!L§ = new §>!L§(param1,param2,param3,param4);
         if(_loc6_.§&G§(_loc7_,param5))
         {
            _loc6_.openPopup(_loc7_,param5);
            _loc6_.setViewSize(this.§?m§,this.§4"%§);
         }
      }
      
      public function §,!N§(param1:String, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:§+!B§;
         if(_loc4_ = this.§`!G§(param1))
         {
            this.closePopup(_loc4_.§[r§,param2,param3);
         }
      }
      
      public function §;!7§(param1:Boolean = false, param2:Boolean = true) : void
      {
         var _loc3_:§@!u§ = null;
         for each(_loc3_ in this.§0"-§)
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
         var _loc5_:§@!u§ = null;
         var _loc6_:int = 0;
         if(param1 >= 0 && !param4)
         {
            if(_loc5_ = this.§0"-§[param1])
            {
               _loc5_.closePopup(param2,param3);
            }
         }
         else
         {
            _loc6_ = this.§0"-§.length - 1;
            while(_loc6_ >= 0)
            {
               if(_loc5_ = this.§0"-§[_loc6_])
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
      
      protected function §use §(param1:PopupLayerEvent) : void
      {
         var _loc2_:§@!u§ = this.§0"-§[param1.§[r§];
         if(_loc2_)
         {
            _loc2_.closePopup(param1.§[!3§.useTransitionOut,param1.§[!3§.allowQueue);
         }
      }
      
      protected function §;"!§(param1:PopupLayerEvent) : void
      {
         if(!this.§"r§())
         {
            dispatchEvent(new § "3§(§ "3§.CLOSE,null));
         }
      }
      
      protected function §,x§(param1:PopupLayerEvent) : void
      {
         dispatchEvent(new § "3§(§ "3§.OPEN,null));
      }
      
      protected function §7!o§(param1:int) : §@!u§
      {
         return this.addLayer(param1);
      }
   }
}
