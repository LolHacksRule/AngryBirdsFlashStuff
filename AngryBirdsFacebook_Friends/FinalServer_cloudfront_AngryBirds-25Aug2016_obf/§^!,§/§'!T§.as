package §^!,§
{
   import §'U§.§]#[§;
   import §1"0§.§4$#§;
   import §1"0§.PopupLayerEvent;
   import §<!'§.§ "6§;
   import flash.display.MovieClip;
   import flash.events.EventDispatcher;
   import flash.geom.Rectangle;
   
   public class §'!T§ extends EventDispatcher implements §#9§
   {
       
      
      protected var §7!j§:MovieClip;
      
      protected var §1#u§:Number;
      
      protected var §1V§:Number;
      
      protected var §="J§:Vector.<§]!$§>;
      
      protected var §'#w§:§]#[§;
      
      protected var §9"h§:§ "6§;
      
      public function §'!T§(param1:MovieClip, param2:§]#[§, param3:§ "6§, param4:Number = 960, param5:Number = 560, param6:int = 11)
      {
         super();
         this.§="J§ = new Vector.<§]!$§>(param6,true);
         this.§'#w§ = param2;
         this.§9"h§ = param3;
         this.§7!j§ = param1;
         this.§1#u§ = param4;
         this.§1V§ = param5;
      }
      
      public function setViewSize(param1:int, param2:int) : void
      {
         var _loc3_:§]!$§ = null;
         this.§1#u§ = param1;
         this.§1V§ = param2;
         for each(_loc3_ in this.§="J§)
         {
            if(_loc3_)
            {
               _loc3_.setViewSize(param1,param2);
            }
         }
      }
      
      public function §5"'§() : Boolean
      {
         var _loc1_:§]!$§ = null;
         for each(_loc1_ in this.§="J§)
         {
            if(_loc1_ && _loc1_.§5"'§())
            {
               return true;
            }
         }
         return false;
      }
      
      public function isPopupOpenById(param1:String) : Boolean
      {
         var _loc2_:§]!$§ = null;
         for each(_loc2_ in this.§="J§)
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
         var _loc2_:§]!$§ = null;
         for each(_loc2_ in this.§="J§)
         {
            if(_loc2_ && _loc2_.isPopupInQueueById(param1))
            {
               return true;
            }
         }
         return false;
      }
      
      public function getOpenPopupById(param1:String) : §8!H§
      {
         var _loc2_:§]!$§ = null;
         for each(_loc2_ in this.§="J§)
         {
            if(_loc2_ && _loc2_.isPopupOpenById(param1))
            {
               return _loc2_.getOpenPopupById(param1);
            }
         }
         return null;
      }
      
      public function addLayer(param1:int, param2:Boolean = true, param3:Rectangle = null, param4:Boolean = false) : §]!$§
      {
         var _loc5_:§]!$§;
         if(_loc5_ = this.§="J§[param1])
         {
            _loc5_.isPersistentLayer = param4;
            return _loc5_;
         }
         (_loc5_ = this.§="J§[param1] = this.§&"O§(param1,param2,param3,param4)).addEventListener(PopupLayerEvent.OPEN,this.§&5§);
         _loc5_.addEventListener(PopupLayerEvent.CLOSE,this.§5"T§);
         _loc5_.addEventListener(PopupLayerEvent.§3$6§,this.§#"x§);
         this.§9^§();
         return _loc5_;
      }
      
      protected function §&"O§(param1:int, param2:Boolean, param3:Rectangle, param4:Boolean) : §]!$§
      {
         var _loc5_:§]!$§;
         (_loc5_ = new §]!$§(param1,this.§7!j§,this.§'#w§,this.§9"h§,param2,param3)).isPersistentLayer = param4;
         return _loc5_;
      }
      
      protected function §[#P§(param1:§]!$§, param2:§]!$§) : int
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
      
      protected function §9^§() : void
      {
         var _loc2_:§]!$§ = null;
         var _loc1_:Vector.<§]!$§> = this.§="J§.concat();
         _loc1_.sort(this.§[#P§);
         var _loc3_:int = 0;
         while(_loc3_ < _loc1_.length)
         {
            _loc2_ = _loc1_[_loc3_];
            if(_loc2_)
            {
               _loc2_.§+!y§();
            }
            _loc3_++;
         }
      }
      
      public function §#O§(param1:int, param2:Boolean) : void
      {
         if(this.§="J§[param1])
         {
            this.§="J§[param1].isPersistentLayer = param2;
         }
      }
      
      public function openPopup(param1:§8!H§, param2:Boolean = false, param3:Boolean = false, param4:Boolean = true, param5:Boolean = false) : void
      {
         var _loc6_:§]!$§ = this.§>"r§(param1.§ $<§);
         var _loc7_:§+[§ = new §+[§(param1,param2,param3,param4);
         _loc6_.openPopup(_loc7_,param5);
         this.setViewSize(this.§1#u§,this.§1V§);
      }
      
      public function closePopupById(param1:String, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:§8!H§;
         if(_loc4_ = this.getOpenPopupById(param1))
         {
            this.closePopup(_loc4_.§ $<§,param2,param3);
         }
      }
      
      public function §2^§(param1:Boolean = false, param2:Boolean = true) : void
      {
         var _loc3_:§]!$§ = null;
         for each(_loc3_ in this.§="J§)
         {
            if(_loc3_)
            {
               if(!_loc3_.isPersistentLayer)
               {
                  this.§2!c§(_loc3_,param1,param2);
               }
            }
         }
      }
      
      protected function §2!c§(param1:§]!$§, param2:Boolean, param3:Boolean) : void
      {
         param1.closePopup(param2,param3);
      }
      
      public function closePopup(param1:int = -1, param2:Boolean = false, param3:Boolean = true, param4:Boolean = false) : void
      {
         var _loc5_:§]!$§ = null;
         var _loc6_:int = 0;
         if(param1 >= 0 && !param4)
         {
            if(_loc5_ = this.§="J§[param1])
            {
               this.§2!c§(_loc5_,param2,param3);
            }
         }
         else
         {
            _loc6_ = this.§="J§.length - 1;
            for(; _loc6_ >= 0; _loc6_--)
            {
               if(_loc5_ = this.§="J§[_loc6_])
               {
                  if(!param4)
                  {
                     this.§2!c§(_loc5_,param2,param3);
                     return;
                  }
                  this.§2!c§(_loc5_,param2,false);
                  continue;
               }
            }
         }
      }
      
      protected function §#"x§(param1:PopupLayerEvent) : void
      {
         var _loc2_:§]!$§ = this.§="J§[param1.§ $<§];
         if(_loc2_)
         {
            this.§2!c§(_loc2_,param1.§ "1§.useTransitionOut,param1.§ "1§.allowQueue);
         }
      }
      
      protected function §5"T§(param1:PopupLayerEvent) : void
      {
         if(!this.§5"'§())
         {
            dispatchEvent(new §4$#§(§4$#§.CLOSE,null));
         }
      }
      
      protected function §&5§(param1:PopupLayerEvent) : void
      {
         dispatchEvent(new §4$#§(§4$#§.OPEN,null));
      }
      
      protected function §>"r§(param1:int) : §]!$§
      {
         return this.addLayer(param1);
      }
   }
}
