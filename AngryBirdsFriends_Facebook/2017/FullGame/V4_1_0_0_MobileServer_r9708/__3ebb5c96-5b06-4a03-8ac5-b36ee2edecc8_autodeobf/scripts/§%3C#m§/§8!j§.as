package §<#m§
{
   import §&$!§.§+#!§;
   import §4$<§.§?§;
   import §4$<§.PopupLayerEvent;
   import §<"P§.§[#$§;
   import flash.display.MovieClip;
   import flash.events.EventDispatcher;
   import flash.geom.Rectangle;
   
   public class §8!j§ extends EventDispatcher implements §0r§
   {
       
      
      protected var §1"6§:MovieClip;
      
      protected var §0?§:Number;
      
      protected var §,#k§:Number;
      
      protected var § #r§:Vector.<§+$4§>;
      
      protected var §-"Q§:§+#!§;
      
      protected var §8#0§:§[#$§;
      
      public function §8!j§(param1:MovieClip, param2:§+#!§, param3:§[#$§, param4:Number = 960, param5:Number = 560, param6:int = 11)
      {
         super();
         this.§ #r§ = new Vector.<§+$4§>(param6,true);
         this.§-"Q§ = param2;
         this.§8#0§ = param3;
         this.§1"6§ = param1;
         this.§0?§ = param4;
         this.§,#k§ = param5;
      }
      
      public function setViewSize(param1:int, param2:int) : void
      {
         var _loc3_:§+$4§ = null;
         this.§0?§ = param1;
         this.§,#k§ = param2;
         for each(_loc3_ in this.§ #r§)
         {
            if(_loc3_)
            {
               _loc3_.setViewSize(param1,param2);
            }
         }
      }
      
      public function §`$§() : Boolean
      {
         var _loc1_:§+$4§ = null;
         for each(_loc1_ in this.§ #r§)
         {
            if(_loc1_ && _loc1_.§`$§())
            {
               return true;
            }
         }
         return false;
      }
      
      public function isPopupOpenById(param1:String) : Boolean
      {
         var _loc2_:§+$4§ = null;
         for each(_loc2_ in this.§ #r§)
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
         var _loc2_:§+$4§ = null;
         for each(_loc2_ in this.§ #r§)
         {
            if(_loc2_ && _loc2_.isPopupInQueueById(param1))
            {
               return true;
            }
         }
         return false;
      }
      
      public function getOpenPopupById(param1:String) : §!"<§
      {
         var _loc2_:§+$4§ = null;
         for each(_loc2_ in this.§ #r§)
         {
            if(_loc2_ && _loc2_.isPopupOpenById(param1))
            {
               return _loc2_.getOpenPopupById(param1);
            }
         }
         return null;
      }
      
      public function addLayer(param1:int, param2:Boolean = true, param3:Rectangle = null, param4:Boolean = false) : §+$4§
      {
         var _loc5_:§+$4§;
         if(_loc5_ = this.§ #r§[param1])
         {
            _loc5_.isPersistentLayer = param4;
            return _loc5_;
         }
         (_loc5_ = this.§ #r§[param1] = this.§8;§(param1,param2,param3,param4)).addEventListener(PopupLayerEvent.OPEN,this.§8^§);
         _loc5_.addEventListener(PopupLayerEvent.CLOSE,this.§1"q§);
         _loc5_.addEventListener(PopupLayerEvent.§'!x§,this.§'"_§);
         this.§]"!§();
         return _loc5_;
      }
      
      protected function §8;§(param1:int, param2:Boolean, param3:Rectangle, param4:Boolean) : §+$4§
      {
         var _loc5_:§+$4§;
         (_loc5_ = new §+$4§(param1,this.§1"6§,this.§-"Q§,this.§8#0§,param2,param3)).isPersistentLayer = param4;
         return _loc5_;
      }
      
      protected function §1!U§(param1:§+$4§, param2:§+$4§) : int
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
      
      protected function §]"!§() : void
      {
         var _loc2_:§+$4§ = null;
         var _loc1_:Vector.<§+$4§> = this.§ #r§.concat();
         _loc1_.sort(this.§1!U§);
         var _loc3_:int = 0;
         while(_loc3_ < _loc1_.length)
         {
            _loc2_ = _loc1_[_loc3_];
            if(_loc2_)
            {
               _loc2_.§3#Q§();
            }
            _loc3_++;
         }
      }
      
      public function §14§(param1:int, param2:Boolean) : void
      {
         if(this.§ #r§[param1])
         {
            this.§ #r§[param1].isPersistentLayer = param2;
         }
      }
      
      public function openPopup(param1:§!"<§, param2:Boolean = false, param3:Boolean = false, param4:Boolean = true, param5:Boolean = false) : void
      {
         var _loc6_:§+$4§ = this.§+##§(param1.§>!s§);
         var _loc7_:§`"g§ = new §`"g§(param1,param2,param3,param4);
         _loc6_.openPopup(_loc7_,param5);
         this.setViewSize(this.§0?§,this.§,#k§);
      }
      
      public function §?$=§(param1:String, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:§!"<§;
         if(_loc4_ = this.getOpenPopupById(param1))
         {
            this.closePopup(_loc4_.§>!s§,param2,param3);
         }
      }
      
      public function §2#7§(param1:Boolean = false, param2:Boolean = true) : void
      {
         var _loc3_:§+$4§ = null;
         for each(_loc3_ in this.§ #r§)
         {
            if(_loc3_)
            {
               if(!_loc3_.isPersistentLayer)
               {
                  this.§?S§(_loc3_,param1,param2);
               }
            }
         }
      }
      
      protected function §?S§(param1:§+$4§, param2:Boolean, param3:Boolean) : void
      {
         param1.closePopup(param2,param3);
      }
      
      public function closePopup(param1:int = -1, param2:Boolean = false, param3:Boolean = true, param4:Boolean = false) : void
      {
         var _loc5_:§+$4§ = null;
         var _loc6_:int = 0;
         if(param1 >= 0 && !param4)
         {
            if(_loc5_ = this.§ #r§[param1])
            {
               this.§?S§(_loc5_,param2,param3);
            }
         }
         else
         {
            _loc6_ = this.§ #r§.length - 1;
            while(_loc6_ >= 0)
            {
               if(_loc5_ = this.§ #r§[_loc6_])
               {
                  if(!param4)
                  {
                     this.§?S§(_loc5_,param2,param3);
                     return;
                  }
                  this.§?S§(_loc5_,param2,false);
               }
               _loc6_--;
            }
         }
      }
      
      protected function §'"_§(param1:PopupLayerEvent) : void
      {
         var _loc2_:§+$4§ = this.§ #r§[param1.§>!s§];
         if(_loc2_)
         {
            this.§?S§(_loc2_,param1.§7"R§.useTransitionOut,param1.§7"R§.allowQueue);
         }
      }
      
      protected function §1"q§(param1:PopupLayerEvent) : void
      {
         if(!this.§`$§())
         {
            dispatchEvent(new §?#7§(§?#7§.CLOSE,null));
         }
      }
      
      protected function §8^§(param1:PopupLayerEvent) : void
      {
         dispatchEvent(new §?#7§(§?#7§.OPEN,null));
      }
      
      protected function §+##§(param1:int) : §+$4§
      {
         return this.addLayer(param1);
      }
   }
}
