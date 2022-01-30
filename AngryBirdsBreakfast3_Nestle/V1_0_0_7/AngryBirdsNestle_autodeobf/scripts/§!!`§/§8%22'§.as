package §!!`§
{
   import §&!+§.§@z§;
   import §&!+§.PopupLayerEvent;
   import §'!u§.§&S§;
   import §="3§.§[N§;
   import flash.display.MovieClip;
   import flash.events.EventDispatcher;
   import flash.geom.Rectangle;
   
   public class §8"'§ extends EventDispatcher implements §12§
   {
       
      
      protected var §-"1§:MovieClip;
      
      protected var §-!k§:Number;
      
      protected var §]v§:Number;
      
      protected var §>"5§:Vector.<§=!q§>;
      
      private var §-F§:§&S§;
      
      private var §6!x§:§[N§;
      
      public function §8"'§(param1:MovieClip, param2:§&S§, param3:§[N§, param4:Number = 960, param5:Number = 560, param6:int = 11)
      {
         super();
         this.§>"5§ = new Vector.<§=!q§>(param6,true);
         this.§-F§ = param2;
         this.§6!x§ = param3;
         this.§-"1§ = param1;
         this.§-!k§ = param4;
         this.§]v§ = param5;
      }
      
      public function setViewSize(param1:int, param2:int) : void
      {
         var _loc3_:§=!q§ = null;
         this.§-!k§ = param1;
         this.§]v§ = param2;
         for each(_loc3_ in this.§>"5§)
         {
            if(_loc3_)
            {
               _loc3_.setViewSize(param1,param2);
            }
         }
      }
      
      public function §@"-§() : Boolean
      {
         var _loc1_:§=!q§ = null;
         for each(_loc1_ in this.§>"5§)
         {
            if(_loc1_ && _loc1_.§@"-§())
            {
               return true;
            }
         }
         return false;
      }
      
      public function isPopupOpenById(param1:String) : Boolean
      {
         var _loc2_:§=!q§ = null;
         for each(_loc2_ in this.§>"5§)
         {
            if(_loc2_ && _loc2_.isPopupOpenById(param1))
            {
               return true;
            }
         }
         return false;
      }
      
      public function §"z§(param1:String) : Boolean
      {
         var _loc2_:§=!q§ = null;
         for each(_loc2_ in this.§>"5§)
         {
            if(_loc2_ && _loc2_.§"z§(param1))
            {
               return true;
            }
         }
         return false;
      }
      
      public function §`!L§(param1:String) : §3%§
      {
         var _loc2_:§=!q§ = null;
         for each(_loc2_ in this.§>"5§)
         {
            if(_loc2_ && _loc2_.isPopupOpenById(param1))
            {
               return _loc2_.§`!L§(param1);
            }
         }
         return null;
      }
      
      public function addLayer(param1:int, param2:Boolean = true, param3:Rectangle = null, param4:Boolean = false) : §=!q§
      {
         var _loc5_:§=!q§;
         if(_loc5_ = this.§>"5§[param1])
         {
            _loc5_.isPersistentLayer = param4;
            return _loc5_;
         }
         (_loc5_ = this.§>"5§[param1] = new §=!q§(param1,this.§-"1§,this.§-F§,this.§6!x§,param2,param3)).isPersistentLayer = param4;
         _loc5_.addEventListener(PopupLayerEvent.OPEN,this.§8!D§);
         _loc5_.addEventListener(PopupLayerEvent.CLOSE,this.§%2§);
         _loc5_.addEventListener(PopupLayerEvent.§`[§,this.§>!-§);
         this.§;!x§();
         return _loc5_;
      }
      
      protected function §^" §(param1:§=!q§, param2:§=!q§) : int
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
      
      protected function §;!x§() : void
      {
         var _loc2_:§=!q§ = null;
         var _loc1_:Vector.<§=!q§> = this.§>"5§.concat();
         _loc1_.sort(this.§^" §);
         var _loc3_:int = 0;
         while(_loc3_ < _loc1_.length)
         {
            _loc2_ = _loc1_[_loc3_];
            if(_loc2_)
            {
               _loc2_.§1""§();
            }
            _loc3_++;
         }
      }
      
      public function setPersistentLayer(param1:int, param2:Boolean) : void
      {
         if(this.§>"5§[param1])
         {
            this.§>"5§[param1].isPersistentLayer = param2;
         }
      }
      
      public function openPopup(param1:§3%§, param2:Boolean = false, param3:Boolean = false, param4:Boolean = true, param5:Boolean = false) : void
      {
         var _loc6_:§=!q§ = this.§]!a§(param1.§5! §);
         var _loc7_:§9@§ = new §9@§(param1,param2,param3,param4);
         _loc6_.openPopup(_loc7_,param5);
         this.setViewSize(this.§-!k§,this.§]v§);
      }
      
      public function § >§(param1:String, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:§3%§;
         if(_loc4_ = this.§`!L§(param1))
         {
            this.closePopup(_loc4_.§5! §,param2,param3);
         }
      }
      
      public function closeAllPopups(param1:Boolean = false, param2:Boolean = true) : void
      {
         var _loc3_:§=!q§ = null;
         for each(_loc3_ in this.§>"5§)
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
         var _loc5_:§=!q§ = null;
         var _loc6_:int = 0;
         if(param1 >= 0 && !param4)
         {
            if(_loc5_ = this.§>"5§[param1])
            {
               _loc5_.closePopup(param2,param3);
            }
         }
         else
         {
            _loc6_ = this.§>"5§.length - 1;
            while(_loc6_ >= 0)
            {
               if(_loc5_ = this.§>"5§[_loc6_])
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
      
      protected function §>!-§(param1:PopupLayerEvent) : void
      {
         var _loc2_:§=!q§ = this.§>"5§[param1.§5! §];
         if(_loc2_)
         {
            _loc2_.closePopup(param1.§6S§.useTransitionOut,param1.§6S§.allowQueue);
         }
      }
      
      protected function §%2§(param1:PopupLayerEvent) : void
      {
         if(!this.§@"-§())
         {
            dispatchEvent(new §@z§(§@z§.CLOSE,null));
         }
      }
      
      protected function §8!D§(param1:PopupLayerEvent) : void
      {
         dispatchEvent(new §@z§(§@z§.OPEN,null));
      }
      
      protected function §]!a§(param1:int) : §=!q§
      {
         return this.addLayer(param1);
      }
   }
}
