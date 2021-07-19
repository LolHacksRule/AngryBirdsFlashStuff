package §[!m§
{
   import §0!=§.§]"3§;
   import §1#R§.§+#[§;
   import §1#R§.PopupLayerEvent;
   import §>@§.§5"H§;
   import flash.display.MovieClip;
   import flash.events.EventDispatcher;
   import flash.geom.Rectangle;
   
   public class §&j§ extends EventDispatcher implements §;a§
   {
       
      
      protected var §^c§:MovieClip;
      
      protected var §+"p§:Number;
      
      protected var §?!"§:Number;
      
      protected var §!#T§:Vector.<§7#S§>;
      
      protected var §^"N§:§5"H§;
      
      protected var §;D§:§]"3§;
      
      public function §&j§(param1:MovieClip, param2:§5"H§, param3:§]"3§, param4:Number = 960, param5:Number = 560, param6:int = 11)
      {
         super();
         this.§!#T§ = new Vector.<§7#S§>(param6,true);
         this.§^"N§ = param2;
         this.§;D§ = param3;
         this.§^c§ = param1;
         this.§+"p§ = param4;
         this.§?!"§ = param5;
      }
      
      public function setViewSize(param1:int, param2:int) : void
      {
         var _loc3_:§7#S§ = null;
         this.§+"p§ = param1;
         this.§?!"§ = param2;
         for each(_loc3_ in this.§!#T§)
         {
            if(_loc3_)
            {
               _loc3_.setViewSize(param1,param2);
            }
         }
      }
      
      public function §""n§() : Boolean
      {
         var _loc1_:§7#S§ = null;
         for each(_loc1_ in this.§!#T§)
         {
            if(_loc1_ && _loc1_.§""n§())
            {
               return true;
            }
         }
         return false;
      }
      
      public function isPopupOpenById(param1:String) : Boolean
      {
         var _loc2_:§7#S§ = null;
         for each(_loc2_ in this.§!#T§)
         {
            if(_loc2_ && _loc2_.isPopupOpenById(param1))
            {
               return true;
            }
         }
         return false;
      }
      
      public function §6#-§(param1:String) : Boolean
      {
         var _loc2_:§7#S§ = null;
         for each(_loc2_ in this.§!#T§)
         {
            if(_loc2_ && _loc2_.§6#-§(param1))
            {
               return true;
            }
         }
         return false;
      }
      
      public function § #6§(param1:String) : §[!j§
      {
         var _loc2_:§7#S§ = null;
         for each(_loc2_ in this.§!#T§)
         {
            if(_loc2_ && _loc2_.isPopupOpenById(param1))
            {
               return _loc2_.§ #6§(param1);
            }
         }
         return null;
      }
      
      public function §5!a§(param1:int, param2:Boolean = true, param3:Rectangle = null, param4:Boolean = false) : §7#S§
      {
         var _loc5_:§7#S§;
         if(_loc5_ = this.§!#T§[param1])
         {
            _loc5_.isPersistentLayer = param4;
            return _loc5_;
         }
         (_loc5_ = this.§!#T§[param1] = this.§;!5§(param1,param2,param3,param4)).addEventListener(PopupLayerEvent.OPEN,this.§%"x§);
         _loc5_.addEventListener(PopupLayerEvent.CLOSE,this.§'M§);
         _loc5_.addEventListener(PopupLayerEvent.§!C§,this.onPopupCloseRequest);
         this.§7c§();
         return _loc5_;
      }
      
      protected function §;!5§(param1:int, param2:Boolean, param3:Rectangle, param4:Boolean) : §7#S§
      {
         var _loc5_:§7#S§;
         (_loc5_ = new §7#S§(param1,this.§^c§,this.§^"N§,this.§;D§,param2,param3)).isPersistentLayer = param4;
         return _loc5_;
      }
      
      protected function §5!i§(param1:§7#S§, param2:§7#S§) : int
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
      
      protected function §7c§() : void
      {
         var _loc2_:§7#S§ = null;
         var _loc1_:Vector.<§7#S§> = this.§!#T§.concat();
         _loc1_.sort(this.§5!i§);
         var _loc3_:int = 0;
         while(_loc3_ < _loc1_.length)
         {
            _loc2_ = _loc1_[_loc3_];
            if(_loc2_)
            {
               _loc2_.§-"1§();
            }
            _loc3_++;
         }
      }
      
      public function §-!j§(param1:int, param2:Boolean) : void
      {
         if(this.§!#T§[param1])
         {
            this.§!#T§[param1].isPersistentLayer = param2;
         }
      }
      
      public function openPopup(param1:§[!j§, param2:Boolean = false, param3:Boolean = false, param4:Boolean = true, param5:Boolean = false) : void
      {
         var _loc6_:§7#S§ = this.§`"d§(param1.§^!F§);
         var _loc7_:§1!v§ = new §1!v§(param1,param2,param3,param4);
         _loc6_.openPopup(_loc7_,param5);
         this.setViewSize(this.§+"p§,this.§?!"§);
      }
      
      public function §,"o§(param1:String, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:§[!j§;
         if(_loc4_ = this.§ #6§(param1))
         {
            this.closePopup(_loc4_.§^!F§,param2,param3);
         }
      }
      
      public function §<"w§(param1:Boolean = false, param2:Boolean = true) : void
      {
         var _loc3_:§7#S§ = null;
         for each(_loc3_ in this.§!#T§)
         {
            if(_loc3_)
            {
               if(!_loc3_.isPersistentLayer)
               {
                  this.§1![§(_loc3_,param1,param2);
               }
            }
         }
      }
      
      protected function §1![§(param1:§7#S§, param2:Boolean, param3:Boolean) : void
      {
         param1.closePopup(param2,param3);
      }
      
      public function closePopup(param1:int = -1, param2:Boolean = false, param3:Boolean = true, param4:Boolean = false) : void
      {
         var _loc5_:§7#S§ = null;
         var _loc6_:int = 0;
         if(param1 >= 0 && !param4)
         {
            if(_loc5_ = this.§!#T§[param1])
            {
               this.§1![§(_loc5_,param2,param3);
            }
         }
         else
         {
            _loc6_ = this.§!#T§.length - 1;
            for(; _loc6_ >= 0; _loc6_--)
            {
               if(_loc5_ = this.§!#T§[_loc6_])
               {
                  if(!param4)
                  {
                     this.§1![§(_loc5_,param2,param3);
                  }
                  this.§1![§(_loc5_,param2,false);
                  continue;
                  return;
               }
            }
         }
      }
      
      protected function onPopupCloseRequest(param1:PopupLayerEvent) : void
      {
         var _loc2_:§7#S§ = this.§!#T§[param1.§^!F§];
         if(_loc2_)
         {
            this.§1![§(_loc2_,param1.§#"^§.useTransitionOut,param1.§#"^§.allowQueue);
         }
      }
      
      protected function §'M§(param1:PopupLayerEvent) : void
      {
         if(!this.§""n§())
         {
            dispatchEvent(new §+#[§(§+#[§.CLOSE,null));
         }
      }
      
      protected function §%"x§(param1:PopupLayerEvent) : void
      {
         dispatchEvent(new §+#[§(§+#[§.OPEN,null));
      }
      
      protected function §`"d§(param1:int) : §7#S§
      {
         return this.§5!a§(param1);
      }
   }
}
