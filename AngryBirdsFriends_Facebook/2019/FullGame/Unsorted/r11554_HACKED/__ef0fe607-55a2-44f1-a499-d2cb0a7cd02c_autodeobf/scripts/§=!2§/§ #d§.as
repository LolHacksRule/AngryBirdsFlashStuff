package §=!2§
{
   import §5"G§.§9!y§;
   import §5$>§.§0#V§;
   import §7#j§.§@"F§;
   import §9#K§.Base64;
   import §>"9§.§[#%§;
   import §]"P§.Starling;
   import flash.display.BitmapData;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.filters.BlurFilter;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.utils.setTimeout;
   
   public class § #d§ extends EventDispatcher
   {
      
      private static var §@!2§:BlurFilter;
       
      
      private var §,S§:Boolean;
      
      private var § #z§:Stage;
      
      private var §"#j§:Boolean = false;
      
      public function § #d§(param1:Stage)
      {
         super();
         this.§ #z§ = param1;
         this.init();
      }
      
      public function §[#^§() : Boolean
      {
         return this.§"#j§;
      }
      
      private function init() : void
      {
         §@"F§.addCallback("pause",this.§9$D§);
         §@"F§.addCallback("resume",this.§`#>§);
         §@"F§.addCallback("resumeOnError",this.§`#>§);
      }
      
      private function §9$D§() : void
      {
         if(!this.§"#j§)
         {
            this.§"#j§ = true;
            this.§,S§ = !§%"T§.isPaused;
            dispatchEvent(new §9!y§(§9!y§.§?#y§));
            AngryBirdsBase.singleton.exitFullScreen();
            this.§implements§();
            AngryBirdsBase.singleton.externalPause();
         }
      }
      
      private function §`#>§() : void
      {
         if(!this.§"#j§)
         {
            return;
         }
         this.§"#j§ = false;
         if(this.§,S§)
         {
            dispatchEvent(new §9!y§(§9!y§.§6"W§));
         }
         §[#%§.§=E§(AngryBirdsBase.§+#!§);
         AngryBirdsBase.singleton.externalResume();
         AngryBirdsBase.singleton.§1![§();
      }
      
      public function §implements§() : void
      {
         if(§%"T§.§;`§.§!"`§)
         {
            Starling.§3!I§.§&#D§ = this.§6#q§;
         }
         else
         {
            setTimeout(this.§6#q§,10);
         }
      }
      
      private function §6#q§() : void
      {
         var _loc5_:BitmapData = null;
         dispatchEvent(new Event(Event.INIT));
         var _loc2_:int = this.§ #z§.stageWidth;
         var _loc3_:int = this.§ #z§.stageHeight;
         if(_loc2_ < 2 || _loc3_ < 2)
         {
            _loc2_ = AngryBirdsBase.stageWidth;
            _loc3_ = AngryBirdsBase.stageHeight;
         }
         _loc2_ = Math.max(8,Math.min(_loc2_,2880));
         _loc3_ = Math.max(8,Math.min(_loc3_,2880));
         var _loc4_:BitmapData = new BitmapData(Math.floor(_loc2_ * 0.25),Math.floor(_loc3_ * 0.25),false);
         if(§%"T§.§;`§.§!"`§)
         {
            _loc5_ = new BitmapData(_loc2_,_loc3_,false);
            Starling.drawToBitmapData(_loc5_);
            _loc4_.draw(_loc5_,new Matrix(0.25,0,0,0.25));
            _loc5_.dispose();
         }
         try
         {
            _loc4_.draw(this.§ #z§,new Matrix(0.25,0,0,0.25));
         }
         catch(e:Error)
         {
         }
         _loc4_.applyFilter(_loc4_,_loc4_.rect,new Point(0,0),§@!2§ = §@!2§ || new BlurFilter());
         §@"F§.§^$#§("flashScreenshotReadyHandler",Base64.§1#R§(new §0#V§(70).encode(_loc4_)));
         _loc4_.dispose();
         Starling.§3!I§.§&#D§ = null;
         dispatchEvent(new Event(Event.COMPLETE));
      }
   }
}
