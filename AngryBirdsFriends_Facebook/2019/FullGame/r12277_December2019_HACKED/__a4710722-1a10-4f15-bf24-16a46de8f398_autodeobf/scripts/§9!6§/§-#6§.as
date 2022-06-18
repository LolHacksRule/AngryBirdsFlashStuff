package §9!6§
{
   import § #_§.§?!>§;
   import §&1§.§4""§;
   import §5"l§.§0!b§;
   import §5"l§.PopupLayerEvent;
   import flash.display.MovieClip;
   import flash.events.EventDispatcher;
   import flash.geom.Rectangle;
   
   public class §-#6§ extends EventDispatcher implements §8#v§
   {
       
      
      protected var §'o§:MovieClip;
      
      protected var §;%§:Number;
      
      protected var §]"D§:Number;
      
      protected var §,"`§:Vector.<§`!C§>;
      
      protected var §,#a§:§?!>§;
      
      protected var §@!y§:§4""§;
      
      public function §-#6§(param1:MovieClip, param2:§?!>§, param3:§4""§, param4:Number = 960, param5:Number = 560, param6:int = 11)
      {
         super();
         this.§,"`§ = new Vector.<§`!C§>(param6,true);
         this.§,#a§ = param2;
         this.§@!y§ = param3;
         this.§'o§ = param1;
         this.§;%§ = param4;
         this.§]"D§ = param5;
      }
      
      public function setViewSize(param1:int, param2:int) : void
      {
         var _loc3_:§`!C§ = null;
         this.§;%§ = param1;
         this.§]"D§ = param2;
         for each(_loc3_ in this.§,"`§)
         {
            if(_loc3_)
            {
               _loc3_.setViewSize(param1,param2);
            }
         }
      }
      
      public function §!=§() : Boolean
      {
         var _loc1_:§`!C§ = null;
         for each(_loc1_ in this.§,"`§)
         {
            if(_loc1_ && _loc1_.§!=§())
            {
               return true;
            }
         }
         return false;
      }
      
      public function isPopupOpenById(param1:String) : Boolean
      {
         var _loc2_:§`!C§ = null;
         for each(_loc2_ in this.§,"`§)
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
         var _loc2_:§`!C§ = null;
         for each(_loc2_ in this.§,"`§)
         {
            if(_loc2_ && _loc2_.isPopupInQueueById(param1))
            {
               return true;
            }
         }
         return false;
      }
      
      public function getOpenPopupById(param1:String) : §?!y§
      {
         var _loc2_:§`!C§ = null;
         for each(_loc2_ in this.§,"`§)
         {
            if(_loc2_ && _loc2_.isPopupOpenById(param1))
            {
               return _loc2_.getOpenPopupById(param1);
            }
         }
         return null;
      }
      
      public function addLayer(param1:int, param2:Boolean = true, param3:Rectangle = null, param4:Boolean = false) : §`!C§
      {
         var _loc5_:§`!C§;
         if(_loc5_ = this.§,"`§[param1])
         {
            _loc5_.isPersistentLayer = param4;
            return _loc5_;
         }
         (_loc5_ = this.§,"`§[param1] = this.§6"D§(param1,param2,param3,param4)).addEventListener(PopupLayerEvent.OPEN,this.§38§);
         _loc5_.addEventListener(PopupLayerEvent.CLOSE,this.§0"0§);
         _loc5_.addEventListener(PopupLayerEvent.§7G§,this.§1#z§);
         this.§-!p§();
         return _loc5_;
      }
      
      protected function §6"D§(param1:int, param2:Boolean, param3:Rectangle, param4:Boolean) : §`!C§
      {
         var _loc5_:§`!C§;
         (_loc5_ = new §`!C§(param1,this.§'o§,this.§,#a§,this.§@!y§,param2,param3)).isPersistentLayer = param4;
         return _loc5_;
      }
      
      protected function §4M§(param1:§`!C§, param2:§`!C§) : int
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
      
      protected function §-!p§() : void
      {
         var _loc2_:§`!C§ = null;
         var _loc1_:Vector.<§`!C§> = this.§,"`§.concat();
         _loc1_.sort(this.§4M§);
         var _loc3_:int = 0;
         while(_loc3_ < _loc1_.length)
         {
            _loc2_ = _loc1_[_loc3_];
            if(_loc2_)
            {
               _loc2_.§6#o§();
            }
            _loc3_++;
         }
      }
      
      public function §1#^§(param1:int, param2:Boolean) : void
      {
         if(this.§,"`§[param1])
         {
            this.§,"`§[param1].isPersistentLayer = param2;
         }
      }
      
      public function openPopup(param1:§?!y§, param2:Boolean = false, param3:Boolean = false, param4:Boolean = true, param5:Boolean = false) : void
      {
         var _loc6_:§`!C§ = this.§6"P§(param1.§<#y§);
         var _loc7_:§7#%§ = new §7#%§(param1,param2,param3,param4);
         _loc6_.openPopup(_loc7_,param5);
         this.setViewSize(this.§;%§,this.§]"D§);
      }
      
      public function §>#g§(param1:String, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:§?!y§;
         if(_loc4_ = this.getOpenPopupById(param1))
         {
            this.closePopup(_loc4_.§<#y§,param2,param3);
         }
      }
      
      public function §&"r§(param1:Boolean = false, param2:Boolean = true) : void
      {
         var _loc3_:§`!C§ = null;
         for each(_loc3_ in this.§,"`§)
         {
            if(_loc3_)
            {
               if(!_loc3_.isPersistentLayer)
               {
                  this.§!"E§(_loc3_,param1,param2);
               }
            }
         }
      }
      
      protected function §!"E§(param1:§`!C§, param2:Boolean, param3:Boolean) : void
      {
         param1.closePopup(param2,param3);
      }
      
      public function closePopup(param1:int = -1, param2:Boolean = false, param3:Boolean = true, param4:Boolean = false) : void
      {
         var _loc5_:§`!C§ = null;
         var _loc6_:int = 0;
         if(param1 >= 0 && !param4)
         {
            if(_loc5_ = this.§,"`§[param1])
            {
               this.§!"E§(_loc5_,param2,param3);
            }
         }
         else
         {
            _loc6_ = this.§,"`§.length - 1;
            for(; _loc6_ >= 0; _loc6_--)
            {
               if(_loc5_ = this.§,"`§[_loc6_])
               {
                  if(!param4)
                  {
                     this.§!"E§(_loc5_,param2,param3);
                     return;
                  }
                  this.§!"E§(_loc5_,param2,false);
                  continue;
               }
            }
         }
      }
      
      protected function §1#z§(param1:PopupLayerEvent) : void
      {
         var _loc2_:§`!C§ = this.§,"`§[param1.§<#y§];
         if(_loc2_)
         {
            this.§!"E§(_loc2_,param1.§=!I§.useTransitionOut,param1.§=!I§.allowQueue);
         }
      }
      
      protected function §0"0§(param1:PopupLayerEvent) : void
      {
         if(!this.§!=§())
         {
            dispatchEvent(new §0!b§(§0!b§.CLOSE,null));
         }
      }
      
      protected function §38§(param1:PopupLayerEvent) : void
      {
         dispatchEvent(new §0!b§(§0!b§.OPEN,null));
      }
      
      protected function §6"P§(param1:int) : §`!C§
      {
         return this.addLayer(param1);
      }
   }
}
