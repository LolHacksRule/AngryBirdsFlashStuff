package §9!A§
{
   import § d§.§7!&§;
   import § e§.§!=§;
   import § e§.§8n§;
   import § e§.§^!A§;
   import §&!!§.§@!E§;
   import §0O§.§8Y§;
   import §1!j§.§&v§;
   import §1!j§.§49§;
   import §7_§.§]![§;
   import §7_§.§^d§;
   import §?!d§.§'h§;
   import §?!d§.§7+§;
   import §?6§.§ 6§;
   import §?6§.§#'§;
   import §?6§.§,!B§;
   import §?6§.§2!J§;
   import §?6§.§6v§;
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.system.LoaderContext;
   import flash.utils.ByteArray;
   
   public class §8r§ extends EventDispatcher implements §7+§
   {
       
      
      protected var §^m§:int;
      
      protected var §>2§:Object;
      
      protected var §=_§:int = 0;
      
      protected var §>!"§:§6v§;
      
      protected var §2a§:Vector.<XML>;
      
      protected var §"d§:Loader;
      
      public function §8r§()
      {
         this.§>2§ = {};
         this.§2a§ = new Vector.<XML>();
         super();
         this.§>!"§ = new §6v§();
      }
      
      public function get §-!c§() : § 6§
      {
         return this.§>!"§;
      }
      
      public function get §6!=§() : Boolean
      {
         return this.§=_§ == 0;
      }
      
      public function dispose() : void
      {
         this.§>!"§.dispose();
      }
      
      public function getFileAsString(param1:String) : String
      {
         return (this.§>2§[param1] as §&v§).§7! §(false);
      }
      
      public function §&!5§(param1:String) : ByteArray
      {
         return (this.§>2§[param1] as §&v§).content;
      }
      
      public function §7v§(param1:String, param2:Function) : void
      {
         return §^!A§.§3!Y§(this.§&!5§(param1),param2);
      }
      
      public function §6>§(param1:ByteArray, param2:Boolean = true) : void
      {
         var _loc6_:§&v§ = null;
         if(param2)
         {
            this.§4U§(param1);
         }
         var _loc3_:§49§ = new §49§();
         _loc3_.loadBytes(param1);
         var _loc4_:Object = {};
         var _loc5_:int = _loc3_.§@i§() - 1;
         while(_loc5_ >= 0)
         {
            if((_loc6_ = _loc3_.§8!T§(_loc5_)).§5!O§.substr(-1) != "/")
            {
               if(!this.§>2§[_loc6_.§5!O§])
               {
               }
               this.§>2§[_loc6_.§5!O§] = _loc4_[_loc6_.§5!O§] = _loc6_;
            }
            _loc5_--;
         }
         this.§%L§(_loc4_);
      }
      
      protected function §%L§(param1:Object) : void
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
                  jsonObject = JSON.parse((packageFiles[fileName] as §&v§).§7! §(false));
               }
               catch(e:Error)
               {
                  throw new Error("Can\'t convert file \'" + fileName + "\' to object; invalid JSON.",§!=§.§2!k§);
               }
               this.§'!3§(jsonObject);
            }
            levelNameResults = fileName.match(/^levels\/Level(.*)\.json$/i);
            if(levelNameResults)
            {
               §^d§.§-x§(levelNameResults[1].toLowerCase(),§]![§.§<c§(this.getFileAsString(fileName)));
            }
            particleNameResults = fileName.match(/^particle_emitters\/(.*)\.pex$/i);
            if(particleNameResults)
            {
               this.§5!G§(particleNameResults[1]);
            }
            compositeSpriteSheetNameResults = fileName.match(/composites\/data\/(.*)\.xml$/i);
            if(compositeSpriteSheetNameResults)
            {
               this.§'V§(fileName);
            }
            compositeNameResults = fileName.match(/composites\/main\/(.*)\.xml$/i);
            if(compositeNameResults)
            {
               this.§;§(fileName);
            }
            cutSceneNameResults = fileName.match(/cutscenes.lua$/i);
            if(cutSceneNameResults)
            {
               this.§"!2§(fileName);
            }
            if(fileName.toLowerCase() == "assetmap.xml")
            {
               this.§+§(fileName);
            }
         }
         if(this.§=_§ == 0)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      private function §+§(param1:String) : void
      {
         var _loc3_:LoaderContext = null;
         ++this.§=_§;
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         this.§2a§.push(_loc2_);
         if(this.§2a§.length == 1)
         {
            this.§"d§ = new Loader();
            this.§"d§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§2i§);
            _loc3_ = new LoaderContext();
            _loc3_.allowCodeImport = true;
            this.§"d§.loadBytes(this.§&!5§(_loc2_.Library.@swf),_loc3_);
         }
      }
      
      private function §2i§(param1:Event) : void
      {
         this.§"d§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§2i§);
         var _loc2_:XML = this.§2a§.shift();
         §'h§.§@I§(this.§"d§,_loc2_.Library[0]);
         if(this.§2a§.length > 0)
         {
            this.§"d§ = new Loader();
            this.§"d§.contentLoaderInfo.addEventListener(Event.INIT,this.§2i§);
            this.§"d§.loadBytes(this.§&!5§(this.§2a§[0].Library.@swf));
         }
         this.§'G§();
      }
      
      private function §"!2§(param1:String) : void
      {
         var _loc2_:Object = §8n§.§0!k§(this.getFileAsString(param1));
         §7!&§.§`!i§(_loc2_);
      }
      
      protected function §;§(param1:String) : void
      {
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         §@!E§.§3M§(_loc2_);
      }
      
      protected function §'V§(param1:String) : void
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
                  if(§>2§[_loc13_] == null)
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
            §>!"§.§+!!§(new §2!J§(_loc2_,_loc4_,param1.bitmapData));
            §'G§();
         };
         ++this.§=_§;
         var imagePath:String = filePath.substr(0,filePath.length - 3) + "png";
         this.§7v§(imagePath,onComplete);
      }
      
      protected function §'G§() : void
      {
         --this.§=_§;
         if(this.§=_§ == 0)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      protected function §5!G§(param1:String) : void
      {
         var id:String = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            §8Y§.§ true§(id,XML(getFileAsString("particle_emitters/" + id + ".pex")),param1.bitmapData);
         };
         this.§7v§("particle_emitters/" + id + ".png",onComplete);
      }
      
      protected function §'!3§(param1:Object) : void
      {
         var spriteSheetClass:Class = null;
         var dataObject:Object = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            §>!"§.§+!!§(new spriteSheetClass(dataObject,param1.bitmapData));
            §'G§();
         };
         ++this.§=_§;
         if(dataObject.image)
         {
            spriteSheetClass = §,!B§;
            this.§7v§("sprite_sheets/" + dataObject.image,onComplete);
         }
         else
         {
            if(!(dataObject.name && dataObject.charCount))
            {
               throw new Error("Invalid sprite sheet data.");
            }
            spriteSheetClass = §#'§;
            this.§7v§("sprite_sheets/" + dataObject.name + ".png",onComplete);
         }
      }
      
      protected function §4U§(param1:ByteArray) : void
      {
         var _loc2_:int = 0;
         this.§^m§ = 56895 & 25147 >> 1;
         _loc2_ = Math.min(param1.length,65536) - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§4!H§() * 255);
            _loc2_ -= 2;
         }
         _loc2_ = param1.length - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§4!H§() * 255);
            _loc2_ -= int(this.§4!H§() * 255);
         }
         var _loc3_:int = Math.max(param1.length,65536) - 65536;
         _loc2_ = param1.length - 1;
         while(_loc2_ >= _loc3_)
         {
            param1[_loc2_] -= int(this.§4!H§() * 255);
            _loc2_ -= 2;
         }
         param1.inflate();
      }
      
      protected function §4!H§() : Number
      {
         this.§^m§ ^= this.§^m§ << 21;
         this.§^m§ ^= this.§^m§ >>> 35;
         this.§^m§ ^= this.§^m§ << 4;
         if(this.§^m§ < 0)
         {
            this.§^m§ &= 2147483647;
         }
         return this.§^m§ / 2147483647;
      }
   }
}
