package §^F§
{
   import § !§.§7!C§;
   import § !§.LoadManager;
   import §%r§.CutSceneManager;
   import §&!"§.FZip;
   import §&!"§.FZipFile;
   import §,!7§.CompositeSpriteParser;
   import §5=§.§8O§;
   import §5=§.ImageDataUtils;
   import §5=§.LuaUtils;
   import §6w§.§9!%§;
   import §6w§.FontSheetJSONGGS;
   import §6w§.SpriteSheetContainer;
   import §6w§.SpriteSheetJSONGGS;
   import §6w§.SpriteSheetXMLGGS;
   import §>! §.ParticleManager;
   import §>!_§.LevelManager;
   import §>!_§.LevelModel;
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.system.LoaderContext;
   import flash.utils.ByteArray;
   
   [SecureSWF(codeWrap="max",rename="true",statementLevel="true",controlFlow="100")]
   public class PackageManager extends EventDispatcher implements §7!C§
   {
       
      
      protected var §case §:int;
      
      protected var §`%§:Object;
      
      protected var §%U§:int = 0;
      
      protected var §3!E§:SpriteSheetContainer;
      
      protected var §7G§:Vector.<XML>;
      
      protected var §2M§:Loader;
      
      public function PackageManager()
      {
         this.§`%§ = {};
         this.§7G§ = new Vector.<XML>();
         super();
         this.§3!E§ = new SpriteSheetContainer();
      }
      
      public function get §@l§() : §9!%§
      {
         return this.§3!E§;
      }
      
      public function get §use§() : Boolean
      {
         return this.§%U§ == 0;
      }
      
      public function dispose() : void
      {
         this.§3!E§.dispose();
      }
      
      public function getFileAsString(param1:String) : String
      {
         return (this.§`%§[param1] as FZipFile).§^!-§(false);
      }
      
      public function §0!$§(param1:String) : ByteArray
      {
         return (this.§`%§[param1] as FZipFile).content;
      }
      
      public function §=Y§(param1:String, param2:Function) : void
      {
         return ImageDataUtils.§;H§(this.§0!$§(param1),param2);
      }
      
      public function §"Z§(param1:ByteArray, param2:Boolean = true) : void
      {
         var _loc6_:FZipFile = null;
         if(param2)
         {
            this.§=!?§(param1);
         }
         var _loc3_:FZip = new FZip();
         _loc3_.loadBytes(param1);
         var _loc4_:Object = {};
         var _loc5_:int = _loc3_.§`!T§() - 1;
         while(_loc5_ >= 0)
         {
            _loc6_ = _loc3_.§'![§(_loc5_);
            if(_loc6_.§4F§.substr(-1) != "/")
            {
               if(this.§`%§[_loc6_.§4F§])
               {
               }
               this.§`%§[_loc6_.§4F§] = _loc4_[_loc6_.§4F§] = _loc6_;
            }
            _loc5_--;
         }
         this.§2m§(_loc4_);
      }
      
      protected function §2m§(param1:Object) : void
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
                  jsonObject = JSON.parse((packageFiles[fileName] as FZipFile).§^!-§(false));
               }
               catch(e:Error)
               {
                  throw new Error("Can\'t convert file \'" + fileName + "\' to object; invalid JSON.",§8O§.§?6§);
               }
               this.§7-§(jsonObject);
            }
            levelNameResults = fileName.match(/^levels\/Level(.*)\.json$/i);
            if(levelNameResults)
            {
               LevelManager.§@!b§(levelNameResults[1].toLowerCase(),LevelModel.§;!&§(this.getFileAsString(fileName)));
            }
            particleNameResults = fileName.match(/^particle_emitters\/(.*)\.pex$/i);
            if(particleNameResults)
            {
               this.§3!%§(particleNameResults[1]);
            }
            compositeSpriteSheetNameResults = fileName.match(/composites\/data\/(.*)\.xml$/i);
            if(compositeSpriteSheetNameResults)
            {
               this.§5c§(fileName);
            }
            compositeNameResults = fileName.match(/composites\/main\/(.*)\.xml$/i);
            if(compositeNameResults)
            {
               this.§;,§(fileName);
            }
            cutSceneNameResults = fileName.match(/cutscenes.lua$/i);
            if(cutSceneNameResults)
            {
               this.§6!9§(fileName);
            }
            if(fileName.toLowerCase() == "assetmap.xml")
            {
               this.§7C§(fileName);
            }
         }
         if(this.§%U§ == 0)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      private function §7C§(param1:String) : void
      {
         var _loc3_:LoaderContext = null;
         ++this.§%U§;
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         this.§7G§.push(_loc2_);
         if(this.§7G§.length == 1)
         {
            this.§2M§ = new Loader();
            this.§2M§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§continue§);
            _loc3_ = new LoaderContext();
            _loc3_.allowCodeImport = true;
            this.§2M§.loadBytes(this.§0!$§(_loc2_.Library.@swf),_loc3_);
         }
      }
      
      private function §continue§(param1:Event) : void
      {
         this.§2M§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§continue§);
         var _loc2_:XML = this.§7G§.shift();
         LoadManager.§"!f§(this.§2M§,_loc2_.Library[0]);
         if(this.§7G§.length > 0)
         {
            this.§2M§ = new Loader();
            this.§2M§.contentLoaderInfo.addEventListener(Event.INIT,this.§continue§);
            this.§2M§.loadBytes(this.§0!$§(this.§7G§[0].Library.@swf));
         }
         this.§3L§();
      }
      
      private function §6!9§(param1:String) : void
      {
         var _loc2_:Object = LuaUtils.§%!9§(this.getFileAsString(param1));
         CutSceneManager.§!s§(_loc2_);
      }
      
      protected function §;,§(param1:String) : void
      {
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         CompositeSpriteParser.§<!§(_loc2_);
      }
      
      protected function §5c§(param1:String) : void
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
            var _loc13_:String = null;
            var _loc14_:String = null;
            var _loc2_:XML = new XML(getFileAsString(filePath));
            var _loc3_:Array = [];
            var _loc4_:Vector.<XML> = new Vector.<XML>();
            var _loc5_:XMLList = _loc2_.child("sprite");
            for each(_loc6_ in _loc5_)
            {
               _loc7_ = _loc6_.@file;
               if(_loc7_)
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
                  if(§`%§[_loc13_] == null)
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
            §3!E§.§[!`§(new SpriteSheetXMLGGS(_loc2_,_loc4_,param1.bitmapData));
            §3L§();
         };
         ++this.§%U§;
         var imagePath:String = filePath.substr(0,filePath.length - 3) + "png";
         this.§=Y§(imagePath,onComplete);
      }
      
      protected function §3L§() : void
      {
         --this.§%U§;
         if(this.§%U§ == 0)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      protected function §3!%§(param1:String) : void
      {
         var id:String = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            ParticleManager.§<!b§(id,XML(getFileAsString("particle_emitters/" + id + ".pex")),param1.bitmapData);
         };
         this.§=Y§("particle_emitters/" + id + ".png",onComplete);
      }
      
      protected function §7-§(param1:Object) : void
      {
         var spriteSheetClass:Class = null;
         var dataObject:Object = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            §3!E§.§[!`§(new spriteSheetClass(dataObject,param1.bitmapData));
            §3L§();
         };
         ++this.§%U§;
         if(dataObject.image)
         {
            spriteSheetClass = SpriteSheetJSONGGS;
            this.§=Y§("sprite_sheets/" + dataObject.image,onComplete);
         }
         else
         {
            if(!(dataObject.name && dataObject.charCount))
            {
               throw new Error("Invalid sprite sheet data.");
            }
            spriteSheetClass = FontSheetJSONGGS;
            this.§=Y§("sprite_sheets/" + dataObject.name + ".png",onComplete);
         }
      }
      
      protected function §=!?§(param1:ByteArray) : void
      {
         var _loc2_:int = 0;
         this.§case § = 56895 & 25147 >> 1;
         _loc2_ = Math.min(param1.length,65536) - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§,!a§() * 255);
            _loc2_ -= 2;
         }
         _loc2_ = param1.length - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§,!a§() * 255);
            _loc2_ -= int(this.§,!a§() * 255);
         }
         var _loc3_:int = Math.max(param1.length,65536) - 65536;
         _loc2_ = param1.length - 1;
         while(_loc2_ >= _loc3_)
         {
            param1[_loc2_] -= int(this.§,!a§() * 255);
            _loc2_ -= 2;
         }
         param1.inflate();
      }
      
      protected function §,!a§() : Number
      {
         this.§case § ^= this.§case § << 21;
         this.§case § ^= this.§case § >>> 35;
         this.§case § ^= this.§case § << 4;
         if(this.§case § < 0)
         {
            this.§case § &= 2147483647;
         }
         return this.§case § / 2147483647;
      }
   }
}
