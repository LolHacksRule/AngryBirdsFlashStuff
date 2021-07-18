package §@!"§
{
   import §"a§.§!"J§;
   import §+!c§.Base64;
   import §2!%§.§-K§;
   import §30§.§'"+§;
   import §8m§.§@"M§;
   import flash.display.BitmapData;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.filters.BlurFilter;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §!!C§ extends EventDispatcher
   {
       
      
      private var §;!_§:Boolean;
      
      private var §,">§:Stage;
      
      private var §[$§:Boolean = false;
      
      public function §!!C§(param1:Stage)
      {
         super();
         this.§,">§ = param1;
         this.init();
      }
      
      private function init() : void
      {
         §'"+§.addCallback("pause",this.§;"Q§);
         §'"+§.addCallback("resume",this.§ "$§);
      }
      
      private function §;"Q§() : void
      {
         if(!this.§[$§)
         {
            this.§[$§ = true;
            this.§;!_§ = !§?l§.isPaused;
            §?l§.pause();
            AngryBirdsFP11.§>m§.§^X§();
            this.§4!g§();
            AngryBirdsFP11.§>m§.externalPause();
         }
      }
      
      private function § "$§() : void
      {
         if(!this.§[$§)
         {
            return;
         }
         this.§[$§ = false;
         if(this.§;!_§)
         {
            §?l§.resume();
         }
         §@"M§.§'!v§(AngryBirdsFP11.§["J§);
         AngryBirdsFP11.§>m§.externalResume();
         AngryBirdsFP11.§>m§.§9!_§();
      }
      
      public function §4!g§() : void
      {
         §!"J§.§1&§.§`3§ = this.§ "O§;
      }
      
      private function § "O§() : void
      {
         dispatchEvent(new Event(Event.INIT));
         var _loc2_:int = this.§,">§.stageWidth;
         var _loc3_:int = this.§,">§.stageHeight;
         if(_loc2_ < 2 || _loc3_ < 2)
         {
            _loc2_ = AngryBirdsFP11.stageWidth;
            _loc3_ = AngryBirdsFP11.stageHeight;
         }
         _loc2_ = Math.max(8,Math.min(_loc2_,2880));
         _loc3_ = Math.max(8,Math.min(_loc3_,2880));
         var _loc4_:BitmapData = new BitmapData(Math.floor(_loc2_ * 0.25),Math.floor(_loc3_ * 0.25),false);
         var _loc5_:BitmapData = new BitmapData(_loc2_,_loc3_,false);
         §!"J§.drawToBitmapData(_loc5_);
         _loc4_.draw(_loc5_,new Matrix(0.25,0,0,0.25));
         try
         {
            _loc4_.draw(this.§,">§,new Matrix(0.25,0,0,0.25));
         }
         catch(e:Error)
         {
         }
         _loc4_.applyFilter(_loc4_,_loc4_.rect,new Point(0,0),new BlurFilter());
         §'"+§.§'!#§("flashScreenshotReadyHandler",Base64.§3q§(new §-K§(70).encode(_loc4_)));
         _loc5_.dispose();
         _loc4_.dispose();
         §!"J§.§1&§.§`3§ = null;
         dispatchEvent(new Event(Event.COMPLETE));
      }
   }
}
