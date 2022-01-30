package § S§
{
   import §"!G§.§3!f§;
   import §0P§.§+!l§;
   import §@!i§.§!!Y§;
   import §@!i§.PopupLayerEvent;
   import flash.display.MovieClip;
   import flash.events.EventDispatcher;
   import flash.geom.Rectangle;
   
   public class §3!b§ extends EventDispatcher implements §!H§
   {
       
      
      protected var §@!U§:MovieClip;
      
      protected var §'"+§:Number;
      
      protected var §,!T§:Number;
      
      protected var §@<§:Vector.<§]"5§>;
      
      protected var §>!L§:§3!f§;
      
      protected var §>!t§:§+!l§;
      
      public function §3!b§(param1:MovieClip, param2:§3!f§, param3:§+!l§, param4:Number = 960, param5:Number = 560, param6:int = 11)
      {
         super();
         this.§@<§ = new Vector.<§]"5§>(param6,true);
         this.§>!L§ = param2;
         this.§>!t§ = param3;
         this.§@!U§ = param1;
         this.§'"+§ = param4;
         this.§,!T§ = param5;
      }
      
      public function setViewSize(param1:int, param2:int) : void
      {
         var _loc3_:§]"5§ = null;
         this.§'"+§ = param1;
         this.§,!T§ = param2;
         for each(_loc3_ in this.§@<§)
         {
            if(_loc3_)
            {
               _loc3_.setViewSize(param1,param2);
            }
         }
      }
      
      public function § !I§() : Boolean
      {
         var _loc1_:§]"5§ = null;
         for each(_loc1_ in this.§@<§)
         {
            if(_loc1_ && _loc1_.§ !I§())
            {
               return true;
            }
         }
         return false;
      }
      
      public function isPopupOpenById(param1:String) : Boolean
      {
         var _loc2_:§]"5§ = null;
         for each(_loc2_ in this.§@<§)
         {
            if(_loc2_ && _loc2_.isPopupOpenById(param1))
            {
               return true;
            }
         }
         return false;
      }
      
      public function §@9§(param1:String) : Boolean
      {
         var _loc2_:§]"5§ = null;
         for each(_loc2_ in this.§@<§)
         {
            if(_loc2_ && _loc2_.§@9§(param1))
            {
               return true;
            }
         }
         return false;
      }
      
      public function §each §(param1:String) : §?!`§
      {
         var _loc2_:§]"5§ = null;
         for each(_loc2_ in this.§@<§)
         {
            if(_loc2_ && _loc2_.isPopupOpenById(param1))
            {
               return _loc2_.§each §(param1);
            }
         }
         return null;
      }
      
      public function addLayer(param1:int, param2:Boolean = true, param3:Rectangle = null, param4:Boolean = false) : §]"5§
      {
         var _loc5_:§]"5§;
         if(_loc5_ = this.§@<§[param1])
         {
            _loc5_.isPersistentLayer = param4;
            return _loc5_;
         }
         (_loc5_ = this.§@<§[param1] = this.§<!5§(param1,param2,param3,param4)).addEventListener(PopupLayerEvent.OPEN,this.§[!W§);
         _loc5_.addEventListener(PopupLayerEvent.CLOSE,this.§-w§);
         _loc5_.addEventListener(PopupLayerEvent.§6"#§,this.§`!C§);
         this.§'^§();
         return _loc5_;
      }
      
      protected function §<!5§(param1:int, param2:Boolean, param3:Rectangle, param4:Boolean) : §]"5§
      {
         var _loc5_:§]"5§;
         (_loc5_ = new §]"5§(param1,this.§@!U§,this.§>!L§,this.§>!t§,param2,param3)).isPersistentLayer = param4;
         return _loc5_;
      }
      
      protected function §<!y§(param1:§]"5§, param2:§]"5§) : int
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
      
      protected function §'^§() : void
      {
         var _loc2_:§]"5§ = null;
         var _loc1_:Vector.<§]"5§> = this.§@<§.concat();
         _loc1_.sort(this.§<!y§);
         var _loc3_:int = 0;
         while(_loc3_ < _loc1_.length)
         {
            _loc2_ = _loc1_[_loc3_];
            if(_loc2_)
            {
               _loc2_.§;"4§();
            }
            _loc3_++;
         }
      }
      
      public function setPersistentLayer(param1:int, param2:Boolean) : void
      {
         if(this.§@<§[param1])
         {
            this.§@<§[param1].isPersistentLayer = param2;
         }
      }
      
      public function openPopup(param1:§?!`§, param2:Boolean = false, param3:Boolean = false, param4:Boolean = true, param5:Boolean = false) : void
      {
         var _loc6_:§]"5§ = this.§43§(param1.§8!-§);
         var _loc7_:§@0§ = new §@0§(param1,param2,param3,param4);
         _loc6_.openPopup(_loc7_,param5);
         this.setViewSize(this.§'"+§,this.§,!T§);
      }
      
      public function §!!0§(param1:String, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:§?!`§;
         if(_loc4_ = this.§each §(param1))
         {
            this.closePopup(_loc4_.§8!-§,param2,param3);
         }
      }
      
      public function closeAllPopups(param1:Boolean = false, param2:Boolean = true) : void
      {
         var _loc3_:§]"5§ = null;
         for each(_loc3_ in this.§@<§)
         {
            if(_loc3_)
            {
               if(!_loc3_.isPersistentLayer)
               {
                  this.§@m§(_loc3_,param1,param2);
               }
            }
         }
      }
      
      protected function §@m§(param1:§]"5§, param2:Boolean, param3:Boolean) : void
      {
         param1.closePopup(param2,param3);
      }
      
      public function closePopup(param1:int = -1, param2:Boolean = false, param3:Boolean = true, param4:Boolean = false) : void
      {
         var _loc5_:§]"5§ = null;
         var _loc6_:int = 0;
         if(param1 >= 0 && !param4)
         {
            if(_loc5_ = this.§@<§[param1])
            {
               this.§@m§(_loc5_,param2,param3);
            }
         }
         else
         {
            _loc6_ = this.§@<§.length - 1;
            while(_loc6_ >= 0)
            {
               if(_loc5_ = this.§@<§[_loc6_])
               {
                  if(!param4)
                  {
                     this.§@m§(_loc5_,param2,param3);
                     return;
                  }
                  this.§@m§(_loc5_,param2,false);
               }
               _loc6_--;
            }
         }
      }
      
      protected function §`!C§(param1:PopupLayerEvent) : void
      {
         var _loc2_:§]"5§ = this.§@<§[param1.§8!-§];
         if(_loc2_)
         {
            this.§@m§(_loc2_,param1.§5!"§.useTransitionOut,param1.§5!"§.allowQueue);
         }
      }
      
      protected function §-w§(param1:PopupLayerEvent) : void
      {
         if(!this.§ !I§())
         {
            dispatchEvent(new §!!Y§(§!!Y§.CLOSE,null));
         }
      }
      
      protected function §[!W§(param1:PopupLayerEvent) : void
      {
         dispatchEvent(new §!!Y§(§!!Y§.OPEN,null));
      }
      
      protected function §43§(param1:int) : §]"5§
      {
         return this.addLayer(param1);
      }
   }
}
