package §=`§
{
   import §2m§.§<!?§;
   import §<8§.§!3§;
   import §<8§.§,j§;
   import §?]§.§1P§;
   import §?]§.Texture;
   import flash.display.BitmapData;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class §6!I§ extends EventDispatcher
   {
      
      private static const §'x§:int = 2;
      
      private static const §3M§:int = 2048;
      
      private static var §]!#§:§6!I§;
       
      
      private var §3"#§:Dictionary;
      
      private var §6w§:Vector.<§,j§>;
      
      private var §]e§:Dictionary;
      
      private var §@0§:Boolean;
      
      private var §9!^§:String;
      
      private var §<R§:Texture;
      
      private var §@^§:int;
      
      private var §#!2§:int;
      
      public function §6!I§(param1:String = null)
      {
         super();
         this.§6w§ = new Vector.<§,j§>();
         this.§3"#§ = new Dictionary();
         this.§]e§ = new Dictionary();
         this.§9!^§ = param1;
      }
      
      public static function get §[U§() : §6!I§
      {
         if(!§]!#§)
         {
            §]!#§ = new §6!I§();
         }
         return §]!#§;
      }
      
      public function get §3&§() : int
      {
         return this.§@^§;
      }
      
      public function get §5j§() : int
      {
         return this.§#!2§;
      }
      
      public function get id() : String
      {
         return this.§9!^§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§#`§ = null;
         var _loc2_:§,j§ = null;
         if(this.§3"#§)
         {
            for each(_loc1_ in this.§3"#§)
            {
               this.unregisterBitmapDataTexture(_loc1_.texture.parent);
               _loc1_.dispose();
            }
            this.§3"#§ = null;
         }
         if(this.§6w§)
         {
            for each(_loc2_ in this.§6w§)
            {
               _loc2_.dispose();
            }
            this.§6w§ = null;
         }
         if(this.§]e§)
         {
            this.§]e§ = null;
         }
         if(this.§<R§)
         {
            this.§<R§.dispose();
            this.§<R§ = null;
         }
         this.§6w§ = new Vector.<§,j§>();
         this.§3"#§ = new Dictionary();
         this.§]e§ = new Dictionary();
      }
      
      public function §@!V§(param1:§,j§) : void
      {
         if(this.§@0§)
         {
            return;
         }
         if(this.§6w§.indexOf(param1) >= 0)
         {
            return;
         }
         this.§6w§.push(param1);
      }
      
      private function §,0§(param1:Array) : Rectangle
      {
         var _loc9_:§,j§ = null;
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
            if(_loc2_ + _loc10_.width + §'x§ >= §3M§)
            {
               _loc2_ = 0;
               _loc3_ += _loc6_;
               _loc6_ = 0;
            }
            if(_loc3_ + _loc10_.height + §'x§ >= §3M§)
            {
               break;
            }
            _loc2_ += _loc10_.width + §'x§;
            if(_loc2_ > _loc4_)
            {
               _loc4_ = _loc2_;
            }
            if(_loc10_.height + §'x§ > _loc6_)
            {
               _loc6_ = _loc10_.height + §'x§;
               _loc5_ = _loc3_ + _loc6_;
            }
            _loc8_++;
         }
         return new Rectangle(0,0,_loc4_,_loc5_);
      }
      
      private function §4!'§(param1:Array, param2:BitmapData) : Array
      {
         var _loc8_:§,j§ = null;
         var _loc9_:BitmapData = null;
         var _loc10_:§ -§ = null;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:§!3§ = null;
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
            if(_loc3_ + _loc9_.width + §'x§ > param2.width)
            {
               _loc3_ = 0;
               _loc4_ += _loc5_;
               _loc5_ = 0;
            }
            if(_loc4_ + _loc9_.height + §'x§ > param2.height)
            {
               break;
            }
            param2.copyPixels(_loc9_,_loc9_.rect,new Point(_loc3_,_loc4_),null,null,true);
            (_loc10_ = new § -§()).offset = new Point(_loc3_,_loc4_);
            _loc10_.native = _loc8_;
            _loc6_.push(_loc10_);
            _loc11_ = _loc8_.§'M§;
            _loc12_ = 0;
            while(_loc12_ < _loc11_)
            {
               (_loc13_ = _loc8_.§-v§(_loc12_)).§"-§ = null;
               _loc13_.§?!-§.offset(_loc3_,_loc4_);
               _loc12_++;
            }
            _loc3_ += _loc9_.width + §'x§;
            if(_loc9_.height + §'x§ > _loc5_)
            {
               _loc5_ = _loc9_.height + §'x§;
            }
            param1.splice(0,1);
         }
         return _loc6_;
      }
      
      public function §`R§() : Boolean
      {
         var _loc1_:§,j§ = null;
         var _loc3_:Rectangle = null;
         var _loc4_:BitmapData = null;
         var _loc5_:Array = null;
         var _loc6_:Texture = null;
         var _loc7_:int = 0;
         var _loc8_:§ -§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:§!3§ = null;
         if(!§<!?§.§0,§())
         {
            return false;
         }
         if(this.§@0§)
         {
            return true;
         }
         var _loc2_:Array = [];
         for each(_loc1_ in this.§6w§)
         {
            if(_loc1_.§'M§ > 0)
            {
               _loc2_.push(_loc1_);
            }
         }
         while(_loc2_.length > 0)
         {
            _loc3_ = this.§,0§(_loc2_);
            if(_loc3_.width * _loc3_.height == 0)
            {
               throw new Error("Found too large sprite sheet image!");
            }
            _loc4_ = new BitmapData(_loc3_.width,_loc3_.height,true,0);
            if((_loc5_ = this.§4!'§(_loc2_,_loc4_)).length == 0)
            {
               throw new Error("Found too large sprite sheet image!");
            }
            _loc6_ = this.getTextureFromBitmapData(_loc4_);
            _loc7_ = 0;
            while(_loc7_ < _loc5_.length)
            {
               _loc1_ = (_loc8_ = _loc5_[_loc7_]).native;
               _loc9_ = _loc1_.§'M§;
               _loc10_ = 0;
               while(_loc10_ < _loc9_)
               {
                  _loc11_ = _loc1_.§-v§(_loc10_);
                  this.§"!T§(_loc11_,_loc6_,_loc4_,_loc1_.scale);
                  _loc10_++;
               }
               _loc7_++;
            }
         }
         for each(_loc1_ in this.§6w§)
         {
            _loc1_.dispose();
         }
         this.§6w§ = new Vector.<§,j§>();
         this.§@0§ = true;
         return true;
      }
      
      private function §"!T§(param1:§!3§, param2:Texture, param3:BitmapData, param4:Number) : void
      {
         var _loc6_:Rectangle = null;
         var _loc7_:§1P§ = null;
         var _loc5_:§#`§;
         if(!(_loc5_ = this.§3"#§[param1.mName]))
         {
            _loc6_ = param1.§?!-§.clone();
            _loc7_ = new §1P§(param2,_loc6_,false);
            _loc5_ = new §#`§(_loc7_,param3,_loc6_,param1.§1!3§,param1.§;V§,param4);
            this.§3"#§[param1.mName] = _loc5_;
         }
      }
      
      public function §6!U§() : void
      {
         var bd:Object = null;
         var texture:Texture = null;
         if(!§<!?§.§&"#§)
         {
            for(bd in this.§]e§)
            {
               try
               {
                  texture = this.§]e§[bd];
                  texture.requestBaseTextureUpdate(bd as BitmapData);
               }
               catch(e:Error)
               {
               }
            }
         }
      }
      
      public function §&u§(param1:String) : §#`§
      {
         return this.§3"#§[param1];
      }
      
      public function getTextureFromBitmapData(param1:BitmapData, param2:Boolean = true) : Texture
      {
         var _loc3_:Texture = this.§]e§[param1];
         if(_loc3_)
         {
            return _loc3_;
         }
         _loc3_ = §<!?§.§ "§(param1,param2);
         this.§]e§[param1] = _loc3_;
         this.§9!D§(_loc3_,param1,true);
         return _loc3_;
      }
      
      public function §9!D§(param1:Texture, param2:BitmapData, param3:Boolean) : void
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
            this.§#!2§ += _loc4_ * param2.width * param2.height * 4;
         }
         if(param1)
         {
            _loc5_ = int(param1.width);
            _loc6_ = int(param1.height);
            while(_loc5_ >= 1 && _loc6_ >= 1)
            {
               this.§@^§ += _loc4_ * _loc5_ * _loc6_ * 4;
               _loc5_ >>= 1;
               _loc6_ >>= 1;
            }
         }
      }
      
      public function §9Y§() : Texture
      {
         if(!this.§<R§)
         {
            this.§<R§ = this.getTextureFromBitmapData(new BitmapData(40,40,false,16711935));
         }
         return this.§<R§;
      }
      
      public function unregisterBitmapDataTexture(param1:Texture) : void
      {
         var _loc2_:* = null;
         var _loc3_:BitmapData = null;
         for(_loc2_ in this.§]e§)
         {
            if(this.§]e§[_loc2_] == param1)
            {
               _loc3_ = _loc2_ as BitmapData;
               this.§9!D§(param1,_loc3_,false);
               if(_loc3_)
               {
                  _loc3_.dispose();
               }
               delete this.§]e§[_loc2_];
               param1.dispose();
               return;
            }
         }
      }
      
      public function §6n§(param1:String) : BitmapData
      {
         var _loc2_:§#`§ = this.§&u§(param1);
         if(_loc2_ == null)
         {
            _loc2_ = this.§&u§(param1 + "_1");
         }
         if(_loc2_ == null)
         {
            _loc2_ = this.§&u§(param1 + "_01");
         }
         if(_loc2_ == null)
         {
            return null;
         }
         return _loc2_.bitmapData;
      }
   }
}
