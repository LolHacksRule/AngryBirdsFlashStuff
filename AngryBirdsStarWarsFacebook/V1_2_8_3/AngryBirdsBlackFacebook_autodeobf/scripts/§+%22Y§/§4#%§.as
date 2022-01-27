package §+"Y§
{
   import §&!j§.§5#+§;
   import §+"x§.§""!§;
   import §+"x§.§2!s§;
   import §+"x§.§3!§;
   import §+"x§.§=M§;
   import §4"m§.§>" §;
   import §7!H§.§5k§;
   import §7!n§.PopupLayerEvent;
   import §7#'§.§ !8§;
   import §7#'§.§""X§;
   import §7#'§.§+f§;
   import §7#'§.§-"s§;
   import §7#'§.§?e§;
   import §9&§.§]!`§;
   import flash.display.MovieClip;
   import flash.geom.Rectangle;
   
   public class §4#%§ extends §=M§
   {
       
      
      protected var §!!s§:§3!§;
      
      protected var §9k§:int;
      
      protected var §,[§:§-"s§;
      
      protected var §@"`§:Boolean = true;
      
      public function §4#%§(param1:MovieClip, param2:§5#+§, param3:§]!`§, param4:Number = 960, param5:Number = 560, param6:int = 10)
      {
         super(param1,param2,param3,param4,param5,param6);
         this.§,[§ = new §-"s§(§-"s§.§"!e§,param1,param2,param3,new Rectangle(0,0,-180,0));
         this.§,[§.addEventListener(§5k§.§"!l§,this.§@W§);
         this.§,[§.addEventListener(§5k§.§3!&§,this.onTransitionStart);
         this.§,[§.addEventListener(§5k§.§7"v§,this.§ !i§);
         this.§9k§ = -1;
         this.§@"`§ = false;
         this.init();
      }
      
      protected function init() : void
      {
         §@"V§(§^!S§.§'J§,true,new Rectangle(0,0,-180,0));
         §@"V§(§^!S§.§'"c§,true);
         §@"V§(§^!S§.ERROR,true);
      }
      
      public function §>"E§() : Boolean
      {
         return this.§,[§.§>"E§();
      }
      
      public function §?"%§() : String
      {
         return this.§,[§.§?"%§();
      }
      
      public function isTransitioning() : Boolean
      {
         return this.§,[§.isTransitioning();
      }
      
      public function §-$§() : Boolean
      {
         return this.§,[§.§-$§();
      }
      
      public function §,"<§(param1:int) : Boolean
      {
         var _loc2_:§""!§ = §!#7§[param1];
         if(_loc2_)
         {
            return _loc2_.§#"E§();
         }
         return false;
      }
      
      public function §8!v§() : void
      {
         this.§,[§.§8!v§();
         this.§!!s§ = null;
         this.§!!q§();
      }
      
      public function setTransition(param1:§?e§, param2:Boolean = false, param3:Boolean = false) : void
      {
         this.§,[§.setTransition(param1,param2,param3);
         this.§@"`§ = param2;
      }
      
      public function showTransition(param1:String, param2:Boolean, param3:§ !8§ = null) : void
      {
         this.§,[§.showTransition(param1,param2,param3);
      }
      
      override public function setViewSize(param1:int, param2:int) : void
      {
         super.setViewSize(param1,param2);
         this.§,[§.setViewSize(param1,param2);
      }
      
      override public function openPopup(param1:§3!§, param2:Boolean = false, param3:Boolean = false, param4:Boolean = true, param5:Boolean = false) : void
      {
         if(param1.§0D§ < §-"s§.§"!e§)
         {
            this.§5#3§(param1);
         }
         else if(param1.§0D§ != §-"s§.§"!e§)
         {
            super.openPopup(param1,param2,param3,param4,param5);
         }
      }
      
      override public function closePopup(param1:int = -1, param2:Boolean = false, param3:Boolean = true, param4:Boolean = false) : void
      {
         var _loc5_:§""!§ = null;
         var _loc7_:int = 0;
         var _loc8_:String = null;
         var _loc9_:Boolean = false;
         var _loc10_:String = null;
         if(param1 == §^!S§.§'J§ && !param4)
         {
            _loc5_ = §!#7§[§^!S§.§'J§];
         }
         else
         {
            _loc7_ = §!#7§.length - 1;
            while(_loc7_ >= 0)
            {
               if((_loc5_ = §!#7§[_loc7_]) && _loc5_.§#"E§() && _loc7_ > §^!S§.§'J§)
               {
                  _loc5_ = null;
                  break;
               }
               if(_loc5_ && _loc7_ == §^!S§.§'J§)
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
         if(_loc5_ && _loc5_.§#"E§() && _loc6_)
         {
            this.§9k§ = §^!S§.§'J§;
            if(this.§,[§.§>"E§())
            {
               _loc8_ = this.§,[§.§?"%§();
               _loc9_ = false;
               _loc10_ = §+f§.§,G§(_loc8_,_loc9_);
               this.§,[§.showTransition(_loc10_,false);
            }
            else
            {
               this.§,[§.setTransition(this.§@!6§(_loc5_.data.popup,false),false);
               this.§,[§.showTransition(_loc5_.data.popup.id,false);
            }
            this.§&"9§(param2);
         }
         else
         {
            super.closePopup(param1,param2,param3,param4);
         }
      }
      
      protected function §&"9§(param1:Boolean = false) : void
      {
         var _loc3_:§""!§ = null;
         var _loc2_:int = §!#7§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = §!#7§[_loc2_];
            if(_loc3_ && _loc3_.index != §^!S§.§'J§ && _loc3_.index != §-"s§.§"!e§)
            {
               _loc3_.closePopup(param1,false);
            }
            _loc2_--;
         }
      }
      
      protected function §5#3§(param1:§3!§) : void
      {
         var _loc2_:String = null;
         var _loc3_:Boolean = false;
         var _loc4_:String = null;
         var _loc5_:§ !8§ = null;
         var _loc6_:§?e§ = null;
         if(!this.§,[§.isTransitioning())
         {
            this.§!!s§ = param1;
            if(this.§,[§.§>"E§())
            {
               _loc2_ = this.§,[§.§?"%§();
               _loc3_ = true;
               _loc4_ = §+f§.§,G§(_loc2_,_loc3_);
               _loc5_ = param1 is § !8§ ? § !8§(param1) : null;
               this.§,[§.showTransition(_loc4_,false,_loc5_);
            }
            else
            {
               _loc5_ = (_loc6_ = this.§@!6§(param1,true)).§+!T§;
               this.§,[§.setTransition(_loc6_,false);
               this.§,[§.showTransition(param1.id,false,_loc5_);
            }
         }
      }
      
      protected function §@!6§(param1:§3!§, param2:Boolean) : §?e§
      {
         var _loc4_:§?e§ = null;
         var _loc3_:String = param1.id;
         var _loc5_:§ !8§ = param1 is § !8§ ? § !8§(param1) : null;
         var _loc6_:* = _loc3_;
         switch(0)
         {
         }
         return new §""X§(_loc3_,!!param2 ? _loc5_ : null);
      }
      
      protected function §;!X§() : void
      {
         if(this.§!!s§)
         {
            this.§!!s§.priority = §2!s§.§@"$§;
            super.openPopup(this.§!!s§,false,false,false,true);
            this.§!!s§ = null;
         }
      }
      
      protected function §!!q§() : void
      {
         var _loc1_:§""!§ = null;
         if(this.§9k§ >= 0)
         {
            _loc1_ = §!#7§[this.§9k§];
            _loc1_.closePopup(false,false);
            this.§9k§ = -1;
         }
      }
      
      override protected function onPopupCloseRequest(param1:PopupLayerEvent) : void
      {
         var _loc2_:String = null;
         var _loc3_:Boolean = false;
         var _loc4_:String = null;
         if(param1.§0D§ == §^!S§.§'J§)
         {
            this.§9k§ = param1.§0D§;
            if(this.§,[§.§>"E§())
            {
               _loc2_ = this.§,[§.§?"%§();
               _loc3_ = false;
               _loc4_ = §+f§.§,G§(_loc2_,_loc3_);
               this.§,[§.showTransition(_loc4_,false);
            }
            else
            {
               this.§,[§.setTransition(this.§@!6§(param1.§&"5§.popup,false),false);
               this.§,[§.showTransition(param1.§&"5§.popup.id,false);
            }
         }
         else if(param1.§0D§ != §-"s§.§"!e§)
         {
            super.onPopupCloseRequest(param1);
         }
      }
      
      protected function onTransitionStart(param1:§5k§) : void
      {
         dispatchEvent(new §5k§(param1.type,param1.§'!f§));
      }
      
      protected function §@W§(param1:§5k§) : void
      {
         this.§;!X§();
         this.§!!q§();
         dispatchEvent(new §5k§(param1.type,param1.§'!f§));
      }
      
      protected function § !i§(param1:§5k§) : void
      {
         dispatchEvent(new §5k§(param1.type,param1.§'!f§));
      }
      
      override public function isPopupOpenById(param1:String) : Boolean
      {
         if(super.isPopupOpenById(param1))
         {
            return true;
         }
         if(this.§,[§ && param1 == this.§,[§.§?"%§())
         {
            return true;
         }
         return false;
      }
      
      public function §6"Z§(param1:int = -1) : void
      {
         var _loc2_:§>" § = null;
         if(!this.isPopupOpenById(§>" §.§-"§))
         {
            _loc2_ = new §>" §(§^!S§.§'J§,§2!s§.§@"$§,param1);
            this.openPopup(_loc2_,true,true,true);
         }
         else if(param1 != -1)
         {
            _loc2_ = §>" §(§4"#§.singleton.popupManager.§8!l§(§>" §.§-"§));
            if(_loc2_)
            {
               _loc2_.§7!8§(param1);
            }
         }
      }
   }
}
