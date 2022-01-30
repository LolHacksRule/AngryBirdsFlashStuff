package §&+§
{
   import §!",§.§7!+§;
   import §3!!§.§5" §;
   import §9![§.§1!i§;
   import §9![§.§4Y§;
   import §@f§.§&!"§;
   import §[" §.§"!j§;
   import §[<§.AbstractPopup;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.text.TextField;
   
   public class TutorialPopup extends AbstractPopup
   {
      
      protected static const §<?§:String = "bird_tutorial_1";
      
      public static const ID:String = "TutorialPopup";
      
      private static var §;9§:§4Y§;
       
      
      protected var §6v§:MovieClip;
      
      protected var §0W§:String;
      
      protected var §]!+§:§@t§;
      
      protected var §9!u§:Boolean;
      
      protected var §>g§:§5" §;
      
      protected var §'!r§:TextField;
      
      private var §@!p§:Boolean = false;
      
      public function TutorialPopup(param1:int, param2:int, param3:MovieClip, param4:String, param5:§@t§, param6:Boolean = true)
      {
         super(param1,param2,§"!j§.§3=§.Popups.Popup_Tutorial[0],ID);
         this.§0W§ = param4;
         this.§]!+§ = param5;
         this.§9!u§ = param6;
         §8z§ = true;
         this.§6v§ = param3;
         this.§6v§.gotoAndStop(1);
         this.§6v§.name = "MovieClip_TutorialClip";
      }
      
      public function get §^!o§() : String
      {
         return this.§0W§;
      }
      
      public function get title() : String
      {
         return this.§]!+§.solve(this.§^!o§);
      }
      
      override protected function init() : void
      {
         super.init();
         var _loc1_:MovieClip = §#t§.getItemByName("MovieClip_ContentMask").mClip;
         var _loc2_:MovieClip = §#t§.getItemByName("Container_Animation").mClip;
         _loc2_.addChild(this.§6v§);
         this.§'!r§ = TextField(§#t§.getItemByName("MovieClip_Title").mClip.titleContainer.title);
         this.§'!r§.text = this.title;
         this.§>g§ = §5" §(§#t§.getItemByName("Container_CloseButton"));
         _loc2_.mask = _loc1_;
      }
      
      override protected function createTransition(param1:Vector.<MovieClip>) : void
      {
         §2C§();
         §8"§ = new §[M§(param1,§#t§.mClip.stage,1000 / 60);
         if(this.§9!u§)
         {
            §8"§.addEventListener(§[M§.§5z§,this.§%!M§);
         }
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         if(!§;9§)
         {
            §;9§ = §1!i§.§+!Y§(§<?§,§1!i§.§'!1§,int.MAX_VALUE);
         }
         super.show(param1);
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         if(!§&N§.§#Y§.§@!H§.§+!1§(TutorialPopup.ID) && §;9§)
         {
            §;9§.stop();
            §;9§.§`"'§();
            §;9§ = null;
         }
         super.hide(param1);
      }
      
      protected function §%!M§(param1:Event) : void
      {
         if(§8"§)
         {
            §8"§.removeEventListener(§[M§.§5z§,this.§%!M§);
         }
         this.§9!u§ = false;
         this.§>g§.visible = !this.§9!u§;
      }
      
      override protected function onTransitionStart(param1:String) : void
      {
         var _loc2_:MovieClip = §#t§.getItemByName("MovieClip_Title").mClip;
         if(param1 == §7!+§.§%"5§)
         {
            this.§>g§.visible = !this.§9!u§;
            _loc2_.visible = true;
         }
         if(param1 == §7!+§.§1"-§)
         {
            this.§>g§.visible = false;
            _loc2_.visible = false;
         }
         if(param1 == §7!+§.§+R§)
         {
            this.§>g§.visible = false;
            _loc2_.visible = false;
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§&!"§) : void
      {
         if(param2.toUpperCase() == "CLOSE" && this.§9!u§)
         {
            return;
         }
         super.onUIInteraction(param1,param2,param3);
      }
      
      override public function dispose() : void
      {
         if(§8"§)
         {
            §8"§.removeEventListener(§[M§.§5z§,this.§%!M§);
         }
         this.§6v§.gotoAndStop(this.§6v§.totalFrames);
         super.dispose();
      }
   }
}
