package §6N§
{
   import §!V§.§%!#§;
   import §!V§.§^>§;
   import §!V§.§`!`§;
   import §+6§.§ <§;
   import §+6§.§'2§;
   import §+6§.§1!]§;
   import §+6§.§7i§;
   import §+6§.§^!`§;
   import §3!Z§.§ !b§;
   import §31§.§2[§;
   import §31§.§^!K§;
   import §94§.§,d§;
   import §9t§.§6!_§;
   import §`![§.§!!K§;
   import §`![§.§@;§;
   import §`b§.§ !9§;
   import §`b§.§=#§;
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.utils.ByteArray;
   
   public class §1!9§ extends EventDispatcher implements §2[§
   {
       
      
      protected var §>>§:int;
      
      protected var §<!,§:Object;
      
      protected var §&!f§:int = 0;
      
      protected var §+K§:§'2§;
      
      protected var §5+§:Vector.<XML>;
      
      protected var §]W§:Loader;
      
      private var §'G§:String;
      
      public function §1!9§()
      {
         this.§<!,§ = {};
         this.§5+§ = new Vector.<XML>();
         super();
         this.§+K§ = new §'2§();
      }
      
      public function §+B§(param1:String) : void
      {
         this.§'G§ = param1;
      }
      
      public function get §]A§() : §7i§
      {
         return this.§+K§;
      }
      
      public function get §&4§() : Boolean
      {
         return this.§&!f§ == 0;
      }
      
      public function dispose() : void
      {
         this.§+K§.dispose();
      }
      
      public function getFileAsString(param1:String) : String
      {
         return (this.§<!,§[param1] as §=#§).§;!§(false);
      }
      
      public function §4!O§(param1:String) : ByteArray
      {
         return (this.§<!,§[param1] as §=#§).content;
      }
      
      public function § !4§(param1:String, param2:Function) : void
      {
         return §^>§.§1!L§(this.§4!O§(param1),param2);
      }
      
      public function §^R§(param1:ByteArray, param2:Boolean = true) : void
      {
         var _loc6_:§=#§ = null;
         if(param2)
         {
            this.§7!d§(param1);
         }
         var _loc3_:§ !9§ = new § !9§();
         _loc3_.loadBytes(param1);
         var _loc4_:Object = {};
         var _loc5_:int = _loc3_.§ ?§() - 1;
         while(_loc5_ >= 0)
         {
            if((_loc6_ = _loc3_.§9!8§(_loc5_)).§@b§.substr(-1) != "/")
            {
               if(!this.§<!,§[_loc6_.§@b§])
               {
               }
               this.§<!,§[_loc6_.§@b§] = _loc4_[_loc6_.§@b§] = _loc6_;
            }
            _loc5_--;
         }
         this.§;;§(_loc4_);
      }
      
      protected function §;;§(param1:Object) : void
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
                  jsonObject = JSON.parse((packageFiles[fileName] as §=#§).§;!§(false));
               }
               catch(e:Error)
               {
                  throw new Error("Can\'t convert file \'" + fileName + "\' to object; invalid JSON.",§%!#§.§@!^§);
               }
               this.§?!H§(jsonObject);
            }
            levelNameResults = fileName.match(/^levels\/Level(.*)\.json$/i);
            if(levelNameResults)
            {
               §@;§.§8h§(levelNameResults[1].toLowerCase(),§!!K§.§]G§(this.getFileAsString(fileName)));
            }
            particleNameResults = fileName.match(/^particle_emitters\/(.*)\.pex$/i);
            if(particleNameResults)
            {
               this.§@!A§(particleNameResults[1]);
            }
            compositeSpriteSheetNameResults = fileName.match(/composites\/data\/(.*)\.xml$/i);
            if(compositeSpriteSheetNameResults)
            {
               this.§80§(fileName);
            }
            compositeNameResults = fileName.match(/composites\/main\/(.*)\.xml$/i);
            if(compositeNameResults)
            {
               this.§%l§(fileName);
            }
            cutSceneNameResults = fileName.match(/cutscenes.lua$/i);
            if(cutSceneNameResults)
            {
               this.§;g§(fileName);
            }
            swfCutSceneNameResults = fileName.match(/cutscene.swf$/i);
            if(swfCutSceneNameResults)
            {
               this.§-!C§(fileName,this.§'G§);
            }
            if(fileName.toLowerCase() == "assetmap.xml")
            {
               this.§3s§(fileName);
            }
         }
         if(this.§&!f§ == 0)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      private function §3s§(param1:String) : void
      {
         var _loc3_:LoaderContext = null;
         ++this.§&!f§;
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         this.§5+§.push(_loc2_);
         if(this.§5+§.length == 1)
         {
            this.§]W§ = new Loader();
            this.§]W§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§&!'§);
            _loc3_ = new LoaderContext();
            _loc3_.allowCodeImport = true;
            this.§]W§.loadBytes(this.§4!O§(_loc2_.Library.@swf),new LoaderContext(false,ApplicationDomain.currentDomain));
         }
      }
      
      private function §&!'§(param1:Event) : void
      {
         this.§]W§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§&!'§);
         var _loc2_:XML = this.§5+§.shift();
         §^!K§.§%!H§(this.§]W§,_loc2_.Library[0]);
         if(this.§5+§.length > 0)
         {
            this.§]W§ = new Loader();
            this.§]W§.contentLoaderInfo.addEventListener(Event.INIT,this.§&!'§);
            this.§]W§.loadBytes(this.§4!O§(this.§5+§[0].Library.@swf),new LoaderContext(false,ApplicationDomain.currentDomain));
         }
         this.§'g§();
      }
      
      private function §;g§(param1:String) : void
      {
         var _loc2_:Object = §`!`§.§4!U§(this.getFileAsString(param1));
         § !b§.§?!P§(_loc2_);
      }
      
      private function §-!C§(param1:String, param2:String) : void
      {
         § !b§.§,![§(param2,this.§4!O§(param1));
      }
      
      protected function §%l§(param1:String) : void
      {
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         §6!_§.§=!O§(_loc2_);
      }
      
      protected function §80§(param1:String) : void
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
                  if(§<!,§[_loc13_] == null)
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
            §+K§.§!!P§(new §1!]§(_loc2_,_loc4_,param1.bitmapData));
            §'g§();
         };
         ++this.§&!f§;
         var imagePath:String = filePath.substr(0,filePath.length - 3) + "png";
         this.§ !4§(imagePath,onComplete);
      }
      
      protected function §'g§() : void
      {
         --this.§&!f§;
         if(this.§&!f§ == 0)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      protected function §@!A§(param1:String) : void
      {
         var id:String = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            §,d§.§]Y§(id,XML(getFileAsString("particle_emitters/" + id + ".pex")),param1.bitmapData);
         };
         this.§ !4§("particle_emitters/" + id + ".png",onComplete);
      }
      
      protected function §?!H§(param1:Object) : void
      {
         var spriteSheetClass:Class = null;
         var dataObject:Object = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            §+K§.§!!P§(new spriteSheetClass(dataObject,param1.bitmapData));
            §'g§();
         };
         ++this.§&!f§;
         if(dataObject.image)
         {
            spriteSheetClass = §^!`§;
            this.§ !4§("sprite_sheets/" + dataObject.image,onComplete);
         }
         else
         {
            if(!(dataObject.name && dataObject.charCount))
            {
               throw new Error("Invalid sprite sheet data.");
            }
            spriteSheetClass = § <§;
            this.§ !4§("sprite_sheets/" + dataObject.name + ".png",onComplete);
         }
      }
      
      protected function §7!d§(param1:ByteArray) : void
      {
         var _loc2_:int = 0;
         this.§>>§ = 56895 & 25147 >> 1;
         _loc2_ = Math.min(param1.length,65536) - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§5D§() * 255);
            _loc2_ -= 2;
         }
         _loc2_ = param1.length - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§5D§() * 255);
            _loc2_ -= int(this.§5D§() * 255);
         }
         var _loc3_:int = Math.max(param1.length,65536) - 65536;
         _loc2_ = param1.length - 1;
         while(_loc2_ >= _loc3_)
         {
            param1[_loc2_] -= int(this.§5D§() * 255);
            _loc2_ -= 2;
         }
         param1.inflate();
      }
      
      protected function §5D§() : Number
      {
         this.§>>§ ^= this.§>>§ << 21;
         this.§>>§ ^= this.§>>§ >>> 35;
         this.§>>§ ^= this.§>>§ << 4;
         if(this.§>>§ < 0)
         {
            this.§>>§ &= 2147483647;
         }
         return this.§>>§ / 2147483647;
      }
   }
}
