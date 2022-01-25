package §?u§
{
   import § !$§.§75§;
   import §<v§.§0!k§;
   import §]!]§.§<1§;
   import §`!s§.§ D§;
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   
   [SecureSWF(codeWrap="max",rename="true",statementLevel="true",controlFlow="100")]
   public class §6!R§ extends §0!k§
   {
       
      
      protected var §#n§:§-g§;
      
      protected var §2!Z§:Loader;
      
      protected var §3!u§:Vector.<XML>;
      
      public function §6!R§(param1:§-g§)
      {
         this.§3!u§ = new Vector.<XML>();
         super();
         this.§#n§ = param1;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         this.§#n§ = null;
      }
      
      override protected function clear() : void
      {
         super.clear();
         if(this.§2!Z§)
         {
            this.§2!Z§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§var §);
            this.§2!Z§ = null;
         }
      }
      
      override protected function initializeFile(param1:String) : void
      {
         var _loc6_:String = null;
         var _loc2_:Array = param1.match(/^levels\/(.*)\.json$/i);
         if(_loc2_)
         {
            _loc6_ = _loc2_[1].toLowerCase().substr("level".length);
            this.§?G§(_loc6_,param1);
         }
         var _loc3_:Array = param1.match(/^particle_emitters\/(.*)\.pex$/i);
         if(_loc3_)
         {
            this.§&!U§(_loc3_[1]);
         }
         var _loc4_:Array;
         if(_loc4_ = param1.match(/cutscenes.lua$/i))
         {
            this.§6;§(param1);
         }
         var _loc5_:Array;
         if(_loc5_ = param1.match(/cutscene.swf$/i))
         {
            this.§0a§(param1);
         }
         if(param1.toLowerCase() == "assetmap.xml")
         {
            this.§"!V§(param1);
         }
         if(param1.toLowerCase() == "episodes.json")
         {
            this.§@!>§(param1);
         }
         super.initializeFile(param1);
      }
      
      protected function §?G§(param1:String, param2:String) : void
      {
         if(!this.§#n§.getLevelForId(param1))
         {
            this.§#n§.§'n§(param1,§[d§.§!!i§(§2!S§(param2)));
         }
      }
      
      protected function §@!>§(param1:String) : void
      {
         this.§#n§.§8G§(JSON.parse(§2!S§(param1)));
      }
      
      private function §"!V§(param1:String) : void
      {
         ++§"!a§;
         var _loc2_:XML = new XML(§2!S§(param1));
         this.§3!u§.push(_loc2_);
         if(this.§3!u§.length == 1)
         {
            this.§2!Z§ = new Loader();
            this.§2!Z§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§var §);
            this.§2!Z§.loadBytes(§`!@§(_loc2_.Library.@swf),new LoaderContext(false,ApplicationDomain.currentDomain));
         }
      }
      
      private function §var §(param1:Event) : void
      {
         this.§2!Z§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§var §);
         var _loc2_:XML = this.§3!u§.shift();
         if(this.§3!u§.length > 0)
         {
            this.§2!Z§ = new Loader();
            this.§2!Z§.contentLoaderInfo.addEventListener(Event.INIT,this.§var §);
            this.§2!Z§.loadBytes(§`!@§(this.§3!u§[0].Library.@swf),new LoaderContext(false,ApplicationDomain.currentDomain));
         }
         §`!L§();
      }
      
      private function §6;§(param1:String) : void
      {
         var _loc2_:Object = § D§.§2<§(§2!S§(param1));
         §<1§.§6;§(_loc2_);
      }
      
      private function §0a§(param1:String) : void
      {
         §<1§.§'m§(§8d§,§`!@§(param1,§8d§));
      }
      
      protected function §&!U§(param1:String) : void
      {
         var id:String = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            §75§.§+!x§(id,XML(§2!S§("particle_emitters/" + id + ".pex")),param1.bitmapData);
            §`!L§();
         };
         ++§"!a§;
         §5"1§("particle_emitters/" + id + ".png",onComplete);
      }
   }
}
