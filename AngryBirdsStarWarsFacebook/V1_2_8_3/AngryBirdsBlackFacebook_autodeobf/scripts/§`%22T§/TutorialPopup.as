package §`"T§
{
   import §'"I§.§1-§;
   import §+"x§.AbstractPopup;
   import §8!h§.§-V§;
   import §=Z§.§@!8§;
   import §[!H§.§^x§;
   import §`"1§.§0"M§;
   import §`"1§.§=Q§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.text.TextField;
   
   public class TutorialPopup extends AbstractPopup
   {
      
      protected static const §,!n§:String = "bird_tutorial_1";
      
      public static const §-"§:String = "TutorialPopup";
      
      private static var §%s§:§0"M§;
       
      
      protected var §'#5§:MovieClip;
      
      protected var §]!4§:String;
      
      protected var §-!$§:§6";§;
      
      protected var §%!Y§:Boolean;
      
      protected var §1"Q§:§@!8§;
      
      protected var §2!x§:TextField;
      
      private var §-"P§:Boolean = false;
      
      public function TutorialPopup(param1:int, param2:int, param3:MovieClip, param4:String, param5:§6";§, param6:Boolean = true)
      {
         super(param1,param2,§^x§.§ '§.Popups.Popup_Tutorial[0],§-"§);
         this.§]!4§ = param4;
         this.§-!$§ = param5;
         this.§%!Y§ = param6;
         §9"o§ = true;
         this.§'#5§ = param3;
         this.§'#5§.gotoAndStop(1);
         this.§'#5§.name = "MovieClip_TutorialClip";
      }
      
      public function get §2!i§() : String
      {
         return this.§]!4§;
      }
      
      public function get title() : String
      {
         return this.§-!$§.solve(this.§2!i§);
      }
      
      override protected function init() : void
      {
         super.init();
         var _loc1_:MovieClip = §[#,§.getItemByName("MovieClip_ContentMask").mClip;
         var _loc2_:MovieClip = §[#,§.getItemByName("Container_Animation").mClip;
         _loc2_.addChild(this.§'#5§);
         this.§2!x§ = TextField(§[#,§.getItemByName("MovieClip_Title").mClip.titleContainer.title);
         this.§2!x§.text = this.title;
         this.§1"Q§ = §@!8§(§[#,§.getItemByName("Container_CloseButton"));
         _loc2_.mask = _loc1_;
      }
      
      override protected function createTransition(param1:Vector.<MovieClip>) : void
      {
         §^!A§();
         §[#§ = new § "n§(param1,§[#,§.mClip.stage,1000 / 60);
         if(this.§%!Y§)
         {
            §[#§.addEventListener(§ "n§.§3"]§,this.§-!s§);
         }
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         if(!§%s§)
         {
            §%s§ = §=Q§.§`!A§(§,!n§,§=Q§.§@"=§,int.MAX_VALUE);
         }
         super.show(param1);
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         if(!§4"#§.singleton.popupManager.§@!&§(TutorialPopup.§-"§) && §%s§)
         {
            §%s§.stop();
            §%s§.§ "R§();
            §%s§ = null;
         }
         super.hide(param1);
      }
      
      protected function §-!s§(param1:Event) : void
      {
         if(§[#§)
         {
            §[#§.removeEventListener(§ "n§.§3"]§,this.§-!s§);
         }
         this.§%!Y§ = false;
         this.§1"Q§.visible = !this.§%!Y§;
      }
      
      override protected function onTransitionStart(param1:String) : void
      {
         var _loc2_:MovieClip = §[#,§.getItemByName("MovieClip_Title").mClip;
         if(param1 == §1-§.§!o§)
         {
            this.§1"Q§.visible = !this.§%!Y§;
            _loc2_.visible = true;
         }
         if(param1 == §1-§.§<§)
         {
            this.§1"Q§.visible = false;
            _loc2_.visible = false;
         }
         if(param1 == §1-§.§?j§)
         {
            this.§1"Q§.visible = false;
            _loc2_.visible = false;
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§-V§) : void
      {
         if(param2.toUpperCase() == "CLOSE" && this.§%!Y§)
         {
            return;
         }
         super.onUIInteraction(param1,param2,param3);
      }
      
      override public function dispose() : void
      {
         if(§[#§)
         {
            §[#§.removeEventListener(§ "n§.§3"]§,this.§-!s§);
         }
         this.§'#5§.gotoAndStop(this.§'#5§.totalFrames);
         super.dispose();
      }
   }
}
