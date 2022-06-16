package §!$3§
{
   import § %§.§0"8§;
   import §1!=§.§^"U§;
   import §3#T§.§@"!§;
   import §="h§.§<"T§;
   import §="h§.§`"O§;
   import §?P§.§]"$§;
   import §@!M§.§!"p§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class §,$§ extends EventDispatcher implements §<"T§
   {
      
      public static const §^^§:String = "SCORE_MULTIPLIER";
      
      public static const SCORE_MULTIPLIER_UPDATE_EVENT:String = "SCORE_MULTIPLIER_UPDATE_EVENT";
       
      
      private var §!!9§:Boolean;
      
      private var §'!f§:Number;
      
      private var §"y§:String;
      
      private var §-"<§:Boolean;
      
      private var § !V§:§@"!§;
      
      public function §,$§()
      {
         super();
      }
      
      public function get ID() : String
      {
         return §^^§;
      }
      
      public function §>#<§(param1:Object) : void
      {
         this.§"y§ = "BIRD_YELLOW";
         this.§'!f§ = 1.5;
      }
      
      public function §=#"§() : void
      {
         this.§!!9§ = false;
         this.§"y§ = "";
         this.§'!f§ = 0;
         if(this.§ !V§)
         {
            this.§ !V§.setVisibility(false);
         }
      }
      
      public function §4b§() : Boolean
      {
         AngryBirdsBase.singleton.popupManager.openPopup(new ScoreMultiplierInfoPopup(§]"$§.INFO,§^"U§.DEFAULT));
         return true;
      }
      
      public function §%O§() : Boolean
      {
         return this.§4b§();
      }
      
      public function §7$+§(param1:§0"8§) : void
      {
         this.§ !V§ = param1.getItemByName("Button_ScoreMultiplier");
         if(this.§ !V§)
         {
            this.§ !V§.setVisibility(false);
         }
      }
      
      public function §]"A§() : void
      {
      }
      
      public function onUIInteraction(param1:String) : void
      {
         switch(param1)
         {
            case "SCORE_MULTIPLIER":
               §!"p§.playSound("Menu_Confirm",§!"p§.§+!;§);
               this.§4b§();
         }
      }
      
      public function §3#E§(param1:Number, param2:Number) : void
      {
         if(this.§ !V§ != null)
         {
            this.§ !V§.x = param1;
            this.§ !V§.y = param2;
            if(this.§ !V§.visible)
            {
               if(!§`"O§.§6!§.§8!>§())
               {
                  this.§ !V§.setVisibility(false);
               }
            }
            else if(§`"O§.§6!§.§8!>§())
            {
               this.§ !V§.setVisibility(true);
            }
         }
      }
      
      public function § var§() : Number
      {
         return this.§'!f§;
      }
      
      public function §4#+§() : String
      {
         return this.§"y§;
      }
      
      public function §-b§(param1:Boolean) : void
      {
         this.§!!9§ = param1;
         dispatchEvent(new Event(SCORE_MULTIPLIER_UPDATE_EVENT));
      }
      
      public function get §5#3§() : Boolean
      {
         return this.§!!9§;
      }
      
      public function §+?§(param1:Boolean) : void
      {
         this.§-"<§ = param1;
      }
      
      public function §@J§() : Boolean
      {
         return this.§-"<§;
      }
   }
}
