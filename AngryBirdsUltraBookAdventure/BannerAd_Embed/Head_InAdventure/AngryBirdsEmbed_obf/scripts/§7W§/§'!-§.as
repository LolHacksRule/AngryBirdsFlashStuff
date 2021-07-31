package §7W§
{
   import §&p§.§^!C§;
   import §+!B§.§7!1§;
   import §+!B§.§<8§;
   import §+!B§.§]!8§;
   import §+F§.§"o§;
   import §+F§.§9w§;
   import §1!-§.§@Z§;
   import §1!-§.§[4§;
   import §6K§.§,$§;
   import §6K§.§7!;§;
   import §8§.ParticleManager;
   import §9K§.§4!<§;
   import §>k§.;
   import §>k§.§2&§;
   import §>k§.§3R§;
   import §>k§.§5$§;
   import §>k§.§^F§;
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.utils.ByteArray;
   
   public class §'!-§ extends EventDispatcher implements §9w§
   {
       
      
      protected var § @§:int;
      
      protected var §@Q§:Object;
      
      protected var §]§:int = 0;
      
      protected var §3c§:§2&§;
      
      protected var §7!2§:Vector.<XML>;
      
      protected var §;$§:Loader;
      
      private var §,N§:String;
      
      public function §'!-§()
      {
         this.§@Q§ = {};
         this.§7!2§ = new Vector.<XML>();
         super();
         this.§3c§ = new §2&§();
      }
      
      public function §^X§(param1:String) : void
      {
         this.§,N§ = param1;
      }
      
      public function get §='§() : §5$§
      {
         return this.§3c§;
      }
      
      public function get §1!E§() : Boolean
      {
         return this.§]§ == 0;
      }
      
      public function dispose() : void
      {
         this.§3c§.dispose();
      }
      
      public function getFileAsString(param1:String) : String
      {
         return (this.§@Q§[param1] as §,$§).§3L§(false);
      }
      
      public function §3!1§(param1:String) : ByteArray
      {
         return (this.§@Q§[param1] as §,$§).content;
      }
      
      public function §5!;§(param1:String, param2:Function) : void
      {
         return §<8§.§%!=§(this.§3!1§(param1),param2);
      }
      
      public function §+X§(param1:ByteArray, param2:Boolean = true) : void
      {
         var _loc6_:§,$§ = null;
         if(param2)
         {
            this.§2G§(param1);
         }
         var _loc3_:§7!;§ = new §7!;§();
         _loc3_.loadBytes(param1);
         var _loc4_:Object = {};
         var _loc5_:int = _loc3_.§%!'§() - 1;
         while(_loc5_ >= 0)
         {
            if((_loc6_ = _loc3_.§@_§(_loc5_)).§%;§.substr(-1) != "/")
            {
               if(!this.§@Q§[_loc6_.§%;§])
               {
               }
               this.§@Q§[_loc6_.§%;§] = _loc4_[_loc6_.§%;§] = _loc6_;
            }
            _loc5_--;
         }
         this.§^@§(_loc4_);
      }
      
      protected function §^@§(param1:Object) : void
      {
         var fileName:String = null;
         var levelNameResults:Array = null;
         var particleNameResults:Array = null;
         var compositeSpriteSheetNameResults:Array = null;
         var compositeNameResults:Array = null;
         var cutSceneNameResults:Array = null;
         var swfCutSceneNameResults:Array = null;
         var jsonObject:Object = null;
         var packageFiles:Object = param1;
         for(fileName in packageFiles)
         {
            if(fileName.search(/^sprite_sheets\/(.*)\.json$/i) != -1)
            {
               try
               {
                  jsonObject = JSON.parse((packageFiles[fileName] as §,$§).§3L§(false));
               }
               catch(e:Error)
               {
                  throw new Error("Can\'t convert file \'" + fileName + "\' to object; invalid JSON.",§]!8§.§6#§);
               }
               this.§[!B§(jsonObject);
            }
            levelNameResults = fileName.match(/^levels\/Level(.*)\.json$/i);
            if(levelNameResults)
            {
               §[4§.§8z§(levelNameResults[1].toLowerCase(),§@Z§.§^&§(this.getFileAsString(fileName)));
            }
            particleNameResults = fileName.match(/^particle_emitters\/(.*)\.pex$/i);
            if(particleNameResults)
            {
               this.§?h§(particleNameResults[1]);
            }
            compositeSpriteSheetNameResults = fileName.match(/composites\/data\/(.*)\.xml$/i);
            if(compositeSpriteSheetNameResults)
            {
               this.§+t§(fileName);
            }
            compositeNameResults = fileName.match(/composites\/main\/(.*)\.xml$/i);
            if(compositeNameResults)
            {
               this.§;X§(fileName);
            }
            cutSceneNameResults = fileName.match(/cutscenes.lua$/i);
            if(cutSceneNameResults)
            {
               this.§,!+§(fileName);
            }
            swfCutSceneNameResults = fileName.match(/cutscene.swf$/i);
            if(swfCutSceneNameResults)
            {
               this.§,S§(fileName,this.§,N§);
            }
            if(fileName.toLowerCase() == "assetmap.xml")
            {
               this.§'r§(fileName);
            }
         }
         if(this.§]§ == 0)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      private function §'r§(param1:String) : void
      {
         var _loc3_:LoaderContext = null;
         ++this.§]§;
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         this.§7!2§.push(_loc2_);
         if(this.§7!2§.length == 1)
         {
            this.§;$§ = new Loader();
            this.§;$§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§1!<§);
            _loc3_ = new LoaderContext();
            _loc3_.allowCodeImport = true;
            this.§;$§.loadBytes(this.§3!1§(_loc2_.Library.@swf),new LoaderContext(false,ApplicationDomain.currentDomain));
         }
      }
      
      private function §1!<§(param1:Event) : void
      {
         this.§;$§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§1!<§);
         var _loc2_:XML = this.§7!2§.shift();
         §"o§.§ else§(this.§;$§,_loc2_.Library[0]);
         if(this.§7!2§.length > 0)
         {
            this.§;$§ = new Loader();
            this.§;$§.contentLoaderInfo.addEventListener(Event.INIT,this.§1!<§);
            this.§;$§.loadBytes(this.§3!1§(this.§7!2§[0].Library.@swf),new LoaderContext(false,ApplicationDomain.currentDomain));
         }
         this.§]4§();
      }
      
      private function §,!+§(param1:String) : void
      {
         var _loc2_:Object = §7!1§.§?4§(this.getFileAsString(param1));
         §^!C§.§[!&§(_loc2_);
      }
      
      private function §,S§(param1:String, param2:String) : void
      {
         §^!C§.§throw§(param2,this.§3!1§(param1));
      }
      
      protected function §;X§(param1:String) : void
      {
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         §4!<§.§0!1§(_loc2_);
      }
      
      protected function §+t§(param1:String) : void
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
                  if(§@Q§[_loc13_] == null)
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
            §3c§.§2%§(new §^F§(_loc2_,_loc4_,param1.bitmapData));
            §]4§();
         };
         ++this.§]§;
         var imagePath:String = filePath.substr(0,filePath.length - 3) + "png";
         this.§5!;§(imagePath,onComplete);
      }
      
      protected function §]4§() : void
      {
         --this.§]§;
         if(this.§]§ == 0)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      protected function §?h§(param1:String) : void
      {
         var id:String = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            ParticleManager.§0O§(id,XML(getFileAsString("particle_emitters/" + id + ".pex")),param1.bitmapData);
         };
         this.§5!;§("particle_emitters/" + id + ".png",onComplete);
      }
      
      protected function §[!B§(param1:Object) : void
      {
         var spriteSheetClass:Class = null;
         var dataObject:Object = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            §3c§.§2%§(new spriteSheetClass(dataObject,param1.bitmapData));
            §]4§();
         };
         ++this.§]§;
         if(dataObject.image)
         {
            spriteSheetClass = §#0§;
            this.§5!;§("sprite_sheets/" + dataObject.image,onComplete);
         }
         else
         {
            if(!(dataObject.name && dataObject.charCount))
            {
               throw new Error("Invalid sprite sheet data.");
            }
            spriteSheetClass = §3R§;
            this.§5!;§("sprite_sheets/" + dataObject.name + ".png",onComplete);
         }
      }
      
      protected function §2G§(param1:ByteArray) : void
      {
         var _loc2_:int = 0;
         this.§ @§ = 56895 & 25147 >> 1;
         _loc2_ = Math.min(param1.length,65536) - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§5W§() * 255);
            _loc2_ -= 2;
         }
         _loc2_ = param1.length - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§5W§() * 255);
            _loc2_ -= int(this.§5W§() * 255);
         }
         var _loc3_:int = Math.max(param1.length,65536) - 65536;
         _loc2_ = param1.length - 1;
         while(_loc2_ >= _loc3_)
         {
            param1[_loc2_] -= int(this.§5W§() * 255);
            _loc2_ -= 2;
         }
         param1.inflate();
      }
      
      protected function §5W§() : Number
      {
         this.§ @§ ^= this.§ @§ << 21;
         this.§ @§ ^= this.§ @§ >>> 35;
         this.§ @§ ^= this.§ @§ << 4;
         if(this.§ @§ < 0)
         {
            this.§ @§ &= 2147483647;
         }
         return this.§ @§ / 2147483647;
      }
   }
}
