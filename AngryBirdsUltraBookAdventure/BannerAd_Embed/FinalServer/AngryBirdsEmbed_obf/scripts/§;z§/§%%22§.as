package §;z§
{
   import §'k§.§<f§;
   import §0!5§.§!o§;
   import §0!5§.§6!+§;
   import §0!5§.§6w§;
   import §0!5§.§>!5§;
   import §0!5§.include;
   import §4!H§.§'!,§;
   import §4!H§.§-2§;
   import §4!H§.§1Q§;
   import §6J§.§&!;§;
   import §6J§.§5j§;
   import §8!>§.§`!D§;
   import §9>§.§"!C§;
   import §9>§.§,!§;
   import §?,§.§ d§;
   import §?,§.§9b§;
   import §`>§.ParticleManager;
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.system.LoaderContext;
   import flash.utils.ByteArray;
   
   public class §%"§ extends EventDispatcher implements §,!§
   {
       
      
      protected var §=0§:int;
      
      protected var §&A§:Object;
      
      protected var §1!;§:int = 0;
      
      protected var §%!§:§!o§;
      
      protected var §3!7§:Vector.<XML>;
      
      protected var §1@§:Loader;
      
      public function §%"§()
      {
         this.§&A§ = {};
         this.§3!7§ = new Vector.<XML>();
         super();
         this.§%!§ = new §!o§();
      }
      
      public function get §%b§() : include
      {
         return this.§%!§;
      }
      
      public function get §4!+§() : Boolean
      {
         return this.§1!;§ == 0;
      }
      
      public function dispose() : void
      {
         this.§%!§.dispose();
      }
      
      public function getFileAsString(param1:String) : String
      {
         return (this.§&A§[param1] as §9b§).§ V§(false);
      }
      
      public function §7o§(param1:String) : ByteArray
      {
         return (this.§&A§[param1] as §9b§).content;
      }
      
      public function §?e§(param1:String, param2:Function) : void
      {
         return §-2§.§^!8§(this.§7o§(param1),param2);
      }
      
      public function §#!6§(param1:ByteArray, param2:Boolean = true) : void
      {
         var _loc6_:§9b§ = null;
         if(param2)
         {
            this.§,m§(param1);
         }
         var _loc3_:§ d§ = new § d§();
         _loc3_.loadBytes(param1);
         var _loc4_:Object = {};
         var _loc5_:int = _loc3_.§@! §() - 1;
         while(_loc5_ >= 0)
         {
            if((_loc6_ = _loc3_.§ i§(_loc5_)).§1§.substr(-1) != "/")
            {
               if(!this.§&A§[_loc6_.§1§])
               {
               }
               this.§&A§[_loc6_.§1§] = _loc4_[_loc6_.§1§] = _loc6_;
            }
            _loc5_--;
         }
         this.§5i§(_loc4_);
      }
      
      protected function §5i§(param1:Object) : void
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
                  jsonObject = JSON.parse((packageFiles[fileName] as §9b§).§ V§(false));
               }
               catch(e:Error)
               {
                  throw new Error("Can\'t convert file \'" + fileName + "\' to object; invalid JSON.",§1Q§.§-"§);
               }
               this.§]_§(jsonObject);
            }
            levelNameResults = fileName.match(/^levels\/Level(.*)\.json$/i);
            if(levelNameResults)
            {
               §5j§.§,!5§(levelNameResults[1].toLowerCase(),§&!;§.§@z§(this.getFileAsString(fileName)));
            }
            particleNameResults = fileName.match(/^particle_emitters\/(.*)\.pex$/i);
            if(particleNameResults)
            {
               this.§"u§(particleNameResults[1]);
            }
            compositeSpriteSheetNameResults = fileName.match(/composites\/data\/(.*)\.xml$/i);
            if(compositeSpriteSheetNameResults)
            {
               this.§@Q§(fileName);
            }
            compositeNameResults = fileName.match(/composites\/main\/(.*)\.xml$/i);
            if(compositeNameResults)
            {
               this.§7K§(fileName);
            }
            cutSceneNameResults = fileName.match(/cutscenes.lua$/i);
            if(cutSceneNameResults)
            {
               this.§#q§(fileName);
            }
            if(fileName.toLowerCase() == "assetmap.xml")
            {
               this.§,@§(fileName);
            }
         }
         if(this.§1!;§ == 0)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      private function §,@§(param1:String) : void
      {
         var _loc3_:LoaderContext = null;
         ++this.§1!;§;
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         this.§3!7§.push(_loc2_);
         if(this.§3!7§.length == 1)
         {
            this.§1@§ = new Loader();
            this.§1@§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§ x§);
            _loc3_ = new LoaderContext();
            _loc3_.allowCodeImport = true;
            this.§1@§.loadBytes(this.§7o§(_loc2_.Library.@swf),_loc3_);
         }
      }
      
      private function § x§(param1:Event) : void
      {
         this.§1@§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§ x§);
         var _loc2_:XML = this.§3!7§.shift();
         §"!C§.§-!B§(this.§1@§,_loc2_.Library[0]);
         if(this.§3!7§.length > 0)
         {
            this.§1@§ = new Loader();
            this.§1@§.contentLoaderInfo.addEventListener(Event.INIT,this.§ x§);
            this.§1@§.loadBytes(this.§7o§(this.§3!7§[0].Library.@swf));
         }
         this.§>0§();
      }
      
      private function §#q§(param1:String) : void
      {
         var _loc2_:Object = §'!,§.§[L§(this.getFileAsString(param1));
         §`!D§.§7G§(_loc2_);
      }
      
      protected function §7K§(param1:String) : void
      {
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         §<f§.§-h§(_loc2_);
      }
      
      protected function §@Q§(param1:String) : void
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
                  if(§&A§[_loc13_] == null)
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
            §%!§.§^!0§(new §6!+§(_loc2_,_loc4_,param1.bitmapData));
            §>0§();
         };
         ++this.§1!;§;
         var imagePath:String = filePath.substr(0,filePath.length - 3) + "png";
         this.§?e§(imagePath,onComplete);
      }
      
      protected function §>0§() : void
      {
         --this.§1!;§;
         if(this.§1!;§ == 0)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      protected function §"u§(param1:String) : void
      {
         var id:String = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            ParticleManager.§2?§(id,XML(getFileAsString("particle_emitters/" + id + ".pex")),param1.bitmapData);
         };
         this.§?e§("particle_emitters/" + id + ".png",onComplete);
      }
      
      protected function §]_§(param1:Object) : void
      {
         var spriteSheetClass:Class = null;
         var dataObject:Object = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            §%!§.§^!0§(new spriteSheetClass(dataObject,param1.bitmapData));
            §>0§();
         };
         ++this.§1!;§;
         if(dataObject.image)
         {
            spriteSheetClass = §>!5§;
            this.§?e§("sprite_sheets/" + dataObject.image,onComplete);
         }
         else
         {
            if(!(dataObject.name && dataObject.charCount))
            {
               throw new Error("Invalid sprite sheet data.");
            }
            spriteSheetClass = §6w§;
            this.§?e§("sprite_sheets/" + dataObject.name + ".png",onComplete);
         }
      }
      
      protected function §,m§(param1:ByteArray) : void
      {
         var _loc2_:int = 0;
         this.§=0§ = 56895 & 25147 >> 1;
         _loc2_ = Math.min(param1.length,65536) - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§@7§() * 255);
            _loc2_ -= 2;
         }
         _loc2_ = param1.length - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§@7§() * 255);
            _loc2_ -= int(this.§@7§() * 255);
         }
         var _loc3_:int = Math.max(param1.length,65536) - 65536;
         _loc2_ = param1.length - 1;
         while(_loc2_ >= _loc3_)
         {
            param1[_loc2_] -= int(this.§@7§() * 255);
            _loc2_ -= 2;
         }
         param1.inflate();
      }
      
      protected function §@7§() : Number
      {
         this.§=0§ ^= this.§=0§ << 21;
         this.§=0§ ^= this.§=0§ >>> 35;
         this.§=0§ ^= this.§=0§ << 4;
         if(this.§=0§ < 0)
         {
            this.§=0§ &= 2147483647;
         }
         return this.§=0§ / 2147483647;
      }
   }
}
