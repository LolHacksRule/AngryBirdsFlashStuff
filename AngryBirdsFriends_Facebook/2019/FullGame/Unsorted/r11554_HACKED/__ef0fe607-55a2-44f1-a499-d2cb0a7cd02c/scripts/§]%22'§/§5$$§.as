package §]"'§
{
   import §"$=§.§'![§;
   import §"$=§.§=$&§;
   import §+#B§.§#k§;
   import §6Q§.§%!D§;
   import §9#o§.§5@§;
   import §@#;§.ParticleManager;
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   
   public class §5$$§ extends §5@§
   {
       
      
      protected var mLevelManager:§'![§;
      
      protected var §&![§:Loader;
      
      protected var §"!d§:Vector.<XML>;
      
      public function §5$$§(param1:§'![§)
      {
         this.§"!d§ = new Vector.<XML>();
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
         if(this.§&![§)
         {
            this.§&![§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§7!T§);
            this.§&![§ = null;
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
            this.§@E§(_loc3_[1]);
         }
         if(param1.match(/cutscenes.lua$/i))
         {
            this.§3#]§(param1);
         }
         if(param1.match(/cutscene.swf$/i))
         {
            this.§-#C§(param1);
         }
         if(param1.toLowerCase() == "assetmap.xml")
         {
            this.§'!&§(param1);
         }
         if(param1.toLowerCase() == "episodes.json")
         {
            this.§!2§(param1);
         }
         super.initializeFile(param1);
      }
      
      protected function initializeLevelFile(param1:String, param2:String) : void
      {
         if(!this.mLevelManager.getLevelForId(param1))
         {
            this.mLevelManager.addLevel(param1,§=$&§.§4g§(§&"P§(param2)));
         }
      }
      
      protected function §!2§(param1:String) : void
      {
         this.mLevelManager.§]!?§(JSON.parse(§&"P§(param1)));
      }
      
      private function §'!&§(param1:String) : void
      {
         var _loc3_:LoaderContext = null;
         ++§>$#§;
         var _loc2_:XML = new XML(§&"P§(param1));
         this.§"!d§.push(_loc2_);
         if(this.§"!d§.length == 1)
         {
            this.§&![§ = new Loader();
            this.§&![§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§7!T§);
            _loc3_ = new LoaderContext(false,ApplicationDomain.currentDomain);
            _loc3_.allowCodeImport = true;
            this.§&![§.loadBytes(§>#w§(_loc2_.Library.@swf),_loc3_);
         }
      }
      
      private function §7!T§(param1:Event) : void
      {
         this.§&![§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§7!T§);
         this.§"!d§.shift();
         if(this.§"!d§.length > 0)
         {
            this.§&![§ = new Loader();
            this.§&![§.contentLoaderInfo.addEventListener(Event.INIT,this.§7!T§);
            this.§&![§.loadBytes(§>#w§(this.§"!d§[0].Library.@swf),new LoaderContext(false,ApplicationDomain.currentDomain));
         }
         § E§();
      }
      
      private function §3#]§(param1:String) : void
      {
         var _loc2_:Object = §#k§.§?"m§(§&"P§(param1));
         §%!D§.§3#]§(_loc2_);
      }
      
      private function §-#C§(param1:String) : void
      {
         §%!D§.§]#Z§(§2$9§,§>#w§(param1,§2$9§));
      }
      
      protected function §@E§(param1:String) : void
      {
         var id:String = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            ParticleManager.§;"G§(id,XML(§&"P§("particle_emitters/" + id + ".pex")),param1.bitmapData);
            § E§();
         };
         ++§>$#§;
         §?9§("particle_emitters/" + id + ".png",onComplete);
      }
   }
}
