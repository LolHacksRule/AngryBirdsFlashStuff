package §+!n§
{
   import § "v§.§4$4§;
   import §#"3§.Base64;
   import §&§.Starling;
   import §=X§.§-!<§;
   import §]!4§.§=#c§;
   import §^,§.§^$$§;
   import flash.display.BitmapData;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.filters.BlurFilter;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.utils.setTimeout;
   
   public class §=%§ extends EventDispatcher
   {
      
      private static var §2!#§:BlurFilter;
       
      
      private var §2$0§:Boolean;
      
      private var §1!f§:Stage;
      
      private var §6x§:Boolean = false;
      
      public function §=%§(param1:Stage)
      {
         super();
         this.§1!f§ = param1;
         this.init();
      }
      
      public function §@"a§() : Boolean
      {
         return this.§6x§;
      }
      
      private function init() : void
      {
         §=#c§.addCallback("pause",this.§7"l§);
         §=#c§.addCallback("resume",this.§@"4§);
         §=#c§.addCallback("resumeOnError",this.§@"4§);
      }
      
      private function §7"l§() : void
      {
         if(!this.§6x§)
         {
            this.§6x§ = true;
            this.§2$0§ = !§+!p§.isPaused;
            dispatchEvent(new §-!<§(§-!<§.§"H§));
            AngryBirdsBase.singleton.exitFullScreen();
            this.§]"k§();
            AngryBirdsBase.singleton.externalPause();
         }
      }
      
      private function §@"4§() : void
      {
         if(!this.§6x§)
         {
            return;
         }
         this.§6x§ = false;
         if(this.§2$0§)
         {
            dispatchEvent(new §-!<§(§-!<§.§5"9§));
         }
         §4$4§.§2$§(AngryBirdsBase.§7"q§);
         AngryBirdsBase.singleton.externalResume();
         AngryBirdsBase.singleton.§^"w§();
      }
      
      public function §]"k§() : void
      {
         if(§+!p§.§`?§.§>#,§)
         {
            Starling.§%!q§.§>#n§ = this.§^#n§;
         }
         else
         {
            setTimeout(this.§^#n§,10);
         }
      }
      
      private function §^#n§() : void
      {
         var _loc5_:BitmapData = null;
         dispatchEvent(new Event(Event.INIT));
         var _loc2_:int = this.§1!f§.stageWidth;
         var _loc3_:int = this.§1!f§.stageHeight;
         if(_loc2_ < 2 || _loc3_ < 2)
         {
            _loc2_ = AngryBirdsBase.stageWidth;
            _loc3_ = AngryBirdsBase.stageHeight;
         }
         _loc2_ = Math.max(8,Math.min(_loc2_,2880));
         _loc3_ = Math.max(8,Math.min(_loc3_,2880));
         var _loc4_:BitmapData = new BitmapData(Math.floor(_loc2_ * 0.25),Math.floor(_loc3_ * 0.25),false);
         if(§+!p§.§`?§.§>#,§)
         {
            _loc5_ = new BitmapData(_loc2_,_loc3_,false);
            Starling.drawToBitmapData(_loc5_);
            _loc4_.draw(_loc5_,new Matrix(0.25,0,0,0.25));
            _loc5_.dispose();
         }
         try
         {
            _loc4_.draw(this.§1!f§,new Matrix(0.25,0,0,0.25));
         }
         catch(e:Error)
         {
         }
         _loc4_.applyFilter(_loc4_,_loc4_.rect,new Point(0,0),§2!#§ = §2!#§ || new BlurFilter());
         §=#c§.§<!t§("flashScreenshotReadyHandler",Base64.§5+§(new §^$$§(70).encode(_loc4_)));
         _loc4_.dispose();
         Starling.§%!q§.§>#n§ = null;
         dispatchEvent(new Event(Event.COMPLETE));
      }
   }
}
