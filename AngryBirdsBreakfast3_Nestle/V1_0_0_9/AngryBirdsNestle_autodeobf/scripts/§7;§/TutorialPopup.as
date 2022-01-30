package §7;§
{
   import §!R§.§#!L§;
   import §+!2§.§%!-§;
   import §1!s§.AbstractPopup;
   import §4Y§.§%n§;
   import §;X§.§&"7§;
   import §;X§.§4!@§;
   import §]'§.§'"+§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.text.TextField;
   
   public class TutorialPopup extends AbstractPopup
   {
      
      protected static const §3!_§:String = "bird_tutorial_1";
      
      public static const ID:String = "TutorialPopup";
      
      private static var §-!'§:§&"7§;
       
      
      protected var §%!b§:MovieClip;
      
      protected var §>S§:String;
      
      protected var §^!@§:§8"5§;
      
      protected var §99§:Boolean;
      
      protected var §"L§:§%n§;
      
      protected var §@e§:TextField;
      
      private var §with§:Boolean = false;
      
      public function TutorialPopup(param1:int, param2:int, param3:MovieClip, param4:String, param5:§8"5§, param6:Boolean = true)
      {
         super(param1,param2,§%!-§.§#t§.Popups.Popup_Tutorial[0],ID);
         this.§>S§ = param4;
         this.§^!@§ = param5;
         this.§99§ = param6;
         §[!?§ = true;
         this.§%!b§ = param3;
         this.§%!b§.gotoAndStop(1);
         this.§%!b§.name = "MovieClip_TutorialClip";
      }
      
      public function get §'!7§() : String
      {
         return this.§>S§;
      }
      
      public function get title() : String
      {
         return this.§^!@§.solve(this.§'!7§);
      }
      
      override protected function init() : void
      {
         super.init();
         var _loc1_:MovieClip = §;"#§.getItemByName("MovieClip_ContentMask").mClip;
         var _loc2_:MovieClip = §;"#§.getItemByName("Container_Animation").mClip;
         _loc2_.addChild(this.§%!b§);
         this.§@e§ = TextField(§;"#§.getItemByName("MovieClip_Title").mClip.titleContainer.title);
         this.§@e§.text = this.title;
         this.§"L§ = §%n§(§;"#§.getItemByName("Container_CloseButton"));
         _loc2_.mask = _loc1_;
      }
      
      override protected function createTransition(param1:Vector.<MovieClip>) : void
      {
         §`!n§();
         §0!Z§ = new §#q§(param1,§;"#§.mClip.stage,1000 / 60);
         if(this.§99§)
         {
            §0!Z§.addEventListener(§#q§.§0!d§,this.§&!W§);
         }
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         if(!§-!'§)
         {
            §-!'§ = §4!@§.§`!w§(§3!_§,§4!@§.§!!x§,int.MAX_VALUE);
         }
         super.show(param1);
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         if(!§-!2§.§7O§.§0!l§.§7!p§(TutorialPopup.ID) && §-!'§)
         {
            §-!'§.stop();
            §-!'§.§=!2§();
            §-!'§ = null;
         }
         super.hide(param1);
      }
      
      protected function §&!W§(param1:Event) : void
      {
         if(§0!Z§)
         {
            §0!Z§.removeEventListener(§#q§.§0!d§,this.§&!W§);
         }
         this.§99§ = false;
         this.§"L§.visible = !this.§99§;
      }
      
      override protected function onTransitionStart(param1:String) : void
      {
         var _loc2_:MovieClip = §;"#§.getItemByName("MovieClip_Title").mClip;
         if(param1 == §'"+§.§4!k§)
         {
            this.§"L§.visible = !this.§99§;
            _loc2_.visible = true;
         }
         if(param1 == §'"+§.§+U§)
         {
            this.§"L§.visible = false;
            _loc2_.visible = false;
         }
         if(param1 == §'"+§.§85§)
         {
            this.§"L§.visible = false;
            _loc2_.visible = false;
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§#!L§) : void
      {
         if(param2.toUpperCase() == "CLOSE" && this.§99§)
         {
            return;
         }
         super.onUIInteraction(param1,param2,param3);
      }
      
      override public function dispose() : void
      {
         if(§0!Z§)
         {
            §0!Z§.removeEventListener(§#q§.§0!d§,this.§&!W§);
         }
         this.§%!b§.gotoAndStop(this.§%!b§.totalFrames);
         super.dispose();
      }
   }
}
