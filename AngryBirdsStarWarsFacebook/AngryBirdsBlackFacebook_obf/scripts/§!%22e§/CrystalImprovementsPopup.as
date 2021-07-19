package §!"e§
{
   import §,"N§.§@#B§;
   import §1#R§.§+#[§;
   import §7!$§.§&$§;
   import §="2§.§?!r§;
   import §[!m§.AbstractPopup;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public final class CrystalImprovementsPopup extends AbstractPopup
   {
      
      public static const §%!h§:String = "CrystalImprovementsPopup";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §%!h§ = "CrystalImprovementsPopup";
         }
      }
      
      public function CrystalImprovementsPopup(param1:int, param2:int)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            super(param1,param2,§&$§.§@8§.Popups.Popup_CrystalImprovements[0],§%!h§);
         }
         do
         {
            §@#B§(§@!m§(§4#;§.singleton).dataModel).userProgress.saveTutorialSeen(§%!h§);
         }
         while(_loc3_);
         
      }
      
      override protected function init() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc1_))
         {
            super.init();
         }
         var _loc1_:MovieClip = §^c§.getItemByName("MovieClip_ContentMask").mClip;
         var _loc2_:MovieClip = §^c§.getItemByName("Container_Content").mClip;
         if(!_loc3_)
         {
            _loc2_.mask = _loc1_;
         }
         do
         {
            _loc2_.btnOkay.addEventListener(MouseEvent.CLICK,this.§9"[§);
         }
         while(!(_loc4_ || _loc3_));
         
      }
      
      private function §9"[§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            §?!r§.§"#_§("misc_menubuttonproceed_1");
            do
            {
               dispatchEvent(new §+#[§(§+#[§.CLOSE,this));
            }
            while(!_loc3_);
            
         }
      }
   }
}
