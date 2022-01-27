package §7!H§
{
   import §#!b§.§'y§;
   import §%!r§.§3!'§;
   import §^r§.§@!T§;
   import §^r§.PopupLayerEvent;
   import flash.display.MovieClip;
   import flash.events.EventDispatcher;
   import flash.geom.Rectangle;
   
   public class §#!f§ extends EventDispatcher implements §>1§
   {
       
      
      protected var §[S§:MovieClip;
      
      protected var § !%§:Number;
      
      protected var §=D§:Number;
      
      protected var §<M§:Vector.<§'!3§>;
      
      private var §7Z§:§3!'§;
      
      private var §3!+§:§'y§;
      
      public function §#!f§(param1:MovieClip, param2:§3!'§, param3:§'y§, param4:Number = 960, param5:Number = 560, param6:int = 11)
      {
         super();
         this.§<M§ = new Vector.<§'!3§>(param6,true);
         this.§7Z§ = param2;
         this.§3!+§ = param3;
         this.§[S§ = param1;
         this.§ !%§ = param4;
         this.§=D§ = param5;
      }
      
      public function setViewSize(param1:int, param2:int) : void
      {
         var _loc3_:§'!3§ = null;
         this.§ !%§ = param1;
         this.§=D§ = param2;
         for each(_loc3_ in this.§<M§)
         {
            if(_loc3_)
            {
               if(_loc3_.isPersistentLayer || _loc3_.index == §1#§.§&R§ || _loc3_.index == §1#§.§=g§)
               {
                  _loc3_.setViewSize(param1,param2);
               }
            }
         }
      }
      
      public function §^",§() : Boolean
      {
         var _loc1_:§'!3§ = null;
         for each(_loc1_ in this.§<M§)
         {
            if(_loc1_ && _loc1_.§^",§())
            {
               return true;
            }
         }
         return false;
      }
      
      public function isPopupOpenById(param1:String) : Boolean
      {
         var _loc2_:§'!3§ = null;
         for each(_loc2_ in this.§<M§)
         {
            if(_loc2_ && _loc2_.isPopupOpenById(param1))
            {
               return true;
            }
         }
         return false;
      }
      
      public function §'!Q§(param1:String) : §3z§
      {
         var _loc2_:§'!3§ = null;
         for each(_loc2_ in this.§<M§)
         {
            if(_loc2_ && _loc2_.isPopupOpenById(param1))
            {
               return _loc2_.§'!Q§(param1);
            }
         }
         return null;
      }
      
      public function addLayer(param1:int, param2:Boolean = true, param3:Rectangle = null, param4:Boolean = false) : §'!3§
      {
         var _loc5_:§'!3§;
         if(_loc5_ = this.§<M§[param1])
         {
            _loc5_.isPersistentLayer = param4;
            return _loc5_;
         }
         (_loc5_ = this.§<M§[param1] = new §'!3§(param1,this.§[S§,this.§7Z§,this.§3!+§,param2,param3)).isPersistentLayer = param4;
         _loc5_.addEventListener(PopupLayerEvent.OPEN,this.§,l§);
         _loc5_.addEventListener(PopupLayerEvent.CLOSE,this.§?r§);
         _loc5_.addEventListener(PopupLayerEvent.§^!I§,this.§6'§);
         this.§%2§();
         return _loc5_;
      }
      
      protected function §'!N§(param1:§'!3§, param2:§'!3§) : int
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
      
      protected function §%2§() : void
      {
         var _loc2_:§'!3§ = null;
         var _loc1_:Vector.<§'!3§> = this.§<M§.concat();
         _loc1_.sort(this.§'!N§);
         var _loc3_:int = 0;
         while(_loc3_ < _loc1_.length)
         {
            _loc2_ = _loc1_[_loc3_];
            if(_loc2_)
            {
               _loc2_.§,!<§();
            }
            _loc3_++;
         }
      }
      
      public function setPersistentLayer(param1:int, param2:Boolean) : void
      {
         if(this.§<M§[param1])
         {
            this.§<M§[param1].isPersistentLayer = param2;
         }
      }
      
      public function openPopup(param1:§3z§, param2:Boolean = false, param3:Boolean = false, param4:Boolean = true, param5:Boolean = false) : void
      {
         var _loc6_:§'!3§ = this.§?!k§(param1.§<!]§);
         var _loc7_:§'"H§ = new §'"H§(param1,param2,param3,param4);
         if(_loc6_.§<! §(_loc7_,param5))
         {
            _loc6_.openPopup(_loc7_,param5);
            _loc6_.setViewSize(this.§ !%§,this.§=D§);
         }
      }
      
      public function §9"4§(param1:String, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:§3z§;
         if(_loc4_ = this.§'!Q§(param1))
         {
            this.closePopup(_loc4_.§<!]§,param2,param3);
         }
      }
      
      public function §@;§(param1:Boolean = false, param2:Boolean = true) : void
      {
         var _loc3_:§'!3§ = null;
         for each(_loc3_ in this.§<M§)
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
         var _loc5_:§'!3§ = null;
         var _loc6_:int = 0;
         if(param1 >= 0 && !param4)
         {
            if(_loc5_ = this.§<M§[param1])
            {
               _loc5_.closePopup(param2,param3);
            }
         }
         else
         {
            _loc6_ = this.§<M§.length - 1;
            while(_loc6_ >= 0)
            {
               if(_loc5_ = this.§<M§[_loc6_])
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
      
      protected function §6'§(param1:PopupLayerEvent) : void
      {
         var _loc2_:§'!3§ = this.§<M§[param1.§<!]§];
         if(_loc2_)
         {
            _loc2_.closePopup(param1.§ L§.useTransitionOut,param1.§ L§.allowQueue);
         }
      }
      
      protected function §?r§(param1:PopupLayerEvent) : void
      {
         if(!this.§^",§())
         {
            dispatchEvent(new §@!T§(§@!T§.CLOSE,null));
         }
      }
      
      protected function §,l§(param1:PopupLayerEvent) : void
      {
         dispatchEvent(new §@!T§(§@!T§.OPEN,null));
      }
      
      protected function §?!k§(param1:int) : §'!3§
      {
         return this.addLayer(param1);
      }
   }
}
