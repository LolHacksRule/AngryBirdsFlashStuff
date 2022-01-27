package §9"U§
{
   import §+"I§.§90§;
   import §+d§.§^!Y§;
   import §9##§.§`"0§;
   import §@[§.§<!+§;
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import §null §.§5#§;
   import §null §.§>#-§;
   
   [SecureSWF(codeWrap="max",rename="true",statementLevel="true",controlFlow="100")]
   public class §9U§ extends §<!+§
   {
       
      
      protected var §'""§:§5#§;
      
      protected var §&K§:Loader;
      
      protected var §2" §:Vector.<XML>;
      
      public function §9U§(param1:§5#§)
      {
         this.§2" § = new Vector.<XML>();
         super();
         this.§'""§ = param1;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         this.§'""§ = null;
      }
      
      override protected function clear() : void
      {
         super.clear();
         if(this.§&K§)
         {
            this.§&K§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§]!Q§);
            this.§&K§ = null;
         }
      }
      
      override protected function initializeFile(param1:String) : void
      {
         var _loc6_:String = null;
         var _loc2_:Array = param1.match(/^levels\/(.*)\.json$/i);
         if(_loc2_)
         {
            _loc6_ = _loc2_[1].toLowerCase().substr("level".length);
            this.§3">§(_loc6_,param1);
         }
         var _loc3_:Array = param1.match(/^particle_emitters\/(.*)\.pex$/i);
         if(_loc3_)
         {
            this.§3V§(_loc3_[1]);
         }
         var _loc4_:Array;
         if(_loc4_ = param1.match(/cutscenes.lua$/i))
         {
            this.§`I§(param1);
         }
         var _loc5_:Array;
         if(_loc5_ = param1.match(/cutscene.swf$/i))
         {
            this.§,!l§(param1);
         }
         if(param1.toLowerCase() == "assetmap.xml")
         {
            this.§<!<§(param1);
         }
         if(param1.toLowerCase() == "episodes.json")
         {
            this.§6"e§(param1);
         }
         super.initializeFile(param1);
      }
      
      protected function §3">§(param1:String, param2:String) : void
      {
         if(!this.§'""§.getLevelForId(param1))
         {
            this.§'""§.addLevel(param1,§>#-§.§'"R§(§,!;§(param2)));
         }
      }
      
      protected function §6"e§(param1:String) : void
      {
         this.§'""§.§^!M§(JSON.parse(§,!;§(param1)));
      }
      
      private function §<!<§(param1:String) : void
      {
         ++§!"O§;
         var _loc2_:XML = new XML(§,!;§(param1));
         this.§2" §.push(_loc2_);
         if(this.§2" §.length == 1)
         {
            this.§&K§ = new Loader();
            this.§&K§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§]!Q§);
            this.§&K§.loadBytes(§]"W§(_loc2_.Library.@swf),new LoaderContext(false,ApplicationDomain.currentDomain));
         }
      }
      
      private function §]!Q§(param1:Event) : void
      {
         this.§&K§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§]!Q§);
         var _loc2_:XML = this.§2" §.shift();
         if(this.§2" §.length > 0)
         {
            this.§&K§ = new Loader();
            this.§&K§.contentLoaderInfo.addEventListener(Event.INIT,this.§]!Q§);
            this.§&K§.loadBytes(§]"W§(this.§2" §[0].Library.@swf),new LoaderContext(false,ApplicationDomain.currentDomain));
         }
         §=!&§();
      }
      
      private function §`I§(param1:String) : void
      {
         var _loc2_:Object = §^!Y§.§&S§(§,!;§(param1));
         §90§.§`I§(_loc2_);
      }
      
      private function §,!l§(param1:String) : void
      {
         §90§.§["I§(§2#4§,§]"W§(param1,§2#4§));
      }
      
      protected function §3V§(param1:String) : void
      {
         var id:String = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            §`"0§.§<!6§(id,XML(§,!;§("particle_emitters/" + id + ".pex")),param1.bitmapData);
            §=!&§();
         };
         ++§!"O§;
         §>I§("particle_emitters/" + id + ".png",onComplete);
      }
   }
}
