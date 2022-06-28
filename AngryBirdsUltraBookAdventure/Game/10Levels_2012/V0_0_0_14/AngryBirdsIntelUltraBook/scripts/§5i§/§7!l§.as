package §5i§
{
   import §&9§.§1?§;
   import §1!T§.§6!H§;
   import §6z§.Base64;
   import §;e§.§if§;
   import §@4§.§,!]§;
   import flash.display.BitmapData;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.filters.BlurFilter;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §7!l§ extends EventDispatcher
   {
       
      
      private var §'m§:Boolean;
      
      private var §24§:Stage;
      
      private var §#m§:Boolean = false;
      
      public function §7!l§(param1:Stage)
      {
         super();
         this.§24§ = param1;
         this.init();
      }
      
      private function init() : void
      {
         §1?§.addCallback("pause",this.§2h§);
         §1?§.addCallback("resume",this.§!§);
      }
      
      private function §2h§() : void
      {
         if(!this.§#m§)
         {
            this.§#m§ = true;
            this.§'m§ = !§4!]§.isPaused;
            §4!]§.pause();
            AngryBirdsFP11.§`!c§.§2!3§();
            this.§^!-§();
            AngryBirdsFP11.§`!c§.externalPause();
         }
      }
      
      private function §!§() : void
      {
         if(!this.§#m§)
         {
            return;
         }
         this.§#m§ = false;
         if(this.§'m§)
         {
            §4!]§.resume();
         }
         §6!H§.§1^§(AngryBirdsFP11.§>!e§);
         AngryBirdsFP11.§`!c§.externalResume();
         AngryBirdsFP11.§`!c§.§+#§();
      }
      
      public function §^!-§() : void
      {
         §,!]§.§!9§.§;!,§ = this.§73§;
      }
      
      private function §73§() : void
      {
         dispatchEvent(new Event(Event.INIT));
         var _loc2_:int = this.§24§.stageWidth;
         var _loc3_:int = this.§24§.stageHeight;
         if(_loc2_ < 2 || _loc3_ < 2)
         {
            _loc2_ = AngryBirdsFP11.stageWidth;
            _loc3_ = AngryBirdsFP11.stageHeight;
         }
         _loc2_ = Math.max(8,Math.min(_loc2_,2880));
         _loc3_ = Math.max(8,Math.min(_loc3_,2880));
         var _loc4_:BitmapData = new BitmapData(Math.floor(_loc2_ * 0.25),Math.floor(_loc3_ * 0.25),false);
         var _loc5_:BitmapData = new BitmapData(_loc2_,_loc3_,false);
         §,!]§.drawToBitmapData(_loc5_);
         _loc4_.draw(_loc5_,new Matrix(0.25,0,0,0.25));
         try
         {
            _loc4_.draw(this.§24§,new Matrix(0.25,0,0,0.25));
         }
         catch(e:Error)
         {
         }
         _loc4_.applyFilter(_loc4_,_loc4_.rect,new Point(0,0),new BlurFilter());
         §1?§.§>!X§("flashScreenshotReadyHandler",Base64.§>!8§(new §if§(70).encode(_loc4_)));
         _loc5_.dispose();
         _loc4_.dispose();
         §,!]§.§!9§.§;!,§ = null;
         dispatchEvent(new Event(Event.COMPLETE));
      }
   }
}
