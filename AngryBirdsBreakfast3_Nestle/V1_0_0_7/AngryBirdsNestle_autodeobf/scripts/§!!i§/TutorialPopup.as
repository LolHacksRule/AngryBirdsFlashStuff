package §!!i§
{
   import §!!`§.AbstractPopup;
   import §,a§.§[!d§;
   import §;s§.§%!c§;
   import §;s§.§3q§;
   import §<!0§.§'!%§;
   import §>P§.§]"4§;
   import §^6§.§=!A§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.text.TextField;
   
   public class TutorialPopup extends AbstractPopup
   {
      
      protected static const §7!S§:String = "bird_tutorial_1";
      
      public static const ID:String = "TutorialPopup";
      
      private static var §""'§:§3q§;
       
      
      protected var §=!L§:MovieClip;
      
      protected var §+",§:String;
      
      protected var §+!^§:§7" §;
      
      protected var §0f§:Boolean;
      
      protected var §%"%§:§]"4§;
      
      protected var §>!R§:TextField;
      
      private var §9!j§:Boolean = false;
      
      public function TutorialPopup(param1:int, param2:int, param3:MovieClip, param4:String, param5:§7" §, param6:Boolean = true)
      {
         super(param1,param2,§=!A§.§`O§.Popups.Popup_Tutorial[0],ID);
         this.§+",§ = param4;
         this.§+!^§ = param5;
         this.§0f§ = param6;
         § y§ = true;
         this.§=!L§ = param3;
         this.§=!L§.gotoAndStop(1);
         this.§=!L§.name = "MovieClip_TutorialClip";
      }
      
      public function get §9!m§() : String
      {
         return this.§+",§;
      }
      
      public function get title() : String
      {
         return this.§+!^§.solve(this.§9!m§);
      }
      
      override protected function init() : void
      {
         super.init();
         var _loc1_:MovieClip = §-"1§.getItemByName("MovieClip_ContentMask").mClip;
         var _loc2_:MovieClip = §-"1§.getItemByName("Container_Animation").mClip;
         _loc2_.addChild(this.§=!L§);
         this.§>!R§ = TextField(§-"1§.getItemByName("MovieClip_Title").mClip.titleContainer.title);
         this.§>!R§.text = this.title;
         this.§%"%§ = §]"4§(§-"1§.getItemByName("Container_CloseButton"));
         _loc2_.mask = _loc1_;
      }
      
      override protected function createTransition(param1:Vector.<MovieClip>) : void
      {
         §1_§();
         §]z§ = new §>Y§(param1,§-"1§.mClip.stage,1000 / 60);
         if(this.§0f§)
         {
            §]z§.addEventListener(§>Y§.§'!z§,this.§7s§);
         }
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         if(!§""'§)
         {
            §""'§ = §%!c§.§8" §(§7!S§,§%!c§.§+!?§,int.MAX_VALUE);
         }
         super.show(param1);
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         if(!§,!X§.§>!G§.§5!K§.§"z§(TutorialPopup.ID) && §""'§)
         {
            §""'§.stop();
            §""'§.§9!'§();
            §""'§ = null;
         }
         super.hide(param1);
      }
      
      protected function §7s§(param1:Event) : void
      {
         if(§]z§)
         {
            §]z§.removeEventListener(§>Y§.§'!z§,this.§7s§);
         }
         this.§0f§ = false;
         this.§%"%§.visible = !this.§0f§;
      }
      
      override protected function onTransitionStart(param1:String) : void
      {
         var _loc2_:MovieClip = §-"1§.getItemByName("MovieClip_Title").mClip;
         if(param1 == §[!d§.§5M§)
         {
            this.§%"%§.visible = !this.§0f§;
            _loc2_.visible = true;
         }
         if(param1 == §[!d§.§&b§)
         {
            this.§%"%§.visible = false;
            _loc2_.visible = false;
         }
         if(param1 == §[!d§.§-!g§)
         {
            this.§%"%§.visible = false;
            _loc2_.visible = false;
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'!%§) : void
      {
         if(param2.toUpperCase() == "CLOSE" && this.§0f§)
         {
            return;
         }
         super.onUIInteraction(param1,param2,param3);
      }
      
      override public function dispose() : void
      {
         if(§]z§)
         {
            §]z§.removeEventListener(§>Y§.§'!z§,this.§7s§);
         }
         this.§=!L§.gotoAndStop(this.§=!L§.totalFrames);
         super.dispose();
      }
   }
}
