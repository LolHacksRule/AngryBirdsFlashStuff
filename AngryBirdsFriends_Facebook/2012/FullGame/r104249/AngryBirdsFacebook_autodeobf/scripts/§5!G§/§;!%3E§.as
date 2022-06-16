package §5!G§
{
   import § "&§.§-!n§;
   import §+!F§.§1!D§;
   import §<<§.§=!L§;
   import §>s§.§+m§;
   import §[x§.Base64;
   import flash.display.BitmapData;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.filters.BlurFilter;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §;!>§ extends EventDispatcher
   {
       
      
      private var §9"B§:Boolean;
      
      private var §0![§:Stage;
      
      private var §5L§:Boolean = false;
      
      public function §;!>§(param1:Stage)
      {
         super();
         this.§0![§ = param1;
         this.init();
      }
      
      private function init() : void
      {
         §=!L§.addCallback("pause",this.§8F§);
         §=!L§.addCallback("resume",this.§7"<§);
      }
      
      private function §8F§() : void
      {
         if(!this.§5L§)
         {
            this.§5L§ = true;
            this.§9"B§ = !§&2§.isPaused;
            §&2§.pause();
            AngryBirdsFP11.§#!4§.§1z§();
            this.§[!%§();
            AngryBirdsFP11.§#!4§.externalPause();
         }
      }
      
      private function §7"<§() : void
      {
         if(!this.§5L§)
         {
            return;
         }
         this.§5L§ = false;
         if(this.§9"B§)
         {
            §&2§.resume();
         }
         §+m§.§["E§(AngryBirdsFP11.§]!?§);
         AngryBirdsFP11.§#!4§.externalResume();
         AngryBirdsFP11.§#!4§.§!;§();
      }
      
      public function §[!%§() : void
      {
         §1!D§.§7!T§.§<!4§ = this.§1!?§;
      }
      
      private function §1!?§() : void
      {
         dispatchEvent(new Event(Event.INIT));
         var _loc2_:int = this.§0![§.stageWidth;
         var _loc3_:int = this.§0![§.stageHeight;
         if(_loc2_ < 2 || _loc3_ < 2)
         {
            _loc2_ = AngryBirdsFP11.stageWidth;
            _loc3_ = AngryBirdsFP11.stageHeight;
         }
         _loc2_ = Math.max(8,Math.min(_loc2_,2880));
         _loc3_ = Math.max(8,Math.min(_loc3_,2880));
         var _loc4_:BitmapData = new BitmapData(Math.floor(_loc2_ * 0.25),Math.floor(_loc3_ * 0.25),false);
         var _loc5_:BitmapData = new BitmapData(_loc2_,_loc3_,false);
         §1!D§.drawToBitmapData(_loc5_);
         _loc4_.draw(_loc5_,new Matrix(0.25,0,0,0.25));
         try
         {
            _loc4_.draw(this.§0![§,new Matrix(0.25,0,0,0.25));
         }
         catch(e:Error)
         {
         }
         _loc4_.applyFilter(_loc4_,_loc4_.rect,new Point(0,0),new BlurFilter());
         §=!L§.§+">§("flashScreenshotReadyHandler",Base64.§6P§(new §-!n§(70).encode(_loc4_)));
         _loc5_.dispose();
         _loc4_.dispose();
         §1!D§.§7!T§.§<!4§ = null;
         dispatchEvent(new Event(Event.COMPLETE));
      }
   }
}
