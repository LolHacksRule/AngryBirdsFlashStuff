package §!"e§
{
   import §-#a§.§&d§;
   import §-#a§.§0`§;
   import §-#a§.§<"[§;
   import §-#a§.§>,§;
   import §-#a§.§`"H§;
   import §0!=§.§]"3§;
   import §1#R§.PopupLayerEvent;
   import §4#!§.§ t§;
   import §;! §.§!Z§;
   import §>@§.§5"H§;
   import §[!m§.§&j§;
   import §[!m§.§+5§;
   import §[!m§.§7#S§;
   import §[!m§.§[!j§;
   import flash.display.MovieClip;
   import flash.geom.Rectangle;
   
   public class §9#B§ extends §&j§
   {
       
      
      protected var §-"+§:§[!j§;
      
      protected var §?!8§:int;
      
      protected var §&!%§:§`"H§;
      
      protected var §##^§:Boolean = true;
      
      public function §9#B§(param1:MovieClip, param2:§5"H§, param3:§]"3§, param4:Number = 960, param5:Number = 560, param6:int = 10)
      {
         super(param1,param2,param3,param4,param5,param6);
         this.§&!%§ = new §`"H§(§`"H§.§""7§,param1,param2,param3,new Rectangle(0,0,-180,0));
         this.§&!%§.addEventListener(§ t§.§4o§,this.§^"c§);
         this.§&!%§.addEventListener(§ t§.§]"]§,this.onTransitionStart);
         this.§&!%§.addEventListener(§ t§.END,this.§!"A§);
         this.§?!8§ = -1;
         this.§##^§ = false;
         this.init();
      }
      
      protected function init() : void
      {
         §5!a§(§`"W§.§?z§,true,new Rectangle(0,0,-180,0));
         §5!a§(§`"W§.§+v§,true);
         §5!a§(§`"W§.ERROR,true);
      }
      
      public function §1!A§() : Boolean
      {
         return this.§&!%§.§1!A§();
      }
      
      public function §[3§() : String
      {
         return this.§&!%§.§[3§();
      }
      
      public function isTransitioning() : Boolean
      {
         return this.§&!%§.isTransitioning();
      }
      
      public function §2"r§() : Boolean
      {
         return this.§&!%§.§2"r§();
      }
      
      public function §4# §(param1:int) : Boolean
      {
         var _loc2_:§7#S§ = §!#T§[param1];
         if(_loc2_)
         {
            return _loc2_.§""n§();
         }
         return false;
      }
      
      public function §="M§() : void
      {
         this.§&!%§.§="M§();
         this.§-"+§ = null;
         this.§0"Y§();
      }
      
      public function setTransition(param1:§0`§, param2:Boolean = false, param3:Boolean = false) : void
      {
         this.§&!%§.setTransition(param1,param2,param3);
         this.§##^§ = param2;
      }
      
      public function showTransition(param1:String, param2:Boolean, param3:§>,§ = null) : void
      {
         this.§&!%§.showTransition(param1,param2,param3);
      }
      
      override public function setViewSize(param1:int, param2:int) : void
      {
         super.setViewSize(param1,param2);
         this.§&!%§.setViewSize(param1,param2);
      }
      
      override public function openPopup(param1:§[!j§, param2:Boolean = false, param3:Boolean = false, param4:Boolean = true, param5:Boolean = false) : void
      {
         if(param1.§^!F§ < §`"H§.§""7§)
         {
            this.§7#G§(param1);
         }
         else if(param1.§^!F§ != §`"H§.§""7§)
         {
            super.openPopup(param1,param2,param3,param4,param5);
         }
      }
      
      override public function closePopup(param1:int = -1, param2:Boolean = false, param3:Boolean = true, param4:Boolean = false) : void
      {
         var _loc5_:§7#S§ = null;
         var _loc7_:int = 0;
         var _loc8_:String = null;
         var _loc9_:Boolean = false;
         var _loc10_:String = null;
         if(param1 == §`"W§.§?z§ && !param4)
         {
            _loc5_ = §!#T§[§`"W§.§?z§];
         }
         else
         {
            _loc7_ = §!#T§.length - 1;
            while(_loc7_ >= 0)
            {
               if((_loc5_ = §!#T§[_loc7_]) && _loc5_.§""n§() && _loc7_ > §`"W§.§?z§)
               {
                  _loc5_ = null;
                  break;
               }
               if(_loc5_ && _loc7_ == §`"W§.§?z§)
               {
                  break;
               }
               _loc5_ = null;
               _loc7_--;
            }
         }
         var _loc6_:* = !param4;
         if(param2)
         {
            _loc6_ = Boolean(!!param4 ? true : Boolean(_loc6_));
         }
         if(_loc5_ && _loc5_.§""n§() && _loc6_)
         {
            this.§?!8§ = §`"W§.§?z§;
            if(this.§&!%§.§1!A§())
            {
               _loc8_ = this.§&!%§.§[3§();
               _loc9_ = false;
               _loc10_ = §<"[§.§]#P§(_loc8_,_loc9_);
               this.§&!%§.showTransition(_loc10_,false);
            }
            else
            {
               this.§&!%§.setTransition(this.§0#;§(_loc5_.data.popup,false),false);
               this.§&!%§.showTransition(_loc5_.data.popup.id,false);
            }
            this.§<D§(param2);
         }
         else
         {
            super.closePopup(param1,param2,param3,param4);
         }
      }
      
      protected function §<D§(param1:Boolean = false) : void
      {
         var _loc3_:§7#S§ = null;
         var _loc2_:int = §!#T§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = §!#T§[_loc2_];
            if(_loc3_ && _loc3_.index != §`"W§.§?z§ && _loc3_.index != §`"H§.§""7§)
            {
               _loc3_.closePopup(param1,false);
            }
            _loc2_--;
         }
      }
      
      protected function §7#G§(param1:§[!j§) : void
      {
         var _loc2_:String = null;
         var _loc3_:Boolean = false;
         var _loc4_:String = null;
         var _loc5_:§>,§ = null;
         var _loc6_:§0`§ = null;
         if(!this.§&!%§.isTransitioning())
         {
            this.§-"+§ = param1;
            if(this.§&!%§.§1!A§())
            {
               _loc2_ = this.§&!%§.§[3§();
               _loc3_ = true;
               _loc4_ = §<"[§.§]#P§(_loc2_,_loc3_);
               _loc5_ = param1 is §>,§ ? §>,§(param1) : null;
               this.§&!%§.showTransition(_loc4_,false,_loc5_);
            }
            else
            {
               _loc5_ = (_loc6_ = this.§0#;§(param1,true)).§=#1§;
               this.§&!%§.setTransition(_loc6_,false);
               this.§&!%§.showTransition(param1.id,false,_loc5_);
            }
         }
      }
      
      protected function §0#;§(param1:§[!j§, param2:Boolean) : §0`§
      {
         var _loc4_:§0`§ = null;
         var _loc3_:String = param1.id;
         var _loc5_:§>,§ = param1 is §>,§ ? §>,§(param1) : null;
         var _loc6_:* = _loc3_;
         switch(0)
         {
         }
         return new §&d§(_loc3_,!!param2 ? _loc5_ : null);
      }
      
      protected function §!"t§() : void
      {
         if(this.§-"+§)
         {
            this.§-"+§.priority = §+5§.§>!g§;
            super.openPopup(this.§-"+§,false,false,false,true);
            this.§-"+§ = null;
         }
      }
      
      protected function §0"Y§() : void
      {
         var _loc1_:§7#S§ = null;
         if(this.§?!8§ >= 0)
         {
            _loc1_ = §!#T§[this.§?!8§];
            _loc1_.closePopup(false,false);
            this.§?!8§ = -1;
         }
      }
      
      override protected function onPopupCloseRequest(param1:PopupLayerEvent) : void
      {
         var _loc2_:String = null;
         var _loc3_:Boolean = false;
         var _loc4_:String = null;
         if(param1.§^!F§ == §`"W§.§?z§)
         {
            this.§?!8§ = param1.§^!F§;
            if(this.§&!%§.§1!A§())
            {
               _loc2_ = this.§&!%§.§[3§();
               _loc3_ = false;
               _loc4_ = §<"[§.§]#P§(_loc2_,_loc3_);
               this.§&!%§.showTransition(_loc4_,false);
            }
            else
            {
               this.§&!%§.setTransition(this.§0#;§(param1.§#"^§.popup,false),false);
               this.§&!%§.showTransition(param1.§#"^§.popup.id,false);
            }
         }
         else if(param1.§^!F§ != §`"H§.§""7§)
         {
            super.onPopupCloseRequest(param1);
         }
      }
      
      protected function onTransitionStart(param1:§ t§) : void
      {
         dispatchEvent(new § t§(param1.type,param1.§;"=§));
      }
      
      protected function §^"c§(param1:§ t§) : void
      {
         this.§!"t§();
         this.§0"Y§();
         dispatchEvent(new § t§(param1.type,param1.§;"=§));
      }
      
      protected function §!"A§(param1:§ t§) : void
      {
         dispatchEvent(new § t§(param1.type,param1.§;"=§));
      }
      
      override public function isPopupOpenById(param1:String) : Boolean
      {
         if(super.isPopupOpenById(param1))
         {
            return true;
         }
         if(this.§&!%§ && param1 == this.§&!%§.§[3§())
         {
            return true;
         }
         return false;
      }
      
      public function §@"3§(param1:int = -1) : void
      {
         var _loc2_:§!Z§ = null;
         if(!this.isPopupOpenById(§!Z§.§%!h§))
         {
            _loc2_ = new §!Z§(§`"W§.§?z§,§+5§.§>!g§,param1);
            this.openPopup(_loc2_,true,true,true);
         }
         else if(param1 != -1)
         {
            _loc2_ = §!Z§(§4#;§.singleton.popupManager.§ #6§(§!Z§.§%!h§));
            if(_loc2_)
            {
               _loc2_.§&#`§(param1);
            }
         }
      }
   }
}
