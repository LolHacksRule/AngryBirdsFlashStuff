package §""%§
{
   import §!!G§.§9$§;
   import §!!G§.§`Z§;
   import §'#§.§'!l§;
   import §'#§.§4!Q§;
   import §'#§.§4!s§;
   import §2P§.§37§;
   import §4A§.§1!d§;
   import §8";§.§ B§;
   import §8";§.§#+§;
   import §8";§.§,F§;
   import §8";§.§^!5§;
   import §8";§.§`!V§;
   import §8o§.§]" §;
   import §;!0§.§!!X§;
   import §;!0§.;
   import §]!V§.§3E§;
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.utils.ByteArray;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   
   public class §"!@§ extends EventDispatcher implements §3E§
   {
      
      protected static const §?!N§:Number = 100;
      
      protected static const §3"3§:Number = 20;
       
      
      protected var §;"#§:int;
      
      protected var §`",§:Object;
      
      protected var §9!j§:String;
      
      protected var §["1§:int = 0;
      
      protected var §1+§:§^!5§;
      
      protected var §@!1§:Vector.<XML>;
      
      protected var §-,§:Loader;
      
      protected var §,W§:§#2§;
      
      protected var §^"F§:Timer;
      
      protected var §?"1§:Object;
      
      protected var §+8§:Vector.<String>;
      
      public function §"!@§(param1:§#2§)
      {
         this.§`",§ = {};
         this.§@!1§ = new Vector.<XML>();
         super();
         this.§,W§ = param1;
         this.§1+§ = new §^!5§("packageManager");
      }
      
      public function get §%5§() : §#+§
      {
         return this.§1+§;
      }
      
      public function get §2V§() : Boolean
      {
         return this.§["1§ == 0 && (!this.§+8§ || this.§+8§.length == 0);
      }
      
      public function dispose() : void
      {
         this.clear();
         this.§,W§ = null;
         this.§1+§.dispose();
      }
      
      protected function clear() : void
      {
         if(this.§^"F§)
         {
            this.§^"F§.stop();
            this.§^"F§.removeEventListener(TimerEvent.TIMER,this.§^O§);
            this.§^"F§ = null;
         }
         if(this.§-,§)
         {
            this.§-,§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§=!L§);
            this.§-,§ = null;
         }
         this.§?"1§ = null;
         this.§+8§ = null;
      }
      
      protected function §4u§(param1:String, param2:String) : String
      {
         return param2 + "/" + param1;
      }
      
      protected function §!"E§(param1:String, param2:String) : §`Z§
      {
         return this.§`",§[this.§4u§(param1,param2)] as §`Z§;
      }
      
      protected function §>!-§(param1:String, param2:String, param3:§`Z§) : void
      {
         this.§`",§[this.§4u§(param1,param2)] = param3;
      }
      
      protected function §;9§(param1:String, param2:String = null) : String
      {
         if(param2 == null)
         {
            param2 = this.§9!j§;
         }
         var _loc3_:§`Z§ = this.§!"E§(param1,param2);
         if(!_loc3_)
         {
            throw new Error("File " + this.§4u§(param1,param2) + " not found",§4!Q§.§>K§);
         }
         return _loc3_.§8m§(false);
      }
      
      protected function §%!`§(param1:String, param2:String = null) : ByteArray
      {
         if(param2 == null)
         {
            param2 = this.§9!j§;
         }
         var _loc3_:§`Z§ = this.§!"E§(param1,param2);
         if(!_loc3_)
         {
            throw new Error("File " + this.§4u§(param1,param2) + " not found",§4!Q§.§>K§);
         }
         return _loc3_.content;
      }
      
      protected function §7!2§(param1:String, param2:Function) : void
      {
         return §4!s§.§ &§(this.§%!`§(param1),param2);
      }
      
      public function §1!r§(param1:ByteArray, param2:String, param3:Boolean = true) : void
      {
         var _loc7_:§`Z§ = null;
         if(!this.§2V§)
         {
            throw new Error("Can\'t load another package - need to wait for previous one to complete !!!");
         }
         if(param3)
         {
            this.§-!H§(param1);
         }
         this.§9!j§ = param2;
         var _loc4_:§9$§;
         (_loc4_ = new §9$§()).loadBytes(param1);
         var _loc5_:Object = {};
         var _loc6_:int = _loc4_.§2!m§() - 1;
         while(_loc6_ >= 0)
         {
            if((_loc7_ = _loc4_.§;!u§(_loc6_)).§7!$§.substr(-1) != "/")
            {
               if(this.§!"E§(_loc7_.§7!$§,this.§9!j§))
               {
                  _loc5_[_loc7_.§7!$§] = this.§!"E§(_loc7_.§7!$§,this.§9!j§);
               }
               else
               {
                  _loc5_[_loc7_.§7!$§] = _loc7_;
                  this.§>!-§(_loc7_.§7!$§,this.§9!j§,_loc7_);
               }
            }
            _loc6_--;
         }
         this.§3!5§(_loc5_);
      }
      
      public function §&v§() : void
      {
         this.clear();
      }
      
      protected function §-"H§(param1:String) : void
      {
         var jsonObject:Object = null;
         var fileName:String = param1;
         try
         {
            jsonObject = JSON.parse(this.§;9§(fileName));
         }
         catch(e:Error)
         {
            throw new Error("Can\'t convert file \'" + fileName + "\' to object; invalid JSON.",§4!Q§.§7b§);
         }
         this.§%!t§(jsonObject);
      }
      
      protected function §-!?§(param1:String, param2:String) : void
      {
         if(!this.§,W§.getLevelForId(param1))
         {
            this.§,W§.addLevel(param1,§!!X§.§+n§(this.§;9§(param2)));
         }
      }
      
      protected function §"L§(param1:String) : void
      {
         this.§,W§.§@!>§(JSON.parse(this.§;9§(param1)));
      }
      
      protected function initializeFile(param1:String) : void
      {
         var _loc8_:String = null;
         if(param1.search(/^sprite_sheets\/(.*)\.json$/i) != -1)
         {
            this.§-"H§(param1);
         }
         var _loc2_:Array = param1.match(/^levels\/(.*)\.json$/i);
         if(_loc2_)
         {
            _loc8_ = _loc2_[1].toLowerCase();
            this.§-!?§(_loc8_,param1);
         }
         var _loc3_:Array = param1.match(/^particle_emitters\/(.*)\.pex$/i);
         if(_loc3_)
         {
            this.§`""§(_loc3_[1]);
         }
         var _loc4_:Array;
         if(_loc4_ = param1.match(/composites\/data\/(.*)\.xml$/i))
         {
            this.§6_§(param1);
         }
         if(_loc4_ = param1.match(/sprite_sheets\/data\/(.*)\.xml$/i))
         {
            this.§6_§(param1);
         }
         var _loc5_:Array;
         if(_loc5_ = param1.match(/composites\/main\/(.*)\.xml$/i))
         {
            this.§0"<§(param1);
         }
         var _loc6_:Array;
         if(_loc6_ = param1.match(/cutscenes.lua$/i))
         {
            this.§%""§(param1);
         }
         var _loc7_:Array;
         if(_loc7_ = param1.match(/cutscene.swf$/i))
         {
            this.§9i§(param1);
         }
         if(param1.toLowerCase() == "assetmap.xml")
         {
            this.§-c§(param1);
         }
         if(param1.toLowerCase() == "episodes.json")
         {
            this.§"L§(param1);
         }
      }
      
      protected function §3!5§(param1:Object) : void
      {
         this.§+!&§(param1);
         if(this.§%1§())
         {
            if(!this.§^"F§)
            {
               this.§^"F§ = new Timer(§3"3§,0);
               this.§^"F§.addEventListener(TimerEvent.TIMER,this.§^O§);
            }
            else
            {
               this.§^"F§.stop();
            }
            this.§^"F§.start();
         }
      }
      
      private function §+!&§(param1:Object) : void
      {
         var _loc2_:* = null;
         this.§+8§ = new Vector.<String>();
         for(_loc2_ in param1)
         {
            this.§+8§.push(_loc2_);
         }
         this.§?"1§ = param1;
      }
      
      private function §%1§() : Boolean
      {
         var _loc1_:int = getTimer();
         while(getTimer() - _loc1_ < §?!N§ / 2)
         {
            if(!this.§44§())
            {
               break;
            }
         }
         var _loc2_:* = this.§+8§.length > 0;
         if(this.§2V§)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
         return _loc2_;
      }
      
      private function §44§() : Boolean
      {
         var _loc1_:String = null;
         if(this.§+8§.length > 0)
         {
            _loc1_ = this.§+8§[0];
            this.§+8§.splice(0,1);
            this.initializeFile(_loc1_);
            return true;
         }
         return false;
      }
      
      private function §^O§(param1:Event) : void
      {
         if(!this.§%1§())
         {
            if(this.§^"F§)
            {
               this.§^"F§.stop();
            }
         }
      }
      
      private function §-c§(param1:String) : void
      {
         ++this.§["1§;
         var _loc2_:XML = new XML(this.§;9§(param1));
         this.§@!1§.push(_loc2_);
         if(this.§@!1§.length == 1)
         {
            this.§-,§ = new Loader();
            this.§-,§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§=!L§);
            this.§-,§.loadBytes(this.§%!`§(_loc2_.Library.@swf),new LoaderContext(false,ApplicationDomain.currentDomain));
         }
      }
      
      private function §=!L§(param1:Event) : void
      {
         this.§-,§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§=!L§);
         var _loc2_:XML = this.§@!1§.shift();
         if(this.§@!1§.length > 0)
         {
            this.§-,§ = new Loader();
            this.§-,§.contentLoaderInfo.addEventListener(Event.INIT,this.§=!L§);
            this.§-,§.loadBytes(this.§%!`§(this.§@!1§[0].Library.@swf),new LoaderContext(false,ApplicationDomain.currentDomain));
         }
         this.§;!x§();
      }
      
      private function §%""§(param1:String) : void
      {
         var _loc2_:Object = §'!l§.§&K§(this.§;9§(param1));
         §1!d§.§%""§(_loc2_);
      }
      
      private function §9i§(param1:String) : void
      {
         §1!d§.§+!f§(this.§9!j§,this.§%!`§(param1,this.§9!j§));
      }
      
      protected function §0"<§(param1:String) : void
      {
         var _loc2_:XML = new XML(this.§;9§(param1));
         §]" §.§3!L§(_loc2_);
      }
      
      protected function §6_§(param1:String) : void
      {
         var activePackageName:String = null;
         var filePath:String = param1;
         activePackageName = this.§9!j§;
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
            var _loc2_:XML = new XML(§;9§(filePath,activePackageName));
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
                  if(§!"E§(_loc13_,activePackageName) == null)
                  {
                     _loc9_ = _loc8_[_loc8_.length - 2] + "/" + _loc8_[_loc8_.length - 1];
                     _loc13_ = _loc11_ + "source/" + _loc9_ + ".xml";
                  }
                  if(_loc3_.indexOf(_loc9_) < 0)
                  {
                     _loc3_.push(_loc9_);
                     _loc14_ = §;9§(_loc13_,activePackageName);
                     _loc4_.push(new XML(_loc14_));
                  }
               }
            }
            §1+§.§'"%§(new § B§(_loc2_,_loc4_,param1.bitmapData));
            §;!x§();
         };
         ++this.§["1§;
         var imagePath:String = filePath.substr(0,filePath.length - 3) + "png";
         this.§7!2§(imagePath,onComplete);
      }
      
      protected function §;!x§() : void
      {
         --this.§["1§;
         if(this.§2V§)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      protected function §`""§(param1:String) : void
      {
         var id:String = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            §37§.§@!+§(id,XML(§;9§("particle_emitters/" + id + ".pex")),param1.bitmapData);
            §;!x§();
         };
         ++this.§["1§;
         this.§7!2§("particle_emitters/" + id + ".png",onComplete);
      }
      
      protected function §%!t§(param1:Object) : void
      {
         var spriteSheetClass:Class = null;
         var dataObject:Object = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            §1+§.§'"%§(new spriteSheetClass(dataObject,param1.bitmapData));
            §;!x§();
         };
         ++this.§["1§;
         if(dataObject.image)
         {
            spriteSheetClass = §,F§;
            this.§7!2§("sprite_sheets/" + dataObject.image,onComplete);
         }
         else
         {
            if(!(dataObject.name && dataObject.charCount))
            {
               throw new Error("Invalid sprite sheet data.");
            }
            spriteSheetClass = §`!V§;
            this.§7!2§("sprite_sheets/" + dataObject.name + ".png",onComplete);
         }
      }
      
      protected function §-!H§(param1:ByteArray) : void
      {
         var _loc2_:int = 0;
         this.§;"#§ = 56895 & 25147 >> 1;
         _loc2_ = Math.min(param1.length,65536) - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§6";§() * 255);
            _loc2_ -= 2;
         }
         _loc2_ = param1.length - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§6";§() * 255);
            _loc2_ -= int(this.§6";§() * 255);
         }
         var _loc3_:int = Math.max(param1.length,65536) - 65536;
         _loc2_ = param1.length - 1;
         while(_loc2_ >= _loc3_)
         {
            param1[_loc2_] -= int(this.§6";§() * 255);
            _loc2_ -= 2;
         }
         param1.inflate();
      }
      
      protected function §6";§() : Number
      {
         this.§;"#§ ^= this.§;"#§ << 21;
         this.§;"#§ ^= this.§;"#§ >>> 35;
         this.§;"#§ ^= this.§;"#§ << 4;
         if(this.§;"#§ < 0)
         {
            this.§;"#§ &= 2147483647;
         }
         return this.§;"#§ / 2147483647;
      }
   }
}
