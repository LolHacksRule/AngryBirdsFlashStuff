package §0!s§
{
   import § !j§.§4#c§;
   import §&m§.§#U§;
   import §'M§.§"Z§;
   import §'M§.PopupLayerEvent;
   import flash.display.MovieClip;
   import flash.events.EventDispatcher;
   import flash.geom.Rectangle;
   
   public class §]!%§ extends EventDispatcher implements §6!e§
   {
       
      
      protected var §&!M§:MovieClip;
      
      protected var §[z§:Number;
      
      protected var §`#9§:Number;
      
      protected var §<!u§:Vector.<§@2§>;
      
      protected var §+" §:§4#c§;
      
      protected var §0"L§:§#U§;
      
      public function §]!%§(param1:MovieClip, param2:§4#c§, param3:§#U§, param4:Number = 960, param5:Number = 560, param6:int = 11)
      {
         super();
         this.§<!u§ = new Vector.<§@2§>(param6,true);
         this.§+" § = param2;
         this.§0"L§ = param3;
         this.§&!M§ = param1;
         this.§[z§ = param4;
         this.§`#9§ = param5;
      }
      
      public function setViewSize(param1:int, param2:int) : void
      {
         var _loc3_:§@2§ = null;
         this.§[z§ = param1;
         this.§`#9§ = param2;
         for each(_loc3_ in this.§<!u§)
         {
            if(_loc3_)
            {
               _loc3_.setViewSize(param1,param2);
            }
         }
      }
      
      public function §?"N§() : Boolean
      {
         var _loc1_:§@2§ = null;
         for each(_loc1_ in this.§<!u§)
         {
            if(_loc1_ && _loc1_.§?"N§())
            {
               return true;
            }
         }
         return false;
      }
      
      public function isPopupOpenById(param1:String) : Boolean
      {
         var _loc2_:§@2§ = null;
         for each(_loc2_ in this.§<!u§)
         {
            if(_loc2_ && _loc2_.isPopupOpenById(param1))
            {
               return true;
            }
         }
         return false;
      }
      
      public function isPopupInQueueById(param1:String) : Boolean
      {
         var _loc2_:§@2§ = null;
         for each(_loc2_ in this.§<!u§)
         {
            if(_loc2_ && _loc2_.isPopupInQueueById(param1))
            {
               return true;
            }
         }
         return false;
      }
      
      public function getOpenPopupById(param1:String) : §5!-§
      {
         var _loc2_:§@2§ = null;
         for each(_loc2_ in this.§<!u§)
         {
            if(_loc2_ && _loc2_.isPopupOpenById(param1))
            {
               return _loc2_.getOpenPopupById(param1);
            }
         }
         return null;
      }
      
      public function addLayer(param1:int, param2:Boolean = true, param3:Rectangle = null, param4:Boolean = false) : §@2§
      {
         var _loc5_:§@2§;
         if(_loc5_ = this.§<!u§[param1])
         {
            _loc5_.isPersistentLayer = param4;
            return _loc5_;
         }
         (_loc5_ = this.§<!u§[param1] = this.§@$1§(param1,param2,param3,param4)).addEventListener(PopupLayerEvent.OPEN,this.§;!G§);
         _loc5_.addEventListener(PopupLayerEvent.CLOSE,this.§8!n§);
         _loc5_.addEventListener(PopupLayerEvent.§&!u§,this.§%"s§);
         this.§@"k§();
         return _loc5_;
      }
      
      protected function §@$1§(param1:int, param2:Boolean, param3:Rectangle, param4:Boolean) : §@2§
      {
         var _loc5_:§@2§;
         (_loc5_ = new §@2§(param1,this.§&!M§,this.§+" §,this.§0"L§,param2,param3)).isPersistentLayer = param4;
         return _loc5_;
      }
      
      protected function §@$@§(param1:§@2§, param2:§@2§) : int
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
      
      protected function §@"k§() : void
      {
         var _loc2_:§@2§ = null;
         var _loc1_:Vector.<§@2§> = this.§<!u§.concat();
         _loc1_.sort(this.§@$@§);
         var _loc3_:int = 0;
         while(_loc3_ < _loc1_.length)
         {
            _loc2_ = _loc1_[_loc3_];
            if(_loc2_)
            {
               _loc2_.§%^§();
            }
            _loc3_++;
         }
      }
      
      public function §3"%§(param1:int, param2:Boolean) : void
      {
         if(this.§<!u§[param1])
         {
            this.§<!u§[param1].isPersistentLayer = param2;
         }
      }
      
      public function openPopup(param1:§5!-§, param2:Boolean = false, param3:Boolean = false, param4:Boolean = true, param5:Boolean = false) : void
      {
         var _loc6_:§@2§ = this.§8_§(param1.§^#l§);
         var _loc7_:§9"r§ = new §9"r§(param1,param2,param3,param4);
         _loc6_.openPopup(_loc7_,param5);
         this.setViewSize(this.§[z§,this.§`#9§);
      }
      
      public function §7$9§(param1:String, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:§5!-§;
         if(_loc4_ = this.getOpenPopupById(param1))
         {
            this.closePopup(_loc4_.§^#l§,param2,param3);
         }
      }
      
      public function §`J§(param1:Boolean = false, param2:Boolean = true) : void
      {
         var _loc3_:§@2§ = null;
         for each(_loc3_ in this.§<!u§)
         {
            if(_loc3_)
            {
               if(!_loc3_.isPersistentLayer)
               {
                  this.§%#0§(_loc3_,param1,param2);
               }
            }
         }
      }
      
      protected function §%#0§(param1:§@2§, param2:Boolean, param3:Boolean) : void
      {
         param1.closePopup(param2,param3);
      }
      
      public function closePopup(param1:int = -1, param2:Boolean = false, param3:Boolean = true, param4:Boolean = false) : void
      {
         var _loc5_:§@2§ = null;
         var _loc6_:int = 0;
         if(param1 >= 0 && !param4)
         {
            if(_loc5_ = this.§<!u§[param1])
            {
               this.§%#0§(_loc5_,param2,param3);
            }
         }
         else
         {
            _loc6_ = this.§<!u§.length - 1;
            while(_loc6_ >= 0)
            {
               if(_loc5_ = this.§<!u§[_loc6_])
               {
                  if(!param4)
                  {
                     this.§%#0§(_loc5_,param2,param3);
                     return;
                  }
                  this.§%#0§(_loc5_,param2,false);
               }
               _loc6_--;
            }
         }
      }
      
      protected function §%"s§(param1:PopupLayerEvent) : void
      {
         var _loc2_:§@2§ = this.§<!u§[param1.§^#l§];
         if(_loc2_)
         {
            this.§%#0§(_loc2_,param1.§"$>§.useTransitionOut,param1.§"$>§.allowQueue);
         }
      }
      
      protected function §8!n§(param1:PopupLayerEvent) : void
      {
         if(!this.§?"N§())
         {
            dispatchEvent(new §"Z§(§"Z§.CLOSE,null));
         }
      }
      
      protected function §;!G§(param1:PopupLayerEvent) : void
      {
         dispatchEvent(new §"Z§(§"Z§.OPEN,null));
      }
      
      protected function §8_§(param1:int) : §@2§
      {
         return this.addLayer(param1);
      }
   }
}
