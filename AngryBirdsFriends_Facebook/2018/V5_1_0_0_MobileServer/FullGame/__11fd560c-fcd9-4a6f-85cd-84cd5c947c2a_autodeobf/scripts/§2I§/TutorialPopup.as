package §2I§
{
   import § %§.§1Q§;
   import §1!=§.AbstractPopup;
   import §3#T§.§'§;
   import §<h§.§[#K§;
   import §?"f§.§!Y§;
   import §@!M§.§!"p§;
   import §@!M§.§^#p§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.text.TextField;
   
   public class TutorialPopup extends AbstractPopup
   {
      
      protected static const §<$1§:String = "bird_tutorial_1";
      
      public static const ID:String = "TutorialPopup";
      
      private static var §-!J§:§^#p§;
       
      
      protected var §#"i§:MovieClip;
      
      protected var §&"Q§:String;
      
      protected var §%!;§:§5#j§;
      
      protected var §2#b§:Boolean;
      
      protected var §9!a§:§[#K§;
      
      protected var § H§:TextField;
      
      private var §7"m§:Boolean = false;
      
      public function TutorialPopup(param1:int, param2:int, param3:MovieClip, param4:String, param5:§5#j§, param6:Boolean = true)
      {
         super(param1,param2,§1Q§.§5T§.Popups.Popup_Tutorial[0],ID);
         this.§&"Q§ = param4;
         this.§%!;§ = param5;
         this.§2#b§ = param6;
         §?#5§ = true;
         this.§#"i§ = param3;
         this.§#"i§.gotoAndStop(1);
         this.§#"i§.name = "MovieClip_TutorialClip";
      }
      
      public function get §1!s§() : String
      {
         return this.§&"Q§;
      }
      
      public function get title() : String
      {
         return this.§%!;§.solve(this.§1!s§);
      }
      
      override protected function init() : void
      {
         super.init();
         var _loc1_:MovieClip = §,#2§.getItemByName("MovieClip_ContentMask").mClip;
         var _loc2_:MovieClip = §,#2§.getItemByName("Container_Animation").mClip;
         _loc2_.addChild(this.§#"i§);
         this.§ H§ = TextField(§,#2§.getItemByName("MovieClip_Title").mClip.titleContainer.title);
         this.§ H§.text = this.title;
         this.§9!a§ = §[#K§(§,#2§.getItemByName("Container_CloseButton"));
         _loc2_.mask = _loc1_;
      }
      
      override protected function createTransition(param1:Vector.<MovieClip>) : void
      {
         §0$@§();
         §2#R§ = new §'"d§(param1,§,#2§.mClip.stage,1000 / 60);
         if(this.§2#b§)
         {
            §2#R§.addEventListener(§'"d§.§;#$§,this.§1#n§);
         }
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         if(!§-!J§)
         {
            §-!J§ = §!"p§.playSound(§<$1§,§!"p§.§^#@§,int.MAX_VALUE);
         }
         super.show(param1);
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         if(!AngryBirdsBase.singleton.popupManager.isPopupInQueueById(TutorialPopup.ID) && §-!J§)
         {
            §-!J§.stop();
            §-!J§.§;#C§();
            §-!J§ = null;
         }
         super.hide(param1);
      }
      
      protected function §1#n§(param1:Event) : void
      {
         if(§2#R§)
         {
            §2#R§.removeEventListener(§'"d§.§;#$§,this.§1#n§);
         }
         this.§2#b§ = false;
         this.§9!a§.visible = !this.§2#b§;
      }
      
      override protected function onTransitionStart(param1:String) : void
      {
         var _loc2_:MovieClip = §,#2§.getItemByName("MovieClip_Title").mClip;
         if(param1 == §!Y§.§[,§)
         {
            this.§9!a§.visible = !this.§2#b§;
            _loc2_.visible = true;
         }
         if(param1 == §!Y§.§>$?§)
         {
            this.§9!a§.visible = false;
            _loc2_.visible = false;
         }
         if(param1 == §!Y§.§6[§)
         {
            this.§9!a§.visible = false;
            _loc2_.visible = false;
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'#0§) : void
      {
         if(param2.toUpperCase() == "CLOSE" && this.§2#b§)
         {
            return;
         }
         super.onUIInteraction(param1,param2,param3);
      }
      
      override public function dispose() : void
      {
         if(§2#R§)
         {
            §2#R§.removeEventListener(§'"d§.§;#$§,this.§1#n§);
         }
         this.§#"i§.gotoAndStop(this.§#"i§.totalFrames);
         super.dispose();
      }
   }
}
