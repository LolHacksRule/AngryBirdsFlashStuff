package §1![§
{
   import §"!w§.§[,§;
   import §#!q§.§!%§;
   import §%!B§.§0![§;
   import §%!B§.§5L§;
   import §4!i§.§4!S§;
   import §<!0§.§-k§;
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   
   [SecureSWF(codeWrap="max",rename="true",statementLevel="true",controlFlow="100")]
   public class §-"5§ extends §[,§
   {
       
      
      protected var §4a§:§0![§;
      
      protected var §8!N§:Loader;
      
      protected var §+"4§:Vector.<XML>;
      
      public function §-"5§(param1:§0![§)
      {
         this.§+"4§ = new Vector.<XML>();
         super();
         this.§4a§ = param1;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         this.§4a§ = null;
      }
      
      override protected function clear() : void
      {
         super.clear();
         if(this.§8!N§)
         {
            this.§8!N§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§-[§);
            this.§8!N§ = null;
         }
      }
      
      override protected function initializeFile(param1:String) : void
      {
         var _loc6_:String = null;
         var _loc2_:Array = param1.match(/^levels\/(.*)\.json$/i);
         if(_loc2_)
         {
            _loc6_ = _loc2_[1].toLowerCase().substr("level".length);
            this.§9_§(_loc6_,param1);
         }
         var _loc3_:Array = param1.match(/^particle_emitters\/(.*)\.pex$/i);
         if(_loc3_)
         {
            this.§7!z§(_loc3_[1]);
         }
         var _loc4_:Array;
         if(_loc4_ = param1.match(/cutscenes.lua$/i))
         {
            this.§5" §(param1);
         }
         var _loc5_:Array;
         if(_loc5_ = param1.match(/cutscene.swf$/i))
         {
            this.§^!P§(param1);
         }
         if(param1.toLowerCase() == "assetmap.xml")
         {
            this.§@s§(param1);
         }
         if(param1.toLowerCase() == "episodes.json")
         {
            this.§,I§(param1);
         }
         super.initializeFile(param1);
      }
      
      protected function §9_§(param1:String, param2:String) : void
      {
         if(!this.§4a§.getLevelForId(param1))
         {
            this.§4a§.§`!E§(param1,§5L§.§""4§(§5"-§(param2)));
         }
      }
      
      protected function §,I§(param1:String) : void
      {
         this.§4a§.§5l§(JSON.parse(§5"-§(param1)));
      }
      
      private function §@s§(param1:String) : void
      {
         ++§4c§;
         var _loc2_:XML = new XML(§5"-§(param1));
         this.§+"4§.push(_loc2_);
         if(this.§+"4§.length == 1)
         {
            this.§8!N§ = new Loader();
            this.§8!N§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§-[§);
            this.§8!N§.loadBytes(§!!>§(_loc2_.Library.@swf),new LoaderContext(false,ApplicationDomain.currentDomain));
         }
      }
      
      private function §-[§(param1:Event) : void
      {
         this.§8!N§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§-[§);
         var _loc2_:XML = this.§+"4§.shift();
         if(this.§+"4§.length > 0)
         {
            this.§8!N§ = new Loader();
            this.§8!N§.contentLoaderInfo.addEventListener(Event.INIT,this.§-[§);
            this.§8!N§.loadBytes(§!!>§(this.§+"4§[0].Library.@swf),new LoaderContext(false,ApplicationDomain.currentDomain));
         }
         §,5§();
      }
      
      private function §5" §(param1:String) : void
      {
         var _loc2_:Object = §4!S§.§+!5§(§5"-§(param1));
         §-k§.§5" §(_loc2_);
      }
      
      private function §^!P§(param1:String) : void
      {
         §-k§.§9!9§(§"u§,§!!>§(param1,§"u§));
      }
      
      protected function §7!z§(param1:String) : void
      {
         var id:String = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            §!%§.§2!q§(id,XML(§5"-§("particle_emitters/" + id + ".pex")),param1.bitmapData);
            §,5§();
         };
         ++§4c§;
         §,D§("particle_emitters/" + id + ".png",onComplete);
      }
   }
}
