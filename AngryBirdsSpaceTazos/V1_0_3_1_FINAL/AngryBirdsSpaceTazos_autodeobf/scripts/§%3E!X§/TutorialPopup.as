package §>!X§
{
   import §+"2§.AbstractPopup;
   import §+k§.§7x§;
   import §,!7§.§5!k§;
   import §0I§.§<i§;
   import §6B§.§?"2§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.text.TextField;
   
   public class TutorialPopup extends AbstractPopup
   {
      
      public static const §var§:String = "TutorialPopup";
       
      
      protected var § !V§:MovieClip;
      
      protected var §?!y§:String;
      
      protected var §""8§:§&!5§;
      
      protected var §?F§:Boolean;
      
      protected var §=0§:§5!k§;
      
      protected var §?!r§:TextField;
      
      public function TutorialPopup(param1:int, param2:int, param3:MovieClip, param4:String, param5:§&!5§, param6:Boolean = true)
      {
         super(param1,param2,§7x§.§+2§.Popups.Popup_Tutorial[0],§var§);
         this.§?!y§ = param4;
         this.§""8§ = param5;
         this.§?F§ = param6;
         §>m§ = true;
         this.§ !V§ = param3;
         this.§ !V§.gotoAndStop(1);
         this.§ !V§.name = "MovieClip_TutorialClip";
      }
      
      public function get §>!6§() : String
      {
         return this.§?!y§;
      }
      
      public function get title() : String
      {
         return this.§""8§.solve(this.§>!6§);
      }
      
      override protected function init() : void
      {
         super.init();
         var _loc1_:MovieClip = § 1§.getItemByName("MovieClip_ContentMask").mClip;
         var _loc2_:MovieClip = § 1§.getItemByName("Container_Animation").mClip;
         _loc2_.addChild(this.§ !V§);
         this.§?!r§ = TextField(§ 1§.getItemByName("MovieClip_Title").mClip.titleContainer.title);
         this.§?!r§.text = this.title;
         this.§=0§ = §5!k§(§ 1§.getItemByName("Container_CloseButton"));
         _loc2_.mask = _loc1_;
      }
      
      override protected function createTransition(param1:Vector.<MovieClip>) : void
      {
         §4#§();
         §&!E§ = new §8"=§(param1,§ 1§.mClip.stage,1000 / 60);
         if(this.§?F§)
         {
            §&!E§.addEventListener(§8"=§.§7"F§,this.§4p§);
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
      
      protected function §4p§(param1:Event) : void
      {
         if(§&!E§)
         {
            §&!E§.removeEventListener(§8"=§.§7"F§,this.§4p§);
         }
         this.§?F§ = false;
         this.§=0§.visible = !this.§?F§;
      }
      
      override protected function onTransitionStart(param1:String) : void
      {
         var _loc2_:MovieClip = § 1§.getItemByName("MovieClip_Title").mClip;
         if(param1 == §<i§.§5]§)
         {
            this.§=0§.visible = !this.§?F§;
            _loc2_.visible = true;
         }
         if(param1 == §<i§.§4!>§)
         {
            this.§=0§.visible = false;
            _loc2_.visible = false;
         }
         if(param1 == §<i§.§+!i§)
         {
            this.§=0§.visible = false;
            _loc2_.visible = false;
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§?"2§) : void
      {
         if(param2.toUpperCase() == "CLOSE" && this.§?F§)
         {
            return;
         }
         super.onUIInteraction(param1,param2,param3);
      }
      
      override public function dispose() : void
      {
         if(§&!E§)
         {
            §&!E§.removeEventListener(§8"=§.§7"F§,this.§4p§);
         }
         this.§ !V§.gotoAndStop(this.§ !V§.totalFrames);
         super.dispose();
      }
   }
}
