package §?!-§
{
   import § !r§.Base64;
   import §!"§.§9o§;
   import §1?§.§+!§;
   import §=V§.§,m§;
   import §@!X§.§7j§;
   import flash.display.BitmapData;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.filters.BlurFilter;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §<!§ extends EventDispatcher
   {
       
      
      private var §+;§:Boolean;
      
      private var §"$§:Stage;
      
      private var §`!;§:Boolean = false;
      
      public function §<!§(param1:Stage)
      {
         super();
         this.§"$§ = param1;
         this.init();
      }
      
      private function init() : void
      {
         §,m§.addCallback("pause",this.§6W§);
         §,m§.addCallback("resume",this.§3_§);
      }
      
      private function §6W§() : void
      {
         if(!this.§`!;§)
         {
            this.§`!;§ = true;
            this.§+;§ = !§'!V§.§=!A§;
            §'!V§.pause();
            AngryBirdsFP11.§`!d§.§2t§();
            this.§#!t§();
            AngryBirdsFP11.§`!d§.externalPause();
         }
      }
      
      private function §3_§() : void
      {
         if(!this.§`!;§)
         {
            return;
         }
         this.§`!;§ = false;
         if(this.§+;§)
         {
            §'!V§.resume();
         }
         §+!§.§4z§(AngryBirdsFP11.§%!8§);
         AngryBirdsFP11.§`!d§.externalResume();
         AngryBirdsFP11.§`!d§.§2#§();
      }
      
      public function §#!t§() : void
      {
         §7j§.§else§.§[$§ = this.§;2§;
      }
      
      private function §;2§() : void
      {
         dispatchEvent(new Event(Event.INIT));
         var _loc2_:int = this.§"$§.stageWidth;
         var _loc3_:int = this.§"$§.stageHeight;
         if(_loc2_ < 2 || _loc3_ < 2)
         {
            _loc2_ = AngryBirdsFP11.stageWidth;
            _loc3_ = AngryBirdsFP11.stageHeight;
         }
         _loc2_ = Math.max(8,Math.min(_loc2_,2880));
         _loc3_ = Math.max(8,Math.min(_loc3_,2880));
         var _loc4_:BitmapData = new BitmapData(Math.floor(_loc2_ * 0.25),Math.floor(_loc3_ * 0.25),false);
         var _loc5_:BitmapData = new BitmapData(_loc2_,_loc3_,false);
         §7j§.drawToBitmapData(_loc5_);
         _loc4_.draw(_loc5_,new Matrix(0.25,0,0,0.25));
         try
         {
            _loc4_.draw(this.§"$§,new Matrix(0.25,0,0,0.25));
         }
         catch(e:Error)
         {
         }
         _loc4_.applyFilter(_loc4_,_loc4_.rect,new Point(0,0),new BlurFilter());
         §,m§.performCall("flashScreenshotReadyHandler",Base64.§=G§(new §9o§(70).encode(_loc4_)));
         _loc5_.dispose();
         _loc4_.dispose();
         §7j§.§else§.§[$§ = null;
         dispatchEvent(new Event(Event.COMPLETE));
      }
   }
}
