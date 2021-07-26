package §%$!§
{
   import §#v§.§#!?§;
   import §#v§.§-"R§;
   import §-#z§.§0#p§;
   import §2"5§.ParticleManager;
   import §3!a§.§["b§;
   import §>!#§.§1""§;
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   
   public class §2#§ extends §0#p§
   {
       
      
      protected var mLevelManager:§#!?§;
      
      protected var § each§:Loader;
      
      protected var §6"s§:Vector.<XML>;
      
      public function §2#§(param1:§#!?§)
      {
         this.§6"s§ = new Vector.<XML>();
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
         if(this.§ each§)
         {
            this.§ each§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§]"s§);
            this.§ each§ = null;
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
            this.§@!9§(_loc3_[1]);
         }
         if(param1.match(/cutscenes.lua$/i))
         {
            this.§]5§(param1);
         }
         if(param1.match(/cutscene.swf$/i))
         {
            this.§2"H§(param1);
         }
         if(param1.toLowerCase() == "assetmap.xml")
         {
            this.§^Q§(param1);
         }
         if(param1.toLowerCase() == "episodes.json")
         {
            this.§6!$§(param1);
         }
         super.initializeFile(param1);
      }
      
      protected function initializeLevelFile(param1:String, param2:String) : void
      {
         if(!this.mLevelManager.getLevelForId(param1))
         {
            this.mLevelManager.addLevel(param1,§-"R§.§7#r§(§+$$§(param2)));
         }
      }
      
      protected function §6!$§(param1:String) : void
      {
         this.mLevelManager.§>O§(JSON.parse(§+$$§(param1)));
      }
      
      private function §^Q§(param1:String) : void
      {
         var _loc3_:LoaderContext = null;
         ++§^#u§;
         var _loc2_:XML = new XML(§+$$§(param1));
         this.§6"s§.push(_loc2_);
         if(this.§6"s§.length == 1)
         {
            this.§ each§ = new Loader();
            this.§ each§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§]"s§);
            _loc3_ = new LoaderContext(false,ApplicationDomain.currentDomain);
            _loc3_.allowCodeImport = true;
            this.§ each§.loadBytes(§>"C§(_loc2_.Library.@swf),_loc3_);
         }
      }
      
      private function §]"s§(param1:Event) : void
      {
         this.§ each§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§]"s§);
         this.§6"s§.shift();
         if(this.§6"s§.length > 0)
         {
            this.§ each§ = new Loader();
            this.§ each§.contentLoaderInfo.addEventListener(Event.INIT,this.§]"s§);
            this.§ each§.loadBytes(§>"C§(this.§6"s§[0].Library.@swf),new LoaderContext(false,ApplicationDomain.currentDomain));
         }
         §^v§();
      }
      
      private function §]5§(param1:String) : void
      {
         var _loc2_:Object = §1""§.§]!e§(§+$$§(param1));
         §["b§.§]5§(_loc2_);
      }
      
      private function §2"H§(param1:String) : void
      {
         §["b§.§?!J§(§5"i§,§>"C§(param1,§5"i§));
      }
      
      protected function §@!9§(param1:String) : void
      {
         var id:String = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            ParticleManager.§1!-§(id,XML(§+$$§("particle_emitters/" + id + ".pex")),param1.bitmapData);
            §^v§();
         };
         ++§^#u§;
         §3"j§("particle_emitters/" + id + ".png",onComplete);
      }
   }
}
