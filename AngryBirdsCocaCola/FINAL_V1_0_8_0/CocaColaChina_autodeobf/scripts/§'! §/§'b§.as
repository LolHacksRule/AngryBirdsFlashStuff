package §'! §
{
   import § try§.§9!T§;
   import § try§.§=h§;
   import §%!^§.§"!7§;
   import §%!^§.§"=§;
   import §&$§.§1U§;
   import §&$§.§3#§;
   import §&$§.§^^§;
   import §3q§.§-q§;
   import §3q§.§4!a§;
   import §48§.§&m§;
   import §5!5§.§!!P§;
   import §5!5§.§%k§;
   import §5!5§.§;!O§;
   import §5!5§.§[!6§;
   import §5!5§.§case §;
   import §9!3§.§7!"§;
   import §?J§.§6!X§;
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.system.LoaderContext;
   import flash.utils.ByteArray;
   
   public class §'b§ extends EventDispatcher implements §9!T§
   {
       
      
      protected var §^9§:int;
      
      protected var §]a§:Object;
      
      protected var §@m§:int = 0;
      
      protected var §]D§:§!!P§;
      
      protected var §3$§:Vector.<XML>;
      
      protected var §<!c§:Loader;
      
      public function §'b§()
      {
         this.§]a§ = {};
         this.§3$§ = new Vector.<XML>();
         super();
         this.§]D§ = new §!!P§();
      }
      
      public function get §;!C§() : §%k§
      {
         return this.§]D§;
      }
      
      public function get §&x§() : Boolean
      {
         return this.§@m§ == 0;
      }
      
      public function dispose() : void
      {
         this.§]D§.dispose();
      }
      
      public function getFileAsString(param1:String) : String
      {
         return (this.§]a§[param1] as §4!a§).§,e§(false);
      }
      
      public function §53§(param1:String) : ByteArray
      {
         return (this.§]a§[param1] as §4!a§).content;
      }
      
      public function §`u§(param1:String, param2:Function) : void
      {
         return §3#§.§"!$§(this.§53§(param1),param2);
      }
      
      public function §%!1§(param1:ByteArray, param2:Boolean = true) : void
      {
         var _loc6_:§4!a§ = null;
         if(param2)
         {
            this.§@Q§(param1);
         }
         var _loc3_:§-q§ = new §-q§();
         _loc3_.loadBytes(param1);
         var _loc4_:Object = {};
         var _loc5_:int = _loc3_.§#&§() - 1;
         while(_loc5_ >= 0)
         {
            if((_loc6_ = _loc3_.§>C§(_loc5_)).§%![§.substr(-1) != "/")
            {
               if(!this.§]a§[_loc6_.§%![§])
               {
               }
               this.§]a§[_loc6_.§%![§] = _loc4_[_loc6_.§%![§] = _loc6_;
            }
            _loc5_--;
         }
         this.§#I§(_loc4_);
      }
      
      protected function §#I§(param1:Object) : void
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
                  jsonObject = JSON.parse((packageFiles[fileName] as §4!a§).§,e§(false));
               }
               catch(e:Error)
               {
                  throw new Error("Can\'t convert file \'" + fileName + "\' to object; invalid JSON.",§1U§.§3!Q§);
               }
               this.§2!D§(jsonObject);
            }
            levelNameResults = fileName.match(/^levels\/Level(.*)\.json$/i);
            if(levelNameResults)
            {
               §"=§.§,z§(levelNameResults[1].toLowerCase(),§"!7§.§,=§(this.getFileAsString(fileName)));
            }
            particleNameResults = fileName.match(/^particle_emitters\/(.*)\.pex$/i);
            if(particleNameResults)
            {
               this.§+P§(particleNameResults[1]);
            }
            compositeSpriteSheetNameResults = fileName.match(/composites\/data\/(.*)\.xml$/i);
            if(compositeSpriteSheetNameResults)
            {
               this.§&i§(fileName);
            }
            compositeNameResults = fileName.match(/composites\/main\/(.*)\.xml$/i);
            if(compositeNameResults)
            {
               this.§ !B§(fileName);
            }
            cutSceneNameResults = fileName.match(/cutscenes.lua$/i);
            if(cutSceneNameResults)
            {
               this.§@E§(fileName);
            }
            if(fileName.toLowerCase() == "assetmap.xml")
            {
               this.§]B§(fileName);
            }
         }
         if(this.§@m§ == 0)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      private function §]B§(param1:String) : void
      {
         var _loc3_:LoaderContext = null;
         ++this.§@m§;
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         this.§3$§.push(_loc2_);
         if(this.§3$§.length == 1)
         {
            this.§<!c§ = new Loader();
            this.§<!c§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§@z§);
            _loc3_ = new LoaderContext();
            _loc3_.allowCodeImport = true;
            this.§<!c§.loadBytes(this.§53§(_loc2_.Library.@swf),_loc3_);
         }
      }
      
      private function §@z§(param1:Event) : void
      {
         this.§<!c§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§@z§);
         var _loc2_:XML = this.§3$§.shift();
         §=h§.§!]§(this.§<!c§,_loc2_.Library[0]);
         if(this.§3$§.length > 0)
         {
            this.§<!c§ = new Loader();
            this.§<!c§.contentLoaderInfo.addEventListener(Event.INIT,this.§@z§);
            this.§<!c§.loadBytes(this.§53§(this.§3$§[0].Library.@swf));
         }
         this.§#F§();
      }
      
      private function §@E§(param1:String) : void
      {
         var _loc2_:Object = §^^§.§?S§(this.getFileAsString(param1));
         §7!"§.§]!W§(_loc2_);
      }
      
      protected function § !B§(param1:String) : void
      {
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         §&m§.§<>§(_loc2_);
      }
      
      protected function §&i§(param1:String) : void
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
                  if(§]a§[_loc13_] == null)
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
            §]D§.§3Z§(new §[!6§(_loc2_,_loc4_,param1.bitmapData));
            §#F§();
         };
         ++this.§@m§;
         var imagePath:String = filePath.substr(0,filePath.length - 3) + "png";
         this.§`u§(imagePath,onComplete);
      }
      
      protected function §#F§() : void
      {
         --this.§@m§;
         if(this.§@m§ == 0)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      protected function §+P§(param1:String) : void
      {
         var id:String = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            §6!X§.§]&§(id,XML(getFileAsString("particle_emitters/" + id + ".pex")),param1.bitmapData);
         };
         this.§`u§("particle_emitters/" + id + ".png",onComplete);
      }
      
      protected function §2!D§(param1:Object) : void
      {
         var spriteSheetClass:Class = null;
         var dataObject:Object = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            §]D§.§3Z§(new spriteSheetClass(dataObject,param1.bitmapData));
            §#F§();
         };
         ++this.§@m§;
         if(dataObject.image)
         {
            spriteSheetClass = §;!O§;
            this.§`u§("sprite_sheets/" + dataObject.image,onComplete);
         }
         else
         {
            if(!(dataObject.name && dataObject.charCount))
            {
               throw new Error("Invalid sprite sheet data.");
            }
            spriteSheetClass = §case §;
            this.§`u§("sprite_sheets/" + dataObject.name + ".png",onComplete);
         }
      }
      
      protected function §@Q§(param1:ByteArray) : void
      {
         var _loc2_:int = 0;
         this.§^9§ = 56895 & 25147 >> 1;
         _loc2_ = Math.min(param1.length,65536) - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§0!H§() * 255);
            _loc2_ -= 2;
         }
         _loc2_ = param1.length - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§0!H§() * 255);
            _loc2_ -= int(this.§0!H§() * 255);
         }
         var _loc3_:int = Math.max(param1.length,65536) - 65536;
         _loc2_ = param1.length - 1;
         while(_loc2_ >= _loc3_)
         {
            param1[_loc2_] -= int(this.§0!H§() * 255);
            _loc2_ -= 2;
         }
         param1.inflate();
      }
      
      protected function §0!H§() : Number
      {
         this.§^9§ ^= this.§^9§ << 21;
         this.§^9§ ^= this.§^9§ >>> 35;
         this.§^9§ ^= this.§^9§ << 4;
         if(this.§^9§ < 0)
         {
            this.§^9§ &= 2147483647;
         }
         return this.§^9§ / 2147483647;
      }
   }
}
