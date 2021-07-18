package §5§#7
{
   import §+D§.§ #^§;
   import §7!$§.§&$§;
   import §;"Y§.§&#X§;
   import §="2§.§4!5§;
   import §="2§.§?!r§;
   import §[!m§.AbstractPopup;
   import §]!$§.§6y§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.text.TextField;
   
   public class TutorialPopup extends AbstractPopup
   {
      
      protected static const §'!R§:String = "bird_tutorial_1";
      
      public static const §%!h§:String = "TutorialPopup";
      
      private static var §#!b§:§4!5§;
       
      
      protected var §6"E§:MovieClip;
      
      protected var §+E§:String;
      
      protected var § !U§:§3!c§;
      
      protected var §]"M§:Boolean;
      
      protected var §<"§:§ #^§;
      
      protected var §1"5§:TextField;
      
      private var §;!p§:Boolean = false;
      
      public function TutorialPopup(param1:int, param2:int, param3:MovieClip, param4:String, param5:§3!c§, param6:Boolean = true)
      {
         super(param1,param2,§&$§.§@8§.Popups.Popup_Tutorial[0],§%!h§);
         this.§+E§ = param4;
         this.§ !U§ = param5;
         this.§]"M§ = param6;
         §+#=§ = true;
         this.§6"E§ = param3;
         this.§6"E§.gotoAndStop(1);
         this.§6"E§.name = "MovieClip_TutorialClip";
      }
      
      public function get §%##§() : String
      {
         return this.§+E§;
      }
      
      public function get title() : String
      {
         return this.§ !U§.solve(this.§%##§);
      }
      
      override protected function init() : void
      {
         super.init();
         var _loc1_:MovieClip = §^c§.getItemByName("MovieClip_ContentMask").mClip;
         var _loc2_:MovieClip = §^c§.getItemByName("Container_Animation").mClip;
         _loc2_.addChild(this.§6"E§);
         this.§1"5§ = TextField(§^c§.getItemByName("MovieClip_Title").mClip.titleContainer.title);
         this.§1"5§.text = this.title;
         this.§<"§ = § #^§(§^c§.getItemByName("Container_CloseButton"));
         _loc2_.mask = _loc1_;
      }
      
      override protected function createTransition(param1:Vector.<MovieClip>) : void
      {
         §^!d§();
         §7!=§ = new §7#B§(param1,§^c§.mClip.stage,1000 / 60);
         if(this.§]"M§)
         {
            §7!=§.addEventListener(§7#B§.§'@§,this.§'!x§);
         }
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         if(!§#!b§)
         {
            §#!b§ = §?!r§.§"#_§(§'!R§,§?!r§.§2!1§,int.MAX_VALUE);
         }
         super.show(param1);
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         if(!§4#;§.singleton.popupManager.§6#-§(TutorialPopup.§%!h§) && §#!b§)
         {
            §#!b§.stop();
            §#!b§.§!"^§();
            §#!b§ = null;
         }
         super.hide(param1);
      }
      
      protected function §'!x§(param1:Event) : void
      {
         if(§7!=§)
         {
            §7!=§.removeEventListener(§7#B§.§'@§,this.§'!x§);
         }
         this.§]"M§ = false;
         this.§<"§.visible = !this.§]"M§;
      }
      
      override protected function onTransitionStart(param1:String) : void
      {
         var _loc2_:MovieClip = §^c§.getItemByName("MovieClip_Title").mClip;
         if(param1 == §6y§.§5z§)
         {
            this.§<"§.visible = !this.§]"M§;
            _loc2_.visible = true;
         }
         if(param1 == §6y§.§;X§)
         {
            this.§<"§.visible = false;
            _loc2_.visible = false;
         }
         if(param1 == §6y§.§>]§)
         {
            this.§<"§.visible = false;
            _loc2_.visible = false;
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§&#X§) : void
      {
         if(param2.toUpperCase() == "CLOSE" && this.§]"M§)
         {
            return;
         }
         super.onUIInteraction(param1,param2,param3);
      }
      
      override public function dispose() : void
      {
         if(§7!=§)
         {
            §7!=§.removeEventListener(§7#B§.§'@§,this.§'!x§);
         }
         this.§6"E§.gotoAndStop(this.§6"E§.totalFrames);
         super.dispose();
      }
   }
}
