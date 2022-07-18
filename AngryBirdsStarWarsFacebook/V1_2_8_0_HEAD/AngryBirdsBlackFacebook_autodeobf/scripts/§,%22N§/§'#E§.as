package §,"N§
{
   import §%R§.§@"F§;
   import §1!i§.§7#&§;
   import §1#M§.§'!]§;
   import §2"a§.§9#L§;
   import §?m§.§+"2§;
   import §?m§.§8!B§;
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   
   [SecureSWF(codeWrap="max",rename="true",statementLevel="true",controlFlow="100")]
   public class §'#E§ extends §@"F§
   {
       
      
      protected var §+!b§:§+"2§;
      
      protected var §9v§:Loader;
      
      protected var §<!0§:Vector.<XML>;
      
      public function §'#E§(param1:§+"2§)
      {
         this.§<!0§ = new Vector.<XML>();
         super();
         this.§+!b§ = param1;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         this.§+!b§ = null;
      }
      
      override protected function clear() : void
      {
         super.clear();
         if(this.§9v§)
         {
            this.§9v§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§0"y§);
            this.§9v§ = null;
         }
      }
      
      override protected function initializeFile(param1:String) : void
      {
         var _loc6_:String = null;
         var _loc2_:Array = param1.match(/^levels\/(.*)\.json$/i);
         if(_loc2_)
         {
            _loc6_ = _loc2_[1].toLowerCase().substr("level".length);
            this.§ var§(_loc6_,param1);
         }
         var _loc3_:Array = param1.match(/^particle_emitters\/(.*)\.pex$/i);
         if(_loc3_)
         {
            this.§="W§(_loc3_[1]);
         }
         var _loc4_:Array;
         if(_loc4_ = param1.match(/cutscenes.lua$/i))
         {
            this.§0"U§(param1);
         }
         var _loc5_:Array;
         if(_loc5_ = param1.match(/cutscene.swf$/i))
         {
            this.§"^§(param1);
         }
         if(param1.toLowerCase() == "assetmap.xml")
         {
            this.§]#F§(param1);
         }
         if(param1.toLowerCase() == "episodes.json")
         {
            this.§^";§(param1);
         }
         super.initializeFile(param1);
      }
      
      protected function § var§(param1:String, param2:String) : void
      {
         if(!this.§+!b§.getLevelForId(param1))
         {
            this.§+!b§.addLevel(param1,§8!B§.§]c§(§^k§(param2)));
         }
      }
      
      protected function §^";§(param1:String) : void
      {
         this.§+!b§.§9!M§(JSON.parse(§^k§(param1)));
      }
      
      private function §]#F§(param1:String) : void
      {
         ++§5c§;
         var _loc2_:XML = new XML(§^k§(param1));
         this.§<!0§.push(_loc2_);
         if(this.§<!0§.length == 1)
         {
            this.§9v§ = new Loader();
            this.§9v§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§0"y§);
            this.§9v§.loadBytes(§2h§(_loc2_.Library.@swf),new LoaderContext(false,ApplicationDomain.currentDomain));
         }
      }
      
      private function §0"y§(param1:Event) : void
      {
         this.§9v§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§0"y§);
         var _loc2_:XML = this.§<!0§.shift();
         if(this.§<!0§.length > 0)
         {
            this.§9v§ = new Loader();
            this.§9v§.contentLoaderInfo.addEventListener(Event.INIT,this.§0"y§);
            this.§9v§.loadBytes(§2h§(this.§<!0§[0].Library.@swf),new LoaderContext(false,ApplicationDomain.currentDomain));
         }
         §5"V§();
      }
      
      private function §0"U§(param1:String) : void
      {
         var _loc2_:Object = §7#&§.§06§(§^k§(param1));
         §9#L§.§0"U§(_loc2_);
      }
      
      private function §"^§(param1:String) : void
      {
         §9#L§.§7!g§(§5"O§,§2h§(param1,§5"O§));
      }
      
      protected function §="W§(param1:String) : void
      {
         var id:String = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            §'!]§.§6"1§(id,XML(§^k§("particle_emitters/" + id + ".pex")),param1.bitmapData);
            §5"V§();
         };
         ++§5c§;
         §<F§("particle_emitters/" + id + ".png",onComplete);
      }
   }
}
