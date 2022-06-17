package §>#Y§
{
   import §%#^§.§""P§;
   import §+_§.§^"Q§;
   import §2E§.§6h§;
   import §?o§.§ ^§;
   import §?o§.§4#?§;
   import §`$,§.ParticleManager;
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   
   public class §"1§ extends §""P§
   {
       
      
      protected var mLevelManager:§4#?§;
      
      protected var §<#G§:Loader;
      
      protected var §9$9§:Vector.<XML>;
      
      public function §"1§(param1:§4#?§)
      {
         this.§9$9§ = new Vector.<XML>();
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
         if(this.§<#G§)
         {
            this.§<#G§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§?!q§);
            this.§<#G§ = null;
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
            this.§7! §(_loc3_[1]);
         }
         if(param1.match(/cutscenes.lua$/i))
         {
            this.§1#_§(param1);
         }
         if(param1.match(/cutscene.swf$/i))
         {
            this.§2!L§(param1);
         }
         if(param1.toLowerCase() == "assetmap.xml")
         {
            this.§3,§(param1);
         }
         if(param1.toLowerCase() == "episodes.json")
         {
            this.§9#_§(param1);
         }
         super.initializeFile(param1);
      }
      
      protected function initializeLevelFile(param1:String, param2:String) : void
      {
         if(!this.mLevelManager.getLevelForId(param1))
         {
            this.mLevelManager.addLevel(param1,§ ^§.§7m§(§+2§(param2)));
         }
      }
      
      protected function §9#_§(param1:String) : void
      {
         this.mLevelManager.§02§(JSON.parse(§+2§(param1)));
      }
      
      private function §3,§(param1:String) : void
      {
         var _loc3_:LoaderContext = null;
         ++§-1§;
         var _loc2_:XML = new XML(§+2§(param1));
         this.§9$9§.push(_loc2_);
         if(this.§9$9§.length == 1)
         {
            this.§<#G§ = new Loader();
            this.§<#G§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§?!q§);
            _loc3_ = new LoaderContext(false,ApplicationDomain.currentDomain);
            _loc3_.allowCodeImport = true;
            this.§<#G§.loadBytes(§`!X§(_loc2_.Library.@swf),_loc3_);
         }
      }
      
      private function §?!q§(param1:Event) : void
      {
         this.§<#G§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§?!q§);
         this.§9$9§.shift();
         if(this.§9$9§.length > 0)
         {
            this.§<#G§ = new Loader();
            this.§<#G§.contentLoaderInfo.addEventListener(Event.INIT,this.§?!q§);
            this.§<#G§.loadBytes(§`!X§(this.§9$9§[0].Library.@swf),new LoaderContext(false,ApplicationDomain.currentDomain));
         }
         §<$A§();
      }
      
      private function §1#_§(param1:String) : void
      {
         var _loc2_:Object = §6h§.§<#E§(§+2§(param1));
         §^"Q§.§1#_§(_loc2_);
      }
      
      private function §2!L§(param1:String) : void
      {
         §^"Q§.§&!c§(§4!L§,§`!X§(param1,§4!L§));
      }
      
      protected function §7! §(param1:String) : void
      {
         var id:String = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            ParticleManager.§;l§(id,XML(§+2§("particle_emitters/" + id + ".pex")),param1.bitmapData);
            §<$A§();
         };
         ++§-1§;
         §7#"§("particle_emitters/" + id + ".png",onComplete);
      }
   }
}
