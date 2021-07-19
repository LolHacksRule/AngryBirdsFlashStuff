package §@g§
{
   import § ! §.§+D§;
   import §"n§.§?!=§;
   import §"n§.§`x§;
   import §'!l§.§2N§;
   import §'!l§.§4O§;
   import §'!l§.§5A§;
   import §'!l§.§9!#§;
   import §'!l§.§?!<§;
   import §'!l§.§]!e§;
   import §5&§.§ B§;
   import §5&§.§9!O§;
   import flash.display.Bitmap;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.ByteArray;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   
   public class §#!r§ extends EventDispatcher implements §%! §
   {
      
      protected static const §^!k§:Number = 100;
      
      protected static const §+]§:Number = 20;
       
      
      protected var §>"!§:int;
      
      protected var §<!@§:Object;
      
      protected var §1;§:String;
      
      protected var §"U§:int = 0;
      
      protected var §@!+§:§]!e§;
      
      protected var §="#§:Timer;
      
      protected var §@U§:Object;
      
      protected var §=!v§:Vector.<String>;
      
      public function §#!r§()
      {
         this.§<!@§ = {};
         super();
         this.§@!+§ = new §]!e§("packageManager");
      }
      
      public function get §-!-§() : §5A§
      {
         return this.§@!+§;
      }
      
      public function get §4!d§() : Boolean
      {
         return this.§"U§ == 0 && (!this.§=!v§ || this.§=!v§.length == 0);
      }
      
      public function dispose() : void
      {
         this.clear();
         this.§@!+§.dispose();
      }
      
      protected function clear() : void
      {
         if(this.§="#§)
         {
            this.§="#§.stop();
            this.§="#§.removeEventListener(TimerEvent.TIMER,this.§`%§);
            this.§="#§ = null;
         }
         this.§@U§ = null;
         this.§=!v§ = null;
      }
      
      protected function §<z§(param1:String, param2:String) : String
      {
         return param2 + "/" + param1;
      }
      
      protected function §6!E§(param1:String, param2:String) : § B§
      {
         return this.§<!@§[this.§<z§(param1,param2)] as § B§;
      }
      
      protected function §'!S§(param1:String, param2:String, param3:§ B§) : void
      {
         this.§<!@§[this.§<z§(param1,param2)] = param3;
      }
      
      protected function §;E§(param1:String, param2:String = null) : String
      {
         if(param2 == null)
         {
            param2 = this.§1;§;
         }
         var _loc3_:§ B§ = this.§6!E§(param1,param2);
         if(!_loc3_)
         {
            throw new Error("File " + this.§<z§(param1,param2) + " not found",§?!=§.§#"-§);
         }
         return _loc3_.§41§(false);
      }
      
      protected function §3!a§(param1:String, param2:String = null) : ByteArray
      {
         if(param2 == null)
         {
            param2 = this.§1;§;
         }
         var _loc3_:§ B§ = this.§6!E§(param1,param2);
         if(!_loc3_)
         {
            throw new Error("File " + this.§<z§(param1,param2) + " not found",§?!=§.§#"-§);
         }
         return _loc3_.content;
      }
      
      protected function §+F§(param1:String, param2:Function) : void
      {
         return §`x§.§`!+§(this.§3!a§(param1),param2);
      }
      
      public function §;!h§(param1:ByteArray, param2:String, param3:Boolean = true) : void
      {
         var _loc7_:§ B§ = null;
         if(!this.§4!d§)
         {
            throw new Error("Can\'t load another package - need to wait for previous one to complete !!!");
         }
         if(param3)
         {
            this.§ 9§(param1);
         }
         this.§1;§ = param2;
         var _loc4_:§9!O§;
         (_loc4_ = new §9!O§()).loadBytes(param1);
         var _loc5_:Object = {};
         var _loc6_:int = _loc4_.§3!?§() - 1;
         while(_loc6_ >= 0)
         {
            if((_loc7_ = _loc4_.§[!;§(_loc6_)).§!! §.substr(-1) != "/")
            {
               if(this.§6!E§(_loc7_.§!! §,this.§1;§))
               {
                  _loc5_[_loc7_.§!! §] = this.§6!E§(_loc7_.§!! §,this.§1;§);
               }
               else
               {
                  _loc5_[_loc7_.§!! §] = _loc7_;
                  this.§'!S§(_loc7_.§!! §,this.§1;§,_loc7_);
               }
            }
            _loc6_--;
         }
         this.§%T§(_loc5_);
      }
      
      public function §""0§() : void
      {
         this.clear();
      }
      
      protected function §"!N§(param1:String) : void
      {
         var jsonObject:Object = null;
         var fileName:String = param1;
         try
         {
            jsonObject = JSON.parse(this.§;E§(fileName));
         }
         catch(e:Error)
         {
            throw new Error("Can\'t convert file \'" + fileName + "\' to object; invalid JSON.",§?!=§.§0w§);
         }
         this.§?U§(jsonObject);
      }
      
      protected function initializeFile(param1:String) : void
      {
         if(param1.search(/^sprite_sheets\/(.*)\.json$/i) != -1)
         {
            this.§"!N§(param1);
         }
         var _loc2_:Array = param1.match(/composites\/data\/(.*)\.xml$/i);
         if(_loc2_)
         {
            this.§=m§(param1);
         }
         _loc2_ = param1.match(/sprite_sheets\/data\/(.*)\.xml$/i);
         if(_loc2_)
         {
            this.§=m§(param1);
         }
         var _loc3_:Array = param1.match(/composites\/main\/(.*)\.xml$/i);
         if(_loc3_)
         {
            this.§<!,§(param1);
         }
      }
      
      protected function §%T§(param1:Object) : void
      {
         this.§%!?§(param1);
         if(this.§=y§())
         {
            if(!this.§="#§)
            {
               this.§="#§ = new Timer(§+]§,0);
               this.§="#§.addEventListener(TimerEvent.TIMER,this.§`%§);
            }
            else
            {
               this.§="#§.stop();
            }
            this.§="#§.start();
         }
      }
      
      private function §%!?§(param1:Object) : void
      {
         var _loc2_:* = null;
         this.§=!v§ = new Vector.<String>();
         for(_loc2_ in param1)
         {
            this.§=!v§.push(_loc2_);
         }
         this.§@U§ = param1;
      }
      
      private function §=y§() : Boolean
      {
         var _loc1_:int = getTimer();
         while(getTimer() - _loc1_ < §^!k§ / 2)
         {
            if(!this.§5!j§())
            {
               break;
            }
         }
         var _loc2_:* = this.§=!v§.length > 0;
         if(this.§4!d§)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
         return _loc2_;
      }
      
      private function §5!j§() : Boolean
      {
         var _loc1_:String = null;
         if(this.§=!v§.length > 0)
         {
            _loc1_ = this.§=!v§[0];
            this.§=!v§.splice(0,1);
            this.initializeFile(_loc1_);
            return true;
         }
         return false;
      }
      
      private function §`%§(param1:Event) : void
      {
         if(!this.§=y§())
         {
            if(this.§="#§)
            {
               this.§="#§.stop();
            }
         }
      }
      
      protected function §<!,§(param1:String) : void
      {
         var _loc2_:XML = new XML(this.§;E§(param1));
         §+D§.§@r§(_loc2_);
      }
      
      protected function §=m§(param1:String) : void
      {
         var activePackageName:String = null;
         var filePath:String = param1;
         activePackageName = this.§1;§;
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
            var _loc2_:XML = new XML(§;E§(filePath,activePackageName));
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
                  if(§6!E§(_loc13_,activePackageName) == null)
                  {
                     _loc9_ = _loc8_[_loc8_.length - 2] + "/" + _loc8_[_loc8_.length - 1];
                     _loc13_ = _loc11_ + "source/" + _loc9_ + ".xml";
                  }
                  if(_loc3_.indexOf(_loc9_) < 0)
                  {
                     _loc3_.push(_loc9_);
                     _loc14_ = §;E§(_loc13_,activePackageName);
                     _loc4_.push(new XML(_loc14_));
                  }
               }
            }
            §="!§(new §4O§(_loc2_,_loc4_,param1.bitmapData));
            §6!?§();
         };
         ++this.§"U§;
         var imagePath:String = filePath.substr(0,filePath.length - 3) + "png";
         this.§+F§(imagePath,onComplete);
      }
      
      protected function §="!§(param1:§9!#§) : void
      {
         this.§@!+§.§1!u§(param1);
      }
      
      protected function §6!?§() : void
      {
         --this.§"U§;
         if(this.§4!d§)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      protected function §?U§(param1:Object) : void
      {
         var spriteSheetClass:Class = null;
         var dataObject:Object = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            §="!§(new spriteSheetClass(dataObject,param1.bitmapData));
            §6!?§();
         };
         ++this.§"U§;
         if(dataObject.image)
         {
            spriteSheetClass = §?!<§;
            this.§+F§("sprite_sheets/" + dataObject.image,onComplete);
         }
         else
         {
            if(!(dataObject.name && dataObject.charCount))
            {
               throw new Error("Invalid sprite sheet data.");
            }
            spriteSheetClass = §2N§;
            this.§+F§("sprite_sheets/" + dataObject.name + ".png",onComplete);
         }
      }
      
      protected function § 9§(param1:ByteArray) : void
      {
         var _loc2_:int = 0;
         this.§>"!§ = 56895 & 25147 >> 1;
         _loc2_ = Math.min(param1.length,65536) - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§7!!§() * 255);
            _loc2_ -= 2;
         }
         _loc2_ = param1.length - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§7!!§() * 255);
            _loc2_ -= int(this.§7!!§() * 255);
         }
         var _loc3_:int = Math.max(param1.length,65536) - 65536;
         _loc2_ = param1.length - 1;
         while(_loc2_ >= _loc3_)
         {
            param1[_loc2_] -= int(this.§7!!§() * 255);
            _loc2_ -= 2;
         }
         param1.inflate();
      }
      
      protected function §7!!§() : Number
      {
         this.§>"!§ ^= this.§>"!§ << 21;
         this.§>"!§ ^= this.§>"!§ >>> 35;
         this.§>"!§ ^= this.§>"!§ << 4;
         if(this.§>"!§ < 0)
         {
            this.§>"!§ &= 2147483647;
         }
         return this.§>"!§ / 2147483647;
      }
   }
}
