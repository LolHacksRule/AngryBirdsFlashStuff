package §9#-§
{
   import § $0§.§5R§;
   import §";§.§%"X§;
   import §'"b§.§ #F§;
   import §'"b§.§-!4§;
   import §3"V§.§ b§;
   import §?Q§.§@#D§;
   import §^"3§.§^"C§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class §]!N§ extends EventDispatcher implements §-!4§
   {
      
      public static const §in §:String = "SCORE_MULTIPLIER";
      
      public static const SCORE_MULTIPLIER_UPDATE_EVENT:String = "SCORE_MULTIPLIER_UPDATE_EVENT";
       
      
      private var §>"E§:Boolean;
      
      private var §`!_§:Number;
      
      private var §<#h§:String;
      
      private var §2"-§:Boolean;
      
      private var §%"7§:§^"C§;
      
      public function §]!N§()
      {
         super();
      }
      
      public function get ID() : String
      {
         return §in §;
      }
      
      public function §8#y§(param1:Object) : void
      {
         this.§<#h§ = "BIRD_YELLOW";
         this.§`!_§ = 1.5;
      }
      
      public function §&!8§() : void
      {
         this.§>"E§ = false;
         this.§<#h§ = "";
         this.§`!_§ = 0;
         if(this.§%"7§)
         {
            this.§%"7§.setVisibility(false);
         }
      }
      
      public function §#^§() : Boolean
      {
         AngryBirdsBase.singleton.popupManager.openPopup(new ScoreMultiplierInfoPopup(§@#D§.INFO,§5R§.DEFAULT));
         return true;
      }
      
      public function §5$%§() : Boolean
      {
         return this.§#^§();
      }
      
      public function §]#F§(param1:§%"X§) : void
      {
         this.§%"7§ = param1.getItemByName("Button_ScoreMultiplier");
         if(this.§%"7§)
         {
            this.§%"7§.setVisibility(false);
         }
      }
      
      public function §=1§() : void
      {
      }
      
      public function onUIInteraction(param1:String) : void
      {
         switch(param1)
         {
            case "SCORE_MULTIPLIER":
               § b§.playSound("Menu_Confirm",§ b§.§;$5§);
               this.§#^§();
         }
      }
      
      public function §="!§(param1:Number, param2:Number, param3:Number) : void
      {
         if(this.§%"7§ != null)
         {
            this.§%"7§.x = param1;
            this.§%"7§.y = param2;
            if(this.§%"7§.visible)
            {
               if(!§ #F§.§+!,§.§1#@§())
               {
                  this.§%"7§.setVisibility(false);
               }
            }
            else if(§ #F§.§+!,§.§1#@§())
            {
               this.§%"7§.setVisibility(true);
            }
         }
      }
      
      public function §>!d§() : Number
      {
         return this.§`!_§;
      }
      
      public function §##a§() : String
      {
         return this.§<#h§;
      }
      
      public function §]!h§(param1:Boolean) : void
      {
         this.§>"E§ = param1;
         dispatchEvent(new Event(SCORE_MULTIPLIER_UPDATE_EVENT));
      }
      
      public function get §]#9§() : Boolean
      {
         return this.§>"E§;
      }
      
      public function § !G§(param1:Boolean) : void
      {
         this.§2"-§ = param1;
      }
      
      public function §'"W§() : Boolean
      {
         return this.§2"-§;
      }
   }
}
