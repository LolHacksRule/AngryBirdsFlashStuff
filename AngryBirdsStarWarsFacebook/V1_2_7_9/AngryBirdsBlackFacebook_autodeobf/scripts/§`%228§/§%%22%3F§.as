package §`"8§
{
   import §!"N§.§>"]§;
   import §,#+§.§7!m§;
   import §,#+§.§<U§;
   import §1"M§.§;!q§;
   import §3"8§.§@0§;
   import §7A§.§7!a§;
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   
   [SecureSWF(codeWrap="max",rename="true",statementLevel="true",controlFlow="100")]
   public class §%"?§ extends §>"]§
   {
       
      
      protected var § !p§:§7!m§;
      
      protected var §`!E§:Loader;
      
      protected var §[!B§:Vector.<XML>;
      
      public function §%"?§(param1:§7!m§)
      {
         this.§[!B§ = new Vector.<XML>();
         super();
         this.§ !p§ = param1;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         this.§ !p§ = null;
      }
      
      override protected function clear() : void
      {
         super.clear();
         if(this.§`!E§)
         {
            this.§`!E§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§?"'§);
            this.§`!E§ = null;
         }
      }
      
      override protected function initializeFile(param1:String) : void
      {
         var _loc6_:String = null;
         var _loc2_:Array = param1.match(/^levels\/(.*)\.json$/i);
         if(_loc2_)
         {
            _loc6_ = _loc2_[1].toLowerCase().substr("level".length);
            this.§3"5§(_loc6_,param1);
         }
         var _loc3_:Array = param1.match(/^particle_emitters\/(.*)\.pex$/i);
         if(_loc3_)
         {
            this.§0!v§(_loc3_[1]);
         }
         var _loc4_:Array;
         if(_loc4_ = param1.match(/cutscenes.lua$/i))
         {
            this.§?"Y§(param1);
         }
         var _loc5_:Array;
         if(_loc5_ = param1.match(/cutscene.swf$/i))
         {
            this.§7"d§(param1);
         }
         if(param1.toLowerCase() == "assetmap.xml")
         {
            this.§?"^§(param1);
         }
         if(param1.toLowerCase() == "episodes.json")
         {
            this.§9#3§(param1);
         }
         super.initializeFile(param1);
      }
      
      protected function §3"5§(param1:String, param2:String) : void
      {
         if(!this.§ !p§.getLevelForId(param1))
         {
            this.§ !p§.addLevel(param1,§<U§.§ !d§(§@I§(param2)));
         }
      }
      
      protected function §9#3§(param1:String) : void
      {
         this.§ !p§.§["$§(JSON.parse(§@I§(param1)));
      }
      
      private function §?"^§(param1:String) : void
      {
         ++§"!Q§;
         var _loc2_:XML = new XML(§@I§(param1));
         this.§[!B§.push(_loc2_);
         if(this.§[!B§.length == 1)
         {
            this.§`!E§ = new Loader();
            this.§`!E§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§?"'§);
            this.§`!E§.loadBytes(§+t§(_loc2_.Library.@swf),new LoaderContext(false,ApplicationDomain.currentDomain));
         }
      }
      
      private function §?"'§(param1:Event) : void
      {
         this.§`!E§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§?"'§);
         var _loc2_:XML = this.§[!B§.shift();
         if(this.§[!B§.length > 0)
         {
            this.§`!E§ = new Loader();
            this.§`!E§.contentLoaderInfo.addEventListener(Event.INIT,this.§?"'§);
            this.§`!E§.loadBytes(§+t§(this.§[!B§[0].Library.@swf),new LoaderContext(false,ApplicationDomain.currentDomain));
         }
         §?7§();
      }
      
      private function §?"Y§(param1:String) : void
      {
         var _loc2_:Object = §7!a§.§[!V§(§@I§(param1));
         §@0§.§?"Y§(_loc2_);
      }
      
      private function §7"d§(param1:String) : void
      {
         §@0§.§`7§(§[J§,§+t§(param1,§[J§));
      }
      
      protected function §0!v§(param1:String) : void
      {
         var id:String = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            §;!q§.§4!^§(id,XML(§@I§("particle_emitters/" + id + ".pex")),param1.bitmapData);
            §?7§();
         };
         ++§"!Q§;
         §7! §("particle_emitters/" + id + ".png",onComplete);
      }
   }
}
