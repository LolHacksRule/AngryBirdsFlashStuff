package §6!E§
{
   import § o§.NotEnoughCoinsPopup;
   import § o§.QuickPurchasePowerupPopup;
   import § o§.QuickPurchaseSlingshotPopup;
   import §&"J§.§6$0§;
   import §+"E§.§+Q§;
   import §7",§.§2#i§;
   import §;P§.§-#b§;
   import §;P§.§super§;
   import §<#m§.§!"<§;
   import §=#C§.§6!u§;
   import §=#C§.§7"G§;
   import flash.display.MovieClip;
   import flash.events.EventDispatcher;
   
   public class §^!7§ extends EventDispatcher
   {
       
      
      private var §9X§:MovieClip;
      
      private var §]#+§:§2#i§;
      
      private var §,#4§:String;
      
      public function §^!7§(param1:MovieClip, param2:§2#i§, param3:String = "")
      {
         super();
         this.§9X§ = param1;
         this.§]#+§ = param2;
         this.§,#4§ = param3;
      }
      
      public function §0"r§() : void
      {
         var _loc1_:§!"<§ = null;
         var _loc4_:§6!u§ = null;
         if(!this.§]#+§)
         {
            dispatchEvent(new §+Q§(§+Q§.§["<§,""));
            return;
         }
         var _loc2_:Boolean = this.§]#+§.currencyID == "IVC" || this.§]#+§.currencyID == §6$0§.§3#j§;
         if(AngryBirdsBase.singleton.popupManager.isPopupOpenById(NotEnoughCoinsPopup.ID))
         {
            AngryBirdsBase.singleton.popupManager.§?$=§(NotEnoughCoinsPopup.ID);
         }
         var _loc3_:§-#b§ = §super§.§="=§(this.§]#+§.id);
         if(_loc3_)
         {
            _loc1_ = new QuickPurchasePowerupPopup(this.§9X§,this.§]#+§,_loc3_);
         }
         else if(_loc4_ = §7"G§.§-o§(this.§]#+§.id))
         {
            _loc1_ = new QuickPurchaseSlingshotPopup(this.§9X§,this.§]#+§,_loc4_);
         }
         if(!_loc1_)
         {
            return;
         }
         if(AngryBirdsBase.singleton.popupManager.isPopupOpenById(_loc1_.id))
         {
            AngryBirdsBase.singleton.popupManager.§?$=§(_loc1_.id);
         }
         _loc1_.addEventListener(§+Q§.§=<§,this.§@O§);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc1_);
      }
      
      private function §@O§(param1:§+Q§) : void
      {
         dispatchEvent(new §+Q§(§+Q§.§=<§,param1.§3#=§));
      }
   }
}
