package §#@§
{
   import §&!>§.§3!k§;
   import §&!>§.§3G§;
   import §02§.§+!b§;
   import §<!9§.§^!o§;
   import §?N§.AbstractPopup;
   import §@#§.§9!'§;
   import §[!b§.§'!R§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.text.TextField;
   
   public class TutorialPopup extends AbstractPopup
   {
      
      protected static const §<v§:String = "bird_tutorial_1";
      
      public static const ID:String = "TutorialPopup";
      
      private static var §5M§:§3G§;
       
      
      protected var §[!n§:MovieClip;
      
      protected var § ;§:String;
      
      protected var §"!X§:§ set§;
      
      protected var §5!8§:Boolean;
      
      protected var §"!j§:§9!'§;
      
      protected var §%!K§:TextField;
      
      private var §5"%§:Boolean = false;
      
      public function TutorialPopup(param1:int, param2:int, param3:MovieClip, param4:String, param5:§ set§, param6:Boolean = true)
      {
         super(param1,param2,§+!b§.§#!P§.Popups.Popup_Tutorial[0],ID);
         this.§ ;§ = param4;
         this.§"!X§ = param5;
         this.§5!8§ = param6;
         §=!O§ = true;
         this.§[!n§ = param3;
         this.§[!n§.gotoAndStop(1);
         this.§[!n§.name = "MovieClip_TutorialClip";
      }
      
      public function get §!0§() : String
      {
         return this.§ ;§;
      }
      
      public function get title() : String
      {
         return this.§"!X§.solve(this.§!0§);
      }
      
      override protected function init() : void
      {
         super.init();
         var _loc1_:MovieClip = §0+§.getItemByName("MovieClip_ContentMask").mClip;
         var _loc2_:MovieClip = §0+§.getItemByName("Container_Animation").mClip;
         _loc2_.addChild(this.§[!n§);
         this.§%!K§ = TextField(§0+§.getItemByName("MovieClip_Title").mClip.titleContainer.title);
         this.§%!K§.text = this.title;
         this.§"!j§ = §9!'§(§0+§.getItemByName("Container_CloseButton"));
         _loc2_.mask = _loc1_;
      }
      
      override protected function createTransition(param1:Vector.<MovieClip>) : void
      {
         §^t§();
         §42§ = new §@l§(param1,§0+§.mClip.stage,1000 / 60);
         if(this.§5!8§)
         {
            §42§.addEventListener(§@l§.§^!E§,this.§]9§);
         }
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         if(!§5M§)
         {
            §5M§ = §3!k§.§]"4§(§<v§,§3!k§.§9C§,int.MAX_VALUE);
         }
         super.show(param1);
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         if(!§-!l§.§"x§.§,!W§.§[k§(TutorialPopup.ID) && §5M§)
         {
            §5M§.stop();
            §5M§.§3!3§();
            §5M§ = null;
         }
         super.hide(param1);
      }
      
      protected function §]9§(param1:Event) : void
      {
         if(§42§)
         {
            §42§.removeEventListener(§@l§.§^!E§,this.§]9§);
         }
         this.§5!8§ = false;
         this.§"!j§.visible = !this.§5!8§;
      }
      
      override protected function onTransitionStart(param1:String) : void
      {
         var _loc2_:MovieClip = §0+§.getItemByName("MovieClip_Title").mClip;
         if(param1 == §^!o§.§>!u§)
         {
            this.§"!j§.visible = !this.§5!8§;
            _loc2_.visible = true;
         }
         if(param1 == §^!o§.§"g§)
         {
            this.§"!j§.visible = false;
            _loc2_.visible = false;
         }
         if(param1 == §^!o§.§+"4§)
         {
            this.§"!j§.visible = false;
            _loc2_.visible = false;
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'!R§) : void
      {
         if(param2.toUpperCase() == "CLOSE" && this.§5!8§)
         {
            return;
         }
         super.onUIInteraction(param1,param2,param3);
      }
      
      override public function dispose() : void
      {
         if(§42§)
         {
            §42§.removeEventListener(§@l§.§^!E§,this.§]9§);
         }
         this.§[!n§.gotoAndStop(this.§[!n§.totalFrames);
         super.dispose();
      }
   }
}
