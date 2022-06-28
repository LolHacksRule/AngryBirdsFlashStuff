package §0o§
{
   import § !k§.§%]§;
   import §!!§.§>4§;
   import §!!§.LevelManager;
   import §&!h§.§]V§;
   import §4!C§.§"!m§;
   import §4!C§.§]!X§;
   import §4!C§.§^!g§;
   import §5!t§.§+!g§;
   import §5i§.§4!]§;
   import §9!Q§.§2!S§;
   import §9!Q§.§7o§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   
   public class § L§ extends §%]§
   {
       
      
      protected var §13§:§"!m§;
      
      public function § L§(param1:Boolean = true, param2:String = "LevelLoadStateClassic")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §`-§.movieClip.graphics.beginFill(0);
         §`-§.movieClip.graphics.drawRect(0,0,4000,4000);
         §`-§.movieClip.graphics.endFill();
      }
      
      override public function activate() : void
      {
         super.activate();
         if(LevelManager.§^!F§ != null)
         {
            §`-§.setText(this.§#!S§(),"TextField_LevelLoading");
         }
      }
      
      protected function §#!S§() : String
      {
         return " - " + §+!g§.§,!X§(LevelManager.§^!F§);
      }
      
      override protected function initLevelMain(param1:§>4§) : void
      {
         super.initLevelMain(param1);
      }
      
      override protected function initLevelLoad() : void
      {
         (§4!]§.§7!G§ as §[!m§).§7!6§.§?0§ = false;
         (§4!]§.§7!G§ as §[!m§).§7!6§.§?0§ = true;
         if(this.§13§)
         {
            this.§13§.removeEventListener(Event.COMPLETE,this.§]>§);
            this.§13§ = null;
         }
         if(LevelManager.§^!F§)
         {
            this.§13§ = new §"!m§();
            this.§13§.addEventListener(Event.COMPLETE,this.§]>§);
            this.§13§.addEventListener(IOErrorEvent.IO_ERROR,this.§8!j§);
            this.§13§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§8!j§);
            this.§13§.addEventListener(§^!g§.§]P§,this.§8!j§);
            this.§13§.load(§]!X§.§#l§(AngryBirdsFP11.§6S§ + "/startlevel/" + LevelManager.§^!F§));
            super.initLevelLoad();
            return;
         }
         §7o§.§-Y§();
         throw new Error("LevelManager.smCurrentLevel was null in initLevelLoad() in StateFacebookLevelLoad.");
      }
      
      protected function §8!j§(param1:Event) : void
      {
         if(param1.type == §^!g§.§]P§)
         {
            §7o§.§-Y§(§2!S§.§2u§);
         }
         else
         {
            §7o§.§ "§();
         }
         this.§13§ = null;
      }
      
      protected function §]>§(param1:Event) : void
      {
         §>Z§.§[!1§ = this.§13§.data;
         this.§13§ = null;
      }
      
      override public function isReady() : Boolean
      {
         if(this.§13§)
         {
            return false;
         }
         return super.isReady();
      }
      
      override public function onLevelLoadError() : void
      {
         super.onLevelLoadError();
         var _loc1_:String = "level-" + LevelManager.§^!F§;
         §]V§.§4!^§(_loc1_);
         §7o§.§ "§();
         (§4!]§.§7!G§ as §[!m§).§`!w§();
      }
   }
}
