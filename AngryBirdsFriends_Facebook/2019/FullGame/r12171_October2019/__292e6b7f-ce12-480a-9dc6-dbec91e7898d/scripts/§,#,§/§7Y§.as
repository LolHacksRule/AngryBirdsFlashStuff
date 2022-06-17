package §,#,§
{
   import §#"4§.§%#F§;
   import §&?§.§!M§;
   import §7#$§.§?# §;
   import §7#$§.§]#q§;
   import §8$=§.§4#=§;
   import §]p§.ParticleManager;
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   
   public class §7Y§ extends §!M§
   {
       
      
      protected var mLevelManager:§]#q§;
      
      protected var §@$2§:Loader;
      
      protected var §^V§:Vector.<XML>;
      
      public function §7Y§(param1:§]#q§)
      {
         this.§^V§ = new Vector.<XML>();
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
         if(this.§@$2§)
         {
            this.§@$2§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§8!R§);
            this.§@$2§ = null;
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
            this.§!&§(_loc3_[1]);
         }
         var _loc4_:Array;
         if(_loc4_ = param1.match(/cutscenes.lua$/i))
         {
            this.§&#x§(param1);
         }
         var _loc5_:Array;
         if(_loc5_ = param1.match(/cutscene.swf$/i))
         {
            this.§73§(param1);
         }
         if(param1.toLowerCase() == "assetmap.xml")
         {
            this.§6!4§(param1);
         }
         if(param1.toLowerCase() == "episodes.json")
         {
            this.§[!O§(param1);
         }
         super.initializeFile(param1);
      }
      
      protected function initializeLevelFile(param1:String, param2:String) : void
      {
         if(!this.mLevelManager.getLevelForId(param1))
         {
            this.mLevelManager.addLevel(param1,§?# §.§^4§(§3"t§(param2)));
         }
      }
      
      protected function §[!O§(param1:String) : void
      {
         this.mLevelManager.§@!C§(JSON.parse(§3"t§(param1)));
      }
      
      private function §6!4§(param1:String) : void
      {
         var _loc3_:LoaderContext = null;
         ++§]#H§;
         var _loc2_:XML = new XML(§3"t§(param1));
         this.§^V§.push(_loc2_);
         if(this.§^V§.length == 1)
         {
            this.§@$2§ = new Loader();
            this.§@$2§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§8!R§);
            _loc3_ = new LoaderContext(false,ApplicationDomain.currentDomain);
            _loc3_.allowCodeImport = true;
            this.§@$2§.loadBytes(§9"V§(_loc2_.Library.@swf),_loc3_);
         }
      }
      
      private function §8!R§(param1:Event) : void
      {
         this.§@$2§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§8!R§);
         var _loc2_:XML = this.§^V§.shift();
         if(this.§^V§.length > 0)
         {
            this.§@$2§ = new Loader();
            this.§@$2§.contentLoaderInfo.addEventListener(Event.INIT,this.§8!R§);
            this.§@$2§.loadBytes(§9"V§(this.§^V§[0].Library.@swf),new LoaderContext(false,ApplicationDomain.currentDomain));
         }
         §>"`§();
      }
      
      private function §&#x§(param1:String) : void
      {
         var _loc2_:Object = §%#F§.§@"b§(§3"t§(param1));
         §4#=§.§&#x§(_loc2_);
      }
      
      private function §73§(param1:String) : void
      {
         §4#=§.§1N§(§!""§,§9"V§(param1,§!""§));
      }
      
      protected function §!&§(param1:String) : void
      {
         var id:String = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            ParticleManager.§'#;§(id,XML(§3"t§("particle_emitters/" + id + ".pex")),param1.bitmapData);
            §>"`§();
         };
         ++§]#H§;
         §^!5§("particle_emitters/" + id + ".png",onComplete);
      }
   }
}
