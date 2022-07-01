package §5h§
{
   import §%f§.§[!l§;
   import §%f§.§^z§;
   import §5;§.§7§;
   import §5;§.§9!'§;
   import §5;§.§<!j§;
   import §5;§.§?"7§;
   import §5;§.§[?§;
   import §5;§.§]!y§;
   import §6`§.§[!h§;
   import §8'§.§@!e§;
   import §8'§.§]!"§;
   import flash.display.Bitmap;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.ByteArray;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   
   public class §[!;§ extends EventDispatcher implements §+"7§
   {
      
      protected static const §9!y§:Number = 100;
      
      protected static const §5!f§:Number = 20;
       
      
      protected var §1!N§:int;
      
      protected var §&Q§:Object;
      
      protected var §'!o§:String;
      
      protected var §`!o§:int = 0;
      
      protected var §["+§:§<!j§;
      
      protected var §-!`§:Timer;
      
      protected var §+O§:Object;
      
      protected var §,!w§:Vector.<String>;
      
      public function §[!;§()
      {
         this.§&Q§ = {};
         super();
         this.§["+§ = new §<!j§("packageManager");
      }
      
      public function get §3V§() : §?"7§
      {
         return this.§["+§;
      }
      
      public function get §2!D§() : Boolean
      {
         return this.§`!o§ == 0 && (!this.§,!w§ || this.§,!w§.length == 0);
      }
      
      public function dispose() : void
      {
         this.clear();
         this.§["+§.dispose();
      }
      
      protected function clear() : void
      {
         if(this.§-!`§)
         {
            this.§-!`§.stop();
            this.§-!`§.removeEventListener(TimerEvent.TIMER,this.§@!1§);
            this.§-!`§ = null;
         }
         this.§+O§ = null;
         this.§,!w§ = null;
      }
      
      protected function §4",§(param1:String, param2:String) : String
      {
         return param2 + "/" + param1;
      }
      
      protected function §]=§(param1:String, param2:String) : §]!"§
      {
         return this.§&Q§[this.§4",§(param1,param2)] as §]!"§;
      }
      
      protected function §"E§(param1:String, param2:String, param3:§]!"§) : void
      {
         this.§&Q§[this.§4",§(param1,param2)] = param3;
      }
      
      protected function §&Z§(param1:String, param2:String = null) : String
      {
         if(param2 == null)
         {
            param2 = this.§'!o§;
         }
         var _loc3_:§]!"§ = this.§]=§(param1,param2);
         if(!_loc3_)
         {
            throw new Error("File " + this.§4",§(param1,param2) + " not found",§[!l§.§6"4§);
         }
         return _loc3_.§4!>§(false);
      }
      
      protected function §"!H§(param1:String, param2:String = null) : ByteArray
      {
         if(param2 == null)
         {
            param2 = this.§'!o§;
         }
         var _loc3_:§]!"§ = this.§]=§(param1,param2);
         if(!_loc3_)
         {
            throw new Error("File " + this.§4",§(param1,param2) + " not found",§[!l§.§6"4§);
         }
         return _loc3_.content;
      }
      
      protected function §?!t§(param1:String, param2:Function) : void
      {
         return §^z§.§6!I§(this.§"!H§(param1),param2);
      }
      
      public function §+!8§(param1:ByteArray, param2:String, param3:Boolean = true) : void
      {
         var _loc7_:§]!"§ = null;
         if(!this.§2!D§)
         {
            throw new Error("Can\'t load another package - need to wait for previous one to complete !!!");
         }
         if(param3)
         {
            this.§@!]§(param1);
         }
         this.§'!o§ = param2;
         var _loc4_:§@!e§;
         (_loc4_ = new §@!e§()).loadBytes(param1);
         var _loc5_:Object = {};
         var _loc6_:int = _loc4_.§9!E§() - 1;
         while(_loc6_ >= 0)
         {
            if((_loc7_ = _loc4_.§0A§(_loc6_)).§">§.substr(-1) != "/")
            {
               if(this.§]=§(_loc7_.§">§,this.§'!o§))
               {
                  _loc5_[_loc7_.§">§] = this.§]=§(_loc7_.§">§,this.§'!o§);
               }
               else
               {
                  _loc5_[_loc7_.§">§] = _loc7_;
                  this.§"E§(_loc7_.§">§,this.§'!o§,_loc7_);
               }
            }
            _loc6_--;
         }
         this.§;!+§(_loc5_);
      }
      
      public function §!!V§() : void
      {
         this.clear();
      }
      
      protected function §<!z§(param1:String) : void
      {
         var jsonObject:Object = null;
         var fileName:String = param1;
         try
         {
            jsonObject = JSON.parse(this.§&Z§(fileName));
         }
         catch(e:Error)
         {
            throw new Error("Can\'t convert file \'" + fileName + "\' to object; invalid JSON.",§[!l§.§5^§);
         }
         this.§8U§(jsonObject);
      }
      
      protected function initializeFile(param1:String) : void
      {
         if(param1.search(/^sprite_sheets\/(.*)\.json$/i) != -1)
         {
            this.§<!z§(param1);
         }
         var _loc2_:Array = param1.match(/composites\/data\/(.*)\.xml$/i);
         if(_loc2_)
         {
            this.§=>§(param1);
         }
         _loc2_ = param1.match(/sprite_sheets\/data\/(.*)\.xml$/i);
         if(_loc2_)
         {
            this.§=>§(param1);
         }
         var _loc3_:Array = param1.match(/composites\/main\/(.*)\.xml$/i);
         if(_loc3_)
         {
            this.§%!M§(param1);
         }
      }
      
      protected function §;!+§(param1:Object) : void
      {
         this.§`!s§(param1);
         if(this.§+!T§())
         {
            if(!this.§-!`§)
            {
               this.§-!`§ = new Timer(§5!f§,0);
               this.§-!`§.addEventListener(TimerEvent.TIMER,this.§@!1§);
            }
            else
            {
               this.§-!`§.stop();
            }
            this.§-!`§.start();
         }
      }
      
      private function §`!s§(param1:Object) : void
      {
         var _loc2_:* = null;
         this.§,!w§ = new Vector.<String>();
         for(_loc2_ in param1)
         {
            this.§,!w§.push(_loc2_);
         }
         this.§+O§ = param1;
      }
      
      private function §+!T§() : Boolean
      {
         var _loc1_:int = getTimer();
         while(getTimer() - _loc1_ < §9!y§ / 2)
         {
            if(!this.§+!I§())
            {
               break;
            }
         }
         var _loc2_:* = this.§,!w§.length > 0;
         if(this.§2!D§)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
         return _loc2_;
      }
      
      private function §+!I§() : Boolean
      {
         var _loc1_:String = null;
         if(this.§,!w§.length > 0)
         {
            _loc1_ = this.§,!w§[0];
            this.§,!w§.splice(0,1);
            this.initializeFile(_loc1_);
            return true;
         }
         return false;
      }
      
      private function §@!1§(param1:Event) : void
      {
         if(!this.§+!T§())
         {
            if(this.§-!`§)
            {
               this.§-!`§.stop();
            }
         }
      }
      
      protected function §%!M§(param1:String) : void
      {
         var _loc2_:XML = new XML(this.§&Z§(param1));
         §[!h§.§2"#§(_loc2_);
      }
      
      protected function §=>§(param1:String) : void
      {
         var activePackageName:String = null;
         var filePath:String = param1;
         activePackageName = this.§'!o§;
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
            var _loc2_:XML = new XML(§&Z§(filePath,activePackageName));
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
                  if(§]=§(_loc13_,activePackageName) == null)
                  {
                     _loc9_ = _loc8_[_loc8_.length - 2] + "/" + _loc8_[_loc8_.length - 1];
                     _loc13_ = _loc11_ + "source/" + _loc9_ + ".xml";
                  }
                  if(_loc3_.indexOf(_loc9_) < 0)
                  {
                     _loc3_.push(_loc9_);
                     _loc14_ = §&Z§(_loc13_,activePackageName);
                     _loc4_.push(new XML(_loc14_));
                  }
               }
            }
            §for§(new §[?§(_loc2_,_loc4_,param1.bitmapData));
            §<!e§();
         };
         ++this.§`!o§;
         var imagePath:String = filePath.substr(0,filePath.length - 3) + "png";
         this.§?!t§(imagePath,onComplete);
      }
      
      protected function §for§(param1:§]!y§) : void
      {
         this.§["+§.§2H§(param1);
      }
      
      protected function §<!e§() : void
      {
         --this.§`!o§;
         if(this.§2!D§)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      protected function §8U§(param1:Object) : void
      {
         var spriteSheetClass:Class = null;
         var dataObject:Object = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            §for§(new spriteSheetClass(dataObject,param1.bitmapData));
            §<!e§();
         };
         ++this.§`!o§;
         if(dataObject.image)
         {
            spriteSheetClass = §7§;
            this.§?!t§("sprite_sheets/" + dataObject.image,onComplete);
         }
         else
         {
            if(!(dataObject.name && dataObject.charCount))
            {
               throw new Error("Invalid sprite sheet data.");
            }
            spriteSheetClass = §9!'§;
            this.§?!t§("sprite_sheets/" + dataObject.name + ".png",onComplete);
         }
      }
      
      protected function §@!]§(param1:ByteArray) : void
      {
         var _loc2_:int = 0;
         this.§1!N§ = 56895 & 25147 >> 1;
         _loc2_ = Math.min(param1.length,65536) - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§3!k§() * 255);
            _loc2_ -= 2;
         }
         _loc2_ = param1.length - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§3!k§() * 255);
            _loc2_ -= int(this.§3!k§() * 255);
         }
         var _loc3_:int = Math.max(param1.length,65536) - 65536;
         _loc2_ = param1.length - 1;
         while(_loc2_ >= _loc3_)
         {
            param1[_loc2_] -= int(this.§3!k§() * 255);
            _loc2_ -= 2;
         }
         param1.inflate();
      }
      
      protected function §3!k§() : Number
      {
         this.§1!N§ ^= this.§1!N§ << 21;
         this.§1!N§ ^= this.§1!N§ >>> 35;
         this.§1!N§ ^= this.§1!N§ << 4;
         if(this.§1!N§ < 0)
         {
            this.§1!N§ &= 2147483647;
         }
         return this.§1!N§ / 2147483647;
      }
   }
}
