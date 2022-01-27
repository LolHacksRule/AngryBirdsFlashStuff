package §+!9§
{
   import § a§.§8!D§;
   import §""<§.Base64;
   import §3!4§.§ ![§;
   import §9!G§.§"!S§;
   import §<!#§.§7!R§;
   import §<l§.§#r§;
   import flash.display.BitmapData;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.filters.BlurFilter;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §6T§ extends EventDispatcher
   {
       
      
      private var §<]§:Boolean;
      
      private var §,""§:Stage;
      
      private var §@>§:Boolean = false;
      
      public function §6T§(param1:Stage)
      {
         super();
         this.§,""§ = param1;
         this.init();
      }
      
      public function §"K§() : Boolean
      {
         return this.§@>§;
      }
      
      private function init() : void
      {
         §#r§.addCallback("pause",this.§ !Y§);
         §#r§.addCallback("resume",this.§[!Q§);
      }
      
      private function § !Y§() : void
      {
         if(!this.§@>§)
         {
            this.§@>§ = true;
            this.§<]§ = !§;0§.isPaused;
            dispatchEvent(new §7!R§(§7!R§.§#"G§));
            §&!h§.§ u§.§`!2§();
            this.§'T§();
            §&!h§.§ u§.§6!l§();
         }
      }
      
      private function §[!Q§() : void
      {
         if(!this.§@>§)
         {
            return;
         }
         this.§@>§ = false;
         if(this.§<]§)
         {
            dispatchEvent(new §7!R§(§7!R§.§4!e§));
         }
         §"!S§.§#!P§(§&!h§.§8!i§);
         §&!h§.§ u§.§]q§();
         §&!h§.§ u§.§ !L§();
      }
      
      public function §'T§() : void
      {
         § ![§.§!G§.§1" § = this.§%P§;
      }
      
      private function §%P§() : void
      {
         dispatchEvent(new Event(Event.INIT));
         var _loc2_:int = this.§,""§.stageWidth;
         var _loc3_:int = this.§,""§.stageHeight;
         if(_loc2_ < 2 || _loc3_ < 2)
         {
            _loc2_ = §&!h§.stageWidth;
            _loc3_ = §&!h§.stageHeight;
         }
         _loc2_ = Math.max(8,Math.min(_loc2_,2880));
         _loc3_ = Math.max(8,Math.min(_loc3_,2880));
         var _loc4_:BitmapData = new BitmapData(Math.floor(_loc2_ * 0.25),Math.floor(_loc3_ * 0.25),false);
         var _loc5_:BitmapData = new BitmapData(_loc2_,_loc3_,false);
         § ![§.drawToBitmapData(_loc5_);
         _loc4_.draw(_loc5_,new Matrix(0.25,0,0,0.25));
         try
         {
            _loc4_.draw(this.§,""§,new Matrix(0.25,0,0,0.25));
         }
         catch(e:Error)
         {
         }
         _loc4_.applyFilter(_loc4_,_loc4_.rect,new Point(0,0),new BlurFilter());
         §#r§.§#!2§("flashScreenshotReadyHandler",Base64.§?""§(new §8!D§(70).encode(_loc4_)));
         _loc5_.dispose();
         _loc4_.dispose();
         § ![§.§!G§.§1" § = null;
         dispatchEvent(new Event(Event.COMPLETE));
      }
   }
}
