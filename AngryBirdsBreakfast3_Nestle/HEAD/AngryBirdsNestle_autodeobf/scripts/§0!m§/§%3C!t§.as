package §0!m§
{
   import §!!!§.§6!l§;
   import §!""§.§5!8§;
   import §24§.Base64;
   import §;V§.§%c§;
   import §?@§.§5"'§;
   import §[!Z§.§>D§;
   import flash.display.BitmapData;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.filters.BlurFilter;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §<!t§ extends EventDispatcher
   {
       
      
      private var §5"6§:Boolean;
      
      private var §<!s§:Stage;
      
      private var §7!J§:Boolean = false;
      
      public function §<!t§(param1:Stage)
      {
         super();
         this.§<!s§ = param1;
         this.init();
      }
      
      public function §+F§() : Boolean
      {
         return this.§7!J§;
      }
      
      private function init() : void
      {
         §%c§.addCallback("pause",this.§-X§);
         §%c§.addCallback("resume",this.§!!v§);
         §%c§.addCallback("resumeOnError",this.§!!v§);
      }
      
      private function §-X§() : void
      {
         if(!this.§7!J§)
         {
            this.§7!J§ = true;
            this.§5"6§ = !§@!S§.isPaused;
            dispatchEvent(new §5!8§(§5!8§.§7!`§));
            § !4§.§%"7§.§,a§();
            this.§2!6§();
            § !4§.§%"7§.§0B§();
         }
      }
      
      private function §!!v§() : void
      {
         if(!this.§7!J§)
         {
            return;
         }
         this.§7!J§ = false;
         if(this.§5"6§)
         {
            dispatchEvent(new §5!8§(§5!8§.§<!F§));
         }
         §>D§.§,"§(§ !4§.§[7§);
         § !4§.§%"7§.§1$§();
         § !4§.§%"7§.§-_§();
      }
      
      public function §2!6§() : void
      {
         §6!l§.§+J§.§6!z§ = this.§["5§;
      }
      
      private function §["5§() : void
      {
         dispatchEvent(new Event(Event.INIT));
         var _loc2_:int = this.§<!s§.stageWidth;
         var _loc3_:int = this.§<!s§.stageHeight;
         if(_loc2_ < 2 || _loc3_ < 2)
         {
            _loc2_ = § !4§.stageWidth;
            _loc3_ = § !4§.stageHeight;
         }
         _loc2_ = Math.max(8,Math.min(_loc2_,2880));
         _loc3_ = Math.max(8,Math.min(_loc3_,2880));
         var _loc4_:BitmapData = new BitmapData(Math.floor(_loc2_ * 0.25),Math.floor(_loc3_ * 0.25),false);
         var _loc5_:BitmapData = new BitmapData(_loc2_,_loc3_,false);
         §6!l§.drawToBitmapData(_loc5_);
         _loc4_.draw(_loc5_,new Matrix(0.25,0,0,0.25));
         try
         {
            _loc4_.draw(this.§<!s§,new Matrix(0.25,0,0,0.25));
         }
         catch(e:Error)
         {
         }
         _loc4_.applyFilter(_loc4_,_loc4_.rect,new Point(0,0),new BlurFilter());
         §%c§.§6"§("flashScreenshotReadyHandler",Base64.§[!u§(new §5"'§(70).encode(_loc4_)));
         _loc5_.dispose();
         _loc4_.dispose();
         §6!l§.§+J§.§6!z§ = null;
         dispatchEvent(new Event(Event.COMPLETE));
      }
   }
}
