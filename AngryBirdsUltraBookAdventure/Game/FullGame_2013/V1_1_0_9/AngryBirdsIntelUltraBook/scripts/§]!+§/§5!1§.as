package §]!+§
{
   import §"!i§.§"!'§;
   import §"!i§.LevelManager;
   import §-o§.§2!4§;
   import §-o§.§4w§;
   import §2"$§.§1!h§;
   import §2"$§.§=!,§;
   import §<-§.§"K§;
   import §<-§.§-"!§;
   import §<-§.§?K§;
   import §<8§.§!!o§;
   import §<8§.§!%§;
   import §<8§.§!B§;
   import §<8§.§+S§;
   import §<8§.§,!J§;
   import §=!A§.ParticleManager;
   import §=I§.§6g§;
   import §=`§.§4s§;
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.utils.ByteArray;
   
   public class §5!1§ extends EventDispatcher implements §2!4§
   {
       
      
      protected var §5!T§:int;
      
      protected var §"!J§:Object;
      
      protected var §4" §:int = 0;
      
      protected var §6L§:§!%§;
      
      protected var §3_§:Vector.<XML>;
      
      protected var §,!a§:Loader;
      
      private var §['§:String;
      
      public function §5!1§()
      {
         this.§"!J§ = {};
         this.§3_§ = new Vector.<XML>();
         super();
         this.§6L§ = new §!%§();
      }
      
      public function §#!-§(param1:String) : void
      {
         this.§['§ = param1;
      }
      
      public function get §8!s§() : §,!J§
      {
         return this.§6L§;
      }
      
      public function get §+<§() : Boolean
      {
         return this.§4" § == 0;
      }
      
      public function dispose() : void
      {
         this.§6L§.dispose();
      }
      
      public function getFileAsString(param1:String) : String
      {
         return (this.§"!J§[param1] as §=!,§).§7Y§(false);
      }
      
      public function §0!Z§(param1:String) : ByteArray
      {
         return (this.§"!J§[param1] as §=!,§).content;
      }
      
      public function §1!0§(param1:String, param2:Function) : void
      {
         return §?K§.§&B§(this.§0!Z§(param1),param2);
      }
      
      public function §?O§(param1:ByteArray, param2:Boolean = true) : void
      {
         var _loc6_:§=!,§ = null;
         if(param2)
         {
            this.§1i§(param1);
         }
         var _loc3_:§1!h§ = new §1!h§();
         _loc3_.loadBytes(param1);
         var _loc4_:Object = {};
         var _loc5_:int = _loc3_.§]r§() - 1;
         while(_loc5_ >= 0)
         {
            if((_loc6_ = _loc3_.§2t§(_loc5_)).§=!;§.substr(-1) != "/")
            {
               if(!this.§"!J§[_loc6_.§=!;§])
               {
               }
               this.§"!J§[_loc6_.§=!;§] = _loc4_[_loc6_.§=!;§] = _loc6_;
            }
            _loc5_--;
         }
         this.§[4§(_loc4_);
      }
      
      protected function §[4§(param1:Object) : void
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
                  jsonObject = JSON.parse((packageFiles[fileName] as §=!,§).§7Y§(false));
               }
               catch(e:Error)
               {
                  throw new Error("Can\'t convert file \'" + fileName + "\' to object; invalid JSON.",§"K§.§6#§);
               }
               this.§?+§(jsonObject);
            }
            levelNameResults = fileName.match(/^levels\/Level(.*)\.json$/i);
            if(levelNameResults)
            {
               LevelManager.§8g§(levelNameResults[1].toLowerCase(),§"!'§.§'O§(this.getFileAsString(fileName)));
            }
            particleNameResults = fileName.match(/^particle_emitters\/(.*)\.pex$/i);
            if(particleNameResults)
            {
               this.§1d§(particleNameResults[1]);
            }
            compositeSpriteSheetNameResults = fileName.match(/composites\/data\/(.*)\.xml$/i);
            if(compositeSpriteSheetNameResults)
            {
               this.§3?§(fileName);
            }
            compositeNameResults = fileName.match(/composites\/main\/(.*)\.xml$/i);
            if(compositeNameResults)
            {
               this.§;T§(fileName);
            }
            cutSceneNameResults = fileName.match(/cutscenes.lua$/i);
            if(cutSceneNameResults)
            {
               this.§6'§(fileName);
            }
            swfCutSceneNameResults = fileName.match(/cutscene.swf$/i);
            if(swfCutSceneNameResults)
            {
               this.§^1§(fileName,this.§['§);
            }
            if(fileName.toLowerCase() == "assetmap.xml")
            {
               this.§<!,§(fileName);
            }
         }
         if(this.§4" § == 0)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      private function §<!,§(param1:String) : void
      {
         var _loc3_:LoaderContext = null;
         ++this.§4" §;
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         this.§3_§.push(_loc2_);
         if(this.§3_§.length == 1)
         {
            this.§,!a§ = new Loader();
            this.§,!a§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§57§);
            _loc3_ = new LoaderContext();
            _loc3_.allowCodeImport = true;
            this.§,!a§.loadBytes(this.§0!Z§(_loc2_.Library.@swf),new LoaderContext(false,ApplicationDomain.currentDomain));
         }
      }
      
      private function §57§(param1:Event) : void
      {
         this.§,!a§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§57§);
         var _loc2_:XML = this.§3_§.shift();
         §4w§.§<!r§(this.§,!a§,_loc2_.Library[0]);
         if(this.§3_§.length > 0)
         {
            this.§,!a§ = new Loader();
            this.§,!a§.contentLoaderInfo.addEventListener(Event.INIT,this.§57§);
            this.§,!a§.loadBytes(this.§0!Z§(this.§3_§[0].Library.@swf),new LoaderContext(false,ApplicationDomain.currentDomain));
         }
         this.§^V§();
      }
      
      private function §6'§(param1:String) : void
      {
         var _loc2_:Object = §-"!§.§4!c§(this.getFileAsString(param1));
         §6g§.§!!_§(_loc2_);
      }
      
      private function §^1§(param1:String, param2:String) : void
      {
         §6g§.§7D§(param2,this.§0!Z§(param1));
      }
      
      protected function §;T§(param1:String) : void
      {
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         §4s§.§+!h§(_loc2_);
      }
      
      protected function §3?§(param1:String) : void
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
                  if(§"!J§[_loc13_] == null)
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
            §6L§.§^'§(new §!!o§(_loc2_,_loc4_,param1.bitmapData));
            §^V§();
         };
         ++this.§4" §;
         var imagePath:String = filePath.substr(0,filePath.length - 3) + "png";
         this.§1!0§(imagePath,onComplete);
      }
      
      protected function §^V§() : void
      {
         --this.§4" §;
         if(this.§4" § == 0)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      protected function §1d§(param1:String) : void
      {
         var id:String = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            ParticleManager.§&!+§(id,XML(getFileAsString("particle_emitters/" + id + ".pex")),param1.bitmapData);
         };
         this.§1!0§("particle_emitters/" + id + ".png",onComplete);
      }
      
      protected function §?+§(param1:Object) : void
      {
         var spriteSheetClass:Class = null;
         var dataObject:Object = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            §6L§.§^'§(new spriteSheetClass(dataObject,param1.bitmapData));
            §^V§();
         };
         ++this.§4" §;
         if(dataObject.image)
         {
            spriteSheetClass = §!B§;
            this.§1!0§("sprite_sheets/" + dataObject.image,onComplete);
         }
         else
         {
            if(!(dataObject.name && dataObject.charCount))
            {
               throw new Error("Invalid sprite sheet data.");
            }
            spriteSheetClass = §+S§;
            this.§1!0§("sprite_sheets/" + dataObject.name + ".png",onComplete);
         }
      }
      
      protected function §1i§(param1:ByteArray) : void
      {
         var _loc2_:int = 0;
         this.§5!T§ = 56895 & 25147 >> 1;
         _loc2_ = Math.min(param1.length,65536) - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§[""§() * 255);
            _loc2_ -= 2;
         }
         _loc2_ = param1.length - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§[""§() * 255);
            _loc2_ -= int(this.§[""§() * 255);
         }
         var _loc3_:int = Math.max(param1.length,65536) - 65536;
         _loc2_ = param1.length - 1;
         while(_loc2_ >= _loc3_)
         {
            param1[_loc2_] -= int(this.§[""§() * 255);
            _loc2_ -= 2;
         }
         param1.inflate();
      }
      
      protected function §[""§() : Number
      {
         this.§5!T§ ^= this.§5!T§ << 21;
         this.§5!T§ ^= this.§5!T§ >>> 35;
         this.§5!T§ ^= this.§5!T§ << 4;
         if(this.§5!T§ < 0)
         {
            this.§5!T§ &= 2147483647;
         }
         return this.§5!T§ / 2147483647;
      }
   }
}
