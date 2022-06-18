package §6"r§
{
   import §+#W§.§"! §;
   import §1#W§.§!#&§;
   import §6!0§.§ "8§;
   import §9+§.Starling;
   import §<"p§.Base64;
   import §<o§.§6§;
   import flash.display.BitmapData;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.filters.BlurFilter;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.utils.setTimeout;
   
   public class §8"8§ extends EventDispatcher
   {
      
      private static var §##`§:BlurFilter;
       
      
      private var §<G§:Boolean;
      
      private var §^!8§:Stage;
      
      private var § !#§:Boolean = false;
      
      public function §8"8§(param1:Stage)
      {
         super();
         this.§^!8§ = param1;
         this.init();
      }
      
      public function §;#y§() : Boolean
      {
         return this.§ !#§;
      }
      
      private function init() : void
      {
         § "8§.addCallback("pause",this.§8!T§);
         § "8§.addCallback("resume",this.§@"K§);
         § "8§.addCallback("resumeOnError",this.§@"K§);
      }
      
      private function §8!T§() : void
      {
         if(!this.§ !#§)
         {
            this.§ !#§ = true;
            this.§<G§ = !§!#A§.isPaused;
            dispatchEvent(new §6#2§(§6#2§.§-#d§));
            AngryBirdsBase.singleton.exitFullScreen();
            this.§[B§();
            AngryBirdsBase.singleton.externalPause();
         }
      }
      
      private function §@"K§() : void
      {
         if(!this.§ !#§)
         {
            return;
         }
         this.§ !#§ = false;
         if(this.§<G§)
         {
            dispatchEvent(new §6#2§(§6#2§.§3"4§));
         }
         §!#&§.§0$4§(AngryBirdsBase.§7g§);
         AngryBirdsBase.singleton.externalResume();
         AngryBirdsBase.singleton.§+S§();
      }
      
      public function §[B§() : void
      {
         if(§!#A§.§#F§.§>$-§)
         {
            Starling.§?$#§.§7"q§ = this.§&"p§;
         }
         else
         {
            setTimeout(this.§&"p§,10);
         }
      }
      
      private function §&"p§() : void
      {
         var _loc5_:BitmapData = null;
         dispatchEvent(new Event(Event.INIT));
         var _loc2_:int = this.§^!8§.stageWidth;
         var _loc3_:int = this.§^!8§.stageHeight;
         if(_loc2_ < 2 || _loc3_ < 2)
         {
            _loc2_ = AngryBirdsBase.stageWidth;
            _loc3_ = AngryBirdsBase.stageHeight;
         }
         _loc2_ = Math.max(8,Math.min(_loc2_,2880));
         _loc3_ = Math.max(8,Math.min(_loc3_,2880));
         var _loc4_:BitmapData = new BitmapData(Math.floor(_loc2_ * 0.25),Math.floor(_loc3_ * 0.25),false);
         if(§!#A§.§#F§.§>$-§)
         {
            _loc5_ = new BitmapData(_loc2_,_loc3_,false);
            Starling.drawToBitmapData(_loc5_);
            _loc4_.draw(_loc5_,new Matrix(0.25,0,0,0.25));
            _loc5_.dispose();
         }
         try
         {
            _loc4_.draw(this.§^!8§,new Matrix(0.25,0,0,0.25));
         }
         catch(e:Error)
         {
         }
         _loc4_.applyFilter(_loc4_,_loc4_.rect,new Point(0,0),§##`§ = §##`§ || new BlurFilter());
         § "8§.§ "§("flashScreenshotReadyHandler",Base64.§2##§(new §"! §(70).encode(_loc4_)));
         _loc4_.dispose();
         Starling.§?$#§.§7"q§ = null;
         dispatchEvent(new Event(Event.COMPLETE));
      }
   }
}
