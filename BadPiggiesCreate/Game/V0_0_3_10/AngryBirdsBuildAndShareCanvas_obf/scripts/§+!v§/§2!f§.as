package §+!v§
{
   import §%t§.§^-§;
   import §&!&§.§!p§;
   import §&!&§.§[l§;
   import §&!&§.§^!C§;
   import §+!d§.§ !M§;
   import §+!d§.§-%§;
   import §+!d§.§4`§;
   import §+!d§.§6!J§;
   import §+!d§.§`!+§;
   import §4!O§.§!V§;
   import §4!O§.§'"&§;
   import §63§.§`z§;
   import §7M§.§"?§;
   import §7M§.§+R§;
   import §9A§.§30§;
   import §^!D§.§#;§;
   import §^!D§.§;^§;
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.system.LoaderContext;
   import flash.utils.ByteArray;
   
   public class §2!f§ extends EventDispatcher implements §#;§
   {
       
      
      protected var §=!'§:int;
      
      protected var §-=§:Object;
      
      protected var §-!6§:int = 0;
      
      protected var §=X§:§6!J§;
      
      protected var §>d§:Vector.<XML>;
      
      protected var §?Q§:Loader;
      
      public function §2!f§()
      {
         this.§-=§ = {};
         this.§>d§ = new Vector.<XML>();
         super();
         this.§=X§ = new §6!J§();
      }
      
      public function get §[!S§() : §`!+§
      {
         return this.§=X§;
      }
      
      public function get §'!4§() : Boolean
      {
         return this.§-!6§ == 0;
      }
      
      public function dispose() : void
      {
         this.§=X§.dispose();
      }
      
      public function getFileAsString(param1:String) : String
      {
         return (this.§-=§[param1] as §'"&§).§?D§(false);
      }
      
      public function §'>§(param1:String) : ByteArray
      {
         return (this.§-=§[param1] as §'"&§).content;
      }
      
      public function §7!J§(param1:String, param2:Function) : void
      {
         return §^!C§.§=!,§(this.§'>§(param1),param2);
      }
      
      public function §'8§(param1:ByteArray, param2:Boolean = true) : void
      {
         var _loc6_:§'"&§ = null;
         if(param2)
         {
            this.§'!>§(param1);
         }
         var _loc3_:§!V§ = new §!V§();
         _loc3_.loadBytes(param1);
         var _loc4_:Object = {};
         var _loc5_:int = _loc3_.§9!1§() - 1;
         while(_loc5_ >= 0)
         {
            if((_loc6_ = _loc3_.§,!Y§(_loc5_)).§6!S§.substr(-1) != "/")
            {
               if(!this.§-=§[_loc6_.§6!S§])
               {
               }
               this.§-=§[_loc6_.§6!S§] = _loc4_[_loc6_.§6!S§] = _loc6_;
            }
            _loc5_--;
         }
         this.§5e§(_loc4_);
      }
      
      protected function §5e§(param1:Object) : void
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
                  jsonObject = JSON.parse((packageFiles[fileName] as §'"&§).§?D§(false));
               }
               catch(e:Error)
               {
                  throw new Error("Can\'t convert file \'" + fileName + "\' to object; invalid JSON.",§!p§.§<A§);
               }
               this.§9!2§(jsonObject);
            }
            levelNameResults = fileName.match(/^levels\/Level(.*)\.json$/i);
            if(levelNameResults)
            {
               §"?§.§+!G§(levelNameResults[1].toLowerCase(),§+R§.§=!L§(this.getFileAsString(fileName)));
            }
            particleNameResults = fileName.match(/^particle_emitters\/(.*)\.pex$/i);
            if(particleNameResults)
            {
               this.§3S§(particleNameResults[1]);
            }
            compositeSpriteSheetNameResults = fileName.match(/composites\/data\/(.*)\.xml$/i);
            if(compositeSpriteSheetNameResults)
            {
               this.§[!&§(fileName);
            }
            compositeNameResults = fileName.match(/composites\/main\/(.*)\.xml$/i);
            if(compositeNameResults)
            {
               this.§<!u§(fileName);
            }
            cutSceneNameResults = fileName.match(/cutscenes.lua$/i);
            if(cutSceneNameResults)
            {
               this.§9t§(fileName);
            }
            if(fileName.toLowerCase() == "assetmap.xml")
            {
               this.§ O§(fileName);
            }
         }
         if(this.§-!6§ == 0)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      private function § O§(param1:String) : void
      {
         var _loc3_:LoaderContext = null;
         ++this.§-!6§;
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         this.§>d§.push(_loc2_);
         if(this.§>d§.length == 1)
         {
            this.§?Q§ = new Loader();
            this.§?Q§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§;![§);
            _loc3_ = new LoaderContext();
            _loc3_.allowCodeImport = true;
            this.§?Q§.loadBytes(this.§'>§(_loc2_.Library.@swf),_loc3_);
         }
      }
      
      private function §;![§(param1:Event) : void
      {
         this.§?Q§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§;![§);
         var _loc2_:XML = this.§>d§.shift();
         §;^§.§&6§(this.§?Q§,_loc2_.Library[0]);
         if(this.§>d§.length > 0)
         {
            this.§?Q§ = new Loader();
            this.§?Q§.contentLoaderInfo.addEventListener(Event.INIT,this.§;![§);
            this.§?Q§.loadBytes(this.§'>§(this.§>d§[0].Library.@swf));
         }
         this.§#!d§();
      }
      
      private function §9t§(param1:String) : void
      {
         var _loc2_:Object = §[l§.§7!2§(this.getFileAsString(param1));
         §30§.§+[§(_loc2_);
      }
      
      protected function §<!u§(param1:String) : void
      {
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         §^-§.§>U§(_loc2_);
      }
      
      protected function §[!&§(param1:String) : void
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
                  if(§-=§[_loc13_] == null)
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
            §=X§.§<`§(new §-%§(_loc2_,_loc4_,param1.bitmapData));
            §#!d§();
         };
         ++this.§-!6§;
         var imagePath:String = filePath.substr(0,filePath.length - 3) + "png";
         this.§7!J§(imagePath,onComplete);
      }
      
      protected function §#!d§() : void
      {
         --this.§-!6§;
         if(this.§-!6§ == 0)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      protected function §3S§(param1:String) : void
      {
         var id:String = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            §`z§.§8I§(id,XML(getFileAsString("particle_emitters/" + id + ".pex")),param1.bitmapData);
         };
         this.§7!J§("particle_emitters/" + id + ".png",onComplete);
      }
      
      protected function §9!2§(param1:Object) : void
      {
         var spriteSheetClass:Class = null;
         var dataObject:Object = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            §=X§.§<`§(new spriteSheetClass(dataObject,param1.bitmapData));
            §#!d§();
         };
         ++this.§-!6§;
         if(dataObject.image)
         {
            spriteSheetClass = §4`§;
            this.§7!J§("sprite_sheets/" + dataObject.image,onComplete);
         }
         else
         {
            if(!(dataObject.name && dataObject.charCount))
            {
               throw new Error("Invalid sprite sheet data.");
            }
            spriteSheetClass = § !M§;
            this.§7!J§("sprite_sheets/" + dataObject.name + ".png",onComplete);
         }
      }
      
      protected function §'!>§(param1:ByteArray) : void
      {
         var _loc2_:int = 0;
         this.§=!'§ = 56895 & 25147 >> 1;
         _loc2_ = Math.min(param1.length,65536) - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§<0§() * 255);
            _loc2_ -= 2;
         }
         _loc2_ = param1.length - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§<0§() * 255);
            _loc2_ -= int(this.§<0§() * 255);
         }
         var _loc3_:int = Math.max(param1.length,65536) - 65536;
         _loc2_ = param1.length - 1;
         while(_loc2_ >= _loc3_)
         {
            param1[_loc2_] -= int(this.§<0§() * 255);
            _loc2_ -= 2;
         }
         param1.inflate();
      }
      
      protected function §<0§() : Number
      {
         this.§=!'§ ^= this.§=!'§ << 21;
         this.§=!'§ ^= this.§=!'§ >>> 35;
         this.§=!'§ ^= this.§=!'§ << 4;
         if(this.§=!'§ < 0)
         {
            this.§=!'§ &= 2147483647;
         }
         return this.§=!'§ / 2147483647;
      }
   }
}
