package § !V§
{
   import §0!F§.§^d§;
   import §3!U§.§<!&§;
   import §3!U§.Texture;
   import §?l§.§5a§;
   import §?l§.§;6§;
   import flash.display.BitmapData;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class §7!P§ extends EventDispatcher
   {
      
      private static const §-]§:int = 2;
      
      private static const §#k§:int = 2048;
      
      private static var §97§:§7!P§;
       
      
      private var §&!8§:Dictionary;
      
      private var §+e§:Vector.<§;6§>;
      
      private var §'!F§:Dictionary;
      
      private var §2" §:Boolean;
      
      private var §#`§:String;
      
      private var §,y§:Texture;
      
      private var §?"!§:int;
      
      private var §<!#§:int;
      
      public function §7!P§(param1:String = null)
      {
         super();
         this.§+e§ = new Vector.<§;6§>();
         this.§&!8§ = new Dictionary();
         this.§'!F§ = new Dictionary();
         this.§#`§ = param1;
      }
      
      public static function get §9j§() : §7!P§
      {
         if(!§97§)
         {
            §97§ = new §7!P§();
         }
         return §97§;
      }
      
      public function get §<!B§() : int
      {
         return this.§?"!§;
      }
      
      public function get §7!G§() : int
      {
         return this.§<!#§;
      }
      
      public function get id() : String
      {
         return this.§#`§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§=!g§ = null;
         var _loc2_:§;6§ = null;
         if(this.§&!8§)
         {
            for each(_loc1_ in this.§&!8§)
            {
               this.§4`§(_loc1_.texture.parent);
               _loc1_.dispose();
            }
            this.§&!8§ = null;
         }
         if(this.§+e§)
         {
            for each(_loc2_ in this.§+e§)
            {
               _loc2_.dispose();
            }
            this.§+e§ = null;
         }
         if(this.§'!F§)
         {
            this.§'!F§ = null;
         }
         if(this.§,y§)
         {
            this.§,y§.dispose();
            this.§,y§ = null;
         }
         this.§+e§ = new Vector.<§;6§>();
         this.§&!8§ = new Dictionary();
         this.§'!F§ = new Dictionary();
      }
      
      public function §?!R§(param1:§;6§) : void
      {
         if(this.§2" §)
         {
            return;
         }
         if(this.§+e§.indexOf(param1) >= 0)
         {
            return;
         }
         this.§+e§.push(param1);
      }
      
      private function §5E§(param1:Array) : Rectangle
      {
         var _loc9_:§;6§ = null;
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
            if(_loc2_ + _loc10_.width + §-]§ >= §#k§)
            {
               _loc2_ = 0;
               _loc3_ += _loc6_;
               _loc6_ = 0;
            }
            if(_loc3_ + _loc10_.height + §-]§ >= §#k§)
            {
               break;
            }
            _loc2_ += _loc10_.width + §-]§;
            if(_loc2_ > _loc4_)
            {
               _loc4_ = _loc2_;
            }
            if(_loc10_.height + §-]§ > _loc6_)
            {
               _loc6_ = _loc10_.height + §-]§;
               _loc5_ = _loc3_ + _loc6_;
            }
            _loc8_++;
         }
         return new Rectangle(0,0,_loc4_,_loc5_);
      }
      
      private function §[!o§(param1:Array, param2:BitmapData) : Array
      {
         var _loc8_:§;6§ = null;
         var _loc9_:BitmapData = null;
         var _loc10_:§]W§ = null;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:§5a§ = null;
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
            if(_loc3_ + _loc9_.width + §-]§ > param2.width)
            {
               _loc3_ = 0;
               _loc4_ += _loc5_;
               _loc5_ = 0;
            }
            if(_loc4_ + _loc9_.height + §-]§ > param2.height)
            {
               break;
            }
            param2.copyPixels(_loc9_,_loc9_.rect,new Point(_loc3_,_loc4_),null,null,true);
            (_loc10_ = new §]W§()).offset = new Point(_loc3_,_loc4_);
            _loc10_.§=+§ = _loc8_;
            _loc6_.push(_loc10_);
            _loc11_ = _loc8_.§+!O§;
            _loc12_ = 0;
            while(_loc12_ < _loc11_)
            {
               (_loc13_ = _loc8_.§5!6§(_loc12_)).§32§ = null;
               _loc13_.§0!T§.offset(_loc3_,_loc4_);
               _loc12_++;
            }
            _loc3_ += _loc9_.width + §-]§;
            if(_loc9_.height + §-]§ > _loc5_)
            {
               _loc5_ = _loc9_.height + §-]§;
            }
            param1.splice(0,1);
         }
         return _loc6_;
      }
      
      public function § ! §() : Boolean
      {
         var _loc1_:§;6§ = null;
         var _loc3_:Rectangle = null;
         var _loc4_:BitmapData = null;
         var _loc5_:Array = null;
         var _loc6_:Texture = null;
         var _loc7_:int = 0;
         var _loc8_:§]W§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:§5a§ = null;
         if(!§^d§.§+>§())
         {
            return false;
         }
         if(this.§2" §)
         {
            return true;
         }
         var _loc2_:Array = [];
         for each(_loc1_ in this.§+e§)
         {
            if(_loc1_.§+!O§ > 0)
            {
               _loc2_.push(_loc1_);
            }
         }
         while(_loc2_.length > 0)
         {
            _loc3_ = this.§5E§(_loc2_);
            if(_loc3_.width * _loc3_.height == 0)
            {
               throw new Error("Found too large sprite sheet image!");
            }
            _loc4_ = new BitmapData(_loc3_.width,_loc3_.height,true,0);
            if((_loc5_ = this.§[!o§(_loc2_,_loc4_)).length == 0)
            {
               throw new Error("Found too large sprite sheet image!");
            }
            _loc6_ = this.§>!,§(_loc4_);
            _loc7_ = 0;
            while(_loc7_ < _loc5_.length)
            {
               _loc1_ = (_loc8_ = _loc5_[_loc7_]).§=+§;
               _loc9_ = _loc1_.§+!O§;
               _loc10_ = 0;
               while(_loc10_ < _loc9_)
               {
                  _loc11_ = _loc1_.§5!6§(_loc10_);
                  this.§%!C§(_loc11_,_loc6_,_loc4_,_loc1_.scale);
                  _loc10_++;
               }
               _loc7_++;
            }
         }
         for each(_loc1_ in this.§+e§)
         {
            _loc1_.dispose();
         }
         this.§+e§ = new Vector.<§;6§>();
         this.§2" § = true;
         return true;
      }
      
      private function §%!C§(param1:§5a§, param2:Texture, param3:BitmapData, param4:Number) : void
      {
         var _loc6_:Rectangle = null;
         var _loc7_:§<!&§ = null;
         var _loc5_:§=!g§;
         if(!(_loc5_ = this.§&!8§[param1.mName]))
         {
            _loc6_ = param1.§0!T§.clone();
            _loc7_ = new §<!&§(param2,_loc6_,false);
            _loc5_ = new §=!g§(_loc7_,param3,_loc6_,param1.§5!2§,param1.§`P§,param4);
            this.§&!8§[param1.mName] = _loc5_;
         }
      }
      
      public function §break§() : void
      {
         var bd:Object = null;
         var texture:Texture = null;
         if(!§^d§.§=",§)
         {
            for(bd in this.§'!F§)
            {
               try
               {
                  texture = this.§'!F§[bd];
                  texture.requestBaseTextureUpdate(bd as BitmapData);
               }
               catch(e:Error)
               {
               }
            }
         }
      }
      
      public function §&I§(param1:String) : §=!g§
      {
         return this.§&!8§[param1];
      }
      
      public function §>!,§(param1:BitmapData, param2:Boolean = true) : Texture
      {
         var _loc3_:Texture = this.§'!F§[param1];
         if(_loc3_)
         {
            return _loc3_;
         }
         _loc3_ = §^d§.§5G§(param1,param2);
         this.§'!F§[param1] = _loc3_;
         this.§@!F§(_loc3_,param1,true);
         return _loc3_;
      }
      
      public function §@!F§(param1:Texture, param2:BitmapData, param3:Boolean) : void
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
            this.§<!#§ += _loc4_ * param2.width * param2.height * 4;
         }
         if(param1)
         {
            _loc5_ = int(param1.width);
            _loc6_ = int(param1.height);
            while(_loc5_ >= 1 && _loc6_ >= 1)
            {
               this.§?"!§ += _loc4_ * _loc5_ * _loc6_ * 4;
               _loc5_ >>= 1;
               _loc6_ >>= 1;
            }
         }
      }
      
      public function §0q§() : Texture
      {
         if(!this.§,y§)
         {
            this.§,y§ = this.§>!,§(new BitmapData(40,40,false,16711935));
         }
         return this.§,y§;
      }
      
      public function §4`§(param1:Texture) : void
      {
         var _loc2_:* = null;
         var _loc3_:BitmapData = null;
         for(_loc2_ in this.§'!F§)
         {
            if(this.§'!F§[_loc2_] == param1)
            {
               _loc3_ = _loc2_ as BitmapData;
               this.§@!F§(param1,_loc3_,false);
               if(_loc3_)
               {
                  _loc3_.dispose();
               }
               delete this.§'!F§[_loc2_];
               param1.dispose();
               return;
            }
         }
      }
      
      public function §+"#§(param1:String) : BitmapData
      {
         var _loc2_:§=!g§ = this.§&I§(param1);
         if(_loc2_ == null)
         {
            _loc2_ = this.§&I§(param1 + "_1");
         }
         if(_loc2_ == null)
         {
            _loc2_ = this.§&I§(param1 + "_01");
         }
         if(_loc2_ == null)
         {
            return null;
         }
         return _loc2_.bitmapData;
      }
   }
}
