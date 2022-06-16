package §1!=§
{
   import §!$;§.§8#F§;
   import §!$;§.PopupLayerEvent;
   import §5P§.§""C§;
   import §@l§.§6$9§;
   import flash.display.MovieClip;
   import flash.events.EventDispatcher;
   import flash.geom.Rectangle;
   
   public class §4$"§ extends EventDispatcher implements §["+§
   {
       
      
      protected var §,#2§:MovieClip;
      
      protected var §!"T§:Number;
      
      protected var §0F§:Number;
      
      protected var §%"J§:Vector.<§?#I§>;
      
      protected var §1a§:§""C§;
      
      protected var §'#g§:§6$9§;
      
      public function §4$"§(param1:MovieClip, param2:§""C§, param3:§6$9§, param4:Number = 960, param5:Number = 560, param6:int = 11)
      {
         super();
         this.§%"J§ = new Vector.<§?#I§>(param6,true);
         this.§1a§ = param2;
         this.§'#g§ = param3;
         this.§,#2§ = param1;
         this.§!"T§ = param4;
         this.§0F§ = param5;
      }
      
      public function setViewSize(param1:int, param2:int) : void
      {
         var _loc3_:§?#I§ = null;
         this.§!"T§ = param1;
         this.§0F§ = param2;
         for each(_loc3_ in this.§%"J§)
         {
            if(_loc3_)
            {
               _loc3_.setViewSize(param1,param2);
            }
         }
      }
      
      public function §#"q§() : Boolean
      {
         var _loc1_:§?#I§ = null;
         for each(_loc1_ in this.§%"J§)
         {
            if(_loc1_ && _loc1_.§#"q§())
            {
               return true;
            }
         }
         return false;
      }
      
      public function isPopupOpenById(param1:String) : Boolean
      {
         var _loc2_:§?#I§ = null;
         for each(_loc2_ in this.§%"J§)
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
         var _loc2_:§?#I§ = null;
         for each(_loc2_ in this.§%"J§)
         {
            if(_loc2_ && _loc2_.isPopupInQueueById(param1))
            {
               return true;
            }
         }
         return false;
      }
      
      public function getOpenPopupById(param1:String) : §%#;§
      {
         var _loc2_:§?#I§ = null;
         for each(_loc2_ in this.§%"J§)
         {
            if(_loc2_ && _loc2_.isPopupOpenById(param1))
            {
               return _loc2_.getOpenPopupById(param1);
            }
         }
         return null;
      }
      
      public function addLayer(param1:int, param2:Boolean = true, param3:Rectangle = null, param4:Boolean = false) : §?#I§
      {
         var _loc5_:§?#I§;
         if(_loc5_ = this.§%"J§[param1])
         {
            _loc5_.isPersistentLayer = param4;
            return _loc5_;
         }
         (_loc5_ = this.§%"J§[param1] = this.§69§(param1,param2,param3,param4)).addEventListener(PopupLayerEvent.OPEN,this.§6#b§);
         _loc5_.addEventListener(PopupLayerEvent.CLOSE,this.§2!`§);
         _loc5_.addEventListener(PopupLayerEvent.§1#§,this.§"#^§);
         this.§8m§();
         return _loc5_;
      }
      
      protected function §69§(param1:int, param2:Boolean, param3:Rectangle, param4:Boolean) : §?#I§
      {
         var _loc5_:§?#I§;
         (_loc5_ = new §?#I§(param1,this.§,#2§,this.§1a§,this.§'#g§,param2,param3)).isPersistentLayer = param4;
         return _loc5_;
      }
      
      protected function §,#9§(param1:§?#I§, param2:§?#I§) : int
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
      
      protected function §8m§() : void
      {
         var _loc2_:§?#I§ = null;
         var _loc1_:Vector.<§?#I§> = this.§%"J§.concat();
         _loc1_.sort(this.§,#9§);
         var _loc3_:int = 0;
         while(_loc3_ < _loc1_.length)
         {
            _loc2_ = _loc1_[_loc3_];
            if(_loc2_)
            {
               _loc2_.§4#p§();
            }
            _loc3_++;
         }
      }
      
      public function §##0§(param1:int, param2:Boolean) : void
      {
         if(this.§%"J§[param1])
         {
            this.§%"J§[param1].isPersistentLayer = param2;
         }
      }
      
      public function openPopup(param1:§%#;§, param2:Boolean = false, param3:Boolean = false, param4:Boolean = true, param5:Boolean = false) : void
      {
         var _loc6_:§?#I§ = this.§=#<§(param1.§&!=§);
         var _loc7_:§>"q§ = new §>"q§(param1,param2,param3,param4);
         _loc6_.openPopup(_loc7_,param5);
         this.setViewSize(this.§!"T§,this.§0F§);
      }
      
      public function §""^§(param1:String, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:§%#;§;
         if(_loc4_ = this.getOpenPopupById(param1))
         {
            this.closePopup(_loc4_.§&!=§,param2,param3);
         }
      }
      
      public function §0!<§(param1:Boolean = false, param2:Boolean = true) : void
      {
         var _loc3_:§?#I§ = null;
         for each(_loc3_ in this.§%"J§)
         {
            if(_loc3_)
            {
               if(!_loc3_.isPersistentLayer)
               {
                  this.§3!R§(_loc3_,param1,param2);
               }
            }
         }
      }
      
      protected function §3!R§(param1:§?#I§, param2:Boolean, param3:Boolean) : void
      {
         param1.closePopup(param2,param3);
      }
      
      public function closePopup(param1:int = -1, param2:Boolean = false, param3:Boolean = true, param4:Boolean = false) : void
      {
         var _loc5_:§?#I§ = null;
         var _loc6_:int = 0;
         if(param1 >= 0 && !param4)
         {
            if(_loc5_ = this.§%"J§[param1])
            {
               this.§3!R§(_loc5_,param2,param3);
            }
         }
         else
         {
            _loc6_ = this.§%"J§.length - 1;
            for(; _loc6_ >= 0; _loc6_--)
            {
               if(_loc5_ = this.§%"J§[_loc6_])
               {
                  if(!param4)
                  {
                     this.§3!R§(_loc5_,param2,param3);
                  }
                  this.§3!R§(_loc5_,param2,false);
                  continue;
                  return;
               }
            }
         }
      }
      
      protected function §"#^§(param1:PopupLayerEvent) : void
      {
         var _loc2_:§?#I§ = this.§%"J§[param1.§&!=§];
         if(_loc2_)
         {
            this.§3!R§(_loc2_,param1.§2Y§.useTransitionOut,param1.§2Y§.allowQueue);
         }
      }
      
      protected function §2!`§(param1:PopupLayerEvent) : void
      {
         if(!this.§#"q§())
         {
            dispatchEvent(new §8#F§(§8#F§.CLOSE,null));
         }
      }
      
      protected function §6#b§(param1:PopupLayerEvent) : void
      {
         dispatchEvent(new §8#F§(§8#F§.OPEN,null));
      }
      
      protected function §=#<§(param1:int) : §?#I§
      {
         return this.addLayer(param1);
      }
   }
}
