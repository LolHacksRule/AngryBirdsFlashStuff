package §["C§
{
   import § o§.§%"!§;
   import §1#W§.§!#&§;
   import §8#D§.§#E§;
   import §<"1§.§[!K§;
   import §<#m§.§^#o§;
   import §<u§.§ "a§;
   import §<u§.§2"?§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class §0#9§ extends EventDispatcher implements §2"?§
   {
      
      public static const §9!E§:String = "SCORE_MULTIPLIER";
      
      public static const SCORE_MULTIPLIER_UPDATE_EVENT:String = "SCORE_MULTIPLIER_UPDATE_EVENT";
       
      
      private var §^@§:Boolean;
      
      private var §`#j§:Number;
      
      private var §@!d§:String;
      
      private var §4!_§:Boolean;
      
      private var §[#T§:§[!K§;
      
      public function §0#9§()
      {
         super();
      }
      
      public function get ID() : String
      {
         return §9!E§;
      }
      
      public function §5a§(param1:Object) : void
      {
         this.§@!d§ = "BIRD_YELLOW";
         this.§`#j§ = 1.5;
      }
      
      public function §[L§() : void
      {
         this.§^@§ = false;
         this.§@!d§ = "";
         this.§`#j§ = 0;
         if(this.§[#T§)
         {
            this.§[#T§.setVisibility(false);
         }
      }
      
      public function §;=§() : Boolean
      {
         AngryBirdsBase.singleton.popupManager.openPopup(new ScoreMultiplierInfoPopup(§%"!§.INFO,§^#o§.DEFAULT));
         return true;
      }
      
      public function §4$2§() : Boolean
      {
         return this.§;=§();
      }
      
      public function §="y§(param1:§#E§) : void
      {
         this.§[#T§ = param1.getItemByName("Button_ScoreMultiplier");
         if(this.§[#T§)
         {
            this.§[#T§.setVisibility(false);
         }
      }
      
      public function §%"Q§() : void
      {
      }
      
      public function onUIInteraction(param1:String) : void
      {
         switch(param1)
         {
            case "SCORE_MULTIPLIER":
               §!#&§.playSound("Menu_Confirm",§!#&§.§6#h§);
               this.§;=§();
         }
      }
      
      public function §?##§(param1:Number, param2:Number) : void
      {
         if(this.§[#T§ != null)
         {
            this.§[#T§.x = param1;
            this.§[#T§.y = param2;
            if(this.§[#T§.visible)
            {
               if(!§ "a§.§ "D§.§ #b§())
               {
                  this.§[#T§.setVisibility(false);
               }
            }
            else if(§ "a§.§ "D§.§ #b§())
            {
               this.§[#T§.setVisibility(true);
            }
         }
      }
      
      public function §9"G§() : Number
      {
         return this.§`#j§;
      }
      
      public function §5!i§() : String
      {
         return this.§@!d§;
      }
      
      public function §^#3§(param1:Boolean) : void
      {
         this.§^@§ = param1;
         dispatchEvent(new Event(SCORE_MULTIPLIER_UPDATE_EVENT));
      }
      
      public function get §<!,§() : Boolean
      {
         return this.§^@§;
      }
      
      public function §]"=§(param1:Boolean) : void
      {
         this.§4!_§ = param1;
      }
      
      public function §#$<§() : Boolean
      {
         return this.§4!_§;
      }
   }
}
