package § X§
{
   import §!i§.§1s§;
   import §"_§.AbstractPopup;
   import §+w§.§?e§;
   import §4!t§.§95§;
   import §@"D§.§#d§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.text.TextField;
   
   public class TutorialPopup extends AbstractPopup
   {
      
      public static const §'t§:String = "TutorialPopup";
       
      
      protected var §>+§:MovieClip;
      
      protected var §'!r§:String;
      
      protected var §@"5§:§+z§;
      
      protected var §'"<§:Boolean;
      
      protected var §@"B§:§1s§;
      
      protected var §7!O§:TextField;
      
      public function TutorialPopup(param1:int, param2:int, param3:MovieClip, param4:String, param5:§+z§, param6:Boolean = true)
      {
         super(param1,param2,§?e§.§'"G§.Popups.Popup_Tutorial[0],§'t§);
         this.§'!r§ = param4;
         this.§@"5§ = param5;
         this.§'"<§ = param6;
         §@"1§ = true;
         this.§>+§ = param3;
         this.§>+§.gotoAndStop(1);
         this.§>+§.name = "MovieClip_TutorialClip";
      }
      
      public function get §<!W§() : String
      {
         return this.§'!r§;
      }
      
      public function get title() : String
      {
         return this.§@"5§.solve(this.§<!W§);
      }
      
      override protected function init() : void
      {
         super.init();
         var _loc1_:MovieClip = §&#§.getItemByName("MovieClip_ContentMask").mClip;
         var _loc2_:MovieClip = §&#§.getItemByName("Container_Animation").mClip;
         _loc2_.addChild(this.§>+§);
         this.§7!O§ = TextField(§&#§.getItemByName("MovieClip_Title").mClip.titleContainer.title);
         this.§7!O§.text = this.title;
         this.§@"B§ = §1s§(§&#§.getItemByName("Container_CloseButton"));
         _loc2_.mask = _loc1_;
      }
      
      override protected function createTransition(param1:Vector.<MovieClip>) : void
      {
         §5!^§();
         §,"4§ = new §;!e§(param1,§&#§.mClip.stage,1000 / 60);
         if(this.§'"<§)
         {
            §,"4§.addEventListener(§;!e§.§ !&§,this.§"!L§);
         }
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         super.show(param1);
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         super.hide(param1);
      }
      
      protected function §"!L§(param1:Event) : void
      {
         if(§,"4§)
         {
            §,"4§.removeEventListener(§;!e§.§ !&§,this.§"!L§);
         }
         this.§'"<§ = false;
         this.§@"B§.visible = !this.§'"<§;
      }
      
      override protected function onTransitionStart(param1:String) : void
      {
         var _loc2_:MovieClip = §&#§.getItemByName("MovieClip_Title").mClip;
         if(param1 == §#d§.§#!y§)
         {
            this.§@"B§.visible = !this.§'"<§;
            _loc2_.visible = true;
         }
         if(param1 == §#d§.§5"D§)
         {
            this.§@"B§.visible = false;
            _loc2_.visible = false;
         }
         if(param1 == §#d§.§>@§)
         {
            this.§@"B§.visible = false;
            _loc2_.visible = false;
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§95§) : void
      {
         if(param2.toUpperCase() == "CLOSE" && this.§'"<§)
         {
            return;
         }
         super.onUIInteraction(param1,param2,param3);
      }
      
      override public function dispose() : void
      {
         if(§,"4§)
         {
            §,"4§.removeEventListener(§;!e§.§ !&§,this.§"!L§);
         }
         this.§>+§.gotoAndStop(this.§>+§.totalFrames);
         super.dispose();
      }
   }
}
