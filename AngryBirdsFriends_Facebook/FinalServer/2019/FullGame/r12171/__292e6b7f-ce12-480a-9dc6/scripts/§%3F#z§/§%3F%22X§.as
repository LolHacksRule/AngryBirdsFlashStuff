package §?#z§
{
   import §"#k§.Starling;
   import §#$?§.§7!b§;
   import §#S§.§ !]§;
   import §3"V§.§ b§;
   import §6"p§.Base64;
   import §`§.§^"c§;
   import flash.display.BitmapData;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.filters.BlurFilter;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.utils.setTimeout;
   
   public class §?"X§ extends EventDispatcher
   {
      
      private static var §=#n§:BlurFilter;
       
      
      private var §3#[§:Boolean;
      
      private var §6$ §:Stage;
      
      private var §2!f§:Boolean = false;
      
      public function §?"X§(param1:Stage)
      {
         super();
         this.§6$ § = param1;
         this.init();
      }
      
      public function §3q§() : Boolean
      {
         return this.§2!f§;
      }
      
      private function init() : void
      {
         §7!b§.addCallback("pause",this.§8+§);
         §7!b§.addCallback("resume",this.§;"7§);
         §7!b§.addCallback("resumeOnError",this.§;"7§);
      }
      
      private function §8+§() : void
      {
         if(!this.§2!f§)
         {
            this.§2!f§ = true;
            this.§3#[§ = !§]$?§.isPaused;
            dispatchEvent(new §^"c§(§^"c§.§#"-§));
            AngryBirdsBase.singleton.exitFullScreen();
            this.§'#Q§();
            AngryBirdsBase.singleton.externalPause();
         }
      }
      
      private function §;"7§() : void
      {
         if(!this.§2!f§)
         {
            return;
         }
         this.§2!f§ = false;
         if(this.§3#[§)
         {
            dispatchEvent(new §^"c§(§^"c§.§'!0§));
         }
         § b§.§7$E§(AngryBirdsBase.§%"v§);
         AngryBirdsBase.singleton.externalResume();
         AngryBirdsBase.singleton.§[$,§();
      }
      
      public function §'#Q§() : void
      {
         if(§]$?§.§2#§.§ §)
         {
            Starling.§4$#§.§>f§ = this.§'!v§;
         }
         else
         {
            setTimeout(this.§'!v§,10);
         }
      }
      
      private function §'!v§() : void
      {
         var _loc5_:BitmapData = null;
         dispatchEvent(new Event(Event.INIT));
         var _loc2_:int = this.§6$ §.stageWidth;
         var _loc3_:int = this.§6$ §.stageHeight;
         if(_loc2_ < 2 || _loc3_ < 2)
         {
            _loc2_ = AngryBirdsBase.stageWidth;
            _loc3_ = AngryBirdsBase.stageHeight;
         }
         _loc2_ = Math.max(8,Math.min(_loc2_,2880));
         _loc3_ = Math.max(8,Math.min(_loc3_,2880));
         var _loc4_:BitmapData = new BitmapData(Math.floor(_loc2_ * 0.25),Math.floor(_loc3_ * 0.25),false);
         if(§]$?§.§2#§.§ §)
         {
            _loc5_ = new BitmapData(_loc2_,_loc3_,false);
            Starling.drawToBitmapData(_loc5_);
            _loc4_.draw(_loc5_,new Matrix(0.25,0,0,0.25));
            _loc5_.dispose();
         }
         try
         {
            _loc4_.draw(this.§6$ §,new Matrix(0.25,0,0,0.25));
         }
         catch(e:Error)
         {
         }
         _loc4_.applyFilter(_loc4_,_loc4_.rect,new Point(0,0),§=#n§ = §=#n§ || new BlurFilter());
         §7!b§.§7@§("flashScreenshotReadyHandler",Base64.§8!q§(new § !]§(70).encode(_loc4_)));
         _loc4_.dispose();
         Starling.§4$#§.§>f§ = null;
         dispatchEvent(new Event(Event.COMPLETE));
      }
   }
}
