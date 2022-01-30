package §=!k§
{
   import § S§.AbstractPopup;
   import §#A§.§,!;§;
   import §5<§.§8!1§;
   import §8q§.§+m§;
   import §8q§.§]d§;
   import §;"+§.§^!i§;
   import §>P§.§,3§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.text.TextField;
   
   public class TutorialPopup extends AbstractPopup
   {
      
      protected static const §+!Y§:String = "bird_tutorial_1";
      
      public static const ID:String = "TutorialPopup";
      
      private static var §#!A§:§+m§;
       
      
      protected var §-!Z§:MovieClip;
      
      protected var §5!c§:String;
      
      protected var §0"3§:§`!d§;
      
      protected var §9e§:Boolean;
      
      protected var §1!;§:§^!i§;
      
      protected var §"!P§:TextField;
      
      private var §`" §:Boolean = false;
      
      public function TutorialPopup(param1:int, param2:int, param3:MovieClip, param4:String, param5:§`!d§, param6:Boolean = true)
      {
         super(param1,param2,§8!1§.§31§.Popups.Popup_Tutorial[0],ID);
         this.§5!c§ = param4;
         this.§0"3§ = param5;
         this.§9e§ = param6;
         §>"3§ = true;
         this.§-!Z§ = param3;
         this.§-!Z§.gotoAndStop(1);
         this.§-!Z§.name = "MovieClip_TutorialClip";
      }
      
      public function get §6!&§() : String
      {
         return this.§5!c§;
      }
      
      public function get title() : String
      {
         return this.§0"3§.solve(this.§6!&§);
      }
      
      override protected function init() : void
      {
         super.init();
         var _loc1_:MovieClip = §@!U§.getItemByName("MovieClip_ContentMask").mClip;
         var _loc2_:MovieClip = §@!U§.getItemByName("Container_Animation").mClip;
         _loc2_.addChild(this.§-!Z§);
         this.§"!P§ = TextField(§@!U§.getItemByName("MovieClip_Title").mClip.titleContainer.title);
         this.§"!P§.text = this.title;
         this.§1!;§ = §^!i§(§@!U§.getItemByName("Container_CloseButton"));
         _loc2_.mask = _loc1_;
      }
      
      override protected function createTransition(param1:Vector.<MovieClip>) : void
      {
         §finally§();
         §2`§ = new § !b§(param1,§@!U§.mClip.stage,1000 / 60);
         if(this.§9e§)
         {
            §2`§.addEventListener(§ !b§.§>!J§,this.§[b§);
         }
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         if(!§#!A§)
         {
            §#!A§ = §]d§.§^!J§(§+!Y§,§]d§.§ t§,int.MAX_VALUE);
         }
         super.show(param1);
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         if(!§-O§.§5!1§.§-6§.§@9§(TutorialPopup.ID) && §#!A§)
         {
            §#!A§.stop();
            §#!A§.§7!J§();
            §#!A§ = null;
         }
         super.hide(param1);
      }
      
      protected function §[b§(param1:Event) : void
      {
         if(§2`§)
         {
            §2`§.removeEventListener(§ !b§.§>!J§,this.§[b§);
         }
         this.§9e§ = false;
         this.§1!;§.visible = !this.§9e§;
      }
      
      override protected function onTransitionStart(param1:String) : void
      {
         var _loc2_:MovieClip = §@!U§.getItemByName("MovieClip_Title").mClip;
         if(param1 == §,!;§.§>6§)
         {
            this.§1!;§.visible = !this.§9e§;
            _loc2_.visible = true;
         }
         if(param1 == §,!;§.§?!q§)
         {
            this.§1!;§.visible = false;
            _loc2_.visible = false;
         }
         if(param1 == §,!;§.§-"1§)
         {
            this.§1!;§.visible = false;
            _loc2_.visible = false;
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§,3§) : void
      {
         if(param2.toUpperCase() == "CLOSE" && this.§9e§)
         {
            return;
         }
         super.onUIInteraction(param1,param2,param3);
      }
      
      override public function dispose() : void
      {
         if(§2`§)
         {
            §2`§.removeEventListener(§ !b§.§>!J§,this.§[b§);
         }
         this.§-!Z§.gotoAndStop(this.§-!Z§.totalFrames);
         super.dispose();
      }
   }
}
