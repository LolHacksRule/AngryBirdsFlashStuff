package §?§#8
{
   import §!x§.Base64;
   import §"!T§.§1#b§;
   import §+"%§.§6X§;
   import §3!T§.§!">§;
   import §8§.§#$+§;
   import §^a§.Starling;
   import flash.display.BitmapData;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.filters.BlurFilter;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.utils.setTimeout;
   
   public class §8!>§ extends EventDispatcher
   {
      
      private static var §%]§:BlurFilter;
       
      
      private var §6![§:Boolean;
      
      private var §>A§:Stage;
      
      private var §5G§:Boolean = false;
      
      public function §8!>§(param1:Stage)
      {
         super();
         this.§>A§ = param1;
         this.init();
      }
      
      public function §9$%§() : Boolean
      {
         return this.§5G§;
      }
      
      private function init() : void
      {
         §6X§.addCallback("pause",this.§!=§);
         §6X§.addCallback("resume",this.§^#Z§);
         §6X§.addCallback("resumeOnError",this.§^#Z§);
      }
      
      private function §!=§() : void
      {
         if(!this.§5G§)
         {
            this.§5G§ = true;
            this.§6![§ = !§>"$§.isPaused;
            dispatchEvent(new §!">§(§!">§.§]$5§));
            AngryBirdsBase.singleton.exitFullScreen();
            this.§?"%§();
            AngryBirdsBase.singleton.externalPause();
         }
      }
      
      private function §^#Z§() : void
      {
         if(!this.§5G§)
         {
            return;
         }
         this.§5G§ = false;
         if(this.§6![§)
         {
            dispatchEvent(new §!">§(§!">§.§7N§));
         }
         §#$+§.§-"Q§(AngryBirdsBase.§^@§);
         AngryBirdsBase.singleton.externalResume();
         AngryBirdsBase.singleton.§<"X§();
      }
      
      public function §?"%§() : void
      {
         if(§>"$§.§3#'§.§8!C§)
         {
            Starling.§<#`§.§1#g§ = this.§6#!§;
         }
         else
         {
            setTimeout(this.§6#!§,10);
         }
      }
      
      private function §6#!§() : void
      {
         var _loc5_:BitmapData = null;
         dispatchEvent(new Event(Event.INIT));
         var _loc2_:int = this.§>A§.stageWidth;
         var _loc3_:int = this.§>A§.stageHeight;
         if(_loc2_ < 2 || _loc3_ < 2)
         {
            _loc2_ = AngryBirdsBase.stageWidth;
            _loc3_ = AngryBirdsBase.stageHeight;
         }
         _loc2_ = Math.max(8,Math.min(_loc2_,2880));
         _loc3_ = Math.max(8,Math.min(_loc3_,2880));
         var _loc4_:BitmapData = new BitmapData(Math.floor(_loc2_ * 0.25),Math.floor(_loc3_ * 0.25),false);
         if(§>"$§.§3#'§.§8!C§)
         {
            _loc5_ = new BitmapData(_loc2_,_loc3_,false);
            Starling.drawToBitmapData(_loc5_);
            _loc4_.draw(_loc5_,new Matrix(0.25,0,0,0.25));
            _loc5_.dispose();
         }
         try
         {
            _loc4_.draw(this.§>A§,new Matrix(0.25,0,0,0.25));
         }
         catch(e:Error)
         {
         }
         _loc4_.applyFilter(_loc4_,_loc4_.rect,new Point(0,0),§%]§ = §%]§ || new BlurFilter());
         §6X§.§3U§("flashScreenshotReadyHandler",Base64.§ J§(new §1#b§(70).encode(_loc4_)));
         _loc4_.dispose();
         Starling.§<#`§.§1#g§ = null;
         dispatchEvent(new Event(Event.COMPLETE));
      }
   }
}
