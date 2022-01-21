package §&!!§
{
   import § !^§.§<t§;
   import § !^§.Texture;
   import §=!K§.§do§;
   import §?6§.§!K§;
   import §?6§.§2!e§;
   import flash.display.BitmapData;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class §<!'§ extends EventDispatcher
   {
      
      private static const §4s§:int = 2;
      
      private static const §?I§:int = 2048;
      
      private static var §<s§:§<!'§;
       
      
      private var §6!V§:Dictionary;
      
      private var §#!b§:Vector.<§2!e§>;
      
      private var §,=§:Dictionary;
      
      private var §9;§:Boolean;
      
      private var §4R§:String;
      
      private var §"!i§:Texture;
      
      private var §1!5§:int;
      
      private var §-!Q§:int;
      
      public function §<!'§(param1:String = null)
      {
         super();
         this.§#!b§ = new Vector.<§2!e§>();
         this.§6!V§ = new Dictionary();
         this.§,=§ = new Dictionary();
         this.§4R§ = param1;
      }
      
      public static function get §+j§() : §<!'§
      {
         if(!§<s§)
         {
            §<s§ = new §<!'§();
         }
         return §<s§;
      }
      
      public function get §"J§() : int
      {
         return this.§1!5§;
      }
      
      public function get § p§() : int
      {
         return this.§-!Q§;
      }
      
      public function get id() : String
      {
         return this.§4R§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§7N§ = null;
         var _loc2_:§2!e§ = null;
         if(this.§6!V§)
         {
            for each(_loc1_ in this.§6!V§)
            {
               this.§4V§(_loc1_.texture.parent);
               _loc1_.dispose();
            }
            this.§6!V§ = null;
         }
         if(this.§#!b§)
         {
            for each(_loc2_ in this.§#!b§)
            {
               _loc2_.dispose();
            }
            this.§#!b§ = null;
         }
         if(this.§,=§)
         {
            this.§,=§ = null;
         }
         if(this.§"!i§)
         {
            this.§"!i§.dispose();
            this.§"!i§ = null;
         }
         this.§#!b§ = new Vector.<§2!e§>();
         this.§6!V§ = new Dictionary();
         this.§,=§ = new Dictionary();
      }
      
      public function §;t§(param1:§2!e§) : void
      {
         if(this.§9;§)
         {
            return;
         }
         if(this.§#!b§.indexOf(param1) >= 0)
         {
            return;
         }
         this.§#!b§.push(param1);
      }
      
      private function §6p§(param1:Array) : Rectangle
      {
         var _loc9_:§2!e§ = null;
         var _loc10_:BitmapData = null;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:Number = 1;
         var _loc8_:int = 0;
         while(_loc8_ < param1.length)
         {
            _loc9_ = param1[_loc8_];
            if(_loc8_ == 0)
            {
               _loc7_ = _loc9_.scale;
            }
            else if(_loc9_.scale != _loc7_)
            {
               break;
            }
            _loc10_ = _loc9_.bitmapData;
            if(_loc2_ + _loc10_.width + §4s§ >= §?I§)
            {
               _loc2_ = 0;
               _loc3_ += _loc6_;
               _loc6_ = 0;
            }
            if(_loc3_ + _loc10_.height + §4s§ >= §?I§)
            {
               break;
            }
            _loc2_ += _loc10_.width + §4s§;
            if(_loc2_ > _loc4_)
            {
               _loc4_ = _loc2_;
            }
            if(_loc10_.height + §4s§ > _loc6_)
            {
               _loc6_ = _loc10_.height + §4s§;
               _loc5_ = _loc3_ + _loc6_;
            }
            _loc8_++;
         }
         return new Rectangle(0,0,_loc4_,_loc5_);
      }
      
      private function §>!o§(param1:Array, param2:BitmapData) : Array
      {
         var _loc8_:§2!e§ = null;
         var _loc9_:BitmapData = null;
         var _loc10_:§'q§ = null;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:§!K§ = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:Array = [];
         var _loc7_:Number = NaN;
         while(param1.length > 0)
         {
            _loc8_ = param1[0];
            if(!isNaN(_loc7_) && _loc7_ != _loc8_.scale)
            {
               break;
            }
            _loc7_ = _loc8_.scale;
            _loc9_ = _loc8_.bitmapData;
            if(_loc3_ + _loc9_.width + §4s§ > param2.width)
            {
               _loc3_ = 0;
               _loc4_ += _loc5_;
               _loc5_ = 0;
            }
            if(_loc4_ + _loc9_.height + §4s§ > param2.height)
            {
               break;
            }
            param2.copyPixels(_loc9_,_loc9_.rect,new Point(_loc3_,_loc4_),null,null,true);
            (_loc10_ = new §'q§()).offset = new Point(_loc3_,_loc4_);
            _loc10_.§;L§ = _loc8_;
            _loc6_.push(_loc10_);
            _loc11_ = _loc8_.§?F§;
            _loc12_ = 0;
            while(_loc12_ < _loc11_)
            {
               (_loc13_ = _loc8_.§%W§(_loc12_)).§ case§ = null;
               _loc13_.§&@§.offset(_loc3_,_loc4_);
               _loc12_++;
            }
            _loc3_ += _loc9_.width + §4s§;
            if(_loc9_.height + §4s§ > _loc5_)
            {
               _loc5_ = _loc9_.height + §4s§;
            }
            param1.splice(0,1);
         }
         return _loc6_;
      }
      
      public function §-!#§() : Boolean
      {
         var _loc1_:§2!e§ = null;
         var _loc3_:Rectangle = null;
         var _loc4_:BitmapData = null;
         var _loc5_:Array = null;
         var _loc6_:Texture = null;
         var _loc7_:int = 0;
         var _loc8_:§'q§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:§!K§ = null;
         if(!§do§.§7X§())
         {
            return false;
         }
         if(this.§9;§)
         {
            return true;
         }
         var _loc2_:Array = [];
         for each(_loc1_ in this.§#!b§)
         {
            if(_loc1_.§?F§ > 0)
            {
               _loc2_.push(_loc1_);
            }
         }
         while(_loc2_.length > 0)
         {
            _loc3_ = this.§6p§(_loc2_);
            if(_loc3_.width * _loc3_.height == 0)
            {
               throw new Error("Found too large sprite sheet image!");
            }
            _loc4_ = new BitmapData(_loc3_.width,_loc3_.height,true,0);
            if((_loc5_ = this.§>!o§(_loc2_,_loc4_)).length == 0)
            {
               throw new Error("Found too large sprite sheet image!");
            }
            _loc6_ = this.getTextureFromBitmapData(_loc4_);
            _loc7_ = 0;
            while(_loc7_ < _loc5_.length)
            {
               _loc1_ = (_loc8_ = _loc5_[_loc7_]).§;L§;
               _loc9_ = _loc1_.§?F§;
               _loc10_ = 0;
               while(_loc10_ < _loc9_)
               {
                  _loc11_ = _loc1_.§%W§(_loc10_);
                  this.§@!M§(_loc11_,_loc6_,_loc4_,_loc1_.scale);
                  _loc10_++;
               }
               _loc7_++;
            }
         }
         for each(_loc1_ in this.§#!b§)
         {
            _loc1_.dispose();
         }
         this.§#!b§ = new Vector.<§2!e§>();
         this.§9;§ = true;
         return true;
      }
      
      private function §@!M§(param1:§!K§, param2:Texture, param3:BitmapData, param4:Number) : void
      {
         var _loc6_:Rectangle = null;
         var _loc7_:§<t§ = null;
         var _loc5_:§7N§;
         if(!(_loc5_ = this.§6!V§[param1.mName]))
         {
            _loc6_ = param1.§&@§.clone();
            _loc7_ = new §<t§(param2,_loc6_,false);
            _loc5_ = new §7N§(_loc7_,param3,_loc6_,param1.§7f§,param1.§,!l§,param4);
            this.§6!V§[param1.mName] = _loc5_;
         }
      }
      
      public function § !;§() : void
      {
         var bd:Object = null;
         var texture:Texture = null;
         if(!§do§.§[J§)
         {
            for(bd in this.§,=§)
            {
               try
               {
                  texture = this.§,=§[bd];
                  texture.requestBaseTextureUpdate(bd as BitmapData);
               }
               catch(e:Error)
               {
               }
            }
         }
      }
      
      public function §^!C§(param1:String) : §7N§
      {
         return this.§6!V§[param1];
      }
      
      public function getTextureFromBitmapData(param1:BitmapData, param2:Boolean = true) : Texture
      {
         var _loc3_:Texture = this.§,=§[param1];
         if(_loc3_)
         {
            return _loc3_;
         }
         _loc3_ = §do§.§1a§(param1,param2);
         this.§,=§[param1] = _loc3_;
         this.§,!e§(_loc3_,param1,true);
         return _loc3_;
      }
      
      public function §,!e§(param1:Texture, param2:BitmapData, param3:Boolean) : void
      {
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         var _loc4_:int = 1;
         if(!param3)
         {
            _loc4_ = -1;
         }
         if(param2)
         {
            this.§-!Q§ += _loc4_ * param2.width * param2.height * 4;
         }
         if(param1)
         {
            _loc5_ = int(param1.width);
            _loc6_ = int(param1.height);
            while(_loc5_ >= 1 && _loc6_ >= 1)
            {
               this.§1!5§ += _loc4_ * _loc5_ * _loc6_ * 4;
               _loc5_ >>= 1;
               _loc6_ >>= 1;
            }
         }
      }
      
      public function §8!c§() : Texture
      {
         if(!this.§"!i§)
         {
            this.§"!i§ = this.getTextureFromBitmapData(new BitmapData(40,40,false,16711935));
         }
         return this.§"!i§;
      }
      
      public function §4V§(param1:Texture) : void
      {
         var _loc2_:* = null;
         var _loc3_:BitmapData = null;
         for(_loc2_ in this.§,=§)
         {
            if(this.§,=§[_loc2_] == param1)
            {
               _loc3_ = _loc2_ as BitmapData;
               this.§,!e§(param1,_loc3_,false);
               if(_loc3_)
               {
                  _loc3_.dispose();
               }
               delete this.§,=§[_loc2_];
               param1.dispose();
               return;
            }
         }
      }
      
      public function §1C§(param1:String) : BitmapData
      {
         var _loc2_:§7N§ = this.§^!C§(param1);
         if(_loc2_ == null)
         {
            _loc2_ = this.§^!C§(param1 + "_1");
         }
         if(_loc2_ == null)
         {
            _loc2_ = this.§^!C§(param1 + "_01");
         }
         if(_loc2_ == null)
         {
            return null;
         }
         return _loc2_.bitmapData;
      }
   }
}
