package §#!n§
{
   import §"",§.§<!V§;
   import §%f§.§2!'§;
   import §5!P§.§9"7§;
   import §5h§.§[!;§;
   import §8!e§.§!!E§;
   import §8!e§.§3"&§;
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   
   [SecureSWF(codeWrap="max",rename="true",statementLevel="true",controlFlow="100")]
   public class §+"3§ extends §[!;§
   {
       
      
      protected var §!3§:§3"&§;
      
      protected var §!!=§:Loader;
      
      protected var §;"3§:Vector.<XML>;
      
      public function §+"3§(param1:§3"&§)
      {
         this.§;"3§ = new Vector.<XML>();
         super();
         this.§!3§ = param1;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         this.§!3§ = null;
      }
      
      override protected function clear() : void
      {
         super.clear();
         if(this.§!!=§)
         {
            this.§!!=§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§#K§);
            this.§!!=§ = null;
         }
      }
      
      override protected function initializeFile(param1:String) : void
      {
         var _loc6_:String = null;
         var _loc2_:Array = param1.match(/^levels\/(.*)\.json$/i);
         if(_loc2_)
         {
            _loc6_ = _loc2_[1].toLowerCase().substr("level".length);
            this.§-!I§(_loc6_,param1);
         }
         var _loc3_:Array = param1.match(/^particle_emitters\/(.*)\.pex$/i);
         if(_loc3_)
         {
            this.§9!g§(_loc3_[1]);
         }
         var _loc4_:Array;
         if(_loc4_ = param1.match(/cutscenes.lua$/i))
         {
            this.§'!H§(param1);
         }
         var _loc5_:Array;
         if(_loc5_ = param1.match(/cutscene.swf$/i))
         {
            this.§@f§(param1);
         }
         if(param1.toLowerCase() == "assetmap.xml")
         {
            this.§ "6§(param1);
         }
         if(param1.toLowerCase() == "episodes.json")
         {
            this.§6!m§(param1);
         }
         super.initializeFile(param1);
      }
      
      protected function §-!I§(param1:String, param2:String) : void
      {
         if(!this.§!3§.getLevelForId(param1))
         {
            this.§!3§.§#!J§(param1,§!!E§.§`"0§(§&Z§(param2)));
         }
      }
      
      protected function §6!m§(param1:String) : void
      {
         this.§!3§.§6<§(JSON.parse(§&Z§(param1)));
      }
      
      private function § "6§(param1:String) : void
      {
         ++§`!o§;
         var _loc2_:XML = new XML(§&Z§(param1));
         this.§;"3§.push(_loc2_);
         if(this.§;"3§.length == 1)
         {
            this.§!!=§ = new Loader();
            this.§!!=§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§#K§);
            this.§!!=§.loadBytes(§"!H§(_loc2_.Library.@swf),new LoaderContext(false,ApplicationDomain.currentDomain));
         }
      }
      
      private function §#K§(param1:Event) : void
      {
         this.§!!=§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§#K§);
         var _loc2_:XML = this.§;"3§.shift();
         if(this.§;"3§.length > 0)
         {
            this.§!!=§ = new Loader();
            this.§!!=§.contentLoaderInfo.addEventListener(Event.INIT,this.§#K§);
            this.§!!=§.loadBytes(§"!H§(this.§;"3§[0].Library.@swf),new LoaderContext(false,ApplicationDomain.currentDomain));
         }
         §<!e§();
      }
      
      private function §'!H§(param1:String) : void
      {
         var _loc2_:Object = §2!'§.§?!i§(§&Z§(param1));
         §<!V§.§'!H§(_loc2_);
      }
      
      private function §@f§(param1:String) : void
      {
         §<!V§.§!!%§(§'!o§,§"!H§(param1,§'!o§));
      }
      
      protected function §9!g§(param1:String) : void
      {
         var id:String = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            §9"7§.§&+§(id,XML(§&Z§("particle_emitters/" + id + ".pex")),param1.bitmapData);
            §<!e§();
         };
         ++§`!o§;
         §?!t§("particle_emitters/" + id + ".png",onComplete);
      }
   }
}
