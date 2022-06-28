package §%L§
{
   import §#!X§.LevelManager;
   import §#!X§.LevelModel;
   import §3!c§.§<'§;
   import §3!c§.FontSheetJSONGGS;
   import §3!c§.SpriteSheetContainer;
   import §3!c§.SpriteSheetJSONGGS;
   import §3!c§.SpriteSheetXMLGGS;
   import §6Q§.FZip;
   import §6Q§.FZipFile;
   import §8!?§.CompositeSpriteParser;
   import §9!!§.§1!E§;
   import §9!!§.ImageDataUtils;
   import §9!!§.LuaUtils;
   import §?$§.CutSceneManager;
   import §^!h§.ParticleManager;
   import §`M§.§ p§;
   import §`M§.LoadManager;
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.system.LoaderContext;
   import flash.utils.ByteArray;
   
   [SecureSWF(codeWrap="max",rename="true",statementLevel="true",controlFlow="100")]
   public class PackageManager extends EventDispatcher implements § p§
   {
       
      
      protected var §;!2§:int;
      
      protected var §>V§:Object;
      
      protected var §40§:int = 0;
      
      protected var §^3§:SpriteSheetContainer;
      
      protected var §1K§:Vector.<XML>;
      
      protected var §4$§:Loader;
      
      public function PackageManager()
      {
         this.§>V§ = {};
         this.§1K§ = new Vector.<XML>();
         super();
         this.§^3§ = new SpriteSheetContainer();
      }
      
      public function get §`F§() : §<'§
      {
         return this.§^3§;
      }
      
      public function get §;C§() : Boolean
      {
         return this.§40§ == 0;
      }
      
      public function dispose() : void
      {
         this.§^3§.dispose();
      }
      
      public function getFileAsString(param1:String) : String
      {
         return (this.§>V§[param1] as FZipFile).§,s§(false);
      }
      
      public function §1!7§(param1:String) : ByteArray
      {
         return (this.§>V§[param1] as FZipFile).content;
      }
      
      public function §#f§(param1:String, param2:Function) : void
      {
         return ImageDataUtils.§,[§(this.§1!7§(param1),param2);
      }
      
      public function §4S§(param1:ByteArray, param2:Boolean = true) : void
      {
         var _loc6_:FZipFile = null;
         if(param2)
         {
            this.§9!R§(param1);
         }
         var _loc3_:FZip = new FZip();
         _loc3_.loadBytes(param1);
         var _loc4_:Object = {};
         var _loc5_:int = _loc3_.§[;§() - 1;
         while(_loc5_ >= 0)
         {
            _loc6_ = _loc3_.§`V§(_loc5_);
            if(_loc6_.§2!e§.substr(-1) != "/")
            {
               if(this.§>V§[_loc6_.§2!e§])
               {
               }
               this.§>V§[_loc6_.§2!e§] = _loc4_[_loc6_.§2!e§] = _loc6_;
            }
            _loc5_--;
         }
         this.§,!`§(_loc4_);
      }
      
      protected function §,!`§(param1:Object) : void
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
                  jsonObject = JSON.parse((packageFiles[fileName] as FZipFile).§,s§(false));
               }
               catch(e:Error)
               {
                  throw new Error("Can\'t convert file \'" + fileName + "\' to object; invalid JSON.",§1!E§.§`z§);
               }
               this.§`r§(jsonObject);
            }
            levelNameResults = fileName.match(/^levels\/Level(.*)\.json$/i);
            if(levelNameResults)
            {
               LevelManager.§"@§(levelNameResults[1].toLowerCase(),LevelModel.§>!X§(this.getFileAsString(fileName)));
            }
            particleNameResults = fileName.match(/^particle_emitters\/(.*)\.pex$/i);
            if(particleNameResults)
            {
               this.§=Q§(particleNameResults[1]);
            }
            compositeSpriteSheetNameResults = fileName.match(/composites\/data\/(.*)\.xml$/i);
            if(compositeSpriteSheetNameResults)
            {
               this.§3!K§(fileName);
            }
            compositeNameResults = fileName.match(/composites\/main\/(.*)\.xml$/i);
            if(compositeNameResults)
            {
               this.§2!7§(fileName);
            }
            cutSceneNameResults = fileName.match(/cutscenes.lua$/i);
            if(cutSceneNameResults)
            {
               this.§%!Q§(fileName);
            }
            if(fileName.toLowerCase() == "assetmap.xml")
            {
               this.§0s§(fileName);
            }
         }
         if(this.§40§ == 0)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      private function §0s§(param1:String) : void
      {
         var _loc3_:LoaderContext = null;
         ++this.§40§;
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         this.§1K§.push(_loc2_);
         if(this.§1K§.length == 1)
         {
            this.§4$§ = new Loader();
            this.§4$§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§%!0§);
            _loc3_ = new LoaderContext();
            _loc3_.allowCodeImport = true;
            this.§4$§.loadBytes(this.§1!7§(_loc2_.Library.@swf),_loc3_);
         }
      }
      
      private function §%!0§(param1:Event) : void
      {
         this.§4$§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§%!0§);
         var _loc2_:XML = this.§1K§.shift();
         LoadManager.§2W§(this.§4$§,_loc2_.Library[0]);
         if(this.§1K§.length > 0)
         {
            this.§4$§ = new Loader();
            this.§4$§.contentLoaderInfo.addEventListener(Event.INIT,this.§%!0§);
            this.§4$§.loadBytes(this.§1!7§(this.§1K§[0].Library.@swf));
         }
         this.§!D§();
      }
      
      private function §%!Q§(param1:String) : void
      {
         var _loc2_:Object = LuaUtils.§=!;§(this.getFileAsString(param1));
         CutSceneManager.§+[§(_loc2_);
      }
      
      protected function §2!7§(param1:String) : void
      {
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         CompositeSpriteParser.§?r§(_loc2_);
      }
      
      protected function §3!K§(param1:String) : void
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
                  if(§>V§[_loc13_] == null)
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
            §^3§.§?b§(new SpriteSheetXMLGGS(_loc2_,_loc4_,param1.bitmapData));
            §!D§();
         };
         ++this.§40§;
         var imagePath:String = filePath.substr(0,filePath.length - 3) + "png";
         this.§#f§(imagePath,onComplete);
      }
      
      protected function §!D§() : void
      {
         --this.§40§;
         if(this.§40§ == 0)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      protected function §=Q§(param1:String) : void
      {
         var id:String = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            ParticleManager.§'!B§(id,XML(getFileAsString("particle_emitters/" + id + ".pex")),param1.bitmapData);
         };
         this.§#f§("particle_emitters/" + id + ".png",onComplete);
      }
      
      protected function §`r§(param1:Object) : void
      {
         var spriteSheetClass:Class = null;
         var dataObject:Object = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            §^3§.§?b§(new spriteSheetClass(dataObject,param1.bitmapData));
            §!D§();
         };
         ++this.§40§;
         if(dataObject.image)
         {
            spriteSheetClass = SpriteSheetJSONGGS;
            this.§#f§("sprite_sheets/" + dataObject.image,onComplete);
         }
         else
         {
            if(!(dataObject.name && dataObject.charCount))
            {
               throw new Error("Invalid sprite sheet data.");
            }
            spriteSheetClass = FontSheetJSONGGS;
            this.§#f§("sprite_sheets/" + dataObject.name + ".png",onComplete);
         }
      }
      
      protected function §9!R§(param1:ByteArray) : void
      {
         var _loc2_:int = 0;
         this.§;!2§ = 56895 & 25147 >> 1;
         _loc2_ = Math.min(param1.length,65536) - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§%W§() * 255);
            _loc2_ -= 2;
         }
         _loc2_ = param1.length - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§%W§() * 255);
            _loc2_ -= int(this.§%W§() * 255);
         }
         var _loc3_:int = Math.max(param1.length,65536) - 65536;
         _loc2_ = param1.length - 1;
         while(_loc2_ >= _loc3_)
         {
            param1[_loc2_] -= int(this.§%W§() * 255);
            _loc2_ -= 2;
         }
         param1.inflate();
      }
      
      protected function §%W§() : Number
      {
         this.§;!2§ ^= this.§;!2§ << 21;
         this.§;!2§ ^= this.§;!2§ >>> 35;
         this.§;!2§ ^= this.§;!2§ << 4;
         if(this.§;!2§ < 0)
         {
            this.§;!2§ &= 2147483647;
         }
         return this.§;!2§ / 2147483647;
      }
   }
}
