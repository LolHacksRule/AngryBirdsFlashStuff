package §+f§
{
   import §"`§.Texture;
   import §"`§.§`7§;
   import §5!'§.§"!§;
   import §5!'§.§@p§;
   import §>w§.;
   import flash.display.BitmapData;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class §4!8§ extends EventDispatcher
   {
      
      private static const §@+§:int = 2;
      
      private static const §0G§:int = 2048;
      
      private static var §#! §:§4!8§;
       
      
      private var §!!5§:Dictionary;
      
      private var §[a§:Vector.<§@p§>;
      
      private var §%k§:Dictionary;
      
      private var §;!-§:Boolean;
      
      private var §,j§:String;
      
      private var § d§:Texture;
      
      private var §@N§:int;
      
      private var §-!+§:int;
      
      public function §4!8§(param1:String = null)
      {
         super();
         this.§[a§ = new Vector.<§@p§>();
         this.§!!5§ = new Dictionary();
         this.§%k§ = new Dictionary();
         this.§,j§ = param1;
      }
      
      public static function get § set§() : §4!8§
      {
         if(!§#! §)
         {
            §#! § = new §4!8§();
         }
         return §#! §;
      }
      
      public function get §'! §() : int
      {
         return this.§@N§;
      }
      
      public function get §9c§() : int
      {
         return this.§-!+§;
      }
      
      public function get id() : String
      {
         return this.§,j§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§=3§ = null;
         var _loc2_:§@p§ = null;
         if(this.§!!5§)
         {
            for each(_loc1_ in this.§!!5§)
            {
               this.§null§(_loc1_.texture.parent);
               _loc1_.dispose();
            }
            this.§!!5§ = null;
         }
         if(this.§[a§)
         {
            for each(_loc2_ in this.§[a§)
            {
               _loc2_.dispose();
            }
            this.§[a§ = null;
         }
         if(this.§%k§)
         {
            this.§%k§ = null;
         }
         if(this.§ d§)
         {
            this.§ d§.dispose();
            this.§ d§ = null;
         }
         this.§[a§ = new Vector.<§@p§>();
         this.§!!5§ = new Dictionary();
         this.§%k§ = new Dictionary();
      }
      
      public function §?w§(param1:§@p§) : void
      {
         if(this.§;!-§)
         {
            return;
         }
         if(this.§[a§.indexOf(param1) >= 0)
         {
            return;
         }
         this.§[a§.push(param1);
      }
      
      private function §`!C§(param1:Array) : Rectangle
      {
         var _loc9_:§@p§ = null;
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
            if(_loc2_ + _loc10_.width + §@+§ >= §0G§)
            {
               _loc2_ = 0;
               _loc3_ += _loc6_;
               _loc6_ = 0;
            }
            if(_loc3_ + _loc10_.height + §@+§ >= §0G§)
            {
               break;
            }
            _loc2_ += _loc10_.width + §@+§;
            if(_loc2_ > _loc4_)
            {
               _loc4_ = _loc2_;
            }
            if(_loc10_.height + §@+§ > _loc6_)
            {
               _loc6_ = _loc10_.height + §@+§;
               _loc5_ = _loc3_ + _loc6_;
            }
            _loc8_++;
         }
         return new Rectangle(0,0,_loc4_,_loc5_);
      }
      
      private function §3M§(param1:Array, param2:BitmapData) : Array
      {
         var _loc8_:§@p§ = null;
         var _loc9_:BitmapData = null;
         var _loc10_:§&!M§ = null;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:§"!§ = null;
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
            if(_loc3_ + _loc9_.width + §@+§ > param2.width)
            {
               _loc3_ = 0;
               _loc4_ += _loc5_;
               _loc5_ = 0;
            }
            if(_loc4_ + _loc9_.height + §@+§ > param2.height)
            {
               break;
            }
            param2.copyPixels(_loc9_,_loc9_.rect,new Point(_loc3_,_loc4_),null,null,true);
            (_loc10_ = new §&!M§()).offset = new Point(_loc3_,_loc4_);
            _loc10_.§2!,§ = _loc8_;
            _loc6_.push(_loc10_);
            _loc11_ = _loc8_.§^-§;
            _loc12_ = 0;
            while(_loc12_ < _loc11_)
            {
               (_loc13_ = _loc8_.§8N§(_loc12_)).§&,§ = null;
               _loc13_.§22§.offset(_loc3_,_loc4_);
               _loc12_++;
            }
            _loc3_ += _loc9_.width + §@+§;
            if(_loc9_.height + §@+§ > _loc5_)
            {
               _loc5_ = _loc9_.height + §@+§;
            }
            param1.splice(0,1);
         }
         return _loc6_;
      }
      
      public function §]M§() : Boolean
      {
         var _loc1_:§@p§ = null;
         var _loc3_:Rectangle = null;
         var _loc4_:BitmapData = null;
         var _loc5_:Array = null;
         var _loc6_:Texture = null;
         var _loc7_:int = 0;
         var _loc8_:§&!M§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:§"!§ = null;
         if(!§#0§.§!!B§())
         {
            return false;
         }
         if(this.§;!-§)
         {
            return true;
         }
         var _loc2_:Array = [];
         for each(_loc1_ in this.§[a§)
         {
            if(_loc1_.§^-§ > 0)
            {
               _loc2_.push(_loc1_);
            }
         }
         while(_loc2_.length > 0)
         {
            _loc3_ = this.§`!C§(_loc2_);
            if(_loc3_.width * _loc3_.height == 0)
            {
               throw new Error("Found too large sprite sheet image!");
            }
            _loc4_ = new BitmapData(_loc3_.width,_loc3_.height,true,0);
            if((_loc5_ = this.§3M§(_loc2_,_loc4_)).length == 0)
            {
               throw new Error("Found too large sprite sheet image!");
            }
            _loc6_ = this.§5l§(_loc4_);
            _loc7_ = 0;
            while(_loc7_ < _loc5_.length)
            {
               _loc1_ = (_loc8_ = _loc5_[_loc7_]).§2!,§;
               _loc9_ = _loc1_.§^-§;
               _loc10_ = 0;
               while(_loc10_ < _loc9_)
               {
                  _loc11_ = _loc1_.§8N§(_loc10_);
                  this.§#=§(_loc11_,_loc6_,_loc4_,_loc1_.scale);
                  _loc10_++;
               }
               _loc7_++;
            }
         }
         for each(_loc1_ in this.§[a§)
         {
            _loc1_.dispose();
         }
         this.§[a§ = new Vector.<§@p§>();
         this.§;!-§ = true;
         return true;
      }
      
      private function §#=§(param1:§"!§, param2:Texture, param3:BitmapData, param4:Number) : void
      {
         var _loc6_:Rectangle = null;
         var _loc7_:§`7§ = null;
         var _loc5_:§=3§;
         if(!(_loc5_ = this.§!!5§[param1.mName]))
         {
            _loc6_ = param1.§22§.clone();
            _loc7_ = new §`7§(param2,_loc6_,false);
            _loc5_ = new §=3§(_loc7_,param3,_loc6_,param1.§<!#§,param1.§=!A§,param4);
            this.§!!5§[param1.mName] = _loc5_;
         }
      }
      
      public function §[+§() : void
      {
         var bd:Object = null;
         var texture:Texture = null;
         if(!§#0§.§!m§)
         {
            for(bd in this.§%k§)
            {
               try
               {
                  texture = this.§%k§[bd];
                  texture.requestBaseTextureUpdate(bd as BitmapData);
               }
               catch(e:Error)
               {
               }
            }
         }
      }
      
      public function §=&§(param1:String) : §=3§
      {
         return this.§!!5§[param1];
      }
      
      public function §5l§(param1:BitmapData, param2:Boolean = true) : Texture
      {
         var _loc3_:Texture = this.§%k§[param1];
         if(_loc3_)
         {
            return _loc3_;
         }
         _loc3_ = §#0§.§6!F§(param1,param2);
         this.§%k§[param1] = _loc3_;
         this.§1B§(_loc3_,param1,true);
         return _loc3_;
      }
      
      public function §1B§(param1:Texture, param2:BitmapData, param3:Boolean) : void
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
            this.§-!+§ += _loc4_ * param2.width * param2.height * 4;
         }
         if(param1)
         {
            _loc5_ = int(param1.width);
            _loc6_ = int(param1.height);
            while(_loc5_ >= 1 && _loc6_ >= 1)
            {
               this.§@N§ += _loc4_ * _loc5_ * _loc6_ * 4;
               _loc5_ >>= 1;
               _loc6_ >>= 1;
            }
         }
      }
      
      public function §^!C§() : Texture
      {
         if(!this.§ d§)
         {
            this.§ d§ = this.§5l§(new BitmapData(40,40,false,16711935));
         }
         return this.§ d§;
      }
      
      public function §null§(param1:Texture) : void
      {
         var _loc2_:* = null;
         var _loc3_:BitmapData = null;
         for(_loc2_ in this.§%k§)
         {
            if(this.§%k§[_loc2_] == param1)
            {
               _loc3_ = _loc2_ as BitmapData;
               this.§1B§(param1,_loc3_,false);
               if(_loc3_)
               {
                  _loc3_.dispose();
               }
               delete this.§%k§[_loc2_];
               param1.dispose();
               return;
            }
         }
      }
      
      public function §+O§(param1:String) : BitmapData
      {
         var _loc2_:§=3§ = this.§=&§(param1);
         if(_loc2_ == null)
         {
            _loc2_ = this.§=&§(param1 + "_1");
         }
         if(_loc2_ == null)
         {
            _loc2_ = this.§=&§(param1 + "_01");
         }
         if(_loc2_ == null)
         {
            return null;
         }
         return _loc2_.bitmapData;
      }
   }
}
