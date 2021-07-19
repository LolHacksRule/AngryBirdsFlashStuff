package §%#W§
{
   import §+D§.§0"$§;
   import §]!$§.§6y§;
   import §]!$§.§>!!§;
   import §]!$§.§`#?§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class §["m§ extends EventDispatcher
   {
      
      private static const §2"=§:String = "MovieClip_";
       
      
      protected var §^!`§:String = "best";
      
      protected var §7!=§:§>!!§;
      
      protected var §^c§:§0"$§;
      
      public function §["m§(param1:§0"$§)
      {
         super();
         this.§^c§ = param1;
         this.init();
      }
      
      protected function init() : void
      {
         var _loc1_:MovieClip = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§^c§.mClip.numChildren)
         {
            _loc1_ = MovieClip(this.§^c§.mClip.getChildAt(_loc2_));
            _loc1_.gotoAndStop(1);
            _loc1_.visible = false;
            _loc2_++;
         }
         this.§^c§.mClip.visible = true;
      }
      
      public function dispose() : void
      {
         this.§^!d§();
      }
      
      protected function createTransition(param1:String) : void
      {
         this.§^!d§();
         var _loc2_:String = §2"=§ + param1;
         var _loc3_:MovieClip = MovieClip(this.§^c§.mClip.getChildByName(_loc2_));
         var _loc4_:Vector.<MovieClip>;
         if((_loc4_ = new <MovieClip>[_loc3_]).length == 0)
         {
            throw new Error("--#IntroPlayer[createTransition]:: No animations found!");
         }
         this.§7!=§ = new §"!z§(_loc4_,this.§^c§.mClip.stage,1000 / 60);
         this.§7!=§.addEventListener(Event.COMPLETE,this.§]!p§);
         this.§7!=§.start(this.§2>§());
      }
      
      private function §^!d§() : void
      {
         if(this.§7!=§)
         {
            this.§7!=§.removeEventListener(Event.COMPLETE,this.§]!p§);
            this.§7!=§.dispose();
         }
         this.§7!=§ = null;
      }
      
      protected function §2>§() : §6y§
      {
         var _loc1_:§6y§ = new §6y§();
         _loc1_.§%#N§ = §`#?§.§1#$§;
         _loc1_.§`"i§ = §`#?§.§;!&§;
         _loc1_.startLabel = §`#?§.§@!!§();
         _loc1_.type = §6y§.§>]§;
         _loc1_.stageQuality = this.§^!`§;
         return _loc1_;
      }
      
      private function §]!p§(param1:Event) : void
      {
         this.§^!d§();
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      public function §]"m§(param1:String) : void
      {
         this.createTransition(param1);
      }
      
      public function update(param1:Number) : void
      {
         if(this.§7!=§)
         {
            this.§7!=§.run(param1);
         }
      }
   }
}
