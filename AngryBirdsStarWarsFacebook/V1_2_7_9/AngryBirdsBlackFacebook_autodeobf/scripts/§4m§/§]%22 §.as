package §4m§
{
   import §#<§.§8!j§;
   import §#<§.PopupLayerEvent;
   import §'+§.§="B§;
   import §1G§.§8!a§;
   import flash.display.MovieClip;
   import flash.events.EventDispatcher;
   import flash.geom.Rectangle;
   
   public class §]" § extends EventDispatcher implements §&N§
   {
       
      
      protected var §,r§:MovieClip;
      
      protected var §<"z§:Number;
      
      protected var §5#0§:Number;
      
      protected var §5A§:Vector.<§?!w§>;
      
      protected var §8-§:§="B§;
      
      protected var §[!Y§:§8!a§;
      
      public function §]" §(param1:MovieClip, param2:§="B§, param3:§8!a§, param4:Number = 960, param5:Number = 560, param6:int = 11)
      {
         super();
         this.§5A§ = new Vector.<§?!w§>(param6,true);
         this.§8-§ = param2;
         this.§[!Y§ = param3;
         this.§,r§ = param1;
         this.§<"z§ = param4;
         this.§5#0§ = param5;
      }
      
      public function setViewSize(param1:int, param2:int) : void
      {
         var _loc3_:§?!w§ = null;
         this.§<"z§ = param1;
         this.§5#0§ = param2;
         for each(_loc3_ in this.§5A§)
         {
            if(_loc3_)
            {
               _loc3_.setViewSize(param1,param2);
            }
         }
      }
      
      public function §;"<§() : Boolean
      {
         var _loc1_:§?!w§ = null;
         for each(_loc1_ in this.§5A§)
         {
            if(_loc1_ && _loc1_.§;"<§())
            {
               return true;
            }
         }
         return false;
      }
      
      public function isPopupOpenById(param1:String) : Boolean
      {
         var _loc2_:§?!w§ = null;
         for each(_loc2_ in this.§5A§)
         {
            if(_loc2_ && _loc2_.isPopupOpenById(param1))
            {
               return true;
            }
         }
         return false;
      }
      
      public function §8"U§(param1:String) : Boolean
      {
         var _loc2_:§?!w§ = null;
         for each(_loc2_ in this.§5A§)
         {
            if(_loc2_ && _loc2_.§8"U§(param1))
            {
               return true;
            }
         }
         return false;
      }
      
      public function §?"_§(param1:String) : §5!R§
      {
         var _loc2_:§?!w§ = null;
         for each(_loc2_ in this.§5A§)
         {
            if(_loc2_ && _loc2_.isPopupOpenById(param1))
            {
               return _loc2_.§?"_§(param1);
            }
         }
         return null;
      }
      
      public function §;!f§(param1:int, param2:Boolean = true, param3:Rectangle = null, param4:Boolean = false) : §?!w§
      {
         var _loc5_:§?!w§;
         if(_loc5_ = this.§5A§[param1])
         {
            _loc5_.isPersistentLayer = param4;
            return _loc5_;
         }
         (_loc5_ = this.§5A§[param1] = this.§9!<§(param1,param2,param3,param4)).addEventListener(PopupLayerEvent.OPEN,this.§?!r§);
         _loc5_.addEventListener(PopupLayerEvent.CLOSE,this.§,!b§);
         _loc5_.addEventListener(PopupLayerEvent.§`"o§,this.onPopupCloseRequest);
         this.§<!=§();
         return _loc5_;
      }
      
      protected function §9!<§(param1:int, param2:Boolean, param3:Rectangle, param4:Boolean) : §?!w§
      {
         var _loc5_:§?!w§;
         (_loc5_ = new §?!w§(param1,this.§,r§,this.§8-§,this.§[!Y§,param2,param3)).isPersistentLayer = param4;
         return _loc5_;
      }
      
      protected function §1!g§(param1:§?!w§, param2:§?!w§) : int
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
      
      protected function §<!=§() : void
      {
         var _loc2_:§?!w§ = null;
         var _loc1_:Vector.<§?!w§> = this.§5A§.concat();
         _loc1_.sort(this.§1!g§);
         var _loc3_:int = 0;
         while(_loc3_ < _loc1_.length)
         {
            _loc2_ = _loc1_[_loc3_];
            if(_loc2_)
            {
               _loc2_.§ x§();
            }
            _loc3_++;
         }
      }
      
      public function §,2§(param1:int, param2:Boolean) : void
      {
         if(this.§5A§[param1])
         {
            this.§5A§[param1].isPersistentLayer = param2;
         }
      }
      
      public function openPopup(param1:§5!R§, param2:Boolean = false, param3:Boolean = false, param4:Boolean = true, param5:Boolean = false) : void
      {
         var _loc6_:§?!w§ = this.§^"C§(param1.§+a§);
         var _loc7_:§'!c§ = new §'!c§(param1,param2,param3,param4);
         _loc6_.openPopup(_loc7_,param5);
         this.setViewSize(this.§<"z§,this.§5#0§);
      }
      
      public function §7M§(param1:String, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:§5!R§;
         if(_loc4_ = this.§?"_§(param1))
         {
            this.closePopup(_loc4_.§+a§,param2,param3);
         }
      }
      
      public function §>!'§(param1:Boolean = false, param2:Boolean = true) : void
      {
         var _loc3_:§?!w§ = null;
         for each(_loc3_ in this.§5A§)
         {
            if(_loc3_)
            {
               if(!_loc3_.isPersistentLayer)
               {
                  this.§6!6§(_loc3_,param1,param2);
               }
            }
         }
      }
      
      protected function §6!6§(param1:§?!w§, param2:Boolean, param3:Boolean) : void
      {
         param1.closePopup(param2,param3);
      }
      
      public function closePopup(param1:int = -1, param2:Boolean = false, param3:Boolean = true, param4:Boolean = false) : void
      {
         var _loc5_:§?!w§ = null;
         var _loc6_:int = 0;
         if(param1 >= 0 && !param4)
         {
            if(_loc5_ = this.§5A§[param1])
            {
               this.§6!6§(_loc5_,param2,param3);
            }
         }
         else
         {
            _loc6_ = this.§5A§.length - 1;
            while(_loc6_ >= 0)
            {
               if(_loc5_ = this.§5A§[_loc6_])
               {
                  if(!param4)
                  {
                     this.§6!6§(_loc5_,param2,param3);
                     return;
                  }
                  this.§6!6§(_loc5_,param2,false);
               }
               _loc6_--;
            }
         }
      }
      
      protected function onPopupCloseRequest(param1:PopupLayerEvent) : void
      {
         var _loc2_:§?!w§ = this.§5A§[param1.§+a§];
         if(_loc2_)
         {
            this.§6!6§(_loc2_,param1.§1q§.useTransitionOut,param1.§1q§.allowQueue);
         }
      }
      
      protected function §,!b§(param1:PopupLayerEvent) : void
      {
         if(!this.§;"<§())
         {
            dispatchEvent(new §8!j§(§8!j§.CLOSE,null));
         }
      }
      
      protected function §?!r§(param1:PopupLayerEvent) : void
      {
         dispatchEvent(new §8!j§(§8!j§.OPEN,null));
      }
      
      protected function §^"C§(param1:int) : §?!w§
      {
         return this.§;!f§(param1);
      }
   }
}
