package §-w§
{
   import §&<§.§^!#§;
   import §0K§.§&"§;
   import §5u§.AbstractPopup;
   import §@!6§.§-Z§;
   import §@!6§.§3!5§;
   import §[!F§.§3j§;
   import §^!`§.§#p§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.text.TextField;
   
   public class TutorialPopup extends AbstractPopup
   {
      
      protected static const §]!Z§:String = "bird_tutorial_1";
      
      public static const ID:String = "TutorialPopup";
      
      private static var §7A§:§-Z§;
       
      
      protected var §;?§:MovieClip;
      
      protected var §]g§:String;
      
      protected var §+!f§:§&f§;
      
      protected var §"2§:Boolean;
      
      protected var §@D§:§3j§;
      
      protected var §!!"§:TextField;
      
      private var §6O§:Boolean = false;
      
      public function TutorialPopup(param1:int, param2:int, param3:MovieClip, param4:String, param5:§&f§, param6:Boolean = true)
      {
         super(param1,param2,§#p§.§'"0§.Popups.Popup_Tutorial[0],ID);
         this.§]g§ = param4;
         this.§+!f§ = param5;
         this.§"2§ = param6;
         §8!0§ = true;
         this.§;?§ = param3;
         this.§;?§.gotoAndStop(1);
         this.§;?§.name = "MovieClip_TutorialClip";
      }
      
      public function get §=!z§() : String
      {
         return this.§]g§;
      }
      
      public function get title() : String
      {
         return this.§+!f§.solve(this.§=!z§);
      }
      
      override protected function init() : void
      {
         super.init();
         var _loc1_:MovieClip = §[!<§.getItemByName("MovieClip_ContentMask").mClip;
         var _loc2_:MovieClip = §[!<§.getItemByName("Container_Animation").mClip;
         _loc2_.addChild(this.§;?§);
         this.§!!"§ = TextField(§[!<§.getItemByName("MovieClip_Title").mClip.titleContainer.title);
         this.§!!"§.text = this.title;
         this.§@D§ = §3j§(§[!<§.getItemByName("Container_CloseButton"));
         _loc2_.mask = _loc1_;
      }
      
      override protected function createTransition(param1:Vector.<MovieClip>) : void
      {
         §;Q§();
         §`!?§ = new §<!V§(param1,§[!<§.mClip.stage,1000 / 60);
         if(this.§"2§)
         {
            §`!?§.addEventListener(§<!V§.§38§,this.§#!P§);
         }
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         if(!§7A§)
         {
            §7A§ = §3!5§.§<!9§(§]!Z§,§3!5§.§?w§,int.MAX_VALUE);
         }
         super.show(param1);
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         if(!§-!I§.§[f§.§@!C§.§#!I§(TutorialPopup.ID) && §7A§)
         {
            §7A§.stop();
            §7A§.§0!#§();
            §7A§ = null;
         }
         super.hide(param1);
      }
      
      protected function §#!P§(param1:Event) : void
      {
         if(§`!?§)
         {
            §`!?§.removeEventListener(§<!V§.§38§,this.§#!P§);
         }
         this.§"2§ = false;
         this.§@D§.visible = !this.§"2§;
      }
      
      override protected function onTransitionStart(param1:String) : void
      {
         var _loc2_:MovieClip = §[!<§.getItemByName("MovieClip_Title").mClip;
         if(param1 == §&"§.§-"$§)
         {
            this.§@D§.visible = !this.§"2§;
            _loc2_.visible = true;
         }
         if(param1 == §&"§.§<_§)
         {
            this.§@D§.visible = false;
            _loc2_.visible = false;
         }
         if(param1 == §&"§.§0!S§)
         {
            this.§@D§.visible = false;
            _loc2_.visible = false;
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§^!#§) : void
      {
         if(param2.toUpperCase() == "CLOSE" && this.§"2§)
         {
            return;
         }
         super.onUIInteraction(param1,param2,param3);
      }
      
      override public function dispose() : void
      {
         if(§`!?§)
         {
            §`!?§.removeEventListener(§<!V§.§38§,this.§#!P§);
         }
         this.§;?§.gotoAndStop(this.§;?§.totalFrames);
         super.dispose();
      }
   }
}
