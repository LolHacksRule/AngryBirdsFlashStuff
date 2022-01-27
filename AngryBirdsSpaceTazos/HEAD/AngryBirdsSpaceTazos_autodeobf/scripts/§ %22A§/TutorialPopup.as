package § "A§
{
   import §,!M§.§@!T§;
   import §-!r§.AbstractPopup;
   import §7!6§.§@Y§;
   import §="<§.§,"$§;
   import §^S§.§6u§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.text.TextField;
   
   public class TutorialPopup extends AbstractPopup
   {
      
      public static const §<!M§:String = "TutorialPopup";
       
      
      protected var §&!j§:MovieClip;
      
      protected var §^"§:String;
      
      protected var §6"3§:§?q§;
      
      protected var §`E§:Boolean;
      
      protected var §>!§:§,"$§;
      
      protected var §+!t§:TextField;
      
      public function TutorialPopup(param1:int, param2:int, param3:MovieClip, param4:String, param5:§?q§, param6:Boolean = true)
      {
         super(param1,param2,§@!T§.§-!8§.Popups.Popup_Tutorial[0],§<!M§);
         this.§^"§ = param4;
         this.§6"3§ = param5;
         this.§`E§ = param6;
         §@!d§ = true;
         this.§&!j§ = param3;
         this.§&!j§.gotoAndStop(1);
         this.§&!j§.name = "MovieClip_TutorialClip";
      }
      
      public function get §4"1§() : String
      {
         return this.§^"§;
      }
      
      public function get title() : String
      {
         return this.§6"3§.solve(this.§4"1§);
      }
      
      override protected function init() : void
      {
         super.init();
         var _loc1_:MovieClip = §3!a§.getItemByName("MovieClip_ContentMask").mClip;
         var _loc2_:MovieClip = §3!a§.getItemByName("Container_Animation").mClip;
         _loc2_.addChild(this.§&!j§);
         this.§+!t§ = TextField(§3!a§.getItemByName("MovieClip_Title").mClip.titleContainer.title);
         this.§+!t§.text = this.title;
         this.§>!§ = §,"$§(§3!a§.getItemByName("Container_CloseButton"));
         _loc2_.mask = _loc1_;
      }
      
      override protected function createTransition(param1:Vector.<MovieClip>) : void
      {
         §!!q§();
         §]! § = new §8!y§(param1,§3!a§.mClip.stage,1000 / 60);
         if(this.§`E§)
         {
            §]! §.addEventListener(§8!y§.§ "-§,this.§-8§);
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
      
      protected function §-8§(param1:Event) : void
      {
         if(§]! §)
         {
            §]! §.removeEventListener(§8!y§.§ "-§,this.§-8§);
         }
         this.§`E§ = false;
         this.§>!§.visible = !this.§`E§;
      }
      
      override protected function onTransitionStart(param1:String) : void
      {
         var _loc2_:MovieClip = §3!a§.getItemByName("MovieClip_Title").mClip;
         if(param1 == §6u§.§9!w§)
         {
            this.§>!§.visible = !this.§`E§;
            _loc2_.visible = true;
         }
         if(param1 == §6u§.§2!!§)
         {
            this.§>!§.visible = false;
            _loc2_.visible = false;
         }
         if(param1 == §6u§.§5!-§)
         {
            this.§>!§.visible = false;
            _loc2_.visible = false;
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§@Y§) : void
      {
         if(param2.toUpperCase() == "CLOSE" && this.§`E§)
         {
            return;
         }
         super.onUIInteraction(param1,param2,param3);
      }
      
      override public function dispose() : void
      {
         if(§]! §)
         {
            §]! §.removeEventListener(§8!y§.§ "-§,this.§-8§);
         }
         this.§&!j§.gotoAndStop(this.§&!j§.totalFrames);
         super.dispose();
      }
   }
}
