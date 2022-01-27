package §3§#2
{
   import §'"I§.§1-§;
   import §'"I§.§9"t§;
   import §'"I§.§>!t§;
   import §=Z§.§9!c§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class §7"?§ extends EventDispatcher
   {
      
      private static const §2!V§:String = "MovieClip_";
       
      
      protected var §^"Z§:String = "best";
      
      protected var §[#§:§9"t§;
      
      protected var §[#,§:§9!c§;
      
      public function §7"?§(param1:§9!c§)
      {
         super();
         this.§[#,§ = param1;
         this.init();
      }
      
      protected function init() : void
      {
         var _loc1_:MovieClip = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§[#,§.mClip.numChildren)
         {
            _loc1_ = MovieClip(this.§[#,§.mClip.getChildAt(_loc2_));
            _loc1_.gotoAndStop(1);
            _loc1_.visible = false;
            _loc2_++;
         }
         this.§[#,§.mClip.visible = true;
      }
      
      public function dispose() : void
      {
         this.§^!A§();
      }
      
      protected function createTransition(param1:String) : void
      {
         this.§^!A§();
         var _loc2_:String = §2!V§ + param1;
         var _loc3_:MovieClip = MovieClip(this.§[#,§.mClip.getChildByName(_loc2_));
         var _loc4_:Vector.<MovieClip>;
         if((_loc4_ = new <MovieClip>[_loc3_]).length == 0)
         {
            throw new Error("--#IntroPlayer[createTransition]:: No animations found!");
         }
         this.§[#§ = new §<!@§(_loc4_,this.§[#,§.mClip.stage,1000 / 60);
         this.§[#§.addEventListener(Event.COMPLETE,this.§""s§);
         this.§[#§.start(this.§1!%§());
      }
      
      private function §^!A§() : void
      {
         if(this.§[#§)
         {
            this.§[#§.removeEventListener(Event.COMPLETE,this.§""s§);
            this.§[#§.dispose();
         }
         this.§[#§ = null;
      }
      
      protected function §1!%§() : §1-§
      {
         var _loc1_:§1-§ = new §1-§();
         _loc1_.§ try§ = §>!t§.§?>§;
         _loc1_.§@"D§ = §>!t§.§%M§;
         _loc1_.startLabel = §>!t§.§4#&§();
         _loc1_.type = §1-§.§?j§;
         _loc1_.stageQuality = this.§^"Z§;
         return _loc1_;
      }
      
      private function §""s§(param1:Event) : void
      {
         this.§^!A§();
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      public function §7#5§(param1:String) : void
      {
         this.createTransition(param1);
      }
      
      public function update(param1:Number) : void
      {
         if(this.§[#§)
         {
            this.§[#§.run(param1);
         }
      }
   }
}
