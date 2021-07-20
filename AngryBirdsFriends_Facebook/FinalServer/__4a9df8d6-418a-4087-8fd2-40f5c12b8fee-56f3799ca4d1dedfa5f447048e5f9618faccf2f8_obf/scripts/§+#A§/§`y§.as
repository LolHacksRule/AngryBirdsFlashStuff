package §+#A§
{
   import §%!-§.§5!z§;
   import §,!Q§.§8#=§;
   import §0!s§.§]"Y§;
   import §8#K§.§3Z§;
   import §9$2§.§7"L§;
   import §9$2§.§8L§;
   import §>z§.§#"l§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class §`y§ extends EventDispatcher implements §8L§
   {
      
      public static const §0#V§:String = "SCORE_MULTIPLIER";
      
      public static const SCORE_MULTIPLIER_UPDATE_EVENT:String = "SCORE_MULTIPLIER_UPDATE_EVENT";
       
      
      private var §]!C§:Boolean;
      
      private var §`z§:Number;
      
      private var §+"O§:String;
      
      private var §`$0§:Boolean;
      
      private var §`!H§:§8#=§;
      
      public function §`y§()
      {
         super();
      }
      
      public function get ID() : String
      {
         return §0#V§;
      }
      
      public function §`#[§(param1:Object) : void
      {
         this.§+"O§ = "BIRD_YELLOW";
         this.§`z§ = 1.5;
      }
      
      public function §7b§() : void
      {
         this.§]!C§ = false;
         this.§+"O§ = "";
         this.§`z§ = 0;
         if(this.§`!H§)
         {
            this.§`!H§.setVisibility(false);
         }
      }
      
      public function §2!K§() : Boolean
      {
         AngryBirdsBase.singleton.popupManager.openPopup(new ScoreMultiplierInfoPopup(§#"l§.INFO,§]"Y§.DEFAULT));
         return true;
      }
      
      public function §?#Q§() : Boolean
      {
         return this.§2!K§();
      }
      
      public function §]"s§(param1:§5!z§) : void
      {
         this.§`!H§ = param1.getItemByName("Button_ScoreMultiplier");
         if(this.§`!H§)
         {
            this.§`!H§.setVisibility(false);
         }
      }
      
      public function §&#3§() : void
      {
      }
      
      public function onUIInteraction(param1:String) : void
      {
         switch(param1)
         {
            case "SCORE_MULTIPLIER":
               §3Z§.playSound("Menu_Confirm",§3Z§.§[!F§);
               this.§2!K§();
         }
      }
      
      public function §1!1§(param1:Number, param2:Number, param3:Number) : void
      {
         if(this.§`!H§ != null)
         {
            this.§`!H§.x = param1;
            this.§`!H§.y = param2;
            if(this.§`!H§.visible)
            {
               if(!§7"L§.§`"H§.§58§())
               {
                  this.§`!H§.setVisibility(false);
               }
            }
            else if(§7"L§.§`"H§.§58§())
            {
               this.§`!H§.setVisibility(true);
            }
         }
      }
      
      public function §&"k§() : Number
      {
         return this.§`z§;
      }
      
      public function §^##§() : String
      {
         return this.§+"O§;
      }
      
      public function §&d§(param1:Boolean) : void
      {
         this.§]!C§ = param1;
         dispatchEvent(new Event(SCORE_MULTIPLIER_UPDATE_EVENT));
      }
      
      public function get §'!n§() : Boolean
      {
         return this.§]!C§;
      }
      
      public function §2#E§(param1:Boolean) : void
      {
         this.§`$0§ = param1;
      }
      
      public function §"!-§() : Boolean
      {
         return this.§`$0§;
      }
   }
}
