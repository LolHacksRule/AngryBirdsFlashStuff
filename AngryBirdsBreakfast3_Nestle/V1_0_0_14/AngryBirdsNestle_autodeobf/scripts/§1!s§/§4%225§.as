package §1!s§
{
   import §&"6§.§;G§;
   import §&"6§.PopupLayerEvent;
   import §'"&§.§4!2§;
   import §7"6§.§^!_§;
   import flash.display.MovieClip;
   import flash.events.EventDispatcher;
   import flash.geom.Rectangle;
   
   public class §4"5§ extends EventDispatcher implements §5a§
   {
       
      
      protected var §;"#§:MovieClip;
      
      protected var §;!j§:Number;
      
      protected var §#u§:Number;
      
      protected var §<a§:Vector.<§4!6§>;
      
      protected var §%E§:§^!_§;
      
      protected var §1!!§:§4!2§;
      
      public function §4"5§(param1:MovieClip, param2:§^!_§, param3:§4!2§, param4:Number = 960, param5:Number = 560, param6:int = 11)
      {
         super();
         this.§<a§ = new Vector.<§4!6§>(param6,true);
         this.§%E§ = param2;
         this.§1!!§ = param3;
         this.§;"#§ = param1;
         this.§;!j§ = param4;
         this.§#u§ = param5;
      }
      
      public function setViewSize(param1:int, param2:int) : void
      {
         var _loc3_:§4!6§ = null;
         this.§;!j§ = param1;
         this.§#u§ = param2;
         for each(_loc3_ in this.§<a§)
         {
            if(_loc3_)
            {
               _loc3_.setViewSize(param1,param2);
            }
         }
      }
      
      public function §6!7§() : Boolean
      {
         var _loc1_:§4!6§ = null;
         for each(_loc1_ in this.§<a§)
         {
            if(_loc1_ && _loc1_.§6!7§())
            {
               return true;
            }
         }
         return false;
      }
      
      public function isPopupOpenById(param1:String) : Boolean
      {
         var _loc2_:§4!6§ = null;
         for each(_loc2_ in this.§<a§)
         {
            if(_loc2_ && _loc2_.isPopupOpenById(param1))
            {
               return true;
            }
         }
         return false;
      }
      
      public function §7!p§(param1:String) : Boolean
      {
         var _loc2_:§4!6§ = null;
         for each(_loc2_ in this.§<a§)
         {
            if(_loc2_ && _loc2_.§7!p§(param1))
            {
               return true;
            }
         }
         return false;
      }
      
      public function §=f§(param1:String) : §+!y§
      {
         var _loc2_:§4!6§ = null;
         for each(_loc2_ in this.§<a§)
         {
            if(_loc2_ && _loc2_.isPopupOpenById(param1))
            {
               return _loc2_.§=f§(param1);
            }
         }
         return null;
      }
      
      public function addLayer(param1:int, param2:Boolean = true, param3:Rectangle = null, param4:Boolean = false) : §4!6§
      {
         var _loc5_:§4!6§;
         if(_loc5_ = this.§<a§[param1])
         {
            _loc5_.isPersistentLayer = param4;
            return _loc5_;
         }
         (_loc5_ = this.§<a§[param1] = this.§<5§(param1,param2,param3,param4)).addEventListener(PopupLayerEvent.OPEN,this.§"!H§);
         _loc5_.addEventListener(PopupLayerEvent.CLOSE,this.§=I§);
         _loc5_.addEventListener(PopupLayerEvent.§[[§,this.§8!V§);
         this.§=u§();
         return _loc5_;
      }
      
      protected function §<5§(param1:int, param2:Boolean, param3:Rectangle, param4:Boolean) : §4!6§
      {
         var _loc5_:§4!6§;
         (_loc5_ = new §4!6§(param1,this.§;"#§,this.§%E§,this.§1!!§,param2,param3)).isPersistentLayer = param4;
         return _loc5_;
      }
      
      protected function §-!R§(param1:§4!6§, param2:§4!6§) : int
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
      
      protected function §=u§() : void
      {
         var _loc2_:§4!6§ = null;
         var _loc1_:Vector.<§4!6§> = this.§<a§.concat();
         _loc1_.sort(this.§-!R§);
         var _loc3_:int = 0;
         while(_loc3_ < _loc1_.length)
         {
            _loc2_ = _loc1_[_loc3_];
            if(_loc2_)
            {
               _loc2_.§%q§();
            }
            _loc3_++;
         }
      }
      
      public function setPersistentLayer(param1:int, param2:Boolean) : void
      {
         if(this.§<a§[param1])
         {
            this.§<a§[param1].isPersistentLayer = param2;
         }
      }
      
      public function openPopup(param1:§+!y§, param2:Boolean = false, param3:Boolean = false, param4:Boolean = true, param5:Boolean = false) : void
      {
         var _loc6_:§4!6§ = this.§3$§(param1.§0;§);
         var _loc7_:§]r§ = new §]r§(param1,param2,param3,param4);
         _loc6_.openPopup(_loc7_,param5);
         this.setViewSize(this.§;!j§,this.§#u§);
      }
      
      public function §catch§(param1:String, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:§+!y§;
         if(_loc4_ = this.§=f§(param1))
         {
            this.closePopup(_loc4_.§0;§,param2,param3);
         }
      }
      
      public function closeAllPopups(param1:Boolean = false, param2:Boolean = true) : void
      {
         var _loc3_:§4!6§ = null;
         for each(_loc3_ in this.§<a§)
         {
            if(_loc3_)
            {
               if(!_loc3_.isPersistentLayer)
               {
                  this.§,!Q§(_loc3_,param1,param2);
               }
            }
         }
      }
      
      protected function §,!Q§(param1:§4!6§, param2:Boolean, param3:Boolean) : void
      {
         param1.closePopup(param2,param3);
      }
      
      public function closePopup(param1:int = -1, param2:Boolean = false, param3:Boolean = true, param4:Boolean = false) : void
      {
         var _loc5_:§4!6§ = null;
         var _loc6_:int = 0;
         if(param1 >= 0 && !param4)
         {
            if(_loc5_ = this.§<a§[param1])
            {
               this.§,!Q§(_loc5_,param2,param3);
            }
         }
         else
         {
            _loc6_ = this.§<a§.length - 1;
            while(_loc6_ >= 0)
            {
               if(_loc5_ = this.§<a§[_loc6_])
               {
                  if(!param4)
                  {
                     this.§,!Q§(_loc5_,param2,param3);
                     return;
                  }
                  this.§,!Q§(_loc5_,param2,false);
               }
               _loc6_--;
            }
         }
      }
      
      protected function §8!V§(param1:PopupLayerEvent) : void
      {
         var _loc2_:§4!6§ = this.§<a§[param1.§0;§];
         if(_loc2_)
         {
            this.§,!Q§(_loc2_,param1.§3E§.useTransitionOut,param1.§3E§.allowQueue);
         }
      }
      
      protected function §=I§(param1:PopupLayerEvent) : void
      {
         if(!this.§6!7§())
         {
            dispatchEvent(new §;G§(§;G§.CLOSE,null));
         }
      }
      
      protected function §"!H§(param1:PopupLayerEvent) : void
      {
         dispatchEvent(new §;G§(§;G§.OPEN,null));
      }
      
      protected function §3$§(param1:int) : §4!6§
      {
         return this.addLayer(param1);
      }
   }
}
