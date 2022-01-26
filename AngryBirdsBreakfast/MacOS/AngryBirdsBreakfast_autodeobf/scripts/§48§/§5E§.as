package §48§
{
   import §9!`§.§;g§;
   import §9!`§.PopupLayerEvent;
   import §;0§.§6h§;
   import §?""§.§6!A§;
   import flash.display.MovieClip;
   import flash.events.EventDispatcher;
   import flash.geom.Rectangle;
   
   public class §5E§ extends EventDispatcher implements §1k§
   {
       
      
      protected var §@'§:MovieClip;
      
      protected var §+q§:Number;
      
      protected var §;>§:Number;
      
      protected var §"x§:Vector.<§^A§>;
      
      protected var §-!]§:§6h§;
      
      protected var §6!c§:§6!A§;
      
      public function §5E§(param1:MovieClip, param2:§6h§, param3:§6!A§, param4:Number = 960, param5:Number = 560, param6:int = 11)
      {
         super();
         this.§"x§ = new Vector.<§^A§>(param6,true);
         this.§-!]§ = param2;
         this.§6!c§ = param3;
         this.§@'§ = param1;
         this.§+q§ = param4;
         this.§;>§ = param5;
      }
      
      public function setViewSize(param1:int, param2:int) : void
      {
         var _loc3_:§^A§ = null;
         this.§+q§ = param1;
         this.§;>§ = param2;
         for each(_loc3_ in this.§"x§)
         {
            if(_loc3_)
            {
               _loc3_.setViewSize(param1,param2);
            }
         }
      }
      
      public function §%&§() : Boolean
      {
         var _loc1_:§^A§ = null;
         for each(_loc1_ in this.§"x§)
         {
            if(_loc1_ && _loc1_.§%&§())
            {
               return true;
            }
         }
         return false;
      }
      
      public function isPopupOpenById(param1:String) : Boolean
      {
         var _loc2_:§^A§ = null;
         for each(_loc2_ in this.§"x§)
         {
            if(_loc2_ && _loc2_.isPopupOpenById(param1))
            {
               return true;
            }
         }
         return false;
      }
      
      public function §^0§(param1:String) : Boolean
      {
         var _loc2_:§^A§ = null;
         for each(_loc2_ in this.§"x§)
         {
            if(_loc2_ && _loc2_.§^0§(param1))
            {
               return true;
            }
         }
         return false;
      }
      
      public function §0z§(param1:String) : §["#§
      {
         var _loc2_:§^A§ = null;
         for each(_loc2_ in this.§"x§)
         {
            if(_loc2_ && _loc2_.isPopupOpenById(param1))
            {
               return _loc2_.§0z§(param1);
            }
         }
         return null;
      }
      
      public function §?<§(param1:int, param2:Boolean = true, param3:Rectangle = null, param4:Boolean = false) : §^A§
      {
         var _loc5_:§^A§;
         if(_loc5_ = this.§"x§[param1])
         {
            _loc5_.isPersistentLayer = param4;
            return _loc5_;
         }
         (_loc5_ = this.§"x§[param1] = this.§8P§(param1,param2,param3,param4)).addEventListener(PopupLayerEvent.OPEN,this.§@!J§);
         _loc5_.addEventListener(PopupLayerEvent.CLOSE,this.§`!;§);
         _loc5_.addEventListener(PopupLayerEvent.§]]§,this.§^!Q§);
         this.§1!'§();
         return _loc5_;
      }
      
      protected function §8P§(param1:int, param2:Boolean, param3:Rectangle, param4:Boolean) : §^A§
      {
         var _loc5_:§^A§;
         (_loc5_ = new §^A§(param1,this.§@'§,this.§-!]§,this.§6!c§,param2,param3)).isPersistentLayer = param4;
         return _loc5_;
      }
      
      protected function §9!E§(param1:§^A§, param2:§^A§) : int
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
      
      protected function §1!'§() : void
      {
         var _loc2_:§^A§ = null;
         var _loc1_:Vector.<§^A§> = this.§"x§.concat();
         _loc1_.sort(this.§9!E§);
         var _loc3_:int = 0;
         while(_loc3_ < _loc1_.length)
         {
            _loc2_ = _loc1_[_loc3_];
            if(_loc2_)
            {
               _loc2_.§;!y§();
            }
            _loc3_++;
         }
      }
      
      public function §]k§(param1:int, param2:Boolean) : void
      {
         if(this.§"x§[param1])
         {
            this.§"x§[param1].isPersistentLayer = param2;
         }
      }
      
      public function openPopup(param1:§["#§, param2:Boolean = false, param3:Boolean = false, param4:Boolean = true, param5:Boolean = false) : void
      {
         var _loc6_:§^A§ = this.§=!Q§(param1.§<4§);
         var _loc7_:§5!c§ = new §5!c§(param1,param2,param3,param4);
         _loc6_.openPopup(_loc7_,param5);
         this.setViewSize(this.§+q§,this.§;>§);
      }
      
      public function §9G§(param1:String, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:§["#§;
         if(_loc4_ = this.§0z§(param1))
         {
            this.closePopup(_loc4_.§<4§,param2,param3);
         }
      }
      
      public function §[!"§(param1:Boolean = false, param2:Boolean = true) : void
      {
         var _loc3_:§^A§ = null;
         for each(_loc3_ in this.§"x§)
         {
            if(_loc3_)
            {
               if(!_loc3_.isPersistentLayer)
               {
                  this.§5H§(_loc3_,param1,param2);
               }
            }
         }
      }
      
      protected function §5H§(param1:§^A§, param2:Boolean, param3:Boolean) : void
      {
         param1.closePopup(param2,param3);
      }
      
      public function closePopup(param1:int = -1, param2:Boolean = false, param3:Boolean = true, param4:Boolean = false) : void
      {
         var _loc5_:§^A§ = null;
         var _loc6_:int = 0;
         if(param1 >= 0 && !param4)
         {
            if(_loc5_ = this.§"x§[param1])
            {
               this.§5H§(_loc5_,param2,param3);
            }
         }
         else
         {
            _loc6_ = this.§"x§.length - 1;
            while(_loc6_ >= 0)
            {
               if(_loc5_ = this.§"x§[_loc6_])
               {
                  if(!param4)
                  {
                     this.§5H§(_loc5_,param2,param3);
                     return;
                  }
                  this.§5H§(_loc5_,param2,false);
               }
               _loc6_--;
            }
         }
      }
      
      protected function §^!Q§(param1:PopupLayerEvent) : void
      {
         var _loc2_:§^A§ = this.§"x§[param1.§<4§];
         if(_loc2_)
         {
            this.§5H§(_loc2_,param1.§7!e§.useTransitionOut,param1.§7!e§.allowQueue);
         }
      }
      
      protected function §`!;§(param1:PopupLayerEvent) : void
      {
         if(!this.§%&§())
         {
            dispatchEvent(new §;g§(§;g§.CLOSE,null));
         }
      }
      
      protected function §@!J§(param1:PopupLayerEvent) : void
      {
         dispatchEvent(new §;g§(§;g§.OPEN,null));
      }
      
      protected function §=!Q§(param1:int) : §^A§
      {
         return this.§?<§(param1);
      }
   }
}
