package §1Q§
{
   import §!!a§.§8=§;
   import §!!a§.§9G§;
   import §''§.§3!$§;
   import §24§.§!!H§;
   import §24§.§0!P§;
   import §24§.§1!]§;
   import §24§.§5!,§;
   import §24§.§[!?§;
   import §7'§.§"E§;
   import §7'§.§,!'§;
   import §8r§.§5Q§;
   import §<c§.§4!9§;
   import §>P§.§!]§;
   import §>P§.§'I§;
   import §>P§.§+m§;
   import §?!Y§.§#G§;
   import §?!Y§.§1K§;
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.system.LoaderContext;
   import flash.utils.ByteArray;
   
   public class §`![§ extends EventDispatcher implements §,!'§
   {
       
      
      protected var §,#§:int;
      
      protected var §;!A§:Object;
      
      protected var §]O§:int = 0;
      
      protected var §3!R§:§!!H§;
      
      protected var §,!W§:Vector.<XML>;
      
      protected var §[K§:Loader;
      
      public function §`![§()
      {
         this.§;!A§ = {};
         this.§,!W§ = new Vector.<XML>();
         super();
         this.§3!R§ = new §!!H§();
      }
      
      public function get §^!P§() : §5!,§
      {
         return this.§3!R§;
      }
      
      public function get §<V§() : Boolean
      {
         return this.§]O§ == 0;
      }
      
      public function dispose() : void
      {
         this.§3!R§.dispose();
      }
      
      public function getFileAsString(param1:String) : String
      {
         return (this.§;!A§[param1] as §1K§).§>!$§(false);
      }
      
      public function §^U§(param1:String) : ByteArray
      {
         return (this.§;!A§[param1] as §1K§).content;
      }
      
      public function §&!;§(param1:String, param2:Function) : void
      {
         return §+m§.§+!J§(this.§^U§(param1),param2);
      }
      
      public function §[_§(param1:ByteArray, param2:Boolean = true) : void
      {
         var _loc6_:§1K§ = null;
         if(param2)
         {
            this.§0!N§(param1);
         }
         var _loc3_:§#G§ = new §#G§();
         _loc3_.loadBytes(param1);
         var _loc4_:Object = {};
         var _loc5_:int = _loc3_.§!f§() - 1;
         while(_loc5_ >= 0)
         {
            if((_loc6_ = _loc3_.§[!]§(_loc5_)).§7d§.substr(-1) != "/")
            {
               if(!this.§;!A§[_loc6_.§7d§])
               {
               }
               this.§;!A§[_loc6_.§7d§] = _loc4_[_loc6_.§7d§] = _loc6_;
            }
            _loc5_--;
         }
         this.§[w§(_loc4_);
      }
      
      protected function §[w§(param1:Object) : void
      {
         var fileName:String = null;
         var levelNameResults:Array = null;
         var particleNameResults:Array = null;
         var compositeSpriteSheetNameResults:Array = null;
         var compositeNameResults:Array = null;
         var cutSceneNameResults:Array = null;
         var jsonObject:Object = null;
         var packageFiles:Object = param1;
         for(fileName in packageFiles)
         {
            if(fileName.search(/^sprite_sheets\/(.*)\.json$/i) != -1)
            {
               try
               {
                  jsonObject = JSON.parse((packageFiles[fileName] as §1K§).§>!$§(false));
               }
               catch(e:Error)
               {
                  throw new Error("Can\'t convert file \'" + fileName + "\' to object; invalid JSON.",§!]§.§+Z§);
               }
               this.§%[§(jsonObject);
            }
            levelNameResults = fileName.match(/^levels\/Level(.*)\.json$/i);
            if(levelNameResults)
            {
               §9G§.§3!P§(levelNameResults[1].toLowerCase(),§8=§.§%>§(this.getFileAsString(fileName)));
            }
            particleNameResults = fileName.match(/^particle_emitters\/(.*)\.pex$/i);
            if(particleNameResults)
            {
               this.§ w§(particleNameResults[1]);
            }
            compositeSpriteSheetNameResults = fileName.match(/composites\/data\/(.*)\.xml$/i);
            if(compositeSpriteSheetNameResults)
            {
               this.§!+§(fileName);
            }
            compositeNameResults = fileName.match(/composites\/main\/(.*)\.xml$/i);
            if(compositeNameResults)
            {
               this.§9!J§(fileName);
            }
            cutSceneNameResults = fileName.match(/cutscenes.lua$/i);
            if(cutSceneNameResults)
            {
               this.§>!G§(fileName);
            }
            if(fileName.toLowerCase() == "assetmap.xml")
            {
               this.§00§(fileName);
            }
         }
         if(this.§]O§ == 0)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      private function §00§(param1:String) : void
      {
         var _loc3_:LoaderContext = null;
         ++this.§]O§;
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         this.§,!W§.push(_loc2_);
         if(this.§,!W§.length == 1)
         {
            this.§[K§ = new Loader();
            this.§[K§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§5g§);
            _loc3_ = new LoaderContext();
            _loc3_.allowCodeImport = true;
            this.§[K§.loadBytes(this.§^U§(_loc2_.Library.@swf),_loc3_);
         }
      }
      
      private function §5g§(param1:Event) : void
      {
         this.§[K§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§5g§);
         var _loc2_:XML = this.§,!W§.shift();
         §"E§.§7!N§(this.§[K§,_loc2_.Library[0]);
         if(this.§,!W§.length > 0)
         {
            this.§[K§ = new Loader();
            this.§[K§.contentLoaderInfo.addEventListener(Event.INIT,this.§5g§);
            this.§[K§.loadBytes(this.§^U§(this.§,!W§[0].Library.@swf));
         }
         this.§0!!§();
      }
      
      private function §>!G§(param1:String) : void
      {
         var _loc2_:Object = §'I§.§]E§(this.getFileAsString(param1));
         §4!9§.§1H§(_loc2_);
      }
      
      protected function §9!J§(param1:String) : void
      {
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         §5Q§.§?[§(_loc2_);
      }
      
      protected function §!+§(param1:String) : void
      {
         var filePath:String = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            var _loc6_:XML = null;
            var _loc7_:String = null;
            var _loc8_:Array = null;
            var _loc9_:String = null;
            var _loc10_:Array = null;
            var _loc11_:String = null;
            var _loc12_:int = 0;
            var _loc13_:* = null;
            var _loc14_:String = null;
            var _loc2_:XML = new XML(getFileAsString(filePath));
            var _loc3_:Array = [];
            var _loc4_:Vector.<XML> = new Vector.<XML>();
            var _loc5_:XMLList = _loc2_.child("sprite");
            for each(_loc6_ in _loc5_)
            {
               if(_loc7_ = _loc6_.@file)
               {
                  _loc8_ = _loc7_.split("\\");
                  _loc9_ = _loc8_[_loc8_.length - 1];
                  _loc10_ = filePath.split("/");
                  _loc11_ = "";
                  _loc12_ = 0;
                  while(_loc12_ < _loc10_.length - 2)
                  {
                     _loc11_ += _loc10_[_loc12_] + "/";
                     _loc12_++;
                  }
                  _loc13_ = _loc11_ + "source/" + _loc9_ + ".xml";
                  if(§;!A§[_loc13_] == null)
                  {
                     _loc9_ = _loc8_[_loc8_.length - 2] + "/" + _loc8_[_loc8_.length - 1];
                     _loc13_ = _loc11_ + "source/" + _loc9_ + ".xml";
                  }
                  if(_loc3_.indexOf(_loc9_) < 0)
                  {
                     _loc3_.push(_loc9_);
                     _loc14_ = getFileAsString(_loc13_);
                     _loc4_.push(new XML(_loc14_));
                  }
               }
            }
            §3!R§.§2!&§(new §1!]§(_loc2_,_loc4_,param1.bitmapData));
            §0!!§();
         };
         ++this.§]O§;
         var imagePath:String = filePath.substr(0,filePath.length - 3) + "png";
         this.§&!;§(imagePath,onComplete);
      }
      
      protected function §0!!§() : void
      {
         --this.§]O§;
         if(this.§]O§ == 0)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      protected function § w§(param1:String) : void
      {
         var id:String = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            §3!$§.§-"§(id,XML(getFileAsString("particle_emitters/" + id + ".pex")),param1.bitmapData);
         };
         this.§&!;§("particle_emitters/" + id + ".png",onComplete);
      }
      
      protected function §%[§(param1:Object) : void
      {
         var spriteSheetClass:Class = null;
         var dataObject:Object = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            §3!R§.§2!&§(new spriteSheetClass(dataObject,param1.bitmapData));
            §0!!§();
         };
         ++this.§]O§;
         if(dataObject.image)
         {
            spriteSheetClass = §0!P§;
            this.§&!;§("sprite_sheets/" + dataObject.image,onComplete);
         }
         else
         {
            if(!(dataObject.name && dataObject.charCount))
            {
               throw new Error("Invalid sprite sheet data.");
            }
            spriteSheetClass = §[!?§;
            this.§&!;§("sprite_sheets/" + dataObject.name + ".png",onComplete);
         }
      }
      
      protected function §0!N§(param1:ByteArray) : void
      {
         var _loc2_:int = 0;
         this.§,#§ = 56895 & 25147 >> 1;
         _loc2_ = Math.min(param1.length,65536) - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§`#§() * 255);
            _loc2_ -= 2;
         }
         _loc2_ = param1.length - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§`#§() * 255);
            _loc2_ -= int(this.§`#§() * 255);
         }
         var _loc3_:int = Math.max(param1.length,65536) - 65536;
         _loc2_ = param1.length - 1;
         while(_loc2_ >= _loc3_)
         {
            param1[_loc2_] -= int(this.§`#§() * 255);
            _loc2_ -= 2;
         }
         param1.inflate();
      }
      
      protected function §`#§() : Number
      {
         this.§,#§ ^= this.§,#§ << 21;
         this.§,#§ ^= this.§,#§ >>> 35;
         this.§,#§ ^= this.§,#§ << 4;
         if(this.§,#§ < 0)
         {
            this.§,#§ &= 2147483647;
         }
         return this.§,#§ / 2147483647;
      }
   }
}
