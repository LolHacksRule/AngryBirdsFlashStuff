package §<"s§
{
   import §#!$§.§2,§;
   import §#<§.PopupLayerEvent;
   import §'+§.§="B§;
   import §1G§.§8!a§;
   import §4m§.§5!R§;
   import §4m§.§?!w§;
   import §4m§.§]" §;
   import §4m§.§^T§;
   import §=",§.§"!a§;
   import §=",§.§1!e§;
   import §=",§.§4h§;
   import §=",§.§5#!§;
   import §=",§.§>#-§;
   import §^9§.§<! §;
   import flash.display.MovieClip;
   import flash.geom.Rectangle;
   
   public class §@![§ extends §]" §
   {
       
      
      protected var §0"U§:§5!R§;
      
      protected var §<!1§:int;
      
      protected var §#D§:§5#!§;
      
      protected var §,"<§:Boolean = true;
      
      public function §@![§(param1:MovieClip, param2:§="B§, param3:§8!a§, param4:Number = 960, param5:Number = 560, param6:int = 10)
      {
         super(param1,param2,param3,param4,param5,param6);
         this.§#D§ = new §5#!§(§5#!§.§-"#§,param1,param2,param3,new Rectangle(0,0,-180,0));
         this.§#D§.addEventListener(§2,§.§;"N§,this.§=b§);
         this.§#D§.addEventListener(§2,§.§#"J§,this.onTransitionStart);
         this.§#D§.addEventListener(§2,§.§!"w§,this.§5J§);
         this.§<!1§ = -1;
         this.§,"<§ = false;
         this.init();
      }
      
      protected function init() : void
      {
         §;!f§(§0u§.§]!?§,true,new Rectangle(0,0,-180,0));
         §;!f§(§0u§.§1"J§,true);
         §;!f§(§0u§.ERROR,true);
      }
      
      public function §5"l§() : Boolean
      {
         return this.§#D§.§5"l§();
      }
      
      public function §38§() : String
      {
         return this.§#D§.§38§();
      }
      
      public function isTransitioning() : Boolean
      {
         return this.§#D§.isTransitioning();
      }
      
      public function §^j§() : Boolean
      {
         return this.§#D§.§^j§();
      }
      
      public function §9"H§(param1:int) : Boolean
      {
         var _loc2_:§?!w§ = §5A§[param1];
         if(_loc2_)
         {
            return _loc2_.§;"<§();
         }
         return false;
      }
      
      public function §'!8§() : void
      {
         this.§#D§.§'!8§();
         this.§0"U§ = null;
         this.§8!K§();
      }
      
      public function setTransition(param1:§>#-§, param2:Boolean = false, param3:Boolean = false) : void
      {
         this.§#D§.setTransition(param1,param2,param3);
         this.§,"<§ = param2;
      }
      
      public function showTransition(param1:String, param2:Boolean, param3:§"!a§ = null) : void
      {
         this.§#D§.showTransition(param1,param2,param3);
      }
      
      override public function setViewSize(param1:int, param2:int) : void
      {
         super.setViewSize(param1,param2);
         this.§#D§.setViewSize(param1,param2);
      }
      
      override public function openPopup(param1:§5!R§, param2:Boolean = false, param3:Boolean = false, param4:Boolean = true, param5:Boolean = false) : void
      {
         if(param1.§+a§ < §5#!§.§-"#§)
         {
            this.§9B§(param1);
         }
         else if(param1.§+a§ != §5#!§.§-"#§)
         {
            super.openPopup(param1,param2,param3,param4,param5);
         }
      }
      
      override public function closePopup(param1:int = -1, param2:Boolean = false, param3:Boolean = true, param4:Boolean = false) : void
      {
         var _loc5_:§?!w§ = null;
         var _loc7_:int = 0;
         var _loc8_:String = null;
         var _loc9_:Boolean = false;
         var _loc10_:String = null;
         if(param1 == §0u§.§]!?§ && !param4)
         {
            _loc5_ = §5A§[§0u§.§]!?§];
         }
         else
         {
            _loc7_ = §5A§.length - 1;
            while(_loc7_ >= 0)
            {
               if((_loc5_ = §5A§[_loc7_]) && _loc5_.§;"<§() && _loc7_ > §0u§.§]!?§)
               {
                  _loc5_ = null;
                  break;
               }
               if(_loc5_ && _loc7_ == §0u§.§]!?§)
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
         if(_loc5_ && _loc5_.§;"<§() && _loc6_)
         {
            this.§<!1§ = §0u§.§]!?§;
            if(this.§#D§.§5"l§())
            {
               _loc8_ = this.§#D§.§38§();
               _loc9_ = false;
               _loc10_ = §1!e§.§@"=§(_loc8_,_loc9_);
               this.§#D§.showTransition(_loc10_,false);
            }
            else
            {
               this.§#D§.setTransition(this.§`!"§(_loc5_.data.popup,false),false);
               this.§#D§.showTransition(_loc5_.data.popup.id,false);
            }
            this.§7!=§(param2);
         }
         else
         {
            super.closePopup(param1,param2,param3,param4);
         }
      }
      
      protected function §7!=§(param1:Boolean = false) : void
      {
         var _loc3_:§?!w§ = null;
         var _loc2_:int = §5A§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = §5A§[_loc2_];
            if(_loc3_ && _loc3_.index != §0u§.§]!?§ && _loc3_.index != §5#!§.§-"#§)
            {
               _loc3_.closePopup(param1,false);
            }
            _loc2_--;
         }
      }
      
      protected function §9B§(param1:§5!R§) : void
      {
         var _loc2_:String = null;
         var _loc3_:Boolean = false;
         var _loc4_:String = null;
         var _loc5_:§"!a§ = null;
         var _loc6_:§>#-§ = null;
         if(!this.§#D§.isTransitioning())
         {
            this.§0"U§ = param1;
            if(this.§#D§.§5"l§())
            {
               _loc2_ = this.§#D§.§38§();
               _loc3_ = true;
               _loc4_ = §1!e§.§@"=§(_loc2_,_loc3_);
               _loc5_ = param1 is §"!a§ ? §"!a§(param1) : null;
               this.§#D§.showTransition(_loc4_,false,_loc5_);
            }
            else
            {
               _loc5_ = (_loc6_ = this.§`!"§(param1,true)).§&Y§;
               this.§#D§.setTransition(_loc6_,false);
               this.§#D§.showTransition(param1.id,false,_loc5_);
            }
         }
      }
      
      protected function §`!"§(param1:§5!R§, param2:Boolean) : §>#-§
      {
         var _loc4_:§>#-§ = null;
         var _loc3_:String = param1.id;
         var _loc5_:§"!a§ = param1 is §"!a§ ? §"!a§(param1) : null;
         var _loc6_:* = _loc3_;
         switch(0)
         {
         }
         return new §4h§(_loc3_,!!param2 ? _loc5_ : null);
      }
      
      protected function §8"B§() : void
      {
         if(this.§0"U§)
         {
            this.§0"U§.priority = §^T§.§0O§;
            super.openPopup(this.§0"U§,false,false,false,true);
            this.§0"U§ = null;
         }
      }
      
      protected function §8!K§() : void
      {
         var _loc1_:§?!w§ = null;
         if(this.§<!1§ >= 0)
         {
            _loc1_ = §5A§[this.§<!1§];
            _loc1_.closePopup(false,false);
            this.§<!1§ = -1;
         }
      }
      
      override protected function onPopupCloseRequest(param1:PopupLayerEvent) : void
      {
         var _loc2_:String = null;
         var _loc3_:Boolean = false;
         var _loc4_:String = null;
         if(param1.§+a§ == §0u§.§]!?§)
         {
            this.§<!1§ = param1.§+a§;
            if(this.§#D§.§5"l§())
            {
               _loc2_ = this.§#D§.§38§();
               _loc3_ = false;
               _loc4_ = §1!e§.§@"=§(_loc2_,_loc3_);
               this.§#D§.showTransition(_loc4_,false);
            }
            else
            {
               this.§#D§.setTransition(this.§`!"§(param1.§1q§.popup,false),false);
               this.§#D§.showTransition(param1.§1q§.popup.id,false);
            }
         }
         else if(param1.§+a§ != §5#!§.§-"#§)
         {
            super.onPopupCloseRequest(param1);
         }
      }
      
      protected function onTransitionStart(param1:§2,§) : void
      {
         dispatchEvent(new §2,§(param1.type,param1.§;"B§));
      }
      
      protected function §=b§(param1:§2,§) : void
      {
         this.§8"B§();
         this.§8!K§();
         dispatchEvent(new §2,§(param1.type,param1.§;"B§));
      }
      
      protected function §5J§(param1:§2,§) : void
      {
         dispatchEvent(new §2,§(param1.type,param1.§;"B§));
      }
      
      override public function isPopupOpenById(param1:String) : Boolean
      {
         if(super.isPopupOpenById(param1))
         {
            return true;
         }
         if(this.§#D§ && param1 == this.§#D§.§38§())
         {
            return true;
         }
         return false;
      }
      
      public function §2"N§(param1:int = -1) : void
      {
         var _loc2_:§<! § = null;
         if(!this.isPopupOpenById(§<! §.§^"3§))
         {
            _loc2_ = new §<! §(§0u§.§]!?§,§^T§.§0O§,param1);
            this.openPopup(_loc2_,true,true,true);
         }
         else if(param1 != -1)
         {
            _loc2_ = §<! §(§;"@§.singleton.popupManager.§?"_§(§<! §.§^"3§));
            if(_loc2_)
            {
               _loc2_.§;#3§(param1);
            }
         }
      }
   }
}
