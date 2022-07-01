package §?N§
{
   import §"m§.§,g§;
   import §;!b§.§%>§;
   import §?Z§.§5-§;
   import §?Z§.PopupLayerEvent;
   import flash.display.MovieClip;
   import flash.events.EventDispatcher;
   import flash.geom.Rectangle;
   
   public class §6!b§ extends EventDispatcher implements §+!J§
   {
       
      
      protected var §0+§:MovieClip;
      
      protected var §!5§:Number;
      
      protected var §!&§:Number;
      
      protected var §@![§:Vector.<§&j§>;
      
      private var §"q§:§%>§;
      
      private var §9!1§:§,g§;
      
      public function §6!b§(param1:MovieClip, param2:§%>§, param3:§,g§, param4:Number = 960, param5:Number = 560, param6:int = 11)
      {
         super();
         this.§@![§ = new Vector.<§&j§>(param6,true);
         this.§"q§ = param2;
         this.§9!1§ = param3;
         this.§0+§ = param1;
         this.§!5§ = param4;
         this.§!&§ = param5;
      }
      
      public function setViewSize(param1:int, param2:int) : void
      {
         var _loc3_:§&j§ = null;
         this.§!5§ = param1;
         this.§!&§ = param2;
         for each(_loc3_ in this.§@![§)
         {
            if(_loc3_)
            {
               _loc3_.setViewSize(param1,param2);
            }
         }
      }
      
      public function §7"#§() : Boolean
      {
         var _loc1_:§&j§ = null;
         for each(_loc1_ in this.§@![§)
         {
            if(_loc1_ && _loc1_.§7"#§())
            {
               return true;
            }
         }
         return false;
      }
      
      public function isPopupOpenById(param1:String) : Boolean
      {
         var _loc2_:§&j§ = null;
         for each(_loc2_ in this.§@![§)
         {
            if(_loc2_ && _loc2_.isPopupOpenById(param1))
            {
               return true;
            }
         }
         return false;
      }
      
      public function §[k§(param1:String) : Boolean
      {
         var _loc2_:§&j§ = null;
         for each(_loc2_ in this.§@![§)
         {
            if(_loc2_ && _loc2_.§[k§(param1))
            {
               return true;
            }
         }
         return false;
      }
      
      public function §[U§(param1:String) : §;!E§
      {
         var _loc2_:§&j§ = null;
         for each(_loc2_ in this.§@![§)
         {
            if(_loc2_ && _loc2_.isPopupOpenById(param1))
            {
               return _loc2_.§[U§(param1);
            }
         }
         return null;
      }
      
      public function addLayer(param1:int, param2:Boolean = true, param3:Rectangle = null, param4:Boolean = false) : §&j§
      {
         var _loc5_:§&j§;
         if(_loc5_ = this.§@![§[param1])
         {
            _loc5_.isPersistentLayer = param4;
            return _loc5_;
         }
         (_loc5_ = this.§@![§[param1] = new §&j§(param1,this.§0+§,this.§"q§,this.§9!1§,param2,param3)).isPersistentLayer = param4;
         _loc5_.addEventListener(PopupLayerEvent.OPEN,this.§?!k§);
         _loc5_.addEventListener(PopupLayerEvent.CLOSE,this.§6![§);
         _loc5_.addEventListener(PopupLayerEvent.§1^§,this.§`" §);
         this.§6p§();
         return _loc5_;
      }
      
      protected function §]!'§(param1:§&j§, param2:§&j§) : int
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
      
      protected function §6p§() : void
      {
         var _loc2_:§&j§ = null;
         var _loc1_:Vector.<§&j§> = this.§@![§.concat();
         _loc1_.sort(this.§]!'§);
         var _loc3_:int = 0;
         while(_loc3_ < _loc1_.length)
         {
            _loc2_ = _loc1_[_loc3_];
            if(_loc2_)
            {
               _loc2_.§'" §();
            }
            _loc3_++;
         }
      }
      
      public function setPersistentLayer(param1:int, param2:Boolean) : void
      {
         if(this.§@![§[param1])
         {
            this.§@![§[param1].isPersistentLayer = param2;
         }
      }
      
      public function openPopup(param1:§;!E§, param2:Boolean = false, param3:Boolean = false, param4:Boolean = true, param5:Boolean = false) : void
      {
         var _loc6_:§&j§ = this.§0!q§(param1.§--§);
         var _loc7_:§!q§ = new §!q§(param1,param2,param3,param4);
         _loc6_.openPopup(_loc7_,param5);
         this.setViewSize(this.§!5§,this.§!&§);
      }
      
      public function §2!l§(param1:String, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:§;!E§;
         if(_loc4_ = this.§[U§(param1))
         {
            this.closePopup(_loc4_.§--§,param2,param3);
         }
      }
      
      public function closeAllPopups(param1:Boolean = false, param2:Boolean = true) : void
      {
         var _loc3_:§&j§ = null;
         for each(_loc3_ in this.§@![§)
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
         var _loc5_:§&j§ = null;
         var _loc6_:int = 0;
         if(param1 >= 0 && !param4)
         {
            if(_loc5_ = this.§@![§[param1])
            {
               _loc5_.closePopup(param2,param3);
            }
         }
         else
         {
            _loc6_ = this.§@![§.length - 1;
            while(_loc6_ >= 0)
            {
               if(_loc5_ = this.§@![§[_loc6_])
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
      
      protected function §`" §(param1:PopupLayerEvent) : void
      {
         var _loc2_:§&j§ = this.§@![§[param1.§--§];
         if(_loc2_)
         {
            _loc2_.closePopup(param1.§break§.useTransitionOut,param1.§break§.allowQueue);
         }
      }
      
      protected function §6![§(param1:PopupLayerEvent) : void
      {
         if(!this.§7"#§())
         {
            dispatchEvent(new §5-§(§5-§.CLOSE,null));
         }
      }
      
      protected function §?!k§(param1:PopupLayerEvent) : void
      {
         dispatchEvent(new §5-§(§5-§.OPEN,null));
      }
      
      protected function §0!q§(param1:int) : §&j§
      {
         return this.addLayer(param1);
      }
   }
}
