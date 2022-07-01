package §"!w§
{
   import §2`§.§6y§;
   import §4!i§.§2!Z§;
   import §4!i§.§9w§;
   import §8! §.§"f§;
   import §8! §.§&$§;
   import §8! §.§+1§;
   import §8! §.§+C§;
   import §8! §.§2!f§;
   import §8! §.§9q§;
   import §@!G§.§4!Z§;
   import §@!G§.§]b§;
   import flash.display.Bitmap;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.ByteArray;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   
   public class §[,§ extends EventDispatcher implements §&t§
   {
      
      protected static const §,!r§:Number = 100;
      
      protected static const §4! §:Number = 20;
       
      
      protected var §`!g§:int;
      
      protected var §+4§:Object;
      
      protected var §"u§:String;
      
      protected var §4c§:int = 0;
      
      protected var §6!9§:§2!f§;
      
      protected var §="'§:Timer;
      
      protected var § !>§:Object;
      
      protected var §]!L§:Vector.<String>;
      
      public function §[,§()
      {
         this.§+4§ = {};
         super();
         this.§6!9§ = new §2!f§("packageManager");
      }
      
      public function get §"1§() : §+C§
      {
         return this.§6!9§;
      }
      
      public function get §^!;§() : Boolean
      {
         return this.§4c§ == 0 && (!this.§]!L§ || this.§]!L§.length == 0);
      }
      
      public function dispose() : void
      {
         this.clear();
         this.§6!9§.dispose();
      }
      
      protected function clear() : void
      {
         if(this.§="'§)
         {
            this.§="'§.stop();
            this.§="'§.removeEventListener(TimerEvent.TIMER,this.§1T§);
            this.§="'§ = null;
         }
         this.§ !>§ = null;
         this.§]!L§ = null;
      }
      
      protected function §#v§(param1:String, param2:String) : String
      {
         return param2 + "/" + param1;
      }
      
      protected function §7Z§(param1:String, param2:String) : §]b§
      {
         return this.§+4§[this.§#v§(param1,param2)] as §]b§;
      }
      
      protected function §1!$§(param1:String, param2:String, param3:§]b§) : void
      {
         this.§+4§[this.§#v§(param1,param2)] = param3;
      }
      
      protected function §5"-§(param1:String, param2:String = null) : String
      {
         if(param2 == null)
         {
            param2 = this.§"u§;
         }
         var _loc3_:§]b§ = this.§7Z§(param1,param2);
         if(!_loc3_)
         {
            throw new Error("File " + this.§#v§(param1,param2) + " not found",§9w§.§^!"§);
         }
         return _loc3_.§9!y§(false);
      }
      
      protected function §!!>§(param1:String, param2:String = null) : ByteArray
      {
         if(param2 == null)
         {
            param2 = this.§"u§;
         }
         var _loc3_:§]b§ = this.§7Z§(param1,param2);
         if(!_loc3_)
         {
            throw new Error("File " + this.§#v§(param1,param2) + " not found",§9w§.§^!"§);
         }
         return _loc3_.content;
      }
      
      protected function §,D§(param1:String, param2:Function) : void
      {
         return §2!Z§.§;P§(this.§!!>§(param1),param2);
      }
      
      public function §,!L§(param1:ByteArray, param2:String, param3:Boolean = true) : void
      {
         var _loc7_:§]b§ = null;
         if(!this.§^!;§)
         {
            throw new Error("Can\'t load another package - need to wait for previous one to complete !!!");
         }
         if(param3)
         {
            this.§+!"§(param1);
         }
         this.§"u§ = param2;
         var _loc4_:§4!Z§;
         (_loc4_ = new §4!Z§()).loadBytes(param1);
         var _loc5_:Object = {};
         var _loc6_:int = _loc4_.§%!1§() - 1;
         while(_loc6_ >= 0)
         {
            if((_loc7_ = _loc4_.§76§(_loc6_)).§@z§.substr(-1) != "/")
            {
               if(this.§7Z§(_loc7_.§@z§,this.§"u§))
               {
                  _loc5_[_loc7_.§@z§] = this.§7Z§(_loc7_.§@z§,this.§"u§);
               }
               else
               {
                  _loc5_[_loc7_.§@z§] = _loc7_;
                  this.§1!$§(_loc7_.§@z§,this.§"u§,_loc7_);
               }
            }
            _loc6_--;
         }
         this.§7A§(_loc5_);
      }
      
      public function §#!?§() : void
      {
         this.clear();
      }
      
      protected function § !v§(param1:String) : void
      {
         var jsonObject:Object = null;
         var fileName:String = param1;
         try
         {
            jsonObject = JSON.parse(this.§5"-§(fileName));
         }
         catch(e:Error)
         {
            throw new Error("Can\'t convert file \'" + fileName + "\' to object; invalid JSON.",§9w§.§'!H§);
         }
         this.§,!E§(jsonObject);
      }
      
      protected function initializeFile(param1:String) : void
      {
         if(param1.search(/^sprite_sheets\/(.*)\.json$/i) != -1)
         {
            this.§ !v§(param1);
         }
         var _loc2_:Array = param1.match(/composites\/data\/(.*)\.xml$/i);
         if(_loc2_)
         {
            this.§";§(param1);
         }
         _loc2_ = param1.match(/sprite_sheets\/data\/(.*)\.xml$/i);
         if(_loc2_)
         {
            this.§";§(param1);
         }
         var _loc3_:Array = param1.match(/composites\/main\/(.*)\.xml$/i);
         if(_loc3_)
         {
            this.§]!O§(param1);
         }
      }
      
      protected function §7A§(param1:Object) : void
      {
         this.§3+§(param1);
         if(this.§3!k§())
         {
            if(!this.§="'§)
            {
               this.§="'§ = new Timer(§4! §,0);
               this.§="'§.addEventListener(TimerEvent.TIMER,this.§1T§);
            }
            else
            {
               this.§="'§.stop();
            }
            this.§="'§.start();
         }
      }
      
      private function §3+§(param1:Object) : void
      {
         var _loc2_:* = null;
         this.§]!L§ = new Vector.<String>();
         for(_loc2_ in param1)
         {
            this.§]!L§.push(_loc2_);
         }
         this.§ !>§ = param1;
      }
      
      private function §3!k§() : Boolean
      {
         var _loc1_:int = getTimer();
         while(getTimer() - _loc1_ < §,!r§ / 2)
         {
            if(!this.§!h§())
            {
               break;
            }
         }
         var _loc2_:* = this.§]!L§.length > 0;
         if(this.§^!;§)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
         return _loc2_;
      }
      
      private function §!h§() : Boolean
      {
         var _loc1_:String = null;
         if(this.§]!L§.length > 0)
         {
            _loc1_ = this.§]!L§[0];
            this.§]!L§.splice(0,1);
            this.initializeFile(_loc1_);
            return true;
         }
         return false;
      }
      
      private function §1T§(param1:Event) : void
      {
         if(!this.§3!k§())
         {
            if(this.§="'§)
            {
               this.§="'§.stop();
            }
         }
      }
      
      protected function §]!O§(param1:String) : void
      {
         var _loc2_:XML = new XML(this.§5"-§(param1));
         §6y§.§@!%§(_loc2_);
      }
      
      protected function §";§(param1:String) : void
      {
         var activePackageName:String = null;
         var filePath:String = param1;
         activePackageName = this.§"u§;
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
            var _loc2_:XML = new XML(§5"-§(filePath,activePackageName));
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
                  if(§7Z§(_loc13_,activePackageName) == null)
                  {
                     _loc9_ = _loc8_[_loc8_.length - 2] + "/" + _loc8_[_loc8_.length - 1];
                     _loc13_ = _loc11_ + "source/" + _loc9_ + ".xml";
                  }
                  if(_loc3_.indexOf(_loc9_) < 0)
                  {
                     _loc3_.push(_loc9_);
                     _loc14_ = §5"-§(_loc13_,activePackageName);
                     _loc4_.push(new XML(_loc14_));
                  }
               }
            }
            §"J§(new §&$§(_loc2_,_loc4_,param1.bitmapData));
            §,5§();
         };
         ++this.§4c§;
         var imagePath:String = filePath.substr(0,filePath.length - 3) + "png";
         this.§,D§(imagePath,onComplete);
      }
      
      protected function §"J§(param1:§9q§) : void
      {
         this.§6!9§.§^",§(param1);
      }
      
      protected function §,5§() : void
      {
         --this.§4c§;
         if(this.§^!;§)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      protected function §,!E§(param1:Object) : void
      {
         var spriteSheetClass:Class = null;
         var dataObject:Object = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            §"J§(new spriteSheetClass(dataObject,param1.bitmapData));
            §,5§();
         };
         ++this.§4c§;
         if(dataObject.image)
         {
            spriteSheetClass = §"f§;
            this.§,D§("sprite_sheets/" + dataObject.image,onComplete);
         }
         else
         {
            if(!(dataObject.name && dataObject.charCount))
            {
               throw new Error("Invalid sprite sheet data.");
            }
            spriteSheetClass = §+1§;
            this.§,D§("sprite_sheets/" + dataObject.name + ".png",onComplete);
         }
      }
      
      protected function §+!"§(param1:ByteArray) : void
      {
         var _loc2_:int = 0;
         this.§`!g§ = 56895 & 25147 >> 1;
         _loc2_ = Math.min(param1.length,65536) - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§<I§() * 255);
            _loc2_ -= 2;
         }
         _loc2_ = param1.length - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§<I§() * 255);
            _loc2_ -= int(this.§<I§() * 255);
         }
         var _loc3_:int = Math.max(param1.length,65536) - 65536;
         _loc2_ = param1.length - 1;
         while(_loc2_ >= _loc3_)
         {
            param1[_loc2_] -= int(this.§<I§() * 255);
            _loc2_ -= 2;
         }
         param1.inflate();
      }
      
      protected function §<I§() : Number
      {
         this.§`!g§ ^= this.§`!g§ << 21;
         this.§`!g§ ^= this.§`!g§ >>> 35;
         this.§`!g§ ^= this.§`!g§ << 4;
         if(this.§`!g§ < 0)
         {
            this.§`!g§ &= 2147483647;
         }
         return this.§`!g§ / 2147483647;
      }
   }
}
