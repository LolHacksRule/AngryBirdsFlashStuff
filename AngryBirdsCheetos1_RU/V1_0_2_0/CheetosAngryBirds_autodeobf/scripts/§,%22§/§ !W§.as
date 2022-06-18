package §,"§
{
   import §#[§.§"!,§;
   import §#[§.§2F§;
   import §#[§.§`g§;
   import §#b§.§5!#§;
   import §#b§.§85§;
   import §+!^§.§4Q§;
   import §+!^§.§[!Z§;
   import §2!4§.§3&§;
   import §2&§.§?o§;
   import §2&§.§`b§;
   import §3!,§.§,6§;
   import §3!,§.§-e§;
   import §3!,§.§1g§;
   import §3!,§.§41§;
   import §3!,§.§[4§;
   import §;S§.§>!^§;
   import §`!,§.§#!#§;
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.system.LoaderContext;
   import flash.utils.ByteArray;
   
   public class § !W§ extends EventDispatcher implements §4Q§
   {
       
      
      protected var §!!S§:int;
      
      protected var §>K§:Object;
      
      protected var §2j§:int = 0;
      
      protected var §@W§:§,6§;
      
      protected var §+!`§:Vector.<XML>;
      
      protected var §[I§:Loader;
      
      public function § !W§()
      {
         this.§>K§ = {};
         this.§+!`§ = new Vector.<XML>();
         super();
         this.§@W§ = new §,6§();
      }
      
      public function get §8I§() : §1g§
      {
         return this.§@W§;
      }
      
      public function get §=Z§() : Boolean
      {
         return this.§2j§ == 0;
      }
      
      public function dispose() : void
      {
         this.§@W§.dispose();
      }
      
      public function getFileAsString(param1:String) : String
      {
         return (this.§>K§[param1] as §?o§).§6?§(false);
      }
      
      public function §?q§(param1:String) : ByteArray
      {
         return (this.§>K§[param1] as §?o§).content;
      }
      
      public function §1l§(param1:String, param2:Function) : void
      {
         return §"!,§.§!!]§(this.§?q§(param1),param2);
      }
      
      public function §>!@§(param1:ByteArray, param2:Boolean = true) : void
      {
         var _loc6_:§?o§ = null;
         if(param2)
         {
            this.§,!X§(param1);
         }
         var _loc3_:§`b§ = new §`b§();
         _loc3_.loadBytes(param1);
         var _loc4_:Object = {};
         var _loc5_:int = _loc3_.§^F§() - 1;
         while(_loc5_ >= 0)
         {
            if((_loc6_ = _loc3_.§3c§(_loc5_)).§else§.substr(-1) != "/")
            {
               if(!this.§>K§[_loc6_.§else§])
               {
               }
               this.§>K§[_loc6_.§else§] = _loc4_[_loc6_.§else§] = _loc6_;
            }
            _loc5_--;
         }
         this.§%!T§(_loc4_);
      }
      
      protected function §%!T§(param1:Object) : void
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
                  jsonObject = JSON.parse((packageFiles[fileName] as §?o§).§6?§(false));
               }
               catch(e:Error)
               {
                  throw new Error("Can\'t convert file \'" + fileName + "\' to object; invalid JSON.",§2F§.§1!+§);
               }
               this.§!!'§(jsonObject);
            }
            levelNameResults = fileName.match(/^levels\/Level(.*)\.json$/i);
            if(levelNameResults)
            {
               §5!#§.§+!E§(levelNameResults[1].toLowerCase(),§85§.§#d§(this.getFileAsString(fileName)));
            }
            particleNameResults = fileName.match(/^particle_emitters\/(.*)\.pex$/i);
            if(particleNameResults)
            {
               this.§-J§(particleNameResults[1]);
            }
            compositeSpriteSheetNameResults = fileName.match(/composites\/data\/(.*)\.xml$/i);
            if(compositeSpriteSheetNameResults)
            {
               this.§'!A§(fileName);
            }
            compositeNameResults = fileName.match(/composites\/main\/(.*)\.xml$/i);
            if(compositeNameResults)
            {
               this.§2B§(fileName);
            }
            cutSceneNameResults = fileName.match(/cutscenes.lua$/i);
            if(cutSceneNameResults)
            {
               this.§2l§(fileName);
            }
            if(fileName.toLowerCase() == "assetmap.xml")
            {
               this.§,$§(fileName);
            }
         }
         if(this.§2j§ == 0)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      private function §,$§(param1:String) : void
      {
         var _loc3_:LoaderContext = null;
         ++this.§2j§;
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         this.§+!`§.push(_loc2_);
         if(this.§+!`§.length == 1)
         {
            this.§[I§ = new Loader();
            this.§[I§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§#=§);
            _loc3_ = new LoaderContext();
            _loc3_.allowCodeImport = true;
            this.§[I§.loadBytes(this.§?q§(_loc2_.Library.@swf),_loc3_);
         }
      }
      
      private function §#=§(param1:Event) : void
      {
         this.§[I§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§#=§);
         var _loc2_:XML = this.§+!`§.shift();
         §[!Z§.§6§(this.§[I§,_loc2_.Library[0]);
         if(this.§+!`§.length > 0)
         {
            this.§[I§ = new Loader();
            this.§[I§.contentLoaderInfo.addEventListener(Event.INIT,this.§#=§);
            this.§[I§.loadBytes(this.§?q§(this.§+!`§[0].Library.@swf));
         }
         this.§,!A§();
      }
      
      private function §2l§(param1:String) : void
      {
         var _loc2_:Object = §`g§.§#!6§(this.getFileAsString(param1));
         §#!#§.§<u§(_loc2_);
      }
      
      protected function §2B§(param1:String) : void
      {
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         §3&§.§;P§(_loc2_);
      }
      
      protected function §'!A§(param1:String) : void
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
                  if(§>K§[_loc13_] == null)
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
            §@W§.§@Q§(new §41§(_loc2_,_loc4_,param1.bitmapData));
            §,!A§();
         };
         ++this.§2j§;
         var imagePath:String = filePath.substr(0,filePath.length - 3) + "png";
         this.§1l§(imagePath,onComplete);
      }
      
      protected function §,!A§() : void
      {
         --this.§2j§;
         if(this.§2j§ == 0)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      protected function §-J§(param1:String) : void
      {
         var id:String = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            §>!^§.§7=§(id,XML(getFileAsString("particle_emitters/" + id + ".pex")),param1.bitmapData);
         };
         this.§1l§("particle_emitters/" + id + ".png",onComplete);
      }
      
      protected function §!!'§(param1:Object) : void
      {
         var spriteSheetClass:Class = null;
         var dataObject:Object = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            §@W§.§@Q§(new spriteSheetClass(dataObject,param1.bitmapData));
            §,!A§();
         };
         ++this.§2j§;
         if(dataObject.image)
         {
            spriteSheetClass = §[4§;
            this.§1l§("sprite_sheets/" + dataObject.image,onComplete);
         }
         else
         {
            if(!(dataObject.name && dataObject.charCount))
            {
               throw new Error("Invalid sprite sheet data.");
            }
            spriteSheetClass = §-e§;
            this.§1l§("sprite_sheets/" + dataObject.name + ".png",onComplete);
         }
      }
      
      protected function §,!X§(param1:ByteArray) : void
      {
         var _loc2_:int = 0;
         this.§!!S§ = 56895 & 25147 >> 1;
         _loc2_ = Math.min(param1.length,65536) - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§,?§() * 255);
            _loc2_ -= 2;
         }
         _loc2_ = param1.length - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§,?§() * 255);
            _loc2_ -= int(this.§,?§() * 255);
         }
         var _loc3_:int = Math.max(param1.length,65536) - 65536;
         _loc2_ = param1.length - 1;
         while(_loc2_ >= _loc3_)
         {
            param1[_loc2_] -= int(this.§,?§() * 255);
            _loc2_ -= 2;
         }
         param1.inflate();
      }
      
      protected function §,?§() : Number
      {
         this.§!!S§ ^= this.§!!S§ << 21;
         this.§!!S§ ^= this.§!!S§ >>> 35;
         this.§!!S§ ^= this.§!!S§ << 4;
         if(this.§!!S§ < 0)
         {
            this.§!!S§ &= 2147483647;
         }
         return this.§!!S§ / 2147483647;
      }
   }
}
