package §`#@§
{
   import §!"'§.§;6§;
   import §'!j§.Starling;
   import §1#v§.Base64;
   import §8#K§.§3Z§;
   import §=#o§.§"#q§;
   import §]C§.§ !+§;
   import flash.display.BitmapData;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.filters.BlurFilter;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.utils.setTimeout;
   
   public class §',§ extends EventDispatcher
   {
      
      private static var §""Q§:BlurFilter;
       
      
      private var §]!A§:Boolean;
      
      private var §3"K§:Stage;
      
      private var §+"q§:Boolean = false;
      
      public function §',§(param1:Stage)
      {
         super();
         this.§3"K§ = param1;
         this.init();
      }
      
      public function §]!@§() : Boolean
      {
         return this.§+"q§;
      }
      
      private function init() : void
      {
         § !+§.addCallback("pause",this.§7#^§);
         § !+§.addCallback("resume",this.§<#6§);
         § !+§.addCallback("resumeOnError",this.§<#6§);
      }
      
      private function §7#^§() : void
      {
         if(!this.§+"q§)
         {
            this.§+"q§ = true;
            this.§]!A§ = !§7n§.isPaused;
            dispatchEvent(new §;6§(§;6§.§7!Y§));
            AngryBirdsBase.singleton.exitFullScreen();
            this.§#i§();
            AngryBirdsBase.singleton.externalPause();
         }
      }
      
      private function §<#6§() : void
      {
         if(!this.§+"q§)
         {
            return;
         }
         this.§+"q§ = false;
         if(this.§]!A§)
         {
            dispatchEvent(new §;6§(§;6§.§+!9§));
         }
         §3Z§.§[!§(AngryBirdsBase.§&I§);
         AngryBirdsBase.singleton.externalResume();
         AngryBirdsBase.singleton.§<"P§();
      }
      
      public function §#i§() : void
      {
         if(§7n§.§6#K§.§@=§)
         {
            Starling.§>x§.§7"?§ = this.§ !z§;
         }
         else
         {
            setTimeout(this.§ !z§,10);
         }
      }
      
      private function § !z§() : void
      {
         var _loc5_:BitmapData = null;
         dispatchEvent(new Event(Event.INIT));
         var _loc2_:int = this.§3"K§.stageWidth;
         var _loc3_:int = this.§3"K§.stageHeight;
         if(_loc2_ < 2 || _loc3_ < 2)
         {
            _loc2_ = AngryBirdsBase.stageWidth;
            _loc3_ = AngryBirdsBase.stageHeight;
         }
         _loc2_ = Math.max(8,Math.min(_loc2_,2880));
         _loc3_ = Math.max(8,Math.min(_loc3_,2880));
         var _loc4_:BitmapData = new BitmapData(Math.floor(_loc2_ * 0.25),Math.floor(_loc3_ * 0.25),false);
         if(§7n§.§6#K§.§@=§)
         {
            _loc5_ = new BitmapData(_loc2_,_loc3_,false);
            Starling.drawToBitmapData(_loc5_);
            _loc4_.draw(_loc5_,new Matrix(0.25,0,0,0.25));
            _loc5_.dispose();
         }
         try
         {
            _loc4_.draw(this.§3"K§,new Matrix(0.25,0,0,0.25));
         }
         catch(e:Error)
         {
         }
         _loc4_.applyFilter(_loc4_,_loc4_.rect,new Point(0,0),§""Q§ = §""Q§ || new BlurFilter());
         § !+§.§>$%§("flashScreenshotReadyHandler",Base64.§^!p§(new §"#q§(70).encode(_loc4_)));
         _loc4_.dispose();
         Starling.§>x§.§7"?§ = null;
         dispatchEvent(new Event(Event.COMPLETE));
      }
   }
}
