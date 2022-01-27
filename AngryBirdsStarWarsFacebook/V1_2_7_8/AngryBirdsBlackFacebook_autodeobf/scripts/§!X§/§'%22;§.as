package §!X§
{
   import §'+§.§="B§;
   import §,#+§.§7!m§;
   import §4##§.§7!B§;
   import §7!@§.§6"§;
   import §7""§.§0I§;
   import §>"v§.§@!@§;
   import §^!`§.§%n§;
   import §^!`§.§6"!§;
   import flash.display.MovieClip;
   
   public class §'";§ extends §@!?§
   {
      
      public static const §'#2§:String = "IntroState";
       
      
      private var §@,§:§0I§;
      
      public function §'";§(param1:§7!m§, param2:§="B§, param3:Boolean, param4:String = "IntroState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         §>I§ = new §6"!§(this);
         §>I§.init(§%n§.§ set§.Views.View_IntroPage[0]);
         this.§@,§ = new §0I§("StarBackground");
         §>I§.movieClip.addChildAt(this.§@,§,0);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §+!g§ = true;
         §@#3§ = false;
      }
      
      override protected function createTransition(param1:Vector.<MovieClip>) : void
      {
         §,_§ = new §@!@§(param1,§ "6§.stage,1000 / 60);
      }
      
      override protected function onTransitionStart(param1:String) : void
      {
         if(param1 == §6"§.§,#2§)
         {
         }
      }
      
      override protected function onTransitionComplete(param1:String) : void
      {
         if(param1 == §6"§.§,#2§)
         {
            §&"1§(§;"@§.singleton).§+K§();
         }
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         this.§@,§.setSize(param1,param2);
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§7!B§) : void
      {
         super.onUIInteraction(param1,param2,param3);
      }
   }
}
