package §&[§
{
   import §+f§.§8!=§;
   import §1!'§.ParticleManager;
   import §3!%§.§#!K§;
   import §3!%§.§-k§;
   import §4!6§.§ +§;
   import §4!6§.§3!$§;
   import §4!6§.§<! §;
   import §5!'§.§ !=§;
   import §5!'§.§ y§;
   import §5!'§.§9P§;
   import §5!'§.§>!O§;
   import §5!'§.§^!B§;
   import §9[§.§#b§;
   import §9[§.§7$§;
   import §;Z§.§>E§;
   import §;Z§.§?A§;
   import §?6§.§'!K§;
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.system.LoaderContext;
   import flash.utils.ByteArray;
   
   public class §6M§ extends EventDispatcher implements §#b§
   {
       
      
      protected var §`!A§:int;
      
      protected var §!!8§:Object;
      
      protected var §@"§:int = 0;
      
      protected var § ;§:§ !=§;
      
      protected var §=!=§:Vector.<XML>;
      
      protected var §[b§:Loader;
      
      public function §6M§()
      {
         this.§!!8§ = {};
         this.§=!=§ = new Vector.<XML>();
         super();
         this.§ ;§ = new § !=§();
      }
      
      public function get §68§() : §9P§
      {
         return this.§ ;§;
      }
      
      public function get §1!§() : Boolean
      {
         return this.§@"§ == 0;
      }
      
      public function dispose() : void
      {
         this.§ ;§.dispose();
      }
      
      public function getFileAsString(param1:String) : String
      {
         return (this.§!!8§[param1] as §>E§).§&!<§(false);
      }
      
      public function §1!J§(param1:String) : ByteArray
      {
         return (this.§!!8§[param1] as §>E§).content;
      }
      
      public function §[0§(param1:String, param2:Function) : void
      {
         return § +§.§,!$§(this.§1!J§(param1),param2);
      }
      
      public function §5m§(param1:ByteArray, param2:Boolean = true) : void
      {
         var _loc6_:§>E§ = null;
         if(param2)
         {
            this.§'4§(param1);
         }
         var _loc3_:§?A§ = new §?A§();
         _loc3_.loadBytes(param1);
         var _loc4_:Object = {};
         var _loc5_:int = _loc3_.§,`§() - 1;
         while(_loc5_ >= 0)
         {
            if((_loc6_ = _loc3_.§7s§(_loc5_)).§<n§.substr(-1) != "/")
            {
               if(!this.§!!8§[_loc6_.§<n§])
               {
               }
               this.§!!8§[_loc6_.§<n§] = _loc4_[_loc6_.§<n§] = _loc6_;
            }
            _loc5_--;
         }
         this.§7f§(_loc4_);
      }
      
      protected function §7f§(param1:Object) : void
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
                  jsonObject = JSON.parse((packageFiles[fileName] as §>E§).§&!<§(false));
               }
               catch(e:Error)
               {
                  throw new Error("Can\'t convert file \'" + fileName + "\' to object; invalid JSON.",§3!$§.§['§);
               }
               this.§%!E§(jsonObject);
            }
            levelNameResults = fileName.match(/^levels\/Level(.*)\.json$/i);
            if(levelNameResults)
            {
               §-k§.§-B§(levelNameResults[1].toLowerCase(),§#!K§.§!5§(this.getFileAsString(fileName)));
            }
            particleNameResults = fileName.match(/^particle_emitters\/(.*)\.pex$/i);
            if(particleNameResults)
            {
               this.§in §(particleNameResults[1]);
            }
            compositeSpriteSheetNameResults = fileName.match(/composites\/data\/(.*)\.xml$/i);
            if(compositeSpriteSheetNameResults)
            {
               this.§!x§(fileName);
            }
            compositeNameResults = fileName.match(/composites\/main\/(.*)\.xml$/i);
            if(compositeNameResults)
            {
               this.§&&§(fileName);
            }
            cutSceneNameResults = fileName.match(/cutscenes.lua$/i);
            if(cutSceneNameResults)
            {
               this.§!q§(fileName);
            }
            if(fileName.toLowerCase() == "assetmap.xml")
            {
               this.§-!,§(fileName);
            }
         }
         if(this.§@"§ == 0)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      private function §-!,§(param1:String) : void
      {
         var _loc3_:LoaderContext = null;
         ++this.§@"§;
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         this.§=!=§.push(_loc2_);
         if(this.§=!=§.length == 1)
         {
            this.§[b§ = new Loader();
            this.§[b§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§,M§);
            _loc3_ = new LoaderContext();
            _loc3_.allowCodeImport = true;
            this.§[b§.loadBytes(this.§1!J§(_loc2_.Library.@swf),_loc3_);
         }
      }
      
      private function §,M§(param1:Event) : void
      {
         this.§[b§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§,M§);
         var _loc2_:XML = this.§=!=§.shift();
         §7$§.§<8§(this.§[b§,_loc2_.Library[0]);
         if(this.§=!=§.length > 0)
         {
            this.§[b§ = new Loader();
            this.§[b§.contentLoaderInfo.addEventListener(Event.INIT,this.§,M§);
            this.§[b§.loadBytes(this.§1!J§(this.§=!=§[0].Library.@swf));
         }
         this.§,s§();
      }
      
      private function §!q§(param1:String) : void
      {
         var _loc2_:Object = §<! §.§0r§(this.getFileAsString(param1));
         §'!K§.§>@§(_loc2_);
      }
      
      protected function §&&§(param1:String) : void
      {
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         §8!=§.§%!,§(_loc2_);
      }
      
      protected function §!x§(param1:String) : void
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
                  if(§!!8§[_loc13_] == null)
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
            § ;§.§]Z§(new §>!O§(_loc2_,_loc4_,param1.bitmapData));
            §,s§();
         };
         ++this.§@"§;
         var imagePath:String = filePath.substr(0,filePath.length - 3) + "png";
         this.§[0§(imagePath,onComplete);
      }
      
      protected function §,s§() : void
      {
         --this.§@"§;
         if(this.§@"§ == 0)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      protected function §in §(param1:String) : void
      {
         var id:String = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            ParticleManager.§=?§(id,XML(getFileAsString("particle_emitters/" + id + ".pex")),param1.bitmapData);
         };
         this.§[0§("particle_emitters/" + id + ".png",onComplete);
      }
      
      protected function §%!E§(param1:Object) : void
      {
         var spriteSheetClass:Class = null;
         var dataObject:Object = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            § ;§.§]Z§(new spriteSheetClass(dataObject,param1.bitmapData));
            §,s§();
         };
         ++this.§@"§;
         if(dataObject.image)
         {
            spriteSheetClass = §^!B§;
            this.§[0§("sprite_sheets/" + dataObject.image,onComplete);
         }
         else
         {
            if(!(dataObject.name && dataObject.charCount))
            {
               throw new Error("Invalid sprite sheet data.");
            }
            spriteSheetClass = § y§;
            this.§[0§("sprite_sheets/" + dataObject.name + ".png",onComplete);
         }
      }
      
      protected function §'4§(param1:ByteArray) : void
      {
         var _loc2_:int = 0;
         this.§`!A§ = 56895 & 25147 >> 1;
         _loc2_ = Math.min(param1.length,65536) - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§ z§() * 255);
            _loc2_ -= 2;
         }
         _loc2_ = param1.length - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§ z§() * 255);
            _loc2_ -= int(this.§ z§() * 255);
         }
         var _loc3_:int = Math.max(param1.length,65536) - 65536;
         _loc2_ = param1.length - 1;
         while(_loc2_ >= _loc3_)
         {
            param1[_loc2_] -= int(this.§ z§() * 255);
            _loc2_ -= 2;
         }
         param1.inflate();
      }
      
      protected function § z§() : Number
      {
         this.§`!A§ ^= this.§`!A§ << 21;
         this.§`!A§ ^= this.§`!A§ >>> 35;
         this.§`!A§ ^= this.§`!A§ << 4;
         if(this.§`!A§ < 0)
         {
            this.§`!A§ &= 2147483647;
         }
         return this.§`!A§ / 2147483647;
      }
   }
}
