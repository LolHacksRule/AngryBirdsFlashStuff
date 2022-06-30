package §44§
{
   import §#Q§.§8Y§;
   import §0i§.§[K§;
   import §1Q§.§'!`§;
   import §4M§.HighscoreSidebar;
   import §8! §.§#z§;
   import §8!-§.§2!B§;
   import §8A§.§`]§;
   import §>!F§.§9!Z§;
   import §^E§.§1!A§;
   import §^E§.§9!Q§;
   import §`E§.§8D§;
   import §function§.§'"§;
   import §function§.§1!@§;
   import §function§.§8E§;
   
   public class §6D§ extends Popup
   {
      
      private static var §,n§:Class = § 5§;
       
      
      private var §>y§:StatePopupManager;
      
      private var §0!K§:Boolean = false;
      
      public function §6D§(param1:§8Y§, param2:StatePopupManager)
      {
         super(§[K§.§0T§(§,n§),param1);
         §7O§ = param1;
         this.§>y§ = param2;
         this.§>y§.addEventListener(§8D§.§=!5§,this.onUiInteraction);
      }
      
      private function onUiInteraction(param1:§8D§) : void
      {
         this.uiInteractionHandler(param1.§%B§,param1.§%'§,param1.§0!$§);
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§'!`§) : void
      {
         switch(param2)
         {
            case "LOGOUT_YES":
               this.preClose();
               this.§0!K§ = true;
               break;
            case "LOGOUT_NO":
               this.preClose();
         }
      }
      
      override public function close() : void
      {
         var _loc1_:int = 0;
         super.close();
         this.deActivate();
         if(this.§0!K§)
         {
            while(§#Z§.§+!>§)
            {
               §#Z§.§"!U§();
            }
            _loc1_ = 0;
            while(_loc1_ < §,!M§.§!A§.length)
            {
               if(§,!M§.§!A§[_loc1_] is Popup)
               {
                  §,!M§.§!A§[_loc1_].close();
               }
               _loc1_++;
            }
            this.§0!K§ = false;
            §'"§.§+!a§ = true;
            §"H§.§""§ = new §1!A§("");
            §9!Q§.§`!$§ = new §`]§();
            §9!Z§.§0!G§();
            §9!Z§.§5!$§.§8t§(false);
            §9!Z§.§5!$§.§5!=§(false);
            §8E§.§8c§ = §'"§.§94§;
            §#z§.§[6§(§#z§.§8F§(HighscoreSidebar.§ null§));
            §"H§.§>R§.§<'§(§8E§.§94§);
            §1!@§.sHighscoreSidebar.reset();
         }
      }
      
      override public function open(param1:Boolean = true) : void
      {
         if(param1)
         {
            mClip.scaleX = 0;
            mClip.scaleY = 0;
            if(§,'§ != null)
            {
               §,'§.stop();
            }
            §,'§ = §2!B§.§,!U§.§%!K§(this.mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":0,
               "scaleY":0
            },0.25,§2!B§.§6p§);
            §,'§.play();
         }
         super.open(param1);
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         super.preClose(param1);
         if(param1)
         {
            if(§,'§ != null)
            {
               §,'§.stop();
            }
            §,'§ = §2!B§.§,!U§.§%!K§(this.mClip,{
               "scaleX":0,
               "scaleY":0
            },null,0.25,§2!B§.§8!@§);
            §,'§.play();
         }
      }
      
      override public function deActivate() : void
      {
         this.§>y§.removeEventListener(§8D§.§=!5§,this.onUiInteraction);
         super.deActivate();
      }
   }
}
