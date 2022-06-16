package §;#D§
{
   import §#">§.§1#x§;
   import §%!x§.§^!K§;
   import §3"I§.§?"V§;
   import §?"e§.Starling;
   import §@!M§.§!"p§;
   import §]!6§.Base64;
   import flash.display.BitmapData;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.filters.BlurFilter;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.utils.setTimeout;
   
   public class §]"o§ extends EventDispatcher
   {
      
      private static var §=!#§:BlurFilter;
       
      
      private var §['§:Boolean;
      
      private var §!#^§:Stage;
      
      private var §3#"§:Boolean = false;
      
      public function §]"o§(param1:Stage)
      {
         super();
         this.§!#^§ = param1;
         this.init();
      }
      
      public function §##§() : Boolean
      {
         return this.§3#"§;
      }
      
      private function init() : void
      {
         §^!K§.addCallback("pause",this.§!!7§);
         §^!K§.addCallback("resume",this.§ #O§);
         §^!K§.addCallback("resumeOnError",this.§ #O§);
      }
      
      private function §!!7§() : void
      {
         if(!this.§3#"§)
         {
            this.§3#"§ = true;
            this.§['§ = !§3#U§.isPaused;
            dispatchEvent(new §?"V§(§?"V§.§,x§));
            AngryBirdsBase.singleton.exitFullScreen();
            this.§@!H§();
            AngryBirdsBase.singleton.externalPause();
         }
      }
      
      private function § #O§() : void
      {
         if(!this.§3#"§)
         {
            return;
         }
         this.§3#"§ = false;
         if(this.§['§)
         {
            dispatchEvent(new §?"V§(§?"V§.§[#&§));
         }
         §!"p§.§-!9§(AngryBirdsBase.§^#>§);
         AngryBirdsBase.singleton.externalResume();
         AngryBirdsBase.singleton.§1!S§();
      }
      
      public function §@!H§() : void
      {
         if(§3#U§.§#$4§.§=!o§)
         {
            Starling.§@#K§.§4$<§ = this.§<#I§;
         }
         else
         {
            setTimeout(this.§<#I§,10);
         }
      }
      
      private function §<#I§() : void
      {
         var _loc5_:BitmapData = null;
         dispatchEvent(new Event(Event.INIT));
         var _loc2_:int = this.§!#^§.stageWidth;
         var _loc3_:int = this.§!#^§.stageHeight;
         if(_loc2_ < 2 || _loc3_ < 2)
         {
            _loc2_ = AngryBirdsBase.stageWidth;
            _loc3_ = AngryBirdsBase.stageHeight;
         }
         _loc2_ = Math.max(8,Math.min(_loc2_,2880));
         _loc3_ = Math.max(8,Math.min(_loc3_,2880));
         var _loc4_:BitmapData = new BitmapData(Math.floor(_loc2_ * 0.25),Math.floor(_loc3_ * 0.25),false);
         if(§3#U§.§#$4§.§=!o§)
         {
            _loc5_ = new BitmapData(_loc2_,_loc3_,false);
            Starling.drawToBitmapData(_loc5_);
            _loc4_.draw(_loc5_,new Matrix(0.25,0,0,0.25));
            _loc5_.dispose();
         }
         try
         {
            _loc4_.draw(this.§!#^§,new Matrix(0.25,0,0,0.25));
         }
         catch(e:Error)
         {
         }
         _loc4_.applyFilter(_loc4_,_loc4_.rect,new Point(0,0),§=!#§ = §=!#§ || new BlurFilter());
         §^!K§.§+"D§("flashScreenshotReadyHandler",Base64.§%#n§(new §1#x§(70).encode(_loc4_)));
         _loc4_.dispose();
         Starling.§@#K§.§4$<§ = null;
         dispatchEvent(new Event(Event.COMPLETE));
      }
   }
}
