package §7!C§
{
   import §+=§.§'""§;
   import §1"<§.§0g§;
   import §1f§.§9H§;
   import §4!Z§.§%^§;
   import §6!C§.Base64;
   import §>"!§.§@!9§;
   import flash.display.BitmapData;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.filters.BlurFilter;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §;Y§ extends EventDispatcher
   {
       
      
      private var §52§:Boolean;
      
      private var §,"<§:Stage;
      
      private var §8!t§:Boolean = false;
      
      public function §;Y§(param1:Stage)
      {
         super();
         this.§,"<§ = param1;
         this.init();
      }
      
      public function §9b§() : Boolean
      {
         return this.§8!t§;
      }
      
      private function init() : void
      {
         §%^§.addCallback("pause",this.§+z§);
         §%^§.addCallback("resume",this.§^!>§);
      }
      
      private function §+z§() : void
      {
         if(!this.§8!t§)
         {
            this.§8!t§ = true;
            this.§52§ = !§8!w§.isPaused;
            dispatchEvent(new §'""§(§'""§.§4!^§));
            §&"<§.§<!7§.§0!n§();
            this.§,,§();
            §&"<§.§<!7§.§2!5§();
         }
      }
      
      private function §^!>§() : void
      {
         if(!this.§8!t§)
         {
            return;
         }
         this.§8!t§ = false;
         if(this.§52§)
         {
            dispatchEvent(new §'""§(§'""§.§]!4§));
         }
         §@!9§.§7!u§(§&"<§.§!""§);
         §&"<§.§<!7§.§?!`§();
         §&"<§.§<!7§.§^"!§();
      }
      
      public function §,,§() : void
      {
         §9H§.§0"'§.§&!d§ = this.§!"$§;
      }
      
      private function §!"$§() : void
      {
         dispatchEvent(new Event(Event.INIT));
         var _loc2_:int = this.§,"<§.stageWidth;
         var _loc3_:int = this.§,"<§.stageHeight;
         if(_loc2_ < 2 || _loc3_ < 2)
         {
            _loc2_ = §&"<§.stageWidth;
            _loc3_ = §&"<§.stageHeight;
         }
         _loc2_ = Math.max(8,Math.min(_loc2_,2880));
         _loc3_ = Math.max(8,Math.min(_loc3_,2880));
         var _loc4_:BitmapData = new BitmapData(Math.floor(_loc2_ * 0.25),Math.floor(_loc3_ * 0.25),false);
         var _loc5_:BitmapData = new BitmapData(_loc2_,_loc3_,false);
         §9H§.drawToBitmapData(_loc5_);
         _loc4_.draw(_loc5_,new Matrix(0.25,0,0,0.25));
         try
         {
            _loc4_.draw(this.§,"<§,new Matrix(0.25,0,0,0.25));
         }
         catch(e:Error)
         {
         }
         _loc4_.applyFilter(_loc4_,_loc4_.rect,new Point(0,0),new BlurFilter());
         §%^§.§]"3§("flashScreenshotReadyHandler",Base64.§;F§(new §0g§(70).encode(_loc4_)));
         _loc5_.dispose();
         _loc4_.dispose();
         §9H§.§0"'§.§&!d§ = null;
         dispatchEvent(new Event(Event.COMPLETE));
      }
   }
}
