package §5u§
{
   import § ,§.§>u§;
   import §3"!§.§&U§;
   import §3"!§.PopupLayerEvent;
   import §6!^§.§1!7§;
   import flash.display.MovieClip;
   import flash.events.EventDispatcher;
   import flash.geom.Rectangle;
   
   public class §!!v§ extends EventDispatcher implements §4!m§
   {
       
      
      protected var §[!<§:MovieClip;
      
      protected var §;!;§:Number;
      
      protected var §36§:Number;
      
      protected var §<G§:Vector.<§]m§>;
      
      private var §2e§:§>u§;
      
      private var §&X§:§1!7§;
      
      public function §!!v§(param1:MovieClip, param2:§>u§, param3:§1!7§, param4:Number = 960, param5:Number = 560, param6:int = 11)
      {
         super();
         this.§<G§ = new Vector.<§]m§>(param6,true);
         this.§2e§ = param2;
         this.§&X§ = param3;
         this.§[!<§ = param1;
         this.§;!;§ = param4;
         this.§36§ = param5;
      }
      
      public function setViewSize(param1:int, param2:int) : void
      {
         var _loc3_:§]m§ = null;
         this.§;!;§ = param1;
         this.§36§ = param2;
         for each(_loc3_ in this.§<G§)
         {
            if(_loc3_)
            {
               _loc3_.setViewSize(param1,param2);
            }
         }
      }
      
      public function §+!F§() : Boolean
      {
         var _loc1_:§]m§ = null;
         for each(_loc1_ in this.§<G§)
         {
            if(_loc1_ && _loc1_.§+!F§())
            {
               return true;
            }
         }
         return false;
      }
      
      public function isPopupOpenById(param1:String) : Boolean
      {
         var _loc2_:§]m§ = null;
         for each(_loc2_ in this.§<G§)
         {
            if(_loc2_ && _loc2_.isPopupOpenById(param1))
            {
               return true;
            }
         }
         return false;
      }
      
      public function §#!I§(param1:String) : Boolean
      {
         var _loc2_:§]m§ = null;
         for each(_loc2_ in this.§<G§)
         {
            if(_loc2_ && _loc2_.§#!I§(param1))
            {
               return true;
            }
         }
         return false;
      }
      
      public function §5,§(param1:String) : §<!k§
      {
         var _loc2_:§]m§ = null;
         for each(_loc2_ in this.§<G§)
         {
            if(_loc2_ && _loc2_.isPopupOpenById(param1))
            {
               return _loc2_.§5,§(param1);
            }
         }
         return null;
      }
      
      public function addLayer(param1:int, param2:Boolean = true, param3:Rectangle = null, param4:Boolean = false) : §]m§
      {
         var _loc5_:§]m§;
         if(_loc5_ = this.§<G§[param1])
         {
            _loc5_.isPersistentLayer = param4;
            return _loc5_;
         }
         (_loc5_ = this.§<G§[param1] = new §]m§(param1,this.§[!<§,this.§2e§,this.§&X§,param2,param3)).isPersistentLayer = param4;
         _loc5_.addEventListener(PopupLayerEvent.OPEN,this.§-§);
         _loc5_.addEventListener(PopupLayerEvent.CLOSE,this.§<z§);
         _loc5_.addEventListener(PopupLayerEvent.§<!§,this.§1w§);
         this.§]6§();
         return _loc5_;
      }
      
      protected function §"!V§(param1:§]m§, param2:§]m§) : int
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
      
      protected function §]6§() : void
      {
         var _loc2_:§]m§ = null;
         var _loc1_:Vector.<§]m§> = this.§<G§.concat();
         _loc1_.sort(this.§"!V§);
         var _loc3_:int = 0;
         while(_loc3_ < _loc1_.length)
         {
            _loc2_ = _loc1_[_loc3_];
            if(_loc2_)
            {
               _loc2_.§9L§();
            }
            _loc3_++;
         }
      }
      
      public function setPersistentLayer(param1:int, param2:Boolean) : void
      {
         if(this.§<G§[param1])
         {
            this.§<G§[param1].isPersistentLayer = param2;
         }
      }
      
      public function openPopup(param1:§<!k§, param2:Boolean = false, param3:Boolean = false, param4:Boolean = true, param5:Boolean = false) : void
      {
         var _loc6_:§]m§ = this.§0"&§(param1.§`'§);
         var _loc7_:§ z§ = new § z§(param1,param2,param3,param4);
         _loc6_.openPopup(_loc7_,param5);
         this.setViewSize(this.§;!;§,this.§36§);
      }
      
      public function §`!w§(param1:String, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:§<!k§;
         if(_loc4_ = this.§5,§(param1))
         {
            this.closePopup(_loc4_.§`'§,param2,param3);
         }
      }
      
      public function closeAllPopups(param1:Boolean = false, param2:Boolean = true) : void
      {
         var _loc3_:§]m§ = null;
         for each(_loc3_ in this.§<G§)
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
         var _loc5_:§]m§ = null;
         var _loc6_:int = 0;
         if(param1 >= 0 && !param4)
         {
            if(_loc5_ = this.§<G§[param1])
            {
               _loc5_.closePopup(param2,param3);
            }
         }
         else
         {
            _loc6_ = this.§<G§.length - 1;
            while(_loc6_ >= 0)
            {
               if(_loc5_ = this.§<G§[_loc6_])
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
      
      protected function §1w§(param1:PopupLayerEvent) : void
      {
         var _loc2_:§]m§ = this.§<G§[param1.§`'§];
         if(_loc2_)
         {
            _loc2_.closePopup(param1.§"t§.useTransitionOut,param1.§"t§.allowQueue);
         }
      }
      
      protected function §<z§(param1:PopupLayerEvent) : void
      {
         if(!this.§+!F§())
         {
            dispatchEvent(new §&U§(§&U§.CLOSE,null));
         }
      }
      
      protected function §-§(param1:PopupLayerEvent) : void
      {
         dispatchEvent(new §&U§(§&U§.OPEN,null));
      }
      
      protected function §0"&§(param1:int) : §]m§
      {
         return this.addLayer(param1);
      }
   }
}
