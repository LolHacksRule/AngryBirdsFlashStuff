package §?!<§
{
   import § "v§.§4$4§;
   import § h§.§-!S§;
   import §9!6§.§## §;
   import §<8§.§6!1§;
   import §[#A§.§+#<§;
   import §]M§.§-"-§;
   import §]M§.§=!a§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class §5!M§ extends EventDispatcher implements §-"-§
   {
      
      public static const §?"n§:String = "SCORE_MULTIPLIER";
      
      public static const SCORE_MULTIPLIER_UPDATE_EVENT:String = "SCORE_MULTIPLIER_UPDATE_EVENT";
       
      
      private var §"#Z§:Boolean;
      
      private var §5"]§:Number;
      
      private var §]"E§:String;
      
      private var §"!H§:Boolean;
      
      private var § g§:§6!1§;
      
      public function §5!M§()
      {
         super();
      }
      
      public function get ID() : String
      {
         return §?"n§;
      }
      
      public function §@$§(param1:Object) : void
      {
         this.§]"E§ = "BIRD_YELLOW";
         this.§5"]§ = 1.5;
      }
      
      public function §&#D§() : void
      {
         this.§"#Z§ = false;
         this.§]"E§ = "";
         this.§5"]§ = 0;
         if(this.§ g§)
         {
            this.§ g§.setVisibility(false);
         }
      }
      
      public function §^x§() : Boolean
      {
         AngryBirdsBase.singleton.popupManager.openPopup(new ScoreMultiplierInfoPopup(§-!S§.INFO,§## §.DEFAULT));
         return true;
      }
      
      public function §!"?§() : Boolean
      {
         return this.§^x§();
      }
      
      public function §4!%§(param1:§+#<§) : void
      {
         this.§ g§ = param1.getItemByName("Button_ScoreMultiplier");
         if(this.§ g§)
         {
            this.§ g§.setVisibility(false);
         }
      }
      
      public function §]#g§() : void
      {
      }
      
      public function onUIInteraction(param1:String) : void
      {
         switch(param1)
         {
            case "SCORE_MULTIPLIER":
               §4$4§.playSound("Menu_Confirm",§4$4§.§1#l§);
               this.§^x§();
         }
      }
      
      public function §@"H§(param1:Number, param2:Number, param3:Number) : void
      {
         if(this.§ g§ != null)
         {
            this.§ g§.x = param1;
            this.§ g§.y = param2;
            if(this.§ g§.visible)
            {
               if(!§=!a§.§3"1§.§#"P§())
               {
                  this.§ g§.setVisibility(false);
               }
            }
            else if(§=!a§.§3"1§.§#"P§())
            {
               this.§ g§.setVisibility(true);
            }
         }
      }
      
      public function §4!^§() : Number
      {
         return this.§5"]§;
      }
      
      public function §^$4§() : String
      {
         return this.§]"E§;
      }
      
      public function §[g§(param1:Boolean) : void
      {
         this.§"#Z§ = param1;
         dispatchEvent(new Event(SCORE_MULTIPLIER_UPDATE_EVENT));
      }
      
      public function get §;^§() : Boolean
      {
         return this.§"#Z§;
      }
      
      public function §@"G§(param1:Boolean) : void
      {
         this.§"!H§ = param1;
      }
      
      public function §9P§() : Boolean
      {
         return this.§"!H§;
      }
   }
}
