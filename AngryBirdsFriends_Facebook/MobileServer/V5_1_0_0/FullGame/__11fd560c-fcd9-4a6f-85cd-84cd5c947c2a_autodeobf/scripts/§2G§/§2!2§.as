package §2G§
{
   import §;$-§.§"!b§;
   import §;$3§.§8=§;
   import §;$3§.§>f§;
   import §>#G§.§%6§;
   import §`"D§.ParticleManager;
   import §`7§.§6#I§;
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   
   public class §2!2§ extends §%6§
   {
       
      
      protected var mLevelManager:§8=§;
      
      protected var §>v§:Loader;
      
      protected var §;"E§:Vector.<XML>;
      
      public function §2!2§(param1:§8=§)
      {
         this.§;"E§ = new Vector.<XML>();
         super();
         this.mLevelManager = param1;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         this.mLevelManager = null;
      }
      
      override protected function clear() : void
      {
         super.clear();
         if(this.§>v§)
         {
            this.§>v§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§5"m§);
            this.§>v§ = null;
         }
      }
      
      override protected function initializeFile(param1:String) : void
      {
         var _loc6_:String = null;
         var _loc2_:Array = param1.match(/^levels\/(.*)\.json$/i);
         if(_loc2_)
         {
            _loc6_ = _loc2_[1].toLowerCase().substr("level".length);
            this.initializeLevelFile(_loc6_,param1);
         }
         var _loc3_:Array = param1.match(/^particle_emitters\/(.*)\.pex$/i);
         if(_loc3_)
         {
            this.§3#O§(_loc3_[1]);
         }
         var _loc4_:Array;
         if(_loc4_ = param1.match(/cutscenes.lua$/i))
         {
            this.§9%§(param1);
         }
         var _loc5_:Array;
         if(_loc5_ = param1.match(/cutscene.swf$/i))
         {
            this.§>!y§(param1);
         }
         if(param1.toLowerCase() == "assetmap.xml")
         {
            this.§!7§(param1);
         }
         if(param1.toLowerCase() == "episodes.json")
         {
            this.§-#%§(param1);
         }
         super.initializeFile(param1);
      }
      
      protected function initializeLevelFile(param1:String, param2:String) : void
      {
         if(!this.mLevelManager.getLevelForId(param1))
         {
            this.mLevelManager.addLevel(param1,§>f§.§%#+§(§ #'§(param2)));
         }
      }
      
      protected function §-#%§(param1:String) : void
      {
         this.mLevelManager.§<"§(JSON.parse(§ #'§(param1)));
      }
      
      private function §!7§(param1:String) : void
      {
         var _loc3_:LoaderContext = null;
         ++§5!m§;
         var _loc2_:XML = new XML(§ #'§(param1));
         this.§;"E§.push(_loc2_);
         if(this.§;"E§.length == 1)
         {
            this.§>v§ = new Loader();
            this.§>v§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§5"m§);
            _loc3_ = new LoaderContext(false,ApplicationDomain.currentDomain);
            _loc3_.allowCodeImport = true;
            this.§>v§.loadBytes(§^=§(_loc2_.Library.@swf),_loc3_);
         }
      }
      
      private function §5"m§(param1:Event) : void
      {
         this.§>v§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§5"m§);
         var _loc2_:XML = this.§;"E§.shift();
         if(this.§;"E§.length > 0)
         {
            this.§>v§ = new Loader();
            this.§>v§.contentLoaderInfo.addEventListener(Event.INIT,this.§5"m§);
            this.§>v§.loadBytes(§^=§(this.§;"E§[0].Library.@swf),new LoaderContext(false,ApplicationDomain.currentDomain));
         }
         §=2§();
      }
      
      private function §9%§(param1:String) : void
      {
         var _loc2_:Object = §6#I§.§#!§(§ #'§(param1));
         §"!b§.§9%§(_loc2_);
      }
      
      private function §>!y§(param1:String) : void
      {
         §"!b§.§-"z§(§&#%§,§^=§(param1,§&#%§));
      }
      
      protected function §3#O§(param1:String) : void
      {
         var id:String = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            ParticleManager.§<c§(id,XML(§ #'§("particle_emitters/" + id + ".pex")),param1.bitmapData);
            §=2§();
         };
         ++§5!m§;
         §8#f§("particle_emitters/" + id + ".png",onComplete);
      }
   }
}
