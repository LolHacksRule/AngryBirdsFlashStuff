package §^"!§
{
   import §'"!§.§+§;
   import §1!i§.AbstractPopup;
   import §1`§.§7I§;
   import §2u§.§,6§;
   import §@3§.§]K§;
   import §[!Z§.§>D§;
   import §[!Z§.§`v§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.text.TextField;
   
   public class TutorialPopup extends AbstractPopup
   {
      
      protected static const §7!b§:String = "bird_tutorial_1";
      
      public static const ID:String = "TutorialPopup";
      
      private static var §?"3§:§`v§;
       
      
      protected var §+3§:MovieClip;
      
      protected var §?!%§:String;
      
      protected var §=n§:§4!I§;
      
      protected var §6!O§:Boolean;
      
      protected var §4!,§:§,6§;
      
      protected var §4C§:TextField;
      
      private var §-!z§:Boolean = false;
      
      public function TutorialPopup(param1:int, param2:int, param3:MovieClip, param4:String, param5:§4!I§, param6:Boolean = true)
      {
         super(param1,param2,§7I§.§7!%§.Popups.Popup_Tutorial[0],ID);
         this.§?!%§ = param4;
         this.§=n§ = param5;
         this.§6!O§ = param6;
         §@^§ = true;
         this.§+3§ = param3;
         this.§+3§.gotoAndStop(1);
         this.§+3§.name = "MovieClip_TutorialClip";
      }
      
      public function get §+!r§() : String
      {
         return this.§?!%§;
      }
      
      public function get title() : String
      {
         return this.§=n§.solve(this.§+!r§);
      }
      
      override protected function init() : void
      {
         super.init();
         var _loc1_:MovieClip = §29§.getItemByName("MovieClip_ContentMask").mClip;
         var _loc2_:MovieClip = §29§.getItemByName("Container_Animation").mClip;
         _loc2_.addChild(this.§+3§);
         this.§4C§ = TextField(§29§.getItemByName("MovieClip_Title").mClip.titleContainer.title);
         this.§4C§.text = this.title;
         this.§4!,§ = §,6§(§29§.getItemByName("Container_CloseButton"));
         _loc2_.mask = _loc1_;
      }
      
      override protected function createTransition(param1:Vector.<MovieClip>) : void
      {
         § !D§();
         §@"+§ = new §#!]§(param1,§29§.mClip.stage,1000 / 60);
         if(this.§6!O§)
         {
            §@"+§.addEventListener(§#!]§.§[c§,this.§<!+§);
         }
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         if(!§?"3§)
         {
            §?"3§ = §>D§.§9!q§(§7!b§,§>D§.§]!<§,int.MAX_VALUE);
         }
         super.show(param1);
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         if(!§ !4§.§%"7§.§+!J§.§+7§(TutorialPopup.ID) && §?"3§)
         {
            §?"3§.stop();
            §?"3§.§,^§();
            §?"3§ = null;
         }
         super.hide(param1);
      }
      
      protected function §<!+§(param1:Event) : void
      {
         if(§@"+§)
         {
            §@"+§.removeEventListener(§#!]§.§[c§,this.§<!+§);
         }
         this.§6!O§ = false;
         this.§4!,§.visible = !this.§6!O§;
      }
      
      override protected function onTransitionStart(param1:String) : void
      {
         var _loc2_:MovieClip = §29§.getItemByName("MovieClip_Title").mClip;
         if(param1 == §]K§.§=@§)
         {
            this.§4!,§.visible = !this.§6!O§;
            _loc2_.visible = true;
         }
         if(param1 == §]K§.§1o§)
         {
            this.§4!,§.visible = false;
            _loc2_.visible = false;
         }
         if(param1 == §]K§.§%x§)
         {
            this.§4!,§.visible = false;
            _loc2_.visible = false;
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§+§) : void
      {
         if(param2.toUpperCase() == "CLOSE" && this.§6!O§)
         {
            return;
         }
         super.onUIInteraction(param1,param2,param3);
      }
      
      override public function dispose() : void
      {
         if(§@"+§)
         {
            §@"+§.removeEventListener(§#!]§.§[c§,this.§<!+§);
         }
         this.§+3§.gotoAndStop(this.§+3§.totalFrames);
         super.dispose();
      }
   }
}
