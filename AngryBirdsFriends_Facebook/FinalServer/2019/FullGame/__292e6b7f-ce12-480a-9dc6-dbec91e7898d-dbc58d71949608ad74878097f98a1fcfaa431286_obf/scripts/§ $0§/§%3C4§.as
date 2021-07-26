package § $0§
{
   import §##y§.§#$"§;
   import §+`§.§%"q§;
   import §;#>§.§7!^§;
   import §;#>§.PopupLayerEvent;
   import flash.display.MovieClip;
   import flash.events.EventDispatcher;
   import flash.geom.Rectangle;
   
   public class §<4§ extends EventDispatcher implements §=!C§
   {
       
      
      protected var §;#'§:MovieClip;
      
      protected var §6$'§:Number;
      
      protected var §?"4§:Number;
      
      protected var §%g§:Vector.<§%!z§>;
      
      protected var §#$&§:§%"q§;
      
      protected var §7!p§:§#$"§;
      
      public function §<4§(param1:MovieClip, param2:§%"q§, param3:§#$"§, param4:Number = 960, param5:Number = 560, param6:int = 11)
      {
         super();
         this.§%g§ = new Vector.<§%!z§>(param6,true);
         this.§#$&§ = param2;
         this.§7!p§ = param3;
         this.§;#'§ = param1;
         this.§6$'§ = param4;
         this.§?"4§ = param5;
      }
      
      public function setViewSize(param1:int, param2:int) : void
      {
         var _loc3_:§%!z§ = null;
         this.§6$'§ = param1;
         this.§?"4§ = param2;
         for each(_loc3_ in this.§%g§)
         {
            if(_loc3_)
            {
               _loc3_.setViewSize(param1,param2);
            }
         }
      }
      
      public function §[#a§() : Boolean
      {
         var _loc1_:§%!z§ = null;
         for each(_loc1_ in this.§%g§)
         {
            if(_loc1_ && _loc1_.§[#a§())
            {
               return true;
            }
         }
         return false;
      }
      
      public function isPopupOpenById(param1:String) : Boolean
      {
         var _loc2_:§%!z§ = null;
         for each(_loc2_ in this.§%g§)
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
         var _loc2_:§%!z§ = null;
         for each(_loc2_ in this.§%g§)
         {
            if(_loc2_ && _loc2_.isPopupInQueueById(param1))
            {
               return true;
            }
         }
         return false;
      }
      
      public function getOpenPopupById(param1:String) : §,#@§
      {
         var _loc2_:§%!z§ = null;
         for each(_loc2_ in this.§%g§)
         {
            if(_loc2_ && _loc2_.isPopupOpenById(param1))
            {
               return _loc2_.getOpenPopupById(param1);
            }
         }
         return null;
      }
      
      public function addLayer(param1:int, param2:Boolean = true, param3:Rectangle = null, param4:Boolean = false) : §%!z§
      {
         var _loc5_:§%!z§;
         if(_loc5_ = this.§%g§[param1])
         {
            _loc5_.isPersistentLayer = param4;
            return _loc5_;
         }
         (_loc5_ = this.§%g§[param1] = this.§'U§(param1,param2,param3,param4)).addEventListener(PopupLayerEvent.OPEN,this.§4!>§);
         _loc5_.addEventListener(PopupLayerEvent.CLOSE,this.§%U§);
         _loc5_.addEventListener(PopupLayerEvent.§ "<§,this.§%!T§);
         this.§!!9§();
         return _loc5_;
      }
      
      protected function §'U§(param1:int, param2:Boolean, param3:Rectangle, param4:Boolean) : §%!z§
      {
         var _loc5_:§%!z§;
         (_loc5_ = new §%!z§(param1,this.§;#'§,this.§#$&§,this.§7!p§,param2,param3)).isPersistentLayer = param4;
         return _loc5_;
      }
      
      protected function §@#t§(param1:§%!z§, param2:§%!z§) : int
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
      
      protected function §!!9§() : void
      {
         var _loc2_:§%!z§ = null;
         var _loc1_:Vector.<§%!z§> = this.§%g§.concat();
         _loc1_.sort(this.§@#t§);
         var _loc3_:int = 0;
         while(_loc3_ < _loc1_.length)
         {
            _loc2_ = _loc1_[_loc3_];
            if(_loc2_)
            {
               _loc2_.§7!0§();
            }
            _loc3_++;
         }
      }
      
      public function §#c§(param1:int, param2:Boolean) : void
      {
         if(this.§%g§[param1])
         {
            this.§%g§[param1].isPersistentLayer = param2;
         }
      }
      
      public function openPopup(param1:§,#@§, param2:Boolean = false, param3:Boolean = false, param4:Boolean = true, param5:Boolean = false) : void
      {
         var _loc6_:§%!z§ = this.§,?§(param1.§9e§);
         var _loc7_:§#"K§ = new §#"K§(param1,param2,param3,param4);
         _loc6_.openPopup(_loc7_,param5);
         this.setViewSize(this.§6$'§,this.§?"4§);
      }
      
      public function §0"O§(param1:String, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:§,#@§;
         if(_loc4_ = this.getOpenPopupById(param1))
         {
            this.closePopup(_loc4_.§9e§,param2,param3);
         }
      }
      
      public function §8"5§(param1:Boolean = false, param2:Boolean = true) : void
      {
         var _loc3_:§%!z§ = null;
         for each(_loc3_ in this.§%g§)
         {
            if(_loc3_)
            {
               if(!_loc3_.isPersistentLayer)
               {
                  this.§?W§(_loc3_,param1,param2);
               }
            }
         }
      }
      
      protected function §?W§(param1:§%!z§, param2:Boolean, param3:Boolean) : void
      {
         param1.closePopup(param2,param3);
      }
      
      public function closePopup(param1:int = -1, param2:Boolean = false, param3:Boolean = true, param4:Boolean = false) : void
      {
         var _loc5_:§%!z§ = null;
         var _loc6_:int = 0;
         if(param1 >= 0 && !param4)
         {
            if(_loc5_ = this.§%g§[param1])
            {
               this.§?W§(_loc5_,param2,param3);
            }
         }
         else
         {
            _loc6_ = this.§%g§.length - 1;
            for(; _loc6_ >= 0; _loc6_--)
            {
               if(_loc5_ = this.§%g§[_loc6_])
               {
                  if(!param4)
                  {
                     this.§?W§(_loc5_,param2,param3);
                  }
                  this.§?W§(_loc5_,param2,false);
                  continue;
                  return;
               }
            }
         }
      }
      
      protected function §%!T§(param1:PopupLayerEvent) : void
      {
         var _loc2_:§%!z§ = this.§%g§[param1.§9e§];
         if(_loc2_)
         {
            this.§?W§(_loc2_,param1.§+$2§.useTransitionOut,param1.§+$2§.allowQueue);
         }
      }
      
      protected function §%U§(param1:PopupLayerEvent) : void
      {
         if(!this.§[#a§())
         {
            dispatchEvent(new §7!^§(§7!^§.CLOSE,null));
         }
      }
      
      protected function §4!>§(param1:PopupLayerEvent) : void
      {
         dispatchEvent(new §7!^§(§7!^§.OPEN,null));
      }
      
      protected function §,?§(param1:int) : §%!z§
      {
         return this.addLayer(param1);
      }
   }
}
