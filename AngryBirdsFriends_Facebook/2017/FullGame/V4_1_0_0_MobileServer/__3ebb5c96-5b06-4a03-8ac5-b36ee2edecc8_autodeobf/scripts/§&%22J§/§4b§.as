package §&"J§
{
   import §0=§.§>t§;
   import §6V§.§0#z§;
   import §;#U§.ParticleManager;
   import §>!I§.§%#'§;
   import §@#§.§]#B§;
   import §@#§.§^#Q§;
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   
   public class §4b§ extends §%#'§
   {
       
      
      protected var mLevelManager:§^#Q§;
      
      protected var §+"§:Loader;
      
      protected var §5"A§:Vector.<XML>;
      
      public function §4b§(param1:§^#Q§)
      {
         this.§5"A§ = new Vector.<XML>();
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
         if(this.§+"§)
         {
            this.§+"§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§+#2§);
            this.§+"§ = null;
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
            this.§'!G§(_loc3_[1]);
         }
         var _loc4_:Array;
         if(_loc4_ = param1.match(/cutscenes.lua$/i))
         {
            this.§67§(param1);
         }
         var _loc5_:Array;
         if(_loc5_ = param1.match(/cutscene.swf$/i))
         {
            this.§%!>§(param1);
         }
         if(param1.toLowerCase() == "assetmap.xml")
         {
            this.§3$1§(param1);
         }
         if(param1.toLowerCase() == "episodes.json")
         {
            this.§'!I§(param1);
         }
         super.initializeFile(param1);
      }
      
      protected function initializeLevelFile(param1:String, param2:String) : void
      {
         if(!this.mLevelManager.getLevelForId(param1))
         {
            this.mLevelManager.addLevel(param1,§]#B§.§ #g§(§2#[§(param2)));
         }
      }
      
      protected function §'!I§(param1:String) : void
      {
         this.mLevelManager.§,#h§(JSON.parse(§2#[§(param1)));
      }
      
      private function §3$1§(param1:String) : void
      {
         var _loc3_:LoaderContext = null;
         ++§-#F§;
         var _loc2_:XML = new XML(§2#[§(param1));
         this.§5"A§.push(_loc2_);
         if(this.§5"A§.length == 1)
         {
            this.§+"§ = new Loader();
            this.§+"§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§+#2§);
            _loc3_ = new LoaderContext(false,ApplicationDomain.currentDomain);
            _loc3_.allowCodeImport = true;
            this.§+"§.loadBytes(§1#u§(_loc2_.Library.@swf),_loc3_);
         }
      }
      
      private function §+#2§(param1:Event) : void
      {
         this.§+"§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§+#2§);
         var _loc2_:XML = this.§5"A§.shift();
         if(this.§5"A§.length > 0)
         {
            this.§+"§ = new Loader();
            this.§+"§.contentLoaderInfo.addEventListener(Event.INIT,this.§+#2§);
            this.§+"§.loadBytes(§1#u§(this.§5"A§[0].Library.@swf),new LoaderContext(false,ApplicationDomain.currentDomain));
         }
         §@#7§();
      }
      
      private function §67§(param1:String) : void
      {
         var _loc2_:Object = §0#z§.§1!7§(§2#[§(param1));
         §>t§.§67§(_loc2_);
      }
      
      private function §%!>§(param1:String) : void
      {
         §>t§.§`!c§(§ "L§,§1#u§(param1,§ "L§));
      }
      
      protected function §'!G§(param1:String) : void
      {
         var id:String = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            ParticleManager.§`!p§(id,XML(§2#[§("particle_emitters/" + id + ".pex")),param1.bitmapData);
            §@#7§();
         };
         ++§-#F§;
         §,e§("particle_emitters/" + id + ".png",onComplete);
      }
   }
}
