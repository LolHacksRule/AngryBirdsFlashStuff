package §=]§
{
   import §"L§.LevelManager;
   import §"L§.LevelModel;
   import §%!T§.§4k§;
   import §%!T§.LoadManager;
   import §,!_§.CompositeSpriteParser;
   import §1!>§.FZip;
   import §1!>§.FZipFile;
   import §1i§.ParticleManager;
   import §4u§.CutSceneManager;
   import §7p§.ImageDataUtils;
   import §7p§.LuaUtils;
   import §7p§.§]E§;
   import §`u§.§@K§;
   import §`u§.FontSheetJSONGGS;
   import §`u§.SpriteSheetContainer;
   import §`u§.SpriteSheetJSONGGS;
   import §`u§.SpriteSheetXMLGGS;
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.system.LoaderContext;
   import flash.utils.ByteArray;
   
   [SecureSWF(codeWrap="max",rename="true",statementLevel="true",controlFlow="100")]
   public class PackageManager extends EventDispatcher implements §4k§
   {
       
      
      protected var §#2§:int;
      
      protected var §#!=§:Object;
      
      protected var §3!J§:int = 0;
      
      protected var §<!_§:SpriteSheetContainer;
      
      protected var §3!V§:Vector.<XML>;
      
      protected var §^v§:Loader;
      
      public function PackageManager()
      {
         this.§#!=§ = {};
         this.§3!V§ = new Vector.<XML>();
         super();
         this.§<!_§ = new SpriteSheetContainer();
      }
      
      public function get §`!_§() : §@K§
      {
         return this.§<!_§;
      }
      
      public function get §<!h§() : Boolean
      {
         return this.§3!J§ == 0;
      }
      
      public function dispose() : void
      {
         this.§<!_§.dispose();
      }
      
      public function getFileAsString(param1:String) : String
      {
         return (this.§#!=§[param1] as FZipFile).§`!W§(false);
      }
      
      public function §`!&§(param1:String) : ByteArray
      {
         return (this.§#!=§[param1] as FZipFile).content;
      }
      
      public function §#u§(param1:String, param2:Function) : void
      {
         return ImageDataUtils.§,U§(this.§`!&§(param1),param2);
      }
      
      public function §'#§(param1:ByteArray, param2:Boolean = true) : void
      {
         var _loc6_:FZipFile = null;
         if(param2)
         {
            this.§<e§(param1);
         }
         var _loc3_:FZip = new FZip();
         _loc3_.loadBytes(param1);
         var _loc4_:Object = {};
         var _loc5_:int = _loc3_.§@!K§() - 1;
         while(_loc5_ >= 0)
         {
            _loc6_ = _loc3_.§?!H§(_loc5_);
            if(_loc6_.§"!a§.substr(-1) != "/")
            {
               if(this.§#!=§[_loc6_.§"!a§])
               {
               }
               this.§#!=§[_loc6_.§"!a§] = _loc4_[_loc6_.§"!a§] = _loc6_;
            }
            _loc5_--;
         }
         this.§^R§(_loc4_);
      }
      
      protected function §^R§(param1:Object) : void
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
                  jsonObject = JSON.parse((packageFiles[fileName] as FZipFile).§`!W§(false));
               }
               catch(e:Error)
               {
                  throw new Error("Can\'t convert file \'" + fileName + "\' to object; invalid JSON.",§]E§.§'-§);
               }
               this.§8!Y§(jsonObject);
            }
            levelNameResults = fileName.match(/^levels\/Level(.*)\.json$/i);
            if(levelNameResults)
            {
               LevelManager.§7+§(levelNameResults[1].toLowerCase(),LevelModel.§=g§(this.getFileAsString(fileName)));
            }
            particleNameResults = fileName.match(/^particle_emitters\/(.*)\.pex$/i);
            if(particleNameResults)
            {
               this.§5!X§(particleNameResults[1]);
            }
            compositeSpriteSheetNameResults = fileName.match(/composites\/data\/(.*)\.xml$/i);
            if(compositeSpriteSheetNameResults)
            {
               this.§^!D§(fileName);
            }
            compositeNameResults = fileName.match(/composites\/main\/(.*)\.xml$/i);
            if(compositeNameResults)
            {
               this.§ 5§(fileName);
            }
            cutSceneNameResults = fileName.match(/cutscenes.lua$/i);
            if(cutSceneNameResults)
            {
               this.§&!g§(fileName);
            }
            if(fileName.toLowerCase() == "assetmap.xml")
            {
               this.§8!>§(fileName);
            }
         }
         if(this.§3!J§ == 0)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      private function §8!>§(param1:String) : void
      {
         var _loc3_:LoaderContext = null;
         ++this.§3!J§;
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         this.§3!V§.push(_loc2_);
         if(this.§3!V§.length == 1)
         {
            this.§^v§ = new Loader();
            this.§^v§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§0;§);
            _loc3_ = new LoaderContext();
            _loc3_.allowCodeImport = true;
            this.§^v§.loadBytes(this.§`!&§(_loc2_.Library.@swf),_loc3_);
         }
      }
      
      private function §0;§(param1:Event) : void
      {
         this.§^v§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§0;§);
         var _loc2_:XML = this.§3!V§.shift();
         LoadManager.§]7§(this.§^v§,_loc2_.Library[0]);
         if(this.§3!V§.length > 0)
         {
            this.§^v§ = new Loader();
            this.§^v§.contentLoaderInfo.addEventListener(Event.INIT,this.§0;§);
            this.§^v§.loadBytes(this.§`!&§(this.§3!V§[0].Library.@swf));
         }
         this.§<!<§();
      }
      
      private function §&!g§(param1:String) : void
      {
         var _loc2_:Object = LuaUtils.§<@§(this.getFileAsString(param1));
         CutSceneManager.§8!7§(_loc2_);
      }
      
      protected function § 5§(param1:String) : void
      {
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         CompositeSpriteParser.§@v§(_loc2_);
      }
      
      protected function §^!D§(param1:String) : void
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
                  if(§#!=§[_loc13_] == null)
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
            §<!_§.§8!I§(new SpriteSheetXMLGGS(_loc2_,_loc4_,param1.bitmapData));
            §<!<§();
         };
         ++this.§3!J§;
         var imagePath:String = filePath.substr(0,filePath.length - 3) + "png";
         this.§#u§(imagePath,onComplete);
      }
      
      protected function §<!<§() : void
      {
         --this.§3!J§;
         if(this.§3!J§ == 0)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      protected function §5!X§(param1:String) : void
      {
         var id:String = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            ParticleManager.§3!1§(id,XML(getFileAsString("particle_emitters/" + id + ".pex")),param1.bitmapData);
         };
         this.§#u§("particle_emitters/" + id + ".png",onComplete);
      }
      
      protected function §8!Y§(param1:Object) : void
      {
         var spriteSheetClass:Class = null;
         var dataObject:Object = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            §<!_§.§8!I§(new spriteSheetClass(dataObject,param1.bitmapData));
            §<!<§();
         };
         ++this.§3!J§;
         if(dataObject.image)
         {
            spriteSheetClass = SpriteSheetJSONGGS;
            this.§#u§("sprite_sheets/" + dataObject.image,onComplete);
         }
         else
         {
            if(!(dataObject.name && dataObject.charCount))
            {
               throw new Error("Invalid sprite sheet data.");
            }
            spriteSheetClass = FontSheetJSONGGS;
            this.§#u§("sprite_sheets/" + dataObject.name + ".png",onComplete);
         }
      }
      
      protected function §<e§(param1:ByteArray) : void
      {
         var _loc2_:int = 0;
         this.§#2§ = 56895 & 25147 >> 1;
         _loc2_ = Math.min(param1.length,65536) - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§%#§() * 255);
            _loc2_ -= 2;
         }
         _loc2_ = param1.length - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§%#§() * 255);
            _loc2_ -= int(this.§%#§() * 255);
         }
         var _loc3_:int = Math.max(param1.length,65536) - 65536;
         _loc2_ = param1.length - 1;
         while(_loc2_ >= _loc3_)
         {
            param1[_loc2_] -= int(this.§%#§() * 255);
            _loc2_ -= 2;
         }
         param1.inflate();
      }
      
      protected function §%#§() : Number
      {
         this.§#2§ ^= this.§#2§ << 21;
         this.§#2§ ^= this.§#2§ >>> 35;
         this.§#2§ ^= this.§#2§ << 4;
         if(this.§#2§ < 0)
         {
            this.§#2§ &= 2147483647;
         }
         return this.§#2§ / 2147483647;
      }
   }
}
