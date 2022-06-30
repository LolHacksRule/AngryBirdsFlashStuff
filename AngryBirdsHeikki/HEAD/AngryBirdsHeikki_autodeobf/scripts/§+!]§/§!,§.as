package §+!]§
{
   import §!!S§.§7%§;
   import §!!S§.Texture;
   import §#!C§.§'!e§;
   import §#!C§.§=_§;
   import §&L§.§?]§;
   import flash.display.BitmapData;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class §!,§ extends EventDispatcher
   {
      
      private static const §^b§:int = 2;
      
      private static const §;e§:int = 2048;
      
      private static var §-j§:§!,§;
       
      
      private var §>m§:Dictionary;
      
      private var §?!R§:Vector.<§=_§>;
      
      private var §#!"§:Dictionary;
      
      private var §6a§:Boolean;
      
      private var §[,§:String;
      
      private var §9!4§:Texture;
      
      private var §3§:int;
      
      private var §4$§:int;
      
      public function §!,§(param1:String = null)
      {
         super();
         this.§?!R§ = new Vector.<§=_§>();
         this.§>m§ = new Dictionary();
         this.§#!"§ = new Dictionary();
         this.§[,§ = param1;
      }
      
      public static function get §?! §() : §!,§
      {
         if(!§-j§)
         {
            §-j§ = new §!,§();
         }
         return §-j§;
      }
      
      public function get §+!C§() : int
      {
         return this.§3§;
      }
      
      public function get §^!D§() : int
      {
         return this.§4$§;
      }
      
      public function get id() : String
      {
         return this.§[,§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§+!=§ = null;
         var _loc2_:§=_§ = null;
         if(this.§>m§)
         {
            for each(_loc1_ in this.§>m§)
            {
               this.§ C§(_loc1_.texture.parent);
               _loc1_.dispose();
            }
            this.§>m§ = null;
         }
         if(this.§?!R§)
         {
            for each(_loc2_ in this.§?!R§)
            {
               _loc2_.dispose();
            }
            this.§?!R§ = null;
         }
         if(this.§#!"§)
         {
            this.§#!"§ = null;
         }
         if(this.§9!4§)
         {
            this.§9!4§.dispose();
            this.§9!4§ = null;
         }
         this.§?!R§ = new Vector.<§=_§>();
         this.§>m§ = new Dictionary();
         this.§#!"§ = new Dictionary();
      }
      
      public function §77§(param1:§=_§) : void
      {
         if(this.§6a§)
         {
            return;
         }
         if(this.§?!R§.indexOf(param1) >= 0)
         {
            return;
         }
         this.§?!R§.push(param1);
      }
      
      private function §6&§(param1:Array) : Rectangle
      {
         var _loc9_:§=_§ = null;
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
            if(_loc2_ + _loc10_.width + §^b§ >= §;e§)
            {
               _loc2_ = 0;
               _loc3_ += _loc6_;
               _loc6_ = 0;
            }
            if(_loc3_ + _loc10_.height + §^b§ >= §;e§)
            {
               break;
            }
            _loc2_ += _loc10_.width + §^b§;
            if(_loc2_ > _loc4_)
            {
               _loc4_ = _loc2_;
            }
            if(_loc10_.height + §^b§ > _loc6_)
            {
               _loc6_ = _loc10_.height + §^b§;
               _loc5_ = _loc3_ + _loc6_;
            }
            _loc8_++;
         }
         return new Rectangle(0,0,_loc4_,_loc5_);
      }
      
      private function §#!'§(param1:Array, param2:BitmapData) : Array
      {
         var _loc8_:§=_§ = null;
         var _loc9_:BitmapData = null;
         var _loc10_:§5,§ = null;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:§'!e§ = null;
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
            if(_loc3_ + _loc9_.width + §^b§ > param2.width)
            {
               _loc3_ = 0;
               _loc4_ += _loc5_;
               _loc5_ = 0;
            }
            if(_loc4_ + _loc9_.height + §^b§ > param2.height)
            {
               break;
            }
            param2.copyPixels(_loc9_,_loc9_.rect,new Point(_loc3_,_loc4_),null,null,true);
            (_loc10_ = new §5,§()).offset = new Point(_loc3_,_loc4_);
            _loc10_.§8!e§ = _loc8_;
            _loc6_.push(_loc10_);
            _loc11_ = _loc8_.§^!`§;
            _loc12_ = 0;
            while(_loc12_ < _loc11_)
            {
               (_loc13_ = _loc8_.§?!-§(_loc12_)).§-!<§ = null;
               _loc13_.§?![§.offset(_loc3_,_loc4_);
               _loc12_++;
            }
            _loc3_ += _loc9_.width + §^b§;
            if(_loc9_.height + §^b§ > _loc5_)
            {
               _loc5_ = _loc9_.height + §^b§;
            }
            param1.splice(0,1);
         }
         return _loc6_;
      }
      
      public function §;W§() : Boolean
      {
         var _loc1_:§=_§ = null;
         var _loc3_:Rectangle = null;
         var _loc4_:BitmapData = null;
         var _loc5_:Array = null;
         var _loc6_:Texture = null;
         var _loc7_:int = 0;
         var _loc8_:§5,§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:§'!e§ = null;
         if(!§?]§.§-?§())
         {
            return false;
         }
         if(this.§6a§)
         {
            return true;
         }
         var _loc2_:Array = [];
         for each(_loc1_ in this.§?!R§)
         {
            if(_loc1_.§^!`§ > 0)
            {
               _loc2_.push(_loc1_);
            }
         }
         while(_loc2_.length > 0)
         {
            _loc3_ = this.§6&§(_loc2_);
            if(_loc3_.width * _loc3_.height == 0)
            {
               throw new Error("Found too large sprite sheet image!");
            }
            _loc4_ = new BitmapData(_loc3_.width,_loc3_.height,true,0);
            if((_loc5_ = this.§#!'§(_loc2_,_loc4_)).length == 0)
            {
               throw new Error("Found too large sprite sheet image!");
            }
            _loc6_ = this.§@!&§(_loc4_);
            _loc7_ = 0;
            while(_loc7_ < _loc5_.length)
            {
               _loc1_ = (_loc8_ = _loc5_[_loc7_]).§8!e§;
               _loc9_ = _loc1_.§^!`§;
               _loc10_ = 0;
               while(_loc10_ < _loc9_)
               {
                  _loc11_ = _loc1_.§?!-§(_loc10_);
                  this.§&!$§(_loc11_,_loc6_,_loc4_,_loc1_.scale);
                  _loc10_++;
               }
               _loc7_++;
            }
         }
         for each(_loc1_ in this.§?!R§)
         {
            _loc1_.dispose();
         }
         this.§?!R§ = new Vector.<§=_§>();
         this.§6a§ = true;
         return true;
      }
      
      private function §&!$§(param1:§'!e§, param2:Texture, param3:BitmapData, param4:Number) : void
      {
         var _loc6_:Rectangle = null;
         var _loc7_:§7%§ = null;
         var _loc5_:§+!=§;
         if(!(_loc5_ = this.§>m§[param1.mName]))
         {
            _loc6_ = param1.§?![§.clone();
            _loc7_ = new §7%§(param2,_loc6_,false);
            _loc5_ = new §+!=§(_loc7_,param3,_loc6_,param1.§use§,param1.§?[§,param4);
            this.§>m§[param1.mName] = _loc5_;
         }
      }
      
      public function § B§() : void
      {
         var bd:Object = null;
         var texture:Texture = null;
         if(!§?]§.§#!0§)
         {
            for(bd in this.§#!"§)
            {
               try
               {
                  texture = this.§#!"§[bd];
                  texture.requestBaseTextureUpdate(bd as BitmapData);
               }
               catch(e:Error)
               {
               }
            }
         }
      }
      
      public function §#P§(param1:String) : §+!=§
      {
         return this.§>m§[param1];
      }
      
      public function §@!&§(param1:BitmapData, param2:Boolean = true) : Texture
      {
         var _loc3_:Texture = this.§#!"§[param1];
         if(_loc3_)
         {
            return _loc3_;
         }
         _loc3_ = §?]§.§&G§(param1,param2);
         this.§#!"§[param1] = _loc3_;
         this.§1!K§(_loc3_,param1,true);
         return _loc3_;
      }
      
      public function §1!K§(param1:Texture, param2:BitmapData, param3:Boolean) : void
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
            this.§4$§ += _loc4_ * param2.width * param2.height * 4;
         }
         if(param1)
         {
            _loc5_ = int(param1.width);
            _loc6_ = int(param1.height);
            while(_loc5_ >= 1 && _loc6_ >= 1)
            {
               this.§3§ += _loc4_ * _loc5_ * _loc6_ * 4;
               _loc5_ >>= 1;
               _loc6_ >>= 1;
            }
         }
      }
      
      public function §>q§() : Texture
      {
         if(!this.§9!4§)
         {
            this.§9!4§ = this.§@!&§(new BitmapData(40,40,false,16711935));
         }
         return this.§9!4§;
      }
      
      public function § C§(param1:Texture) : void
      {
         var _loc2_:* = null;
         var _loc3_:BitmapData = null;
         for(_loc2_ in this.§#!"§)
         {
            if(this.§#!"§[_loc2_] == param1)
            {
               _loc3_ = _loc2_ as BitmapData;
               this.§1!K§(param1,_loc3_,false);
               if(_loc3_)
               {
                  _loc3_.dispose();
               }
               delete this.§#!"§[_loc2_];
               param1.dispose();
               return;
            }
         }
      }
      
      public function §4!S§(param1:String) : BitmapData
      {
         var _loc2_:§+!=§ = this.§#P§(param1);
         if(_loc2_ == null)
         {
            _loc2_ = this.§#P§(param1 + "_1");
         }
         if(_loc2_ == null)
         {
            _loc2_ = this.§#P§(param1 + "_01");
         }
         if(_loc2_ == null)
         {
            return null;
         }
         return _loc2_.bitmapData;
      }
   }
}
