package §=!L§
{
   import §,L§.§6!W§;
   import §0"$§.§"!a§;
   import §1T§.§'!c§;
   import §1T§.§8!Q§;
   import §48§.AbstractPopup;
   import §7!§.§#"0§;
   import §>1§.§2B§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.text.TextField;
   
   public class TutorialPopup extends AbstractPopup
   {
      
      protected static const § W§:String = "bird_tutorial_1";
      
      public static const ID:String = "TutorialPopup";
      
      private static var §%%§:§8!Q§;
       
      
      protected var §>!>§:MovieClip;
      
      protected var §]!S§:String;
      
      protected var §7!'§:§7M§;
      
      protected var §`!h§:Boolean;
      
      protected var §=!`§:§"!a§;
      
      protected var §,!9§:TextField;
      
      private var §!f§:Boolean = false;
      
      public function TutorialPopup(param1:int, param2:int, param3:MovieClip, param4:String, param5:§7M§, param6:Boolean = true)
      {
         super(param1,param2,§#"0§.§+#§.Popups.Popup_Tutorial[0],ID);
         this.§]!S§ = param4;
         this.§7!'§ = param5;
         this.§`!h§ = param6;
         §%!v§ = true;
         this.§>!>§ = param3;
         this.§>!>§.gotoAndStop(1);
         this.§>!>§.name = "MovieClip_TutorialClip";
      }
      
      public function get § "!§() : String
      {
         return this.§]!S§;
      }
      
      public function get title() : String
      {
         return this.§7!'§.solve(this.§ "!§);
      }
      
      override protected function init() : void
      {
         super.init();
         var _loc1_:MovieClip = §@'§.getItemByName("MovieClip_ContentMask").mClip;
         var _loc2_:MovieClip = §@'§.getItemByName("Container_Animation").mClip;
         _loc2_.addChild(this.§>!>§);
         this.§,!9§ = TextField(§@'§.getItemByName("MovieClip_Title").mClip.titleContainer.title);
         this.§,!9§.text = this.title;
         this.§=!`§ = §"!a§(§@'§.getItemByName("Container_CloseButton"));
         _loc2_.mask = _loc1_;
      }
      
      override protected function createTransition(param1:Vector.<MovieClip>) : void
      {
         §6!8§();
         §#1§ = new §0R§(param1,§@'§.mClip.stage,1000 / 60);
         if(this.§`!h§)
         {
            §#1§.addEventListener(§0R§.§'!W§,this.§]T§);
         }
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         if(!§%%§)
         {
            §%%§ = §'!c§.§3!f§(§ W§,§'!c§.§ F§,int.MAX_VALUE);
         }
         super.show(param1);
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         if(!§6!!§.singleton.§%![§.§^0§(TutorialPopup.ID) && §%%§)
         {
            §%%§.stop();
            §%%§.§>!C§();
            §%%§ = null;
         }
         super.hide(param1);
      }
      
      protected function §]T§(param1:Event) : void
      {
         if(§#1§)
         {
            §#1§.removeEventListener(§0R§.§'!W§,this.§]T§);
         }
         this.§`!h§ = false;
         this.§=!`§.visible = !this.§`!h§;
      }
      
      override protected function onTransitionStart(param1:String) : void
      {
         var _loc2_:MovieClip = §@'§.getItemByName("MovieClip_Title").mClip;
         if(param1 == §2B§.§+!_§)
         {
            this.§=!`§.visible = !this.§`!h§;
            _loc2_.visible = true;
         }
         if(param1 == §2B§.§-!S§)
         {
            this.§=!`§.visible = false;
            _loc2_.visible = false;
         }
         if(param1 == §2B§.§"<§)
         {
            this.§=!`§.visible = false;
            _loc2_.visible = false;
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§6!W§) : void
      {
         if(param2.toUpperCase() == "CLOSE" && this.§`!h§)
         {
            return;
         }
         super.onUIInteraction(param1,param2,param3);
      }
      
      override public function dispose() : void
      {
         if(§#1§)
         {
            §#1§.removeEventListener(§0R§.§'!W§,this.§]T§);
         }
         this.§>!>§.gotoAndStop(this.§>!>§.totalFrames);
         super.dispose();
      }
   }
}
