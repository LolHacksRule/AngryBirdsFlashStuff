package §true§
{
   import §"R§.§ !Q§;
   import §7!J§.§!!k§;
   import §<&§.§^b§;
   import §@i§.§=r§;
   import §^_§.Base64;
   import flash.display.BitmapData;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.filters.BlurFilter;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §#!&§ extends EventDispatcher
   {
       
      
      private var §>!W§:Boolean;
      
      private var §;p§:Stage;
      
      private var § D§:Boolean = false;
      
      public function §#!&§(param1:Stage)
      {
         super();
         this.§;p§ = param1;
         this.init();
      }
      
      private function init() : void
      {
         §=r§.addCallback("pause",this.§=!E§);
         §=r§.addCallback("resume",this.§`k§);
      }
      
      private function §=!E§() : void
      {
         if(!this.§ D§)
         {
            this.§ D§ = true;
            this.§>!W§ = !§ _§.isPaused;
            § _§.pause();
            AngryBirdsFP11.§3!a§.§5C§();
            this.§<!i§();
            AngryBirdsFP11.§3!a§.externalPause();
         }
      }
      
      private function §`k§() : void
      {
         if(!this.§ D§)
         {
            return;
         }
         this.§ D§ = false;
         if(this.§>!W§)
         {
            § _§.resume();
         }
         § !Q§.§each §(AngryBirdsFP11.§-!W§);
         AngryBirdsFP11.§3!a§.externalResume();
         AngryBirdsFP11.§3!a§.§+!R§();
      }
      
      public function §<!i§() : void
      {
         §^b§.§9E§.§1E§ = this.§-N§;
      }
      
      private function §-N§() : void
      {
         dispatchEvent(new Event(Event.INIT));
         var _loc2_:int = this.§;p§.stageWidth;
         var _loc3_:int = this.§;p§.stageHeight;
         if(_loc2_ < 2 || _loc3_ < 2)
         {
            _loc2_ = AngryBirdsFP11.stageWidth;
            _loc3_ = AngryBirdsFP11.stageHeight;
         }
         _loc2_ = Math.max(8,Math.min(_loc2_,2880));
         _loc3_ = Math.max(8,Math.min(_loc3_,2880));
         var _loc4_:BitmapData = new BitmapData(Math.floor(_loc2_ * 0.25),Math.floor(_loc3_ * 0.25),false);
         var _loc5_:BitmapData = new BitmapData(_loc2_,_loc3_,false);
         §^b§.drawToBitmapData(_loc5_);
         _loc4_.draw(_loc5_,new Matrix(0.25,0,0,0.25));
         try
         {
            _loc4_.draw(this.§;p§,new Matrix(0.25,0,0,0.25));
         }
         catch(e:Error)
         {
         }
         _loc4_.applyFilter(_loc4_,_loc4_.rect,new Point(0,0),new BlurFilter());
         §=r§.§[!3§("flashScreenshotReadyHandler",Base64.§6!s§(new §!!k§(70).encode(_loc4_)));
         _loc5_.dispose();
         _loc4_.dispose();
         §^b§.§9E§.§1E§ = null;
         dispatchEvent(new Event(Event.COMPLETE));
      }
   }
}
