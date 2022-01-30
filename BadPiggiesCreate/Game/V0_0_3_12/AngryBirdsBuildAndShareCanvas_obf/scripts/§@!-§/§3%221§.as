package §@!-§
{
   import §3",§.§0"<§;
   import §3u§.§!!O§;
   import §3u§.§^!k§;
   import §^Q§.§ 5§;
   import §^Q§.Texture;
   import flash.display.BitmapData;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class §3"1§ extends EventDispatcher
   {
      
      private static const § !O§:int = 2;
      
      private static const §]"%§:int = 2048;
      
      private static var §@I§:§3"1§;
       
      
      private var §1!P§:Dictionary;
      
      private var §"o§:Vector.<§!!O§>;
      
      private var §'""§:Dictionary;
      
      private var §[x§:Boolean;
      
      private var §2!u§:String;
      
      private var §!!g§:Texture;
      
      private var §,!P§:int;
      
      private var §;!y§:int;
      
      public function §3"1§(param1:String = null)
      {
         super();
         this.§"o§ = new Vector.<§!!O§>();
         this.§1!P§ = new Dictionary();
         this.§'""§ = new Dictionary();
         this.§2!u§ = param1;
      }
      
      public static function get § "!§() : §3"1§
      {
         if(!§@I§)
         {
            §@I§ = new §3"1§();
         }
         return §@I§;
      }
      
      public function get §?! §() : int
      {
         return this.§,!P§;
      }
      
      public function get §-p§() : int
      {
         return this.§;!y§;
      }
      
      public function get id() : String
      {
         return this.§2!u§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§"K§ = null;
         var _loc2_:§!!O§ = null;
         if(this.§1!P§)
         {
            for each(_loc1_ in this.§1!P§)
            {
               this.§&!c§(_loc1_.texture.parent);
               _loc1_.dispose();
            }
            this.§1!P§ = null;
         }
         if(this.§"o§)
         {
            for each(_loc2_ in this.§"o§)
            {
               _loc2_.dispose();
            }
            this.§"o§ = null;
         }
         if(this.§'""§)
         {
            this.§'""§ = null;
         }
         if(this.§!!g§)
         {
            this.§!!g§.dispose();
            this.§!!g§ = null;
         }
         this.§"o§ = new Vector.<§!!O§>();
         this.§1!P§ = new Dictionary();
         this.§'""§ = new Dictionary();
      }
      
      public function §9M§(param1:§!!O§) : void
      {
         if(this.§[x§)
         {
            return;
         }
         if(this.§"o§.indexOf(param1) >= 0)
         {
            return;
         }
         this.§"o§.push(param1);
      }
      
      private function §"`§(param1:Array) : Rectangle
      {
         var _loc9_:§!!O§ = null;
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
            if(_loc2_ + _loc10_.width + § !O§ >= §]"%§)
            {
               _loc2_ = 0;
               _loc3_ += _loc6_;
               _loc6_ = 0;
            }
            if(_loc3_ + _loc10_.height + § !O§ >= §]"%§)
            {
               break;
            }
            _loc2_ += _loc10_.width + § !O§;
            if(_loc2_ > _loc4_)
            {
               _loc4_ = _loc2_;
            }
            if(_loc10_.height + § !O§ > _loc6_)
            {
               _loc6_ = _loc10_.height + § !O§;
               _loc5_ = _loc3_ + _loc6_;
            }
            _loc8_++;
         }
         return new Rectangle(0,0,_loc4_,_loc5_);
      }
      
      private function §'"!§(param1:Array, param2:BitmapData) : Array
      {
         var _loc8_:§!!O§ = null;
         var _loc9_:BitmapData = null;
         var _loc10_:§&v§ = null;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:§^!k§ = null;
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
            if(_loc3_ + _loc9_.width + § !O§ > param2.width)
            {
               _loc3_ = 0;
               _loc4_ += _loc5_;
               _loc5_ = 0;
            }
            if(_loc4_ + _loc9_.height + § !O§ > param2.height)
            {
               break;
            }
            param2.copyPixels(_loc9_,_loc9_.rect,new Point(_loc3_,_loc4_),null,null,true);
            (_loc10_ = new §&v§()).offset = new Point(_loc3_,_loc4_);
            _loc10_.§?p§ = _loc8_;
            _loc6_.push(_loc10_);
            _loc11_ = _loc8_.§=n§;
            _loc12_ = 0;
            while(_loc12_ < _loc11_)
            {
               (_loc13_ = _loc8_.§+!k§(_loc12_)).§4h§ = null;
               _loc13_.§-"7§.offset(_loc3_,_loc4_);
               _loc12_++;
            }
            _loc3_ += _loc9_.width + § !O§;
            if(_loc9_.height + § !O§ > _loc5_)
            {
               _loc5_ = _loc9_.height + § !O§;
            }
            param1.splice(0,1);
         }
         return _loc6_;
      }
      
      public function § ,§() : Boolean
      {
         var _loc1_:§!!O§ = null;
         var _loc3_:Rectangle = null;
         var _loc4_:BitmapData = null;
         var _loc5_:Array = null;
         var _loc6_:Texture = null;
         var _loc7_:int = 0;
         var _loc8_:§&v§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:§^!k§ = null;
         if(!§0"<§.§>",§())
         {
            return false;
         }
         if(this.§[x§)
         {
            return true;
         }
         var _loc2_:Array = [];
         for each(_loc1_ in this.§"o§)
         {
            if(_loc1_.§=n§ > 0)
            {
               _loc2_.push(_loc1_);
            }
         }
         while(_loc2_.length > 0)
         {
            _loc3_ = this.§"`§(_loc2_);
            if(_loc3_.width * _loc3_.height == 0)
            {
               throw new Error("Found too large sprite sheet image!");
            }
            _loc4_ = new BitmapData(_loc3_.width,_loc3_.height,true,0);
            if((_loc5_ = this.§'"!§(_loc2_,_loc4_)).length == 0)
            {
               throw new Error("Found too large sprite sheet image!");
            }
            _loc6_ = this.§,!d§(_loc4_);
            _loc7_ = 0;
            while(_loc7_ < _loc5_.length)
            {
               _loc1_ = (_loc8_ = _loc5_[_loc7_]).§?p§;
               _loc9_ = _loc1_.§=n§;
               _loc10_ = 0;
               while(_loc10_ < _loc9_)
               {
                  _loc11_ = _loc1_.§+!k§(_loc10_);
                  this.§+!>§(_loc11_,_loc6_,_loc4_,_loc1_.scale);
                  _loc10_++;
               }
               _loc7_++;
            }
         }
         for each(_loc1_ in this.§"o§)
         {
            _loc1_.dispose();
         }
         this.§"o§ = new Vector.<§!!O§>();
         this.§[x§ = true;
         return true;
      }
      
      private function §+!>§(param1:§^!k§, param2:Texture, param3:BitmapData, param4:Number) : void
      {
         var _loc6_:Rectangle = null;
         var _loc7_:§ 5§ = null;
         var _loc5_:§"K§;
         if(!(_loc5_ = this.§1!P§[param1.mName]))
         {
            _loc6_ = param1.§-"7§.clone();
            _loc7_ = new § 5§(param2,_loc6_,false);
            _loc5_ = new §"K§(_loc7_,param3,_loc6_,param1.§=5§,param1.§,!<§,param4);
            this.§1!P§[param1.mName] = _loc5_;
         }
      }
      
      public function §3J§() : void
      {
         var bd:Object = null;
         var texture:Texture = null;
         if(!§0"<§.§5C§)
         {
            for(bd in this.§'""§)
            {
               try
               {
                  texture = this.§'""§[bd];
                  texture.requestBaseTextureUpdate(bd as BitmapData);
               }
               catch(e:Error)
               {
               }
            }
         }
      }
      
      public function §`!+§(param1:String) : §"K§
      {
         return this.§1!P§[param1];
      }
      
      public function §,!d§(param1:BitmapData, param2:Boolean = true) : Texture
      {
         var _loc3_:Texture = this.§'""§[param1];
         if(_loc3_)
         {
            return _loc3_;
         }
         _loc3_ = §0"<§.§!!K§(param1,param2);
         this.§'""§[param1] = _loc3_;
         this.§&!b§(_loc3_,param1,true);
         return _loc3_;
      }
      
      public function §&!b§(param1:Texture, param2:BitmapData, param3:Boolean) : void
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
            this.§;!y§ += _loc4_ * param2.width * param2.height * 4;
         }
         if(param1)
         {
            _loc5_ = int(param1.width);
            _loc6_ = int(param1.height);
            while(_loc5_ >= 1 && _loc6_ >= 1)
            {
               this.§,!P§ += _loc4_ * _loc5_ * _loc6_ * 4;
               _loc5_ >>= 1;
               _loc6_ >>= 1;
            }
         }
      }
      
      public function §4!i§() : Texture
      {
         if(!this.§!!g§)
         {
            this.§!!g§ = this.§,!d§(new BitmapData(40,40,false,16711935));
         }
         return this.§!!g§;
      }
      
      public function §&!c§(param1:Texture) : void
      {
         var _loc2_:* = null;
         var _loc3_:BitmapData = null;
         for(_loc2_ in this.§'""§)
         {
            if(this.§'""§[_loc2_] == param1)
            {
               _loc3_ = _loc2_ as BitmapData;
               this.§&!b§(param1,_loc3_,false);
               if(_loc3_)
               {
                  _loc3_.dispose();
               }
               delete this.§'""§[_loc2_];
               param1.dispose();
               return;
            }
         }
      }
      
      public function §!5§(param1:String) : BitmapData
      {
         var _loc2_:§"K§ = this.§`!+§(param1);
         if(_loc2_ == null)
         {
            _loc2_ = this.§`!+§(param1 + "_1");
         }
         if(_loc2_ == null)
         {
            _loc2_ = this.§`!+§(param1 + "_01");
         }
         if(_loc2_ == null)
         {
            return null;
         }
         return _loc2_.bitmapData;
      }
   }
}
