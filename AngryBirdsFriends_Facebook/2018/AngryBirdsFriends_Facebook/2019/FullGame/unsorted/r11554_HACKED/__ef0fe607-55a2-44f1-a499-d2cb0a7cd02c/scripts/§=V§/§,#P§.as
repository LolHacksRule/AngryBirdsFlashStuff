package §=V§
{
   import §!!T§.§1"9§;
   import §!!T§.§<#'§;
   import §%#v§.§?!F§;
   import §4!n§.§#$>§;
   import §;$5§.§9§;
   import §>"9§.§[#%§;
   import §?!N§.§%#§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class §,#P§ extends EventDispatcher implements §<#'§
   {
      
      public static const §1"2§:String = "SCORE_MULTIPLIER";
      
      public static const SCORE_MULTIPLIER_UPDATE_EVENT:String = "SCORE_MULTIPLIER_UPDATE_EVENT";
       
      
      private var §,"O§:Boolean;
      
      private var §^!r§:Number;
      
      private var §0$;§:String;
      
      private var §>#u§:Boolean;
      
      private var §%!p§:§#$>§;
      
      public function §,#P§()
      {
         super();
      }
      
      public function get ID() : String
      {
         return §1"2§;
      }
      
      public function §%6§(param1:Object) : void
      {
         this.§0$;§ = "BIRD_YELLOW";
         this.§^!r§ = 1.5;
      }
      
      public function §-!c§() : void
      {
         this.§,"O§ = false;
         this.§0$;§ = "";
         this.§^!r§ = 0;
         if(this.§%!p§)
         {
            this.§%!p§.setVisibility(false);
         }
      }
      
      public function §,"&§() : Boolean
      {
         AngryBirdsBase.singleton.popupManager.openPopup(new ScoreMultiplierInfoPopup(§%#§.INFO,§9#5§.DEFAULT));
         return true;
      }
      
      public function §!t§() : Boolean
      {
         return this.§,"&§();
      }
      
      public function §^!;§(param1:§?!F§) : void
      {
         this.§%!p§ = param1.getItemByName("Button_ScoreMultiplier");
         if(this.§%!p§)
         {
            this.§%!p§.setVisibility(false);
         }
      }
      
      public function §8"4§() : void
      {
      }
      
      public function onUIInteraction(param1:String) : void
      {
         switch(param1)
         {
            case "SCORE_MULTIPLIER":
               §[#%§.playSound("Menu_Confirm",§[#%§.§-"I§);
               this.§,"&§();
         }
      }
      
      public function §%$#§(param1:Number, param2:Number, param3:Number) : void
      {
         if(this.§%!p§ != null)
         {
            this.§%!p§.x = param1;
            this.§%!p§.y = param2;
            if(this.§%!p§.visible)
            {
               if(!§1"9§.§?q§.§-"?§())
               {
                  this.§%!p§.setVisibility(false);
               }
            }
            else if(§1"9§.§?q§.§-"?§())
            {
               this.§%!p§.setVisibility(true);
            }
         }
      }
      
      public function §5!5§() : Number
      {
         return this.§^!r§;
      }
      
      public function §';§() : String
      {
         return this.§0$;§;
      }
      
      public function §"!G§(param1:Boolean) : void
      {
         this.§,"O§ = param1;
         dispatchEvent(new Event(SCORE_MULTIPLIER_UPDATE_EVENT));
      }
      
      public function get §0A§() : Boolean
      {
         return this.§,"O§;
      }
      
      public function §2J§(param1:Boolean) : void
      {
         this.§>#u§ = param1;
      }
      
      public function §'#l§() : Boolean
      {
         return this.§>#u§;
      }
   }
}
