package §20§
{
   import §'!O§.§#!_§;
   import §'!O§.§<r§;
   import §'!O§.§=j§;
   import §2`§.HighscoreSidebar;
   import §3Q§.§+!]§;
   import §3Y§.§4!_§;
   import §3Y§.§7!>§;
   import §5!1§.§"!X§;
   import §8P§.§1A§;
   import §9b§.§"!S§;
   import §;!3§.§;!P§;
   import §<u§.§]!Q§;
   import §@R§.set;
   import §^!5§.§,4§;
   
   public class §9!C§ extends Popup
   {
      
      private static var §`!2§:Class = §0!f§;
       
      
      private var §!!f§:StatePopupManager;
      
      private var §<5§:Boolean = false;
      
      public function §9!C§(param1:§]!Q§, param2:StatePopupManager)
      {
         super(set.§=!^§(§`!2§),param1);
         §>K§ = param1;
         this.§!!f§ = param2;
         this.§!!f§.addEventListener(§+!]§.§0!S§,this.onUiInteraction);
      }
      
      private function onUiInteraction(param1:§+!]§) : void
      {
         this.uiInteractionHandler(param1.§78§,param1.§<Y§,param1.§4H§);
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§1A§) : void
      {
         switch(param2)
         {
            case "LOGOUT_YES":
               this.preClose();
               this.§<5§ = true;
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
         if(this.§<5§)
         {
            while(§-Z§.§ !6§)
            {
               §-Z§.§5P§();
            }
            _loc1_ = 0;
            while(_loc1_ < §"!b§.§2F§.length)
            {
               if(§"!b§.§2F§[_loc1_] is Popup)
               {
                  §"!b§.§2F§[_loc1_].close();
               }
               _loc1_++;
            }
            this.§<5§ = false;
            §#!_§.§<!9§ = true;
            §,L§.§8!F§ = new §7!>§("");
            §4!_§.§,t§ = new §;!P§();
            §"!S§.§99§();
            §"!S§.§-!7§.§%2§(false);
            §"!S§.§-!7§.§3g§(false);
            §<r§.§>!D§ = §#!_§.§@o§;
            §,4§.§&O§(§,4§.§`Y§(HighscoreSidebar.§1!§));
            §,L§.§+w§.§9^§(§<r§.§@o§);
            §=j§.sHighscoreSidebar.reset();
         }
      }
      
      override public function open(param1:Boolean = true) : void
      {
         if(param1)
         {
            mClip.scaleX = 0;
            mClip.scaleY = 0;
            if(§@J§ != null)
            {
               §@J§.stop();
            }
            §@J§ = §"!X§.§ s§.§%!;§(this.mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":0,
               "scaleY":0
            },0.25,§"!X§.§<!e§);
            §@J§.play();
         }
         super.open(param1);
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         super.preClose(param1);
         if(param1)
         {
            if(§@J§ != null)
            {
               §@J§.stop();
            }
            §@J§ = §"!X§.§ s§.§%!;§(this.mClip,{
               "scaleX":0,
               "scaleY":0
            },null,0.25,§"!X§.§@4§);
            §@J§.play();
         }
      }
      
      override public function deActivate() : void
      {
         this.§!!f§.removeEventListener(§+!]§.§0!S§,this.onUiInteraction);
         super.deActivate();
      }
   }
}
