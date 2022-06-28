package §>! §
{
   import §!!K§.§else§;
   import §"x§.Base64;
   import §+!3§.§>!c§;
   import §5!c§.§9'§;
   import §;!o§.§>!l§;
   import flash.display.BitmapData;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.filters.BlurFilter;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §`o§ extends EventDispatcher
   {
       
      
      private var §6p§:Boolean;
      
      private var §8!x§:Stage;
      
      private var §1i§:Boolean = false;
      
      public function §`o§(param1:Stage)
      {
         super();
         this.§8!x§ = param1;
         this.init();
      }
      
      private function init() : void
      {
         §>!l§.addCallback("pause",this.§!!?§);
         §>!l§.addCallback("resume",this.§[!#§);
      }
      
      private function §!!?§() : void
      {
         if(!this.§1i§)
         {
            this.§1i§ = true;
            this.§6p§ = !§^!c§.isPaused;
            §^!c§.pause();
            AngryBirdsFP11.§3l§.§&2§();
            this.§?m§();
            AngryBirdsFP11.§3l§.externalPause();
         }
      }
      
      private function §[!#§() : void
      {
         if(!this.§1i§)
         {
            return;
         }
         this.§1i§ = false;
         if(this.§6p§)
         {
            §^!c§.resume();
         }
         §9'§.§[!f§(AngryBirdsFP11.§5`§);
         AngryBirdsFP11.§3l§.externalResume();
         AngryBirdsFP11.§3l§.§&!d§();
      }
      
      public function §?m§() : void
      {
         §else§.§^!A§.§<Y§ = this.§2b§;
      }
      
      private function §2b§() : void
      {
         dispatchEvent(new Event(Event.INIT));
         var _loc2_:int = this.§8!x§.stageWidth;
         var _loc3_:int = this.§8!x§.stageHeight;
         if(_loc2_ < 2 || _loc3_ < 2)
         {
            _loc2_ = AngryBirdsFP11.stageWidth;
            _loc3_ = AngryBirdsFP11.stageHeight;
         }
         _loc2_ = Math.max(8,Math.min(_loc2_,2880));
         _loc3_ = Math.max(8,Math.min(_loc3_,2880));
         var _loc4_:BitmapData = new BitmapData(Math.floor(_loc2_ * 0.25),Math.floor(_loc3_ * 0.25),false);
         var _loc5_:BitmapData = new BitmapData(_loc2_,_loc3_,false);
         §else§.drawToBitmapData(_loc5_);
         _loc4_.draw(_loc5_,new Matrix(0.25,0,0,0.25));
         try
         {
            _loc4_.draw(this.§8!x§,new Matrix(0.25,0,0,0.25));
         }
         catch(e:Error)
         {
         }
         _loc4_.applyFilter(_loc4_,_loc4_.rect,new Point(0,0),new BlurFilter());
         §>!l§.§ a§("flashScreenshotReadyHandler",Base64.§%A§(new §>!c§(70).encode(_loc4_)));
         _loc5_.dispose();
         _loc4_.dispose();
         §else§.§^!A§.§<Y§ = null;
         dispatchEvent(new Event(Event.COMPLETE));
      }
   }
}
