package §1U§
{
   import §%!k§.§3U§;
   import §2!9§.§#"3§;
   import §5!5§.§^e§;
   import §5^§.§ !x§;
   import §9!G§.Base64;
   import flash.display.BitmapData;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.filters.BlurFilter;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class § !K§ extends EventDispatcher
   {
       
      
      private var §""0§:Boolean;
      
      private var §0!^§:Stage;
      
      private var §+!?§:Boolean = false;
      
      public function § !K§(param1:Stage)
      {
         super();
         this.§0!^§ = param1;
         this.init();
      }
      
      private function init() : void
      {
         §#"3§.addCallback("pause",this.§[!b§);
         §#"3§.addCallback("resume",this.§<b§);
      }
      
      private function §[!b§() : void
      {
         if(!this.§+!?§)
         {
            this.§+!?§ = true;
            this.§""0§ = !§"!V§.isPaused;
            §"!V§.pause();
            AngryBirdsFP11.§'"0§.§&+§();
            this.§-y§();
            AngryBirdsFP11.§'"0§.§2!R§();
         }
      }
      
      private function §<b§() : void
      {
         if(!this.§+!?§)
         {
            return;
         }
         this.§+!?§ = false;
         if(this.§""0§)
         {
            §"!V§.resume();
         }
         § !x§.§9o§(AngryBirdsFP11.§?"!§);
         AngryBirdsFP11.§'"0§.§&!P§();
         AngryBirdsFP11.§'"0§.§9"!§();
      }
      
      public function §-y§() : void
      {
         §^e§.§-_§.§,!B§ = this.§4!p§;
      }
      
      private function §4!p§() : void
      {
         dispatchEvent(new Event(Event.INIT));
         var _loc2_:int = this.§0!^§.stageWidth;
         var _loc3_:int = this.§0!^§.stageHeight;
         if(_loc2_ < 2 || _loc3_ < 2)
         {
            _loc2_ = AngryBirdsFP11.stageWidth;
            _loc3_ = AngryBirdsFP11.stageHeight;
         }
         _loc2_ = Math.max(8,Math.min(_loc2_,2880));
         _loc3_ = Math.max(8,Math.min(_loc3_,2880));
         var _loc4_:BitmapData = new BitmapData(Math.floor(_loc2_ * 0.25),Math.floor(_loc3_ * 0.25),false);
         var _loc5_:BitmapData = new BitmapData(_loc2_,_loc3_,false);
         §^e§.drawToBitmapData(_loc5_);
         _loc4_.draw(_loc5_,new Matrix(0.25,0,0,0.25));
         try
         {
            _loc4_.draw(this.§0!^§,new Matrix(0.25,0,0,0.25));
         }
         catch(e:Error)
         {
         }
         _loc4_.applyFilter(_loc4_,_loc4_.rect,new Point(0,0),new BlurFilter());
         §#"3§.performCall("flashScreenshotReadyHandler",Base64.§,!8§(new §3U§(70).encode(_loc4_)));
         _loc5_.dispose();
         _loc4_.dispose();
         §^e§.§-_§.§,!B§ = null;
         dispatchEvent(new Event(Event.COMPLETE));
      }
   }
}
