package §%O§
{
   import §"!<§.§<!G§;
   import §"!<§.Texture;
   import §5H§.§0!R§;
   import §5H§.§<T§;
   import §?!5§.§2d§;
   import flash.display.BitmapData;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class § !§ extends EventDispatcher
   {
      
      private static const §1[§:int = 2;
      
      private static const §0T§:int = 2048;
      
      private static var §0X§:§ !§;
       
      
      private var §?!]§:Dictionary;
      
      private var §+o§:Vector.<§0!R§>;
      
      private var §6!@§:Dictionary;
      
      private var §<!D§:Boolean;
      
      private var §2!2§:String;
      
      private var §9!W§:Texture;
      
      private var §0E§:int;
      
      private var §-<§:int;
      
      public function § !§(param1:String = null)
      {
         super();
         this.§+o§ = new Vector.<§0!R§>();
         this.§?!]§ = new Dictionary();
         this.§6!@§ = new Dictionary();
         this.§2!2§ = param1;
      }
      
      public static function get §'![§() : § !§
      {
         if(!§0X§)
         {
            §0X§ = new § !§();
         }
         return §0X§;
      }
      
      public function get §^!J§() : int
      {
         return this.§0E§;
      }
      
      public function get §;!3§() : int
      {
         return this.§-<§;
      }
      
      public function get id() : String
      {
         return this.§2!2§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§=I§ = null;
         var _loc2_:§0!R§ = null;
         if(this.§?!]§)
         {
            for each(_loc1_ in this.§?!]§)
            {
               this.§'!a§(_loc1_.texture.parent);
               _loc1_.dispose();
            }
            this.§?!]§ = null;
         }
         if(this.§+o§)
         {
            for each(_loc2_ in this.§+o§)
            {
               _loc2_.dispose();
            }
            this.§+o§ = null;
         }
         if(this.§6!@§)
         {
            this.§6!@§ = null;
         }
         if(this.§9!W§)
         {
            this.§9!W§.dispose();
            this.§9!W§ = null;
         }
         this.§+o§ = new Vector.<§0!R§>();
         this.§?!]§ = new Dictionary();
         this.§6!@§ = new Dictionary();
      }
      
      public function §"!0§(param1:§0!R§) : void
      {
         if(this.§<!D§)
         {
            return;
         }
         if(this.§+o§.indexOf(param1) >= 0)
         {
            return;
         }
         this.§+o§.push(param1);
      }
      
      private function §9Y§(param1:Array) : Rectangle
      {
         var _loc9_:§0!R§ = null;
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
            if(_loc2_ + _loc10_.width + §1[§ >= §0T§)
            {
               _loc2_ = 0;
               _loc3_ += _loc6_;
               _loc6_ = 0;
            }
            if(_loc3_ + _loc10_.height + §1[§ >= §0T§)
            {
               break;
            }
            _loc2_ += _loc10_.width + §1[§;
            if(_loc2_ > _loc4_)
            {
               _loc4_ = _loc2_;
            }
            if(_loc10_.height + §1[§ > _loc6_)
            {
               _loc6_ = _loc10_.height + §1[§;
               _loc5_ = _loc3_ + _loc6_;
            }
            _loc8_++;
         }
         return new Rectangle(0,0,_loc4_,_loc5_);
      }
      
      private function §-!C§(param1:Array, param2:BitmapData) : Array
      {
         var _loc8_:§0!R§ = null;
         var _loc9_:BitmapData = null;
         var _loc10_:§!!a§ = null;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:§<T§ = null;
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
            if(_loc3_ + _loc9_.width + §1[§ > param2.width)
            {
               _loc3_ = 0;
               _loc4_ += _loc5_;
               _loc5_ = 0;
            }
            if(_loc4_ + _loc9_.height + §1[§ > param2.height)
            {
               break;
            }
            param2.copyPixels(_loc9_,_loc9_.rect,new Point(_loc3_,_loc4_),null,null,true);
            (_loc10_ = new §!!a§()).offset = new Point(_loc3_,_loc4_);
            _loc10_.§[!V§ = _loc8_;
            _loc6_.push(_loc10_);
            _loc11_ = _loc8_.§2!6§;
            _loc12_ = 0;
            while(_loc12_ < _loc11_)
            {
               (_loc13_ = _loc8_.§8R§(_loc12_)).§"!'§ = null;
               _loc13_.§?!3§.offset(_loc3_,_loc4_);
               _loc12_++;
            }
            _loc3_ += _loc9_.width + §1[§;
            if(_loc9_.height + §1[§ > _loc5_)
            {
               _loc5_ = _loc9_.height + §1[§;
            }
            param1.splice(0,1);
         }
         return _loc6_;
      }
      
      public function §%d§() : Boolean
      {
         var _loc1_:§0!R§ = null;
         var _loc3_:Rectangle = null;
         var _loc4_:BitmapData = null;
         var _loc5_:Array = null;
         var _loc6_:Texture = null;
         var _loc7_:int = 0;
         var _loc8_:§!!a§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:§<T§ = null;
         if(!§2d§.§!!L§())
         {
            return false;
         }
         if(this.§<!D§)
         {
            return true;
         }
         var _loc2_:Array = [];
         for each(_loc1_ in this.§+o§)
         {
            if(_loc1_.§2!6§ > 0)
            {
               _loc2_.push(_loc1_);
            }
         }
         while(_loc2_.length > 0)
         {
            _loc3_ = this.§9Y§(_loc2_);
            if(_loc3_.width * _loc3_.height == 0)
            {
               throw new Error("Found too large sprite sheet image!");
            }
            _loc4_ = new BitmapData(_loc3_.width,_loc3_.height,true,0);
            if((_loc5_ = this.§-!C§(_loc2_,_loc4_)).length == 0)
            {
               throw new Error("Found too large sprite sheet image!");
            }
            _loc6_ = this.§=A§(_loc4_);
            _loc7_ = 0;
            while(_loc7_ < _loc5_.length)
            {
               _loc1_ = (_loc8_ = _loc5_[_loc7_]).§[!V§;
               _loc9_ = _loc1_.§2!6§;
               _loc10_ = 0;
               while(_loc10_ < _loc9_)
               {
                  _loc11_ = _loc1_.§8R§(_loc10_);
                  this.§[Q§(_loc11_,_loc6_,_loc4_,_loc1_.scale);
                  _loc10_++;
               }
               _loc7_++;
            }
         }
         for each(_loc1_ in this.§+o§)
         {
            _loc1_.dispose();
         }
         this.§+o§ = new Vector.<§0!R§>();
         this.§<!D§ = true;
         return true;
      }
      
      private function §[Q§(param1:§<T§, param2:Texture, param3:BitmapData, param4:Number) : void
      {
         var _loc6_:Rectangle = null;
         var _loc7_:§<!G§ = null;
         var _loc5_:§=I§;
         if(!(_loc5_ = this.§?!]§[param1.mName]))
         {
            _loc6_ = param1.§?!3§.clone();
            _loc7_ = new §<!G§(param2,_loc6_,false);
            _loc5_ = new §=I§(_loc7_,param3,_loc6_,param1.§1S§,param1.§ b§,param4);
            this.§?!]§[param1.mName] = _loc5_;
         }
      }
      
      public function §#!W§() : void
      {
         var bd:Object = null;
         var texture:Texture = null;
         if(!§2d§.§'i§)
         {
            for(bd in this.§6!@§)
            {
               try
               {
                  texture = this.§6!@§[bd];
                  texture.requestBaseTextureUpdate(bd as BitmapData);
               }
               catch(e:Error)
               {
               }
            }
         }
      }
      
      public function §^!3§(param1:String) : §=I§
      {
         return this.§?!]§[param1];
      }
      
      public function §=A§(param1:BitmapData, param2:Boolean = true) : Texture
      {
         var _loc3_:Texture = this.§6!@§[param1];
         if(_loc3_)
         {
            return _loc3_;
         }
         _loc3_ = §2d§.§@j§(param1,param2);
         this.§6!@§[param1] = _loc3_;
         this.§%@§(_loc3_,param1,true);
         return _loc3_;
      }
      
      public function §%@§(param1:Texture, param2:BitmapData, param3:Boolean) : void
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
            this.§-<§ += _loc4_ * param2.width * param2.height * 4;
         }
         if(param1)
         {
            _loc5_ = int(param1.width);
            _loc6_ = int(param1.height);
            while(_loc5_ >= 1 && _loc6_ >= 1)
            {
               this.§0E§ += _loc4_ * _loc5_ * _loc6_ * 4;
               _loc5_ >>= 1;
               _loc6_ >>= 1;
            }
         }
      }
      
      public function §';§() : Texture
      {
         if(!this.§9!W§)
         {
            this.§9!W§ = this.§=A§(new BitmapData(40,40,false,16711935));
         }
         return this.§9!W§;
      }
      
      public function §'!a§(param1:Texture) : void
      {
         var _loc2_:* = null;
         var _loc3_:BitmapData = null;
         for(_loc2_ in this.§6!@§)
         {
            if(this.§6!@§[_loc2_] == param1)
            {
               _loc3_ = _loc2_ as BitmapData;
               this.§%@§(param1,_loc3_,false);
               if(_loc3_)
               {
                  _loc3_.dispose();
               }
               delete this.§6!@§[_loc2_];
               param1.dispose();
               return;
            }
         }
      }
      
      public function §6m§(param1:String) : BitmapData
      {
         var _loc2_:§=I§ = this.§^!3§(param1);
         if(_loc2_ == null)
         {
            _loc2_ = this.§^!3§(param1 + "_1");
         }
         if(_loc2_ == null)
         {
            _loc2_ = this.§^!3§(param1 + "_01");
         }
         if(_loc2_ == null)
         {
            return null;
         }
         return _loc2_.bitmapData;
      }
   }
}
