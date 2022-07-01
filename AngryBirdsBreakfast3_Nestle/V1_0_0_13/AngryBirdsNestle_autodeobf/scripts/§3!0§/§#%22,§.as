package §3!0§
{
   import §&!I§.§>"%§;
   import §6!!§.§4G§;
   import §8!$§.Base64;
   import §;X§.§4!@§;
   import §=!d§.§5!5§;
   import §=w§.§5!b§;
   import flash.display.BitmapData;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.filters.BlurFilter;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §#",§ extends EventDispatcher
   {
       
      
      private var §+!k§:Boolean;
      
      private var §`!c§:Stage;
      
      private var §32§:Boolean = false;
      
      public function §#",§(param1:Stage)
      {
         super();
         this.§`!c§ = param1;
         this.init();
      }
      
      public function §8Q§() : Boolean
      {
         return this.§32§;
      }
      
      private function init() : void
      {
         §4G§.addCallback("pause",this.§"=§);
         §4G§.addCallback("resume",this.§#Y§);
         §4G§.addCallback("resumeOnError",this.§#Y§);
      }
      
      private function §"=§() : void
      {
         if(!this.§32§)
         {
            this.§32§ = true;
            this.§+!k§ = !§`i§.isPaused;
            dispatchEvent(new §>"%§(§>"%§.§<!D§));
            §-!2§.§7O§.§-x§();
            this.§1!8§();
            §-!2§.§7O§.final();
         }
      }
      
      private function §#Y§() : void
      {
         if(!this.§32§)
         {
            return;
         }
         this.§32§ = false;
         if(this.§+!k§)
         {
            dispatchEvent(new §>"%§(§>"%§.§;!n§));
         }
         §4!@§.§,5§(§-!2§.§@5§);
         §-!2§.§7O§.§1"0§();
         §-!2§.§7O§.§>!@§();
      }
      
      public function §1!8§() : void
      {
         §5!5§.§^'§.§'!w§ = this.§,!k§;
      }
      
      private function §,!k§() : void
      {
         dispatchEvent(new Event(Event.INIT));
         var _loc2_:int = this.§`!c§.stageWidth;
         var _loc3_:int = this.§`!c§.stageHeight;
         if(_loc2_ < 2 || _loc3_ < 2)
         {
            _loc2_ = §-!2§.stageWidth;
            _loc3_ = §-!2§.stageHeight;
         }
         _loc2_ = Math.max(8,Math.min(_loc2_,2880));
         _loc3_ = Math.max(8,Math.min(_loc3_,2880));
         var _loc4_:BitmapData = new BitmapData(Math.floor(_loc2_ * 0.25),Math.floor(_loc3_ * 0.25),false);
         var _loc5_:BitmapData = new BitmapData(_loc2_,_loc3_,false);
         §5!5§.drawToBitmapData(_loc5_);
         _loc4_.draw(_loc5_,new Matrix(0.25,0,0,0.25));
         try
         {
            _loc4_.draw(this.§`!c§,new Matrix(0.25,0,0,0.25));
         }
         catch(e:Error)
         {
         }
         _loc4_.applyFilter(_loc4_,_loc4_.rect,new Point(0,0),new BlurFilter());
         §4G§.§&!7§("flashScreenshotReadyHandler",Base64.§`!V§(new §5!b§(70).encode(_loc4_)));
         _loc5_.dispose();
         _loc4_.dispose();
         §5!5§.§^'§.§'!w§ = null;
         dispatchEvent(new Event(Event.COMPLETE));
      }
   }
}
