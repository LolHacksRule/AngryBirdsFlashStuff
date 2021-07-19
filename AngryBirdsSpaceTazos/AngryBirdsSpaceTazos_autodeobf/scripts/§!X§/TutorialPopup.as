package §!X§
{
   import §5X§.§+!#§;
   import §7!H§.AbstractPopup;
   import §77§.§ ",§;
   import §<!X§.§7C§;
   import §^=§.§-G§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.text.TextField;
   
   public class TutorialPopup extends AbstractPopup
   {
      
      public static const §[!U§:String = "TutorialPopup";
       
      
      protected var §?!B§:MovieClip;
      
      protected var §7!n§:String;
      
      protected var §&!i§:§#"#§;
      
      protected var §=!1§:Boolean;
      
      protected var §9"=§:§ ",§;
      
      protected var §@"A§:TextField;
      
      public function TutorialPopup(param1:int, param2:int, param3:MovieClip, param4:String, param5:§#"#§, param6:Boolean = true)
      {
         super(param1,param2,§-G§.§4+§.Popups.Popup_Tutorial[0],§[!U§);
         this.§7!n§ = param4;
         this.§&!i§ = param5;
         this.§=!1§ = param6;
         §#!j§ = true;
         this.§?!B§ = param3;
         this.§?!B§.gotoAndStop(1);
         this.§?!B§.name = "MovieClip_TutorialClip";
      }
      
      public function get §^!y§() : String
      {
         return this.§7!n§;
      }
      
      public function get title() : String
      {
         return this.§&!i§.solve(this.§^!y§);
      }
      
      override protected function init() : void
      {
         super.init();
         var _loc1_:MovieClip = §[S§.getItemByName("MovieClip_ContentMask").mClip;
         var _loc2_:MovieClip = §[S§.getItemByName("Container_Animation").mClip;
         _loc2_.addChild(this.§?!B§);
         this.§@"A§ = TextField(§[S§.getItemByName("MovieClip_Title").mClip.titleContainer.title);
         this.§@"A§.text = this.title;
         this.§9"=§ = § ",§(§[S§.getItemByName("Container_CloseButton"));
         _loc2_.mask = _loc1_;
      }
      
      override protected function createTransition(param1:Vector.<MovieClip>) : void
      {
         §#'§();
         §-!w§ = new §?p§(param1,§[S§.mClip.stage,1000 / 60);
         if(this.§=!1§)
         {
            §-!w§.addEventListener(§?p§.§8h§,this.§2!e§);
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
      
      protected function §2!e§(param1:Event) : void
      {
         if(§-!w§)
         {
            §-!w§.removeEventListener(§?p§.§8h§,this.§2!e§);
         }
         this.§=!1§ = false;
         this.§9"=§.visible = !this.§=!1§;
      }
      
      override protected function onTransitionStart(param1:String) : void
      {
         var _loc2_:MovieClip = §[S§.getItemByName("MovieClip_Title").mClip;
         if(param1 == §7C§.§@!=§)
         {
            this.§9"=§.visible = !this.§=!1§;
            _loc2_.visible = true;
         }
         if(param1 == §7C§.§>">§)
         {
            this.§9"=§.visible = false;
            _loc2_.visible = false;
         }
         if(param1 == §7C§.§?x§)
         {
            this.§9"=§.visible = false;
            _loc2_.visible = false;
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§+!#§) : void
      {
         if(param2.toUpperCase() == "CLOSE" && this.§=!1§)
         {
            return;
         }
         super.onUIInteraction(param1,param2,param3);
      }
      
      override public function dispose() : void
      {
         if(§-!w§)
         {
            §-!w§.removeEventListener(§?p§.§8h§,this.§2!e§);
         }
         this.§?!B§.gotoAndStop(this.§?!B§.totalFrames);
         super.dispose();
      }
   }
}
