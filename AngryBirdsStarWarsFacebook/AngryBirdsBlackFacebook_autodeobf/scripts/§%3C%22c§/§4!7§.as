package §<"c§
{
   import §+!c§.§9"1§;
   import §,"T§.§55§;
   import §7!$§.§&$§;
   import §7!$§.§]#[§;
   import §;"Y§.§&#X§;
   import §>@§.§5"H§;
   import §?m§.§+"2§;
   import §]!$§.§6y§;
   import flash.display.MovieClip;
   
   public class §4!7§ extends §]"_§
   {
      
      public static const §^!7§:String = "IntroState";
       
      
      private var §"!§:§9"1§;
      
      public function §4!7§(param1:§+"2§, param2:§5"H§, param3:Boolean, param4:String = "IntroState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         §@;§ = new §]#[§(this);
         §@;§.init(§&$§.§@8§.Views.View_IntroPage[0]);
         this.§"!§ = new §9"1§("StarBackground");
         §@;§.movieClip.addChildAt(this.§"!§,0);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §7#^§ = true;
         §1!I§ = false;
      }
      
      override protected function createTransition(param1:Vector.<MovieClip>) : void
      {
         §7!=§ = new §55§(param1,§%G§.stage,1000 / 60);
      }
      
      override protected function onTransitionStart(param1:String) : void
      {
         if(param1 == §6y§.§>]§)
         {
         }
      }
      
      override protected function onTransitionComplete(param1:String) : void
      {
         if(param1 == §6y§.§>]§)
         {
            §@!m§(§4#;§.singleton).§!g§();
         }
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         this.§"!§.setSize(param1,param2);
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§&#X§) : void
      {
         super.onUIInteraction(param1,param2,param3);
      }
   }
}
