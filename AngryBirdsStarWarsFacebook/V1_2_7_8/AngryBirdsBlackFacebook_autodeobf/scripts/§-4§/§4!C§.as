package §-4§
{
   import §""d§.§<`§;
   import §7!@§.§,"R§;
   import §7!@§.§6"§;
   import §7!@§.§[`§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class §4!C§ extends EventDispatcher
   {
      
      private static const §;`§:String = "MovieClip_";
       
      
      protected var §?m§:String = "best";
      
      protected var §,_§:§,"R§;
      
      protected var §,r§:§<`§;
      
      public function §4!C§(param1:§<`§)
      {
         super();
         this.§,r§ = param1;
         this.init();
      }
      
      protected function init() : void
      {
         var _loc1_:MovieClip = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§,r§.mClip.numChildren)
         {
            _loc1_ = MovieClip(this.§,r§.mClip.getChildAt(_loc2_));
            _loc1_.gotoAndStop(1);
            _loc1_.visible = false;
            _loc2_++;
         }
         this.§,r§.mClip.visible = true;
      }
      
      public function dispose() : void
      {
         this.§=!7§();
      }
      
      protected function createTransition(param1:String) : void
      {
         this.§=!7§();
         var _loc2_:String = §;`§ + param1;
         var _loc3_:MovieClip = MovieClip(this.§,r§.mClip.getChildByName(_loc2_));
         var _loc4_:Vector.<MovieClip>;
         if((_loc4_ = new <MovieClip>[_loc3_]).length == 0)
         {
            throw new Error("--#IntroPlayer[createTransition]:: No animations found!");
         }
         this.§,_§ = new §`?§(_loc4_,this.§,r§.mClip.stage,1000 / 60);
         this.§,_§.addEventListener(Event.COMPLETE,this.§3!w§);
         this.§,_§.start(this.§1-§());
      }
      
      private function §=!7§() : void
      {
         if(this.§,_§)
         {
            this.§,_§.removeEventListener(Event.COMPLETE,this.§3!w§);
            this.§,_§.dispose();
         }
         this.§,_§ = null;
      }
      
      protected function §1-§() : §6"§
      {
         var _loc1_:§6"§ = new §6"§();
         _loc1_.§>"$§ = §[`§.§-"y§;
         _loc1_.§!"X§ = §[`§.§!Y§;
         _loc1_.startLabel = §[`§.§%!]§();
         _loc1_.type = §6"§.§,#2§;
         _loc1_.stageQuality = this.§?m§;
         return _loc1_;
      }
      
      private function §3!w§(param1:Event) : void
      {
         this.§=!7§();
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      public function §]"u§(param1:String) : void
      {
         this.createTransition(param1);
      }
      
      public function update(param1:Number) : void
      {
         if(this.§,_§)
         {
            this.§,_§.run(param1);
         }
      }
   }
}
