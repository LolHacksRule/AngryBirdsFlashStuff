package §16§
{
   import §#R§.§0I§;
   import §1E§.§2h§;
   import §1E§.§5T§;
   import §3>§.§8!J§;
   import §3>§.§`z§;
   import §4!0§.§5!P§;
   import §8!2§.ParticleManager;
   import §;!B§.§!b§;
   import §;!B§.§"!&§;
   import §;!B§.§2!8§;
   import §@k§.§ '§;
   import §@k§.§'F§;
   import §@k§.§'k§;
   import §@k§.§+>§;
   import §@k§.§3b§;
   import §`!%§.§-d§;
   import §`!%§.§6c§;
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.system.LoaderContext;
   import flash.utils.ByteArray;
   
   public class §!y§ extends EventDispatcher implements §`z§
   {
       
      
      protected var §0+§:int;
      
      protected var §--§:Object;
      
      protected var § null§:int = 0;
      
      protected var §"c§:§3b§;
      
      protected var §1!C§:Vector.<XML>;
      
      protected var §?!2§:Loader;
      
      public function §!y§()
      {
         this.§--§ = {};
         this.§1!C§ = new Vector.<XML>();
         super();
         this.§"c§ = new §3b§();
      }
      
      public function get §=g§() : § '§
      {
         return this.§"c§;
      }
      
      public function get §;_§() : Boolean
      {
         return this.§ null§ == 0;
      }
      
      public function dispose() : void
      {
         this.§"c§.dispose();
      }
      
      public function getFileAsString(param1:String) : String
      {
         return (this.§--§[param1] as §-d§).§8`§(false);
      }
      
      public function §@=§(param1:String) : ByteArray
      {
         return (this.§--§[param1] as §-d§).content;
      }
      
      public function §1C§(param1:String, param2:Function) : void
      {
         return §!b§.§^!F§(this.§@=§(param1),param2);
      }
      
      public function §try§(param1:ByteArray, param2:Boolean = true) : void
      {
         var _loc6_:§-d§ = null;
         if(param2)
         {
            this.§3!5§(param1);
         }
         var _loc3_:§6c§ = new §6c§();
         _loc3_.loadBytes(param1);
         var _loc4_:Object = {};
         var _loc5_:int = _loc3_.§!3§() - 1;
         while(_loc5_ >= 0)
         {
            if((_loc6_ = _loc3_.§]G§(_loc5_)).§8!1§.substr(-1) != "/")
            {
               if(!this.§--§[_loc6_.§8!1§])
               {
               }
               this.§--§[_loc6_.§8!1§] = _loc4_[_loc6_.§8!1§] = _loc6_;
            }
            _loc5_--;
         }
         this.§1!I§(_loc4_);
      }
      
      protected function §1!I§(param1:Object) : void
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
                  jsonObject = JSON.parse((packageFiles[fileName] as §-d§).§8`§(false));
               }
               catch(e:Error)
               {
                  throw new Error("Can\'t convert file \'" + fileName + "\' to object; invalid JSON.",§"!&§.§-!@§);
               }
               this.§<5§(jsonObject);
            }
            levelNameResults = fileName.match(/^levels\/Level(.*)\.json$/i);
            if(levelNameResults)
            {
               §2h§.§1!J§(levelNameResults[1].toLowerCase(),§5T§.§^n§(this.getFileAsString(fileName)));
            }
            particleNameResults = fileName.match(/^particle_emitters\/(.*)\.pex$/i);
            if(particleNameResults)
            {
               this.§#7§(particleNameResults[1]);
            }
            compositeSpriteSheetNameResults = fileName.match(/composites\/data\/(.*)\.xml$/i);
            if(compositeSpriteSheetNameResults)
            {
               this.§"!%§(fileName);
            }
            compositeNameResults = fileName.match(/composites\/main\/(.*)\.xml$/i);
            if(compositeNameResults)
            {
               this.§?3§(fileName);
            }
            cutSceneNameResults = fileName.match(/cutscenes.lua$/i);
            if(cutSceneNameResults)
            {
               this.§;-§(fileName);
            }
            if(fileName.toLowerCase() == "assetmap.xml")
            {
               this.§#S§(fileName);
            }
         }
         if(this.§ null§ == 0)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      private function §#S§(param1:String) : void
      {
         var _loc3_:LoaderContext = null;
         ++this.§ null§;
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         this.§1!C§.push(_loc2_);
         if(this.§1!C§.length == 1)
         {
            this.§?!2§ = new Loader();
            this.§?!2§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§!!L§);
            _loc3_ = new LoaderContext();
            _loc3_.allowCodeImport = true;
            this.§?!2§.loadBytes(this.§@=§(_loc2_.Library.@swf),_loc3_);
         }
      }
      
      private function §!!L§(param1:Event) : void
      {
         this.§?!2§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§!!L§);
         var _loc2_:XML = this.§1!C§.shift();
         §8!J§.§`U§(this.§?!2§,_loc2_.Library[0]);
         if(this.§1!C§.length > 0)
         {
            this.§?!2§ = new Loader();
            this.§?!2§.contentLoaderInfo.addEventListener(Event.INIT,this.§!!L§);
            this.§?!2§.loadBytes(this.§@=§(this.§1!C§[0].Library.@swf));
         }
         this.§?I§();
      }
      
      private function §;-§(param1:String) : void
      {
         var _loc2_:Object = §2!8§.§08§(this.getFileAsString(param1));
         §0I§.§!9§(_loc2_);
      }
      
      protected function §?3§(param1:String) : void
      {
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         §5!P§.§2f§(_loc2_);
      }
      
      protected function §"!%§(param1:String) : void
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
                  if(§--§[_loc13_] == null)
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
            §"c§.§'O§(new §'F§(_loc2_,_loc4_,param1.bitmapData));
            §?I§();
         };
         ++this.§ null§;
         var imagePath:String = filePath.substr(0,filePath.length - 3) + "png";
         this.§1C§(imagePath,onComplete);
      }
      
      protected function §?I§() : void
      {
         --this.§ null§;
         if(this.§ null§ == 0)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      protected function §#7§(param1:String) : void
      {
         var id:String = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            ParticleManager.§ "§(id,XML(getFileAsString("particle_emitters/" + id + ".pex")),param1.bitmapData);
         };
         this.§1C§("particle_emitters/" + id + ".png",onComplete);
      }
      
      protected function §<5§(param1:Object) : void
      {
         var spriteSheetClass:Class = null;
         var dataObject:Object = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            §"c§.§'O§(new spriteSheetClass(dataObject,param1.bitmapData));
            §?I§();
         };
         ++this.§ null§;
         if(dataObject.image)
         {
            spriteSheetClass = §+>§;
            this.§1C§("sprite_sheets/" + dataObject.image,onComplete);
         }
         else
         {
            if(!(dataObject.name && dataObject.charCount))
            {
               throw new Error("Invalid sprite sheet data.");
            }
            spriteSheetClass = §'k§;
            this.§1C§("sprite_sheets/" + dataObject.name + ".png",onComplete);
         }
      }
      
      protected function §3!5§(param1:ByteArray) : void
      {
         var _loc2_:int = 0;
         this.§0+§ = 56895 & 25147 >> 1;
         _loc2_ = Math.min(param1.length,65536) - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§='§() * 255);
            _loc2_ -= 2;
         }
         _loc2_ = param1.length - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§='§() * 255);
            _loc2_ -= int(this.§='§() * 255);
         }
         var _loc3_:int = Math.max(param1.length,65536) - 65536;
         _loc2_ = param1.length - 1;
         while(_loc2_ >= _loc3_)
         {
            param1[_loc2_] -= int(this.§='§() * 255);
            _loc2_ -= 2;
         }
         param1.inflate();
      }
      
      protected function §='§() : Number
      {
         this.§0+§ ^= this.§0+§ << 21;
         this.§0+§ ^= this.§0+§ >>> 35;
         this.§0+§ ^= this.§0+§ << 4;
         if(this.§0+§ < 0)
         {
            this.§0+§ &= 2147483647;
         }
         return this.§0+§ / 2147483647;
      }
   }
}
