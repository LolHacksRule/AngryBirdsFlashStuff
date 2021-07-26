package §>!O§
{
   import §"=§.§1!B§;
   import §'6§.Base64;
   import §+[§.§%G§;
   import §,!,§.§2t§;
   import §2c§.§>M§;
   import flash.display.BitmapData;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.filters.BlurFilter;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §^!G§ extends EventDispatcher
   {
       
      
      private var §7!8§:Boolean;
      
      private var §!^§:Stage;
      
      private var §3!4§:Boolean = false;
      
      public function §^!G§(param1:Stage)
      {
         super();
         this.§!^§ = param1;
         this.init();
      }
      
      private function init() : void
      {
         §1!B§.addCallback("pause",this.§-R§);
         §1!B§.addCallback("resume",this.§4!J§);
      }
      
      private function §-R§() : void
      {
         if(!this.§3!4§)
         {
            this.§3!4§ = true;
            this.§7!8§ = !§[+§.isPaused;
            §[+§.pause();
            AngryBirdsFP11.§6Z§.§&=§();
            this.§0L§();
            AngryBirdsFP11.§6Z§.externalPause();
         }
      }
      
      private function §4!J§() : void
      {
         if(!this.§3!4§)
         {
            return;
         }
         this.§3!4§ = false;
         if(this.§7!8§)
         {
            §[+§.resume();
         }
         §%G§.§78§(AngryBirdsFP11.§0j§);
         AngryBirdsFP11.§6Z§.externalResume();
         AngryBirdsFP11.§6Z§.§2!+§();
      }
      
      public function §0L§() : void
      {
         §2t§.§,!E§.§9W§ = this.§2'§;
      }
      
      private function §2'§() : void
      {
         dispatchEvent(new Event(Event.INIT));
         var _loc2_:int = this.§!^§.stageWidth;
         var _loc3_:int = this.§!^§.stageHeight;
         if(_loc2_ < 2 || _loc3_ < 2)
         {
            _loc2_ = AngryBirdsFP11.stageWidth;
            _loc3_ = AngryBirdsFP11.stageHeight;
         }
         _loc2_ = Math.max(8,Math.min(_loc2_,2880));
         _loc3_ = Math.max(8,Math.min(_loc3_,2880));
         var _loc4_:BitmapData = new BitmapData(Math.floor(_loc2_ * 0.25),Math.floor(_loc3_ * 0.25),false);
         var _loc5_:BitmapData = new BitmapData(_loc2_,_loc3_,false);
         §2t§.drawToBitmapData(_loc5_);
         _loc4_.draw(_loc5_,new Matrix(0.25,0,0,0.25));
         try
         {
            _loc4_.draw(this.§!^§,new Matrix(0.25,0,0,0.25));
         }
         catch(e:Error)
         {
         }
         _loc4_.applyFilter(_loc4_,_loc4_.rect,new Point(0,0),new BlurFilter());
         §1!B§.§#!O§("flashScreenshotReadyHandler",Base64.§5U§(new §>M§(70).encode(_loc4_)));
         _loc5_.dispose();
         _loc4_.dispose();
         §2t§.§,!E§.§9W§ = null;
         dispatchEvent(new Event(Event.COMPLETE));
      }
   }
}
