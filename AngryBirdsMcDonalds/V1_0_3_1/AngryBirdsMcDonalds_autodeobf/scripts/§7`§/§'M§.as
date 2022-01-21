package §7`§
{
   import § !%§.§6%§;
   import § !o§.§=E§;
   import §!U§.§'[§;
   import §!U§.§2d§;
   import §!U§.§4#§;
   import §!U§.§64§;
   import §!U§.§[!g§;
   import §"J§.§0I§;
   import §"J§.§5^§;
   import §?I§.§-!7§;
   import §?I§.§2!;§;
   import §?I§.§@F§;
   import §@D§.§+y§;
   import §@D§.§-G§;
   import §[>§.§@n§;
   import §finally§.§8k§;
   import §finally§.§@z§;
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.system.LoaderContext;
   import flash.utils.ByteArray;
   
   public class §'M§ extends EventDispatcher implements §5^§
   {
       
      
      protected var §,-§:int;
      
      protected var §6z§:Object;
      
      protected var §%+§:int = 0;
      
      protected var §>!k§:§4#§;
      
      protected var §+B§:Vector.<XML>;
      
      protected var §19§:Loader;
      
      public function §'M§()
      {
         this.§6z§ = {};
         this.§+B§ = new Vector.<XML>();
         super();
         this.§>!k§ = new §4#§();
      }
      
      public function get §9F§() : §2d§
      {
         return this.§>!k§;
      }
      
      public function get §[!'§() : Boolean
      {
         return this.§%+§ == 0;
      }
      
      public function dispose() : void
      {
         this.§>!k§.dispose();
      }
      
      public function getFileAsString(param1:String) : String
      {
         return (this.§6z§[param1] as §+y§).§^!+§(false);
      }
      
      public function §++§(param1:String) : ByteArray
      {
         return (this.§6z§[param1] as §+y§).content;
      }
      
      public function §44§(param1:String, param2:Function) : void
      {
         return §2!;§.§&!,§(this.§++§(param1),param2);
      }
      
      public function §,+§(param1:ByteArray, param2:Boolean = true) : void
      {
         var _loc6_:§+y§ = null;
         if(param2)
         {
            this.§0!0§(param1);
         }
         var _loc3_:§-G§ = new §-G§();
         _loc3_.loadBytes(param1);
         var _loc4_:Object = {};
         var _loc5_:int = _loc3_.§-!@§() - 1;
         while(_loc5_ >= 0)
         {
            if((_loc6_ = _loc3_.§8!X§(_loc5_)).§@!X§.substr(-1) != "/")
            {
               if(!this.§6z§[_loc6_.§@!X§])
               {
               }
               this.§6z§[_loc6_.§@!X§] = _loc4_[_loc6_.§@!X§] = _loc6_;
            }
            _loc5_--;
         }
         this.§3W§(_loc4_);
      }
      
      protected function §3W§(param1:Object) : void
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
                  jsonObject = JSON.parse((packageFiles[fileName] as §+y§).§^!+§(false));
               }
               catch(e:Error)
               {
                  throw new Error("Can\'t convert file \'" + fileName + "\' to object; invalid JSON.",§@F§.§?v§);
               }
               this.§'9§(jsonObject);
            }
            levelNameResults = fileName.match(/^levels\/Level(.*)\.json$/i);
            if(levelNameResults)
            {
               §8k§.§4F§(levelNameResults[1].toLowerCase(),§@z§.§6!"§(this.getFileAsString(fileName)));
            }
            particleNameResults = fileName.match(/^particle_emitters\/(.*)\.pex$/i);
            if(particleNameResults)
            {
               this.§#E§(particleNameResults[1]);
            }
            compositeSpriteSheetNameResults = fileName.match(/composites\/data\/(.*)\.xml$/i);
            if(compositeSpriteSheetNameResults)
            {
               this.§-5§(fileName);
            }
            compositeNameResults = fileName.match(/composites\/main\/(.*)\.xml$/i);
            if(compositeNameResults)
            {
               this.§'^§(fileName);
            }
            cutSceneNameResults = fileName.match(/cutscenes.lua$/i);
            if(cutSceneNameResults)
            {
               this.§[!3§(fileName);
            }
            if(fileName.toLowerCase() == "assetmap.xml")
            {
               this.§&!h§(fileName);
            }
         }
         if(this.§%+§ == 0)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      private function §&!h§(param1:String) : void
      {
         var _loc3_:LoaderContext = null;
         ++this.§%+§;
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         this.§+B§.push(_loc2_);
         if(this.§+B§.length == 1)
         {
            this.§19§ = new Loader();
            this.§19§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§^0§);
            _loc3_ = new LoaderContext();
            _loc3_.allowCodeImport = true;
            this.§19§.loadBytes(this.§++§(_loc2_.Library.@swf),_loc3_);
         }
      }
      
      private function §^0§(param1:Event) : void
      {
         this.§19§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§^0§);
         var _loc2_:XML = this.§+B§.shift();
         §0I§.§7!O§(this.§19§,_loc2_.Library[0]);
         if(this.§+B§.length > 0)
         {
            this.§19§ = new Loader();
            this.§19§.contentLoaderInfo.addEventListener(Event.INIT,this.§^0§);
            this.§19§.loadBytes(this.§++§(this.§+B§[0].Library.@swf));
         }
         this.§0!]§();
      }
      
      private function §[!3§(param1:String) : void
      {
         var _loc2_:Object = §-!7§.§'`§(this.getFileAsString(param1));
         §@n§.§#-§(_loc2_);
      }
      
      protected function §'^§(param1:String) : void
      {
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         §6%§.§%u§(_loc2_);
      }
      
      protected function §-5§(param1:String) : void
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
                  if(§6z§[_loc13_] == null)
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
            §>!k§.§!!c§(new §64§(_loc2_,_loc4_,param1.bitmapData));
            §0!]§();
         };
         ++this.§%+§;
         var imagePath:String = filePath.substr(0,filePath.length - 3) + "png";
         this.§44§(imagePath,onComplete);
      }
      
      protected function §0!]§() : void
      {
         --this.§%+§;
         if(this.§%+§ == 0)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      protected function §#E§(param1:String) : void
      {
         var id:String = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            §=E§.§0!§(id,XML(getFileAsString("particle_emitters/" + id + ".pex")),param1.bitmapData);
         };
         this.§44§("particle_emitters/" + id + ".png",onComplete);
      }
      
      protected function §'9§(param1:Object) : void
      {
         var spriteSheetClass:Class = null;
         var dataObject:Object = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            §>!k§.§!!c§(new spriteSheetClass(dataObject,param1.bitmapData));
            §0!]§();
         };
         ++this.§%+§;
         if(dataObject.image)
         {
            spriteSheetClass = §'[§;
            this.§44§("sprite_sheets/" + dataObject.image,onComplete);
         }
         else
         {
            if(!(dataObject.name && dataObject.charCount))
            {
               throw new Error("Invalid sprite sheet data.");
            }
            spriteSheetClass = §[!g§;
            this.§44§("sprite_sheets/" + dataObject.name + ".png",onComplete);
         }
      }
      
      protected function §0!0§(param1:ByteArray) : void
      {
         var _loc2_:int = 0;
         this.§,-§ = 56895 & 25147 >> 1;
         _loc2_ = Math.min(param1.length,65536) - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§<P§() * 255);
            _loc2_ -= 2;
         }
         _loc2_ = param1.length - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§<P§() * 255);
            _loc2_ -= int(this.§<P§() * 255);
         }
         var _loc3_:int = Math.max(param1.length,65536) - 65536;
         _loc2_ = param1.length - 1;
         while(_loc2_ >= _loc3_)
         {
            param1[_loc2_] -= int(this.§<P§() * 255);
            _loc2_ -= 2;
         }
         param1.inflate();
      }
      
      protected function §<P§() : Number
      {
         this.§,-§ ^= this.§,-§ << 21;
         this.§,-§ ^= this.§,-§ >>> 35;
         this.§,-§ ^= this.§,-§ << 4;
         if(this.§,-§ < 0)
         {
            this.§,-§ &= 2147483647;
         }
         return this.§,-§ / 2147483647;
      }
   }
}
