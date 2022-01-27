package §0b§
{
   import §""d§.§,m§;
   import §,"v§.§@§;
   import §,"v§.§^!2§;
   import §4##§.§7!B§;
   import §4m§.AbstractPopup;
   import §7!@§.§6"§;
   import §^!`§.§%n§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.text.TextField;
   
   public class TutorialPopup extends AbstractPopup
   {
      
      protected static const §!!W§:String = "bird_tutorial_1";
      
      public static const §^"3§:String = "TutorialPopup";
      
      private static var §="T§:§^!2§;
       
      
      protected var §@"M§:MovieClip;
      
      protected var §8!_§:String;
      
      protected var §[!U§:§=#&§;
      
      protected var §8#§:Boolean;
      
      protected var §]"Q§:§,m§;
      
      protected var §#!,§:TextField;
      
      private var §;!j§:Boolean = false;
      
      public function TutorialPopup(param1:int, param2:int, param3:MovieClip, param4:String, param5:§=#&§, param6:Boolean = true)
      {
         super(param1,param2,§%n§.§ set§.Popups.Popup_Tutorial[0],§^"3§);
         this.§8!_§ = param4;
         this.§[!U§ = param5;
         this.§8#§ = param6;
         §,!7§ = true;
         this.§@"M§ = param3;
         this.§@"M§.gotoAndStop(1);
         this.§@"M§.name = "MovieClip_TutorialClip";
      }
      
      public function get §<#%§() : String
      {
         return this.§8!_§;
      }
      
      public function get title() : String
      {
         return this.§[!U§.solve(this.§<#%§);
      }
      
      override protected function init() : void
      {
         super.init();
         var _loc1_:MovieClip = §,r§.getItemByName("MovieClip_ContentMask").mClip;
         var _loc2_:MovieClip = §,r§.getItemByName("Container_Animation").mClip;
         _loc2_.addChild(this.§@"M§);
         this.§#!,§ = TextField(§,r§.getItemByName("MovieClip_Title").mClip.titleContainer.title);
         this.§#!,§.text = this.title;
         this.§]"Q§ = §,m§(§,r§.getItemByName("Container_CloseButton"));
         _loc2_.mask = _loc1_;
      }
      
      override protected function createTransition(param1:Vector.<MovieClip>) : void
      {
         §=!7§();
         §,_§ = new §^#§(param1,§,r§.mClip.stage,1000 / 60);
         if(this.§8#§)
         {
            §,_§.addEventListener(§^#§.§0"H§,this.§!"f§);
         }
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         if(!§="T§)
         {
            §="T§ = §@§.§=Y§(§!!W§,§@§.§<"5§,int.MAX_VALUE);
         }
         super.show(param1);
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         if(!§;"@§.singleton.popupManager.§8"U§(TutorialPopup.§^"3§) && §="T§)
         {
            §="T§.stop();
            §="T§.§-'§();
            §="T§ = null;
         }
         super.hide(param1);
      }
      
      protected function §!"f§(param1:Event) : void
      {
         if(§,_§)
         {
            §,_§.removeEventListener(§^#§.§0"H§,this.§!"f§);
         }
         this.§8#§ = false;
         this.§]"Q§.visible = !this.§8#§;
      }
      
      override protected function onTransitionStart(param1:String) : void
      {
         var _loc2_:MovieClip = §,r§.getItemByName("MovieClip_Title").mClip;
         if(param1 == §6"§.§+"n§)
         {
            this.§]"Q§.visible = !this.§8#§;
            _loc2_.visible = true;
         }
         if(param1 == §6"§.§9!j§)
         {
            this.§]"Q§.visible = false;
            _loc2_.visible = false;
         }
         if(param1 == §6"§.§,#2§)
         {
            this.§]"Q§.visible = false;
            _loc2_.visible = false;
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§7!B§) : void
      {
         if(param2.toUpperCase() == "CLOSE" && this.§8#§)
         {
            return;
         }
         super.onUIInteraction(param1,param2,param3);
      }
      
      override public function dispose() : void
      {
         if(§,_§)
         {
            §,_§.removeEventListener(§^#§.§0"H§,this.§!"f§);
         }
         this.§@"M§.gotoAndStop(this.§@"M§.totalFrames);
         super.dispose();
      }
   }
}
