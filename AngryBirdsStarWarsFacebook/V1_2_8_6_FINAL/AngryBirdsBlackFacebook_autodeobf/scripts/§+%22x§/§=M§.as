package §+"x§
{
   import §&!j§.§5#+§;
   import §7!n§.§>"H§;
   import §7!n§.PopupLayerEvent;
   import §9&§.§]!`§;
   import flash.display.MovieClip;
   import flash.events.EventDispatcher;
   import flash.geom.Rectangle;
   
   public class §=M§ extends EventDispatcher implements §&!Y§
   {
       
      
      protected var §[#,§:MovieClip;
      
      protected var §5"[§:Number;
      
      protected var §%"8§:Number;
      
      protected var §!#7§:Vector.<§""!§>;
      
      protected var §-1§:§5#+§;
      
      protected var §4!i§:§]!`§;
      
      public function §=M§(param1:MovieClip, param2:§5#+§, param3:§]!`§, param4:Number = 960, param5:Number = 560, param6:int = 11)
      {
         super();
         this.§!#7§ = new Vector.<§""!§>(param6,true);
         this.§-1§ = param2;
         this.§4!i§ = param3;
         this.§[#,§ = param1;
         this.§5"[§ = param4;
         this.§%"8§ = param5;
      }
      
      public function setViewSize(param1:int, param2:int) : void
      {
         var _loc3_:§""!§ = null;
         this.§5"[§ = param1;
         this.§%"8§ = param2;
         for each(_loc3_ in this.§!#7§)
         {
            if(_loc3_)
            {
               _loc3_.setViewSize(param1,param2);
            }
         }
      }
      
      public function §#"E§() : Boolean
      {
         var _loc1_:§""!§ = null;
         for each(_loc1_ in this.§!#7§)
         {
            if(_loc1_ && _loc1_.§#"E§())
            {
               return true;
            }
         }
         return false;
      }
      
      public function isPopupOpenById(param1:String) : Boolean
      {
         var _loc2_:§""!§ = null;
         for each(_loc2_ in this.§!#7§)
         {
            if(_loc2_ && _loc2_.isPopupOpenById(param1))
            {
               return true;
            }
         }
         return false;
      }
      
      public function §@!&§(param1:String) : Boolean
      {
         var _loc2_:§""!§ = null;
         for each(_loc2_ in this.§!#7§)
         {
            if(_loc2_ && _loc2_.§@!&§(param1))
            {
               return true;
            }
         }
         return false;
      }
      
      public function §8!l§(param1:String) : §3!§
      {
         var _loc2_:§""!§ = null;
         for each(_loc2_ in this.§!#7§)
         {
            if(_loc2_ && _loc2_.isPopupOpenById(param1))
            {
               return _loc2_.§8!l§(param1);
            }
         }
         return null;
      }
      
      public function §@"V§(param1:int, param2:Boolean = true, param3:Rectangle = null, param4:Boolean = false) : §""!§
      {
         var _loc5_:§""!§;
         if(_loc5_ = this.§!#7§[param1])
         {
            _loc5_.isPersistentLayer = param4;
            return _loc5_;
         }
         (_loc5_ = this.§!#7§[param1] = this.§9@§(param1,param2,param3,param4)).addEventListener(PopupLayerEvent.OPEN,this.§7!t§);
         _loc5_.addEventListener(PopupLayerEvent.CLOSE,this.§#!$§);
         _loc5_.addEventListener(PopupLayerEvent.§=s§,this.onPopupCloseRequest);
         this.§8!,§();
         return _loc5_;
      }
      
      protected function §9@§(param1:int, param2:Boolean, param3:Rectangle, param4:Boolean) : §""!§
      {
         var _loc5_:§""!§;
         (_loc5_ = new §""!§(param1,this.§[#,§,this.§-1§,this.§4!i§,param2,param3)).isPersistentLayer = param4;
         return _loc5_;
      }
      
      protected function §3[§(param1:§""!§, param2:§""!§) : int
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
      
      protected function §8!,§() : void
      {
         var _loc2_:§""!§ = null;
         var _loc1_:Vector.<§""!§> = this.§!#7§.concat();
         _loc1_.sort(this.§3[§);
         var _loc3_:int = 0;
         while(_loc3_ < _loc1_.length)
         {
            _loc2_ = _loc1_[_loc3_];
            if(_loc2_)
            {
               _loc2_.§`!%§();
            }
            _loc3_++;
         }
      }
      
      public function § !1§(param1:int, param2:Boolean) : void
      {
         if(this.§!#7§[param1])
         {
            this.§!#7§[param1].isPersistentLayer = param2;
         }
      }
      
      public function openPopup(param1:§3!§, param2:Boolean = false, param3:Boolean = false, param4:Boolean = true, param5:Boolean = false) : void
      {
         var _loc6_:§""!§ = this.§;!I§(param1.§0D§);
         var _loc7_:§ !Y§ = new § !Y§(param1,param2,param3,param4);
         _loc6_.openPopup(_loc7_,param5);
         this.setViewSize(this.§5"[§,this.§%"8§);
      }
      
      public function §6!u§(param1:String, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:§3!§;
         if(_loc4_ = this.§8!l§(param1))
         {
            this.closePopup(_loc4_.§0D§,param2,param3);
         }
      }
      
      public function §1"@§(param1:Boolean = false, param2:Boolean = true) : void
      {
         var _loc3_:§""!§ = null;
         for each(_loc3_ in this.§!#7§)
         {
            if(_loc3_)
            {
               if(!_loc3_.isPersistentLayer)
               {
                  this.§@"S§(_loc3_,param1,param2);
               }
            }
         }
      }
      
      protected function §@"S§(param1:§""!§, param2:Boolean, param3:Boolean) : void
      {
         param1.closePopup(param2,param3);
      }
      
      public function closePopup(param1:int = -1, param2:Boolean = false, param3:Boolean = true, param4:Boolean = false) : void
      {
         var _loc5_:§""!§ = null;
         var _loc6_:int = 0;
         if(param1 >= 0 && !param4)
         {
            if(_loc5_ = this.§!#7§[param1])
            {
               this.§@"S§(_loc5_,param2,param3);
            }
         }
         else
         {
            _loc6_ = this.§!#7§.length - 1;
            while(_loc6_ >= 0)
            {
               if(_loc5_ = this.§!#7§[_loc6_])
               {
                  if(!param4)
                  {
                     this.§@"S§(_loc5_,param2,param3);
                     return;
                  }
                  this.§@"S§(_loc5_,param2,false);
               }
               _loc6_--;
            }
         }
      }
      
      protected function onPopupCloseRequest(param1:PopupLayerEvent) : void
      {
         var _loc2_:§""!§ = this.§!#7§[param1.§0D§];
         if(_loc2_)
         {
            this.§@"S§(_loc2_,param1.§&"5§.useTransitionOut,param1.§&"5§.allowQueue);
         }
      }
      
      protected function §#!$§(param1:PopupLayerEvent) : void
      {
         if(!this.§#"E§())
         {
            dispatchEvent(new §>"H§(§>"H§.CLOSE,null));
         }
      }
      
      protected function §7!t§(param1:PopupLayerEvent) : void
      {
         dispatchEvent(new §>"H§(§>"H§.OPEN,null));
      }
      
      protected function §;!I§(param1:int) : §""!§
      {
         return this.§@"V§(param1);
      }
   }
}
