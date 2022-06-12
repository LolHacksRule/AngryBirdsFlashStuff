package §!#C§
{
   import §&!_§.§01§;
   import §,"v§.§7!J§;
   import §,"v§.§;"n§;
   import §-u§.§0"E§;
   import §<1§.ParticleManager;
   import §`"0§.§%#B§;
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   
   public class §^!z§ extends §0"E§
   {
       
      
      protected var mLevelManager:§;"n§;
      
      protected var §2!N§:Loader;
      
      protected var §]!u§:Vector.<XML>;
      
      public function §^!z§(param1:§;"n§)
      {
         this.§]!u§ = new Vector.<XML>();
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
         if(this.§2!N§)
         {
            this.§2!N§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§&$"§);
            this.§2!N§ = null;
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
            this.§7#`§(_loc3_[1]);
         }
         var _loc4_:Array;
         if(_loc4_ = param1.match(/cutscenes.lua$/i))
         {
            this.§>!S§(param1);
         }
         var _loc5_:Array;
         if(_loc5_ = param1.match(/cutscene.swf$/i))
         {
            this.§""Y§(param1);
         }
         if(param1.toLowerCase() == "assetmap.xml")
         {
            this.§=!Y§(param1);
         }
         if(param1.toLowerCase() == "episodes.json")
         {
            this.§>!J§(param1);
         }
         super.initializeFile(param1);
      }
      
      protected function initializeLevelFile(param1:String, param2:String) : void
      {
         if(!this.mLevelManager.getLevelForId(param1))
         {
            this.mLevelManager.addLevel(param1,§7!J§.§4#§(§;-§(param2)));
         }
      }
      
      protected function §>!J§(param1:String) : void
      {
         this.mLevelManager.§["A§(JSON.parse(§;-§(param1)));
      }
      
      private function §=!Y§(param1:String) : void
      {
         var _loc3_:LoaderContext = null;
         ++§'"4§;
         var _loc2_:XML = new XML(§;-§(param1));
         this.§]!u§.push(_loc2_);
         if(this.§]!u§.length == 1)
         {
            this.§2!N§ = new Loader();
            this.§2!N§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§&$"§);
            _loc3_ = new LoaderContext(false,ApplicationDomain.currentDomain);
            _loc3_.allowCodeImport = true;
            this.§2!N§.loadBytes(§1!I§(_loc2_.Library.@swf),_loc3_);
         }
      }
      
      private function §&$"§(param1:Event) : void
      {
         this.§2!N§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§&$"§);
         var _loc2_:XML = this.§]!u§.shift();
         if(this.§]!u§.length > 0)
         {
            this.§2!N§ = new Loader();
            this.§2!N§.contentLoaderInfo.addEventListener(Event.INIT,this.§&$"§);
            this.§2!N§.loadBytes(§1!I§(this.§]!u§[0].Library.@swf),new LoaderContext(false,ApplicationDomain.currentDomain));
         }
         §%m§();
      }
      
      private function §>!S§(param1:String) : void
      {
         var _loc2_:Object = §01§.§4$>§(§;-§(param1));
         §%#B§.§>!S§(_loc2_);
      }
      
      private function §""Y§(param1:String) : void
      {
         §%#B§.§@#4§(§5"]§,§1!I§(param1,§5"]§));
      }
      
      protected function §7#`§(param1:String) : void
      {
         var id:String = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            ParticleManager.§9"O§(id,XML(§;-§("particle_emitters/" + id + ".pex")),param1.bitmapData);
            §%m§();
         };
         ++§'"4§;
         §-"X§("particle_emitters/" + id + ".png",onComplete);
      }
   }
}
