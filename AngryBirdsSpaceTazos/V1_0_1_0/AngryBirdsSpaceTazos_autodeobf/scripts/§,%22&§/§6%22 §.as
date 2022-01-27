package §,"&§
{
   import §0N§.Base64;
   import §3"#§.§<!O§;
   import §5Q§.§^!e§;
   import §;R§.§@!g§;
   import §<"8§.§6!c§;
   import §<W§.§#e§;
   import flash.display.BitmapData;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.filters.BlurFilter;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §6" § extends EventDispatcher
   {
       
      
      private var §+!e§:Boolean;
      
      private var §#[§:Stage;
      
      private var §%"&§:Boolean = false;
      
      public function §6" §(param1:Stage)
      {
         super();
         this.§#[§ = param1;
         this.init();
      }
      
      public function §1"1§() : Boolean
      {
         return this.§%"&§;
      }
      
      private function init() : void
      {
         §6!c§.addCallback("pause",this.§1b§);
         §6!c§.addCallback("resume",this.§ Q§);
      }
      
      private function §1b§() : void
      {
         if(!this.§%"&§)
         {
            this.§%"&§ = true;
            this.§+!e§ = !§9q§.isPaused;
            dispatchEvent(new §#e§(§#e§.§;!#§));
            § !g§.§;!'§.§&4§();
            this.§#!V§();
            § !g§.§;!'§.§const§();
         }
      }
      
      private function § Q§() : void
      {
         if(!this.§%"&§)
         {
            return;
         }
         this.§%"&§ = false;
         if(this.§+!e§)
         {
            dispatchEvent(new §#e§(§#e§.§5!L§));
         }
         §<!O§.§!p§(§ !g§.§>!1§);
         § !g§.§;!'§.§8!S§();
         § !g§.§;!'§.§`"0§();
      }
      
      public function §#!V§() : void
      {
         §^!e§.§`?§.§,!h§ = this.§2!E§;
      }
      
      private function §2!E§() : void
      {
         dispatchEvent(new Event(Event.INIT));
         var _loc2_:int = this.§#[§.stageWidth;
         var _loc3_:int = this.§#[§.stageHeight;
         if(_loc2_ < 2 || _loc3_ < 2)
         {
            _loc2_ = § !g§.stageWidth;
            _loc3_ = § !g§.stageHeight;
         }
         _loc2_ = Math.max(8,Math.min(_loc2_,2880));
         _loc3_ = Math.max(8,Math.min(_loc3_,2880));
         var _loc4_:BitmapData = new BitmapData(Math.floor(_loc2_ * 0.25),Math.floor(_loc3_ * 0.25),false);
         var _loc5_:BitmapData = new BitmapData(_loc2_,_loc3_,false);
         §^!e§.drawToBitmapData(_loc5_);
         _loc4_.draw(_loc5_,new Matrix(0.25,0,0,0.25));
         try
         {
            _loc4_.draw(this.§#[§,new Matrix(0.25,0,0,0.25));
         }
         catch(e:Error)
         {
         }
         _loc4_.applyFilter(_loc4_,_loc4_.rect,new Point(0,0),new BlurFilter());
         §6!c§.§?!6§("flashScreenshotReadyHandler",Base64.§0;§(new §@!g§(70).encode(_loc4_)));
         _loc5_.dispose();
         _loc4_.dispose();
         §^!e§.§`?§.§,!h§ = null;
         dispatchEvent(new Event(Event.COMPLETE));
      }
   }
}
