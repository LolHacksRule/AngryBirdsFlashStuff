package §9K§
{
   import §0! §.§63§;
   import §0! §.Texture;
   import §=!0§.§>I§;
   import §>k§.§`-§;
   import §>k§.§`z§;
   import flash.display.BitmapData;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class §5!H§ extends EventDispatcher
   {
      
      private static const §,e§:int = 2;
      
      private static const § B§:int = 2048;
      
      private static var §?#§:§5!H§;
       
      
      private var §9[§:Dictionary;
      
      private var §?U§:Vector.<§`z§>;
      
      private var §;4§:Dictionary;
      
      private var §?!,§:Boolean;
      
      private var §3!8§:String;
      
      private var §`!!§:Texture;
      
      private var §^!=§:int;
      
      private var §"!=§:int;
      
      public function §5!H§(param1:String = null)
      {
         super();
         this.§?U§ = new Vector.<§`z§>();
         this.§9[§ = new Dictionary();
         this.§;4§ = new Dictionary();
         this.§3!8§ = param1;
      }
      
      public static function get §@6§() : §5!H§
      {
         if(!§?#§)
         {
            §?#§ = new §5!H§();
         }
         return §?#§;
      }
      
      public function get §`!M§() : int
      {
         return this.§^!=§;
      }
      
      public function get §,G§() : int
      {
         return this.§"!=§;
      }
      
      public function get id() : String
      {
         return this.§3!8§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§,z§ = null;
         var _loc2_:§`z§ = null;
         if(this.§9[§)
         {
            for each(_loc1_ in this.§9[§)
            {
               this.§<T§(_loc1_.texture.parent);
               _loc1_.dispose();
            }
            this.§9[§ = null;
         }
         if(this.§?U§)
         {
            for each(_loc2_ in this.§?U§)
            {
               _loc2_.dispose();
            }
            this.§?U§ = null;
         }
         if(this.§;4§)
         {
            this.§;4§ = null;
         }
         if(this.§`!!§)
         {
            this.§`!!§.dispose();
            this.§`!!§ = null;
         }
         this.§?U§ = new Vector.<§`z§>();
         this.§9[§ = new Dictionary();
         this.§;4§ = new Dictionary();
      }
      
      public function §%R§(param1:§`z§) : void
      {
         if(this.§?!,§)
         {
            return;
         }
         if(this.§?U§.indexOf(param1) >= 0)
         {
            return;
         }
         this.§?U§.push(param1);
      }
      
      private function §&!"§(param1:Array) : Rectangle
      {
         var _loc9_:§`z§ = null;
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
            if(_loc2_ + _loc10_.width + §,e§ >= § B§)
            {
               _loc2_ = 0;
               _loc3_ += _loc6_;
               _loc6_ = 0;
            }
            if(_loc3_ + _loc10_.height + §,e§ >= § B§)
            {
               break;
            }
            _loc2_ += _loc10_.width + §,e§;
            if(_loc2_ > _loc4_)
            {
               _loc4_ = _loc2_;
            }
            if(_loc10_.height + §,e§ > _loc6_)
            {
               _loc6_ = _loc10_.height + §,e§;
               _loc5_ = _loc3_ + _loc6_;
            }
            _loc8_++;
         }
         return new Rectangle(0,0,_loc4_,_loc5_);
      }
      
      private function §%?§(param1:Array, param2:BitmapData) : Array
      {
         var _loc8_:§`z§ = null;
         var _loc9_:BitmapData = null;
         var _loc10_:§1Y§ = null;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:§`-§ = null;
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
            if(_loc3_ + _loc9_.width + §,e§ > param2.width)
            {
               _loc3_ = 0;
               _loc4_ += _loc5_;
               _loc5_ = 0;
            }
            if(_loc4_ + _loc9_.height + §,e§ > param2.height)
            {
               break;
            }
            param2.copyPixels(_loc9_,_loc9_.rect,new Point(_loc3_,_loc4_),null,null,true);
            (_loc10_ = new §1Y§()).offset = new Point(_loc3_,_loc4_);
            _loc10_.§1y§ = _loc8_;
            _loc6_.push(_loc10_);
            _loc11_ = _loc8_.§69§;
            _loc12_ = 0;
            while(_loc12_ < _loc11_)
            {
               (_loc13_ = _loc8_.§`Q§(_loc12_)).§<c§ = null;
               _loc13_.§@n§.offset(_loc3_,_loc4_);
               _loc12_++;
            }
            _loc3_ += _loc9_.width + §,e§;
            if(_loc9_.height + §,e§ > _loc5_)
            {
               _loc5_ = _loc9_.height + §,e§;
            }
            param1.splice(0,1);
         }
         return _loc6_;
      }
      
      public function §1#§() : Boolean
      {
         var _loc1_:§`z§ = null;
         var _loc3_:Rectangle = null;
         var _loc4_:BitmapData = null;
         var _loc5_:Array = null;
         var _loc6_:Texture = null;
         var _loc7_:int = 0;
         var _loc8_:§1Y§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:§`-§ = null;
         if(!§>I§.§]u§())
         {
            return false;
         }
         if(this.§?!,§)
         {
            return true;
         }
         var _loc2_:Array = [];
         for each(_loc1_ in this.§?U§)
         {
            if(_loc1_.§69§ > 0)
            {
               _loc2_.push(_loc1_);
            }
         }
         while(_loc2_.length > 0)
         {
            _loc3_ = this.§&!"§(_loc2_);
            if(_loc3_.width * _loc3_.height == 0)
            {
               throw new Error("Found too large sprite sheet image!");
            }
            _loc4_ = new BitmapData(_loc3_.width,_loc3_.height,true,0);
            if((_loc5_ = this.§%?§(_loc2_,_loc4_)).length == 0)
            {
               throw new Error("Found too large sprite sheet image!");
            }
            _loc6_ = this.§<o§(_loc4_);
            _loc7_ = 0;
            while(_loc7_ < _loc5_.length)
            {
               _loc1_ = (_loc8_ = _loc5_[_loc7_]).§1y§;
               _loc9_ = _loc1_.§69§;
               _loc10_ = 0;
               while(_loc10_ < _loc9_)
               {
                  _loc11_ = _loc1_.§`Q§(_loc10_);
                  this.§%v§(_loc11_,_loc6_,_loc4_,_loc1_.scale);
                  _loc10_++;
               }
               _loc7_++;
            }
         }
         for each(_loc1_ in this.§?U§)
         {
            _loc1_.dispose();
         }
         this.§?U§ = new Vector.<§`z§>();
         this.§?!,§ = true;
         return true;
      }
      
      private function §%v§(param1:§`-§, param2:Texture, param3:BitmapData, param4:Number) : void
      {
         var _loc6_:Rectangle = null;
         var _loc7_:§63§ = null;
         var _loc5_:§,z§;
         if(!(_loc5_ = this.§9[§[param1.mName]))
         {
            _loc6_ = param1.§@n§.clone();
            _loc7_ = new §63§(param2,_loc6_,false);
            _loc5_ = new §,z§(_loc7_,param3,_loc6_,param1.§!!J§,param1.§[R§,param4);
            this.§9[§[param1.mName] = _loc5_;
         }
      }
      
      public function §]b§() : void
      {
         var bd:Object = null;
         var texture:Texture = null;
         if(!§>I§.§8$§)
         {
            for(bd in this.§;4§)
            {
               try
               {
                  texture = this.§;4§[bd];
                  texture.requestBaseTextureUpdate(bd as BitmapData);
               }
               catch(e:Error)
               {
               }
            }
         }
      }
      
      public function §3!'§(param1:String) : §,z§
      {
         return this.§9[§[param1];
      }
      
      public function §<o§(param1:BitmapData, param2:Boolean = true) : Texture
      {
         var _loc3_:Texture = this.§;4§[param1];
         if(_loc3_)
         {
            return _loc3_;
         }
         _loc3_ = §>I§.§ G§(param1,param2);
         this.§;4§[param1] = _loc3_;
         this.§!K§(_loc3_,param1,true);
         return _loc3_;
      }
      
      public function §!K§(param1:Texture, param2:BitmapData, param3:Boolean) : void
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
            this.§"!=§ += _loc4_ * param2.width * param2.height * 4;
         }
         if(param1)
         {
            _loc5_ = int(param1.width);
            _loc6_ = int(param1.height);
            while(_loc5_ >= 1 && _loc6_ >= 1)
            {
               this.§^!=§ += _loc4_ * _loc5_ * _loc6_ * 4;
               _loc5_ >>= 1;
               _loc6_ >>= 1;
            }
         }
      }
      
      public function §=^§() : Texture
      {
         if(!this.§`!!§)
         {
            this.§`!!§ = this.§<o§(new BitmapData(40,40,false,16711935));
         }
         return this.§`!!§;
      }
      
      public function §<T§(param1:Texture) : void
      {
         var _loc2_:* = null;
         var _loc3_:BitmapData = null;
         for(_loc2_ in this.§;4§)
         {
            if(this.§;4§[_loc2_] == param1)
            {
               _loc3_ = _loc2_ as BitmapData;
               this.§!K§(param1,_loc3_,false);
               if(_loc3_)
               {
                  _loc3_.dispose();
               }
               delete this.§;4§[_loc2_];
               param1.dispose();
               return;
            }
         }
      }
      
      public function §3W§(param1:String) : BitmapData
      {
         var _loc2_:§,z§ = this.§3!'§(param1);
         if(_loc2_ == null)
         {
            _loc2_ = this.§3!'§(param1 + "_1");
         }
         if(_loc2_ == null)
         {
            _loc2_ = this.§3!'§(param1 + "_01");
         }
         if(_loc2_ == null)
         {
            return null;
         }
         return _loc2_.bitmapData;
      }
   }
}
