package §1!i§
{
   import §,!'§.§5O§;
   import §,M§.§+f§;
   import §8]§.§7O§;
   import §8]§.PopupLayerEvent;
   import flash.display.MovieClip;
   import flash.events.EventDispatcher;
   import flash.geom.Rectangle;
   
   public class §"g§ extends EventDispatcher implements §^Q§
   {
       
      
      protected var §29§:MovieClip;
      
      protected var §^!J§:Number;
      
      protected var §+=§:Number;
      
      protected var §3S§:Vector.<§ 3§>;
      
      protected var §8&§:§+f§;
      
      protected var §-p§:§5O§;
      
      public function §"g§(param1:MovieClip, param2:§+f§, param3:§5O§, param4:Number = 960, param5:Number = 560, param6:int = 11)
      {
         super();
         this.§3S§ = new Vector.<§ 3§>(param6,true);
         this.§8&§ = param2;
         this.§-p§ = param3;
         this.§29§ = param1;
         this.§^!J§ = param4;
         this.§+=§ = param5;
      }
      
      public function setViewSize(param1:int, param2:int) : void
      {
         var _loc3_:§ 3§ = null;
         this.§^!J§ = param1;
         this.§+=§ = param2;
         for each(_loc3_ in this.§3S§)
         {
            if(_loc3_)
            {
               _loc3_.setViewSize(param1,param2);
            }
         }
      }
      
      public function §8!5§() : Boolean
      {
         var _loc1_:§ 3§ = null;
         for each(_loc1_ in this.§3S§)
         {
            if(_loc1_ && _loc1_.§8!5§())
            {
               return true;
            }
         }
         return false;
      }
      
      public function isPopupOpenById(param1:String) : Boolean
      {
         var _loc2_:§ 3§ = null;
         for each(_loc2_ in this.§3S§)
         {
            if(_loc2_ && _loc2_.isPopupOpenById(param1))
            {
               return true;
            }
         }
         return false;
      }
      
      public function §+7§(param1:String) : Boolean
      {
         var _loc2_:§ 3§ = null;
         for each(_loc2_ in this.§3S§)
         {
            if(_loc2_ && _loc2_.§+7§(param1))
            {
               return true;
            }
         }
         return false;
      }
      
      public function §;j§(param1:String) : §?!a§
      {
         var _loc2_:§ 3§ = null;
         for each(_loc2_ in this.§3S§)
         {
            if(_loc2_ && _loc2_.isPopupOpenById(param1))
            {
               return _loc2_.§;j§(param1);
            }
         }
         return null;
      }
      
      public function addLayer(param1:int, param2:Boolean = true, param3:Rectangle = null, param4:Boolean = false) : § 3§
      {
         var _loc5_:§ 3§;
         if(_loc5_ = this.§3S§[param1])
         {
            _loc5_.isPersistentLayer = param4;
            return _loc5_;
         }
         (_loc5_ = this.§3S§[param1] = this.§1#§(param1,param2,param3,param4)).addEventListener(PopupLayerEvent.OPEN,this.§6<§);
         _loc5_.addEventListener(PopupLayerEvent.CLOSE,this.§ for§);
         _loc5_.addEventListener(PopupLayerEvent.§9! §,this.§-!^§);
         this.§"!m§();
         return _loc5_;
      }
      
      protected function §1#§(param1:int, param2:Boolean, param3:Rectangle, param4:Boolean) : § 3§
      {
         var _loc5_:§ 3§;
         (_loc5_ = new § 3§(param1,this.§29§,this.§8&§,this.§-p§,param2,param3)).isPersistentLayer = param4;
         return _loc5_;
      }
      
      protected function §^!7§(param1:§ 3§, param2:§ 3§) : int
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
      
      protected function §"!m§() : void
      {
         var _loc2_:§ 3§ = null;
         var _loc1_:Vector.<§ 3§> = this.§3S§.concat();
         _loc1_.sort(this.§^!7§);
         var _loc3_:int = 0;
         while(_loc3_ < _loc1_.length)
         {
            _loc2_ = _loc1_[_loc3_];
            if(_loc2_)
            {
               _loc2_.§&A§();
            }
            _loc3_++;
         }
      }
      
      public function setPersistentLayer(param1:int, param2:Boolean) : void
      {
         if(this.§3S§[param1])
         {
            this.§3S§[param1].isPersistentLayer = param2;
         }
      }
      
      public function openPopup(param1:§?!a§, param2:Boolean = false, param3:Boolean = false, param4:Boolean = true, param5:Boolean = false) : void
      {
         var _loc6_:§ 3§ = this.§;!9§(param1.§,!1§);
         var _loc7_:§?O§ = new §?O§(param1,param2,param3,param4);
         _loc6_.openPopup(_loc7_,param5);
         this.setViewSize(this.§^!J§,this.§+=§);
      }
      
      public function §3!a§(param1:String, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:§?!a§;
         if(_loc4_ = this.§;j§(param1))
         {
            this.closePopup(_loc4_.§,!1§,param2,param3);
         }
      }
      
      public function closeAllPopups(param1:Boolean = false, param2:Boolean = true) : void
      {
         var _loc3_:§ 3§ = null;
         for each(_loc3_ in this.§3S§)
         {
            if(_loc3_)
            {
               if(!_loc3_.isPersistentLayer)
               {
                  this.§0!R§(_loc3_,param1,param2);
               }
            }
         }
      }
      
      protected function §0!R§(param1:§ 3§, param2:Boolean, param3:Boolean) : void
      {
         param1.closePopup(param2,param3);
      }
      
      public function closePopup(param1:int = -1, param2:Boolean = false, param3:Boolean = true, param4:Boolean = false) : void
      {
         var _loc5_:§ 3§ = null;
         var _loc6_:int = 0;
         if(param1 >= 0 && !param4)
         {
            if(_loc5_ = this.§3S§[param1])
            {
               this.§0!R§(_loc5_,param2,param3);
            }
         }
         else
         {
            _loc6_ = this.§3S§.length - 1;
            while(_loc6_ >= 0)
            {
               if(_loc5_ = this.§3S§[_loc6_])
               {
                  if(!param4)
                  {
                     this.§0!R§(_loc5_,param2,param3);
                     return;
                  }
                  this.§0!R§(_loc5_,param2,false);
               }
               _loc6_--;
            }
         }
      }
      
      protected function §-!^§(param1:PopupLayerEvent) : void
      {
         var _loc2_:§ 3§ = this.§3S§[param1.§,!1§];
         if(_loc2_)
         {
            this.§0!R§(_loc2_,param1.§7!U§.useTransitionOut,param1.§7!U§.allowQueue);
         }
      }
      
      protected function § for§(param1:PopupLayerEvent) : void
      {
         if(!this.§8!5§())
         {
            dispatchEvent(new §7O§(§7O§.CLOSE,null));
         }
      }
      
      protected function §6<§(param1:PopupLayerEvent) : void
      {
         dispatchEvent(new §7O§(§7O§.OPEN,null));
      }
      
      protected function §;!9§(param1:int) : § 3§
      {
         return this.addLayer(param1);
      }
   }
}
