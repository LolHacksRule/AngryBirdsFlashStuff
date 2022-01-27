package §%"Q§
{
   import §""H§.§;>§;
   import §&!j§.§5#+§;
   import §'"I§.§1-§;
   import §8!h§.§-V§;
   import §[!H§.§4Z§;
   import §[!H§.§^x§;
   import §`"]§.§0!a§;
   import flash.display.MovieClip;
   import §null §.§5#§;
   
   public class §["?§ extends §`!6§
   {
      
      public static const §-!U§:String = "IntroState";
       
      
      private var §;#0§:§0!a§;
      
      public function §["?§(param1:§5#§, param2:§5#+§, param3:Boolean, param4:String = "IntroState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         §^!b§ = new §4Z§(this);
         §^!b§.init(§^x§.§ '§.Views.View_IntroPage[0]);
         this.§;#0§ = new §0!a§("StarBackground");
         §^!b§.movieClip.addChildAt(this.§;#0§,0);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §`l§ = true;
         §'!C§ = false;
      }
      
      override protected function createTransition(param1:Vector.<MovieClip>) : void
      {
         §[#§ = new §;>§(param1,§0v§.stage,1000 / 60);
      }
      
      override protected function onTransitionStart(param1:String) : void
      {
         if(param1 == §1-§.§?j§)
         {
         }
      }
      
      override protected function onTransitionComplete(param1:String) : void
      {
         if(param1 == §1-§.§?j§)
         {
            §throw§(§4"#§.singleton).§+"#§();
         }
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         this.§;#0§.setSize(param1,param2);
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§-V§) : void
      {
         super.onUIInteraction(param1,param2,param3);
      }
   }
}
