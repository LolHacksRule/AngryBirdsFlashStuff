package §;$5§
{
   import §3"G§.§16§;
   import §8#?§.§?#;§;
   import §;w§.§5"_§;
   import §;w§.PopupLayerEvent;
   import flash.display.MovieClip;
   import flash.events.EventDispatcher;
   import flash.geom.Rectangle;
   
   public class §6"8§ extends EventDispatcher implements §8"6§
   {
       
      
      protected var §8#Y§:MovieClip;
      
      protected var §="G§:Number;
      
      protected var §7!@§:Number;
      
      protected var §2#F§:Vector.<§3!U§>;
      
      protected var §1#@§:§16§;
      
      protected var §<"u§:§?#;§;
      
      public function §6"8§(param1:MovieClip, param2:§16§, param3:§?#;§, param4:Number = 960, param5:Number = 560, param6:int = 11)
      {
         super();
         this.§2#F§ = new Vector.<§3!U§>(param6,true);
         this.§1#@§ = param2;
         this.§<"u§ = param3;
         this.§8#Y§ = param1;
         this.§="G§ = param4;
         this.§7!@§ = param5;
      }
      
      public function setViewSize(param1:int, param2:int) : void
      {
         var _loc3_:§3!U§ = null;
         this.§="G§ = param1;
         this.§7!@§ = param2;
         for each(_loc3_ in this.§2#F§)
         {
            if(_loc3_)
            {
               _loc3_.setViewSize(param1,param2);
            }
         }
      }
      
      public function §`'§() : Boolean
      {
         var _loc1_:§3!U§ = null;
         for each(_loc1_ in this.§2#F§)
         {
            if(_loc1_ && _loc1_.§`'§())
            {
               return true;
            }
         }
         return false;
      }
      
      public function isPopupOpenById(param1:String) : Boolean
      {
         var _loc2_:§3!U§ = null;
         for each(_loc2_ in this.§2#F§)
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
         var _loc2_:§3!U§ = null;
         for each(_loc2_ in this.§2#F§)
         {
            if(_loc2_ && _loc2_.isPopupInQueueById(param1))
            {
               return true;
            }
         }
         return false;
      }
      
      public function getOpenPopupById(param1:String) : §@#G§
      {
         var _loc2_:§3!U§ = null;
         for each(_loc2_ in this.§2#F§)
         {
            if(_loc2_ && _loc2_.isPopupOpenById(param1))
            {
               return _loc2_.getOpenPopupById(param1);
            }
         }
         return null;
      }
      
      public function addLayer(param1:int, param2:Boolean = true, param3:Rectangle = null, param4:Boolean = false) : §3!U§
      {
         var _loc5_:§3!U§;
         if(_loc5_ = this.§2#F§[param1])
         {
            _loc5_.isPersistentLayer = param4;
            return _loc5_;
         }
         (_loc5_ = this.§2#F§[param1] = this.§[+§(param1,param2,param3,param4)).addEventListener(PopupLayerEvent.OPEN,this.§'3§);
         _loc5_.addEventListener(PopupLayerEvent.CLOSE,this.§`#4§);
         _loc5_.addEventListener(PopupLayerEvent.§'"§,this.§&#Z§);
         this.§?#S§();
         return _loc5_;
      }
      
      protected function §[+§(param1:int, param2:Boolean, param3:Rectangle, param4:Boolean) : §3!U§
      {
         var _loc5_:§3!U§;
         (_loc5_ = new §3!U§(param1,this.§8#Y§,this.§1#@§,this.§<"u§,param2,param3)).isPersistentLayer = param4;
         return _loc5_;
      }
      
      protected function §[K§(param1:§3!U§, param2:§3!U§) : int
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
      
      protected function §?#S§() : void
      {
         var _loc2_:§3!U§ = null;
         var _loc1_:Vector.<§3!U§> = this.§2#F§.concat();
         _loc1_.sort(this.§[K§);
         var _loc3_:int = 0;
         while(_loc3_ < _loc1_.length)
         {
            _loc2_ = _loc1_[_loc3_];
            if(_loc2_)
            {
               _loc2_.§#"g§();
            }
            _loc3_++;
         }
      }
      
      public function §,#]§(param1:int, param2:Boolean) : void
      {
         if(this.§2#F§[param1])
         {
            this.§2#F§[param1].isPersistentLayer = param2;
         }
      }
      
      public function openPopup(param1:§@#G§, param2:Boolean = false, param3:Boolean = false, param4:Boolean = true, param5:Boolean = false) : void
      {
         var _loc6_:§3!U§ = this.§>$"§(param1.§9#I§);
         var _loc7_:§##q§ = new §##q§(param1,param2,param3,param4);
         _loc6_.openPopup(_loc7_,param5);
         this.setViewSize(this.§="G§,this.§7!@§);
      }
      
      public function §2;§(param1:String, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:§@#G§;
         if(_loc4_ = this.getOpenPopupById(param1))
         {
            this.closePopup(_loc4_.§9#I§,param2,param3);
         }
      }
      
      public function §,#8§(param1:Boolean = false, param2:Boolean = true) : void
      {
         var _loc3_:§3!U§ = null;
         for each(_loc3_ in this.§2#F§)
         {
            if(_loc3_)
            {
               if(!_loc3_.isPersistentLayer)
               {
                  this.§9x§(_loc3_,param1,param2);
               }
            }
         }
      }
      
      protected function §9x§(param1:§3!U§, param2:Boolean, param3:Boolean) : void
      {
         param1.closePopup(param2,param3);
      }
      
      public function closePopup(param1:int = -1, param2:Boolean = false, param3:Boolean = true, param4:Boolean = false) : void
      {
         var _loc5_:§3!U§ = null;
         var _loc6_:int = 0;
         if(param1 >= 0 && !param4)
         {
            if(_loc5_ = this.§2#F§[param1])
            {
               this.§9x§(_loc5_,param2,param3);
            }
         }
         else
         {
            _loc6_ = this.§2#F§.length - 1;
            for(; _loc6_ >= 0; _loc6_--)
            {
               if(_loc5_ = this.§2#F§[_loc6_])
               {
                  if(!param4)
                  {
                     this.§9x§(_loc5_,param2,param3);
                     return;
                  }
                  this.§9x§(_loc5_,param2,false);
                  continue;
               }
            }
         }
      }
      
      protected function §&#Z§(param1:PopupLayerEvent) : void
      {
         var _loc2_:§3!U§ = this.§2#F§[param1.§9#I§];
         if(_loc2_)
         {
            this.§9x§(_loc2_,param1.§@!0§.useTransitionOut,param1.§@!0§.allowQueue);
         }
      }
      
      protected function §`#4§(param1:PopupLayerEvent) : void
      {
         if(!this.§`'§())
         {
            dispatchEvent(new §5"_§(§5"_§.CLOSE,null));
         }
      }
      
      protected function §'3§(param1:PopupLayerEvent) : void
      {
         dispatchEvent(new §5"_§(§5"_§.OPEN,null));
      }
      
      protected function §>$"§(param1:int) : §3!U§
      {
         return this.addLayer(param1);
      }
   }
}
