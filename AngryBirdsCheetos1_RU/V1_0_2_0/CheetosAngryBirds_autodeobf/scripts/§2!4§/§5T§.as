package §2!4§
{
   import §,Y§.§"!&§;
   import §,Y§.Texture;
   import §2!P§.§6=§;
   import §3!,§.§ e§;
   import §3!,§.§8!3§;
   import flash.display.BitmapData;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class §5T§ extends EventDispatcher
   {
      
      private static const §4!K§:int = 2;
      
      private static const §2a§:int = 2048;
      
      private static var §?B§:§5T§;
       
      
      private var §[!^§:Dictionary;
      
      private var §79§:Vector.<§ e§>;
      
      private var §9X§:Dictionary;
      
      private var §&!Z§:Boolean;
      
      private var §`m§:String;
      
      private var §7+§:Texture;
      
      private var §'[§:int;
      
      private var §+>§:int;
      
      public function §5T§(param1:String = null)
      {
         super();
         this.§79§ = new Vector.<§ e§>();
         this.§[!^§ = new Dictionary();
         this.§9X§ = new Dictionary();
         this.§`m§ = param1;
      }
      
      public static function get §0!S§() : §5T§
      {
         if(!§?B§)
         {
            §?B§ = new §5T§();
         }
         return §?B§;
      }
      
      public function get § A§() : int
      {
         return this.§'[§;
      }
      
      public function get §<C§() : int
      {
         return this.§+>§;
      }
      
      public function get id() : String
      {
         return this.§`m§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§>5§ = null;
         var _loc2_:§ e§ = null;
         if(this.§[!^§)
         {
            for each(_loc1_ in this.§[!^§)
            {
               this.§]!8§(_loc1_.texture.parent);
               _loc1_.dispose();
            }
            this.§[!^§ = null;
         }
         if(this.§79§)
         {
            for each(_loc2_ in this.§79§)
            {
               _loc2_.dispose();
            }
            this.§79§ = null;
         }
         if(this.§9X§)
         {
            this.§9X§ = null;
         }
         if(this.§7+§)
         {
            this.§7+§.dispose();
            this.§7+§ = null;
         }
         this.§79§ = new Vector.<§ e§>();
         this.§[!^§ = new Dictionary();
         this.§9X§ = new Dictionary();
      }
      
      public function §<!J§(param1:§ e§) : void
      {
         if(this.§&!Z§)
         {
            return;
         }
         if(this.§79§.indexOf(param1) >= 0)
         {
            return;
         }
         this.§79§.push(param1);
      }
      
      private function §,!6§(param1:Array) : Rectangle
      {
         var _loc9_:§ e§ = null;
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
            if(_loc2_ + _loc10_.width + §4!K§ >= §2a§)
            {
               _loc2_ = 0;
               _loc3_ += _loc6_;
               _loc6_ = 0;
            }
            if(_loc3_ + _loc10_.height + §4!K§ >= §2a§)
            {
               break;
            }
            _loc2_ += _loc10_.width + §4!K§;
            if(_loc2_ > _loc4_)
            {
               _loc4_ = _loc2_;
            }
            if(_loc10_.height + §4!K§ > _loc6_)
            {
               _loc6_ = _loc10_.height + §4!K§;
               _loc5_ = _loc3_ + _loc6_;
            }
            _loc8_++;
         }
         return new Rectangle(0,0,_loc4_,_loc5_);
      }
      
      private function §%8§(param1:Array, param2:BitmapData) : Array
      {
         var _loc8_:§ e§ = null;
         var _loc9_:BitmapData = null;
         var _loc10_:§?x§ = null;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:§8!3§ = null;
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
            if(_loc3_ + _loc9_.width + §4!K§ > param2.width)
            {
               _loc3_ = 0;
               _loc4_ += _loc5_;
               _loc5_ = 0;
            }
            if(_loc4_ + _loc9_.height + §4!K§ > param2.height)
            {
               break;
            }
            param2.copyPixels(_loc9_,_loc9_.rect,new Point(_loc3_,_loc4_),null,null,true);
            (_loc10_ = new §?x§()).offset = new Point(_loc3_,_loc4_);
            _loc10_.§,§ = _loc8_;
            _loc6_.push(_loc10_);
            _loc11_ = _loc8_.§&"§;
            _loc12_ = 0;
            while(_loc12_ < _loc11_)
            {
               (_loc13_ = _loc8_.§59§(_loc12_)).§]U§ = null;
               _loc13_.§0f§.offset(_loc3_,_loc4_);
               _loc12_++;
            }
            _loc3_ += _loc9_.width + §4!K§;
            if(_loc9_.height + §4!K§ > _loc5_)
            {
               _loc5_ = _loc9_.height + §4!K§;
            }
            param1.splice(0,1);
         }
         return _loc6_;
      }
      
      public function §25§() : Boolean
      {
         var _loc1_:§ e§ = null;
         var _loc3_:Rectangle = null;
         var _loc4_:BitmapData = null;
         var _loc5_:Array = null;
         var _loc6_:Texture = null;
         var _loc7_:int = 0;
         var _loc8_:§?x§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:§8!3§ = null;
         if(!§6=§.§6!N§())
         {
            return false;
         }
         if(this.§&!Z§)
         {
            return true;
         }
         var _loc2_:Array = [];
         for each(_loc1_ in this.§79§)
         {
            if(_loc1_.§&"§ > 0)
            {
               _loc2_.push(_loc1_);
            }
         }
         while(_loc2_.length > 0)
         {
            _loc3_ = this.§,!6§(_loc2_);
            if(_loc3_.width * _loc3_.height == 0)
            {
               throw new Error("Found too large sprite sheet image!");
            }
            _loc4_ = new BitmapData(_loc3_.width,_loc3_.height,true,0);
            if((_loc5_ = this.§%8§(_loc2_,_loc4_)).length == 0)
            {
               throw new Error("Found too large sprite sheet image!");
            }
            _loc6_ = this.§8@§(_loc4_);
            _loc7_ = 0;
            while(_loc7_ < _loc5_.length)
            {
               _loc1_ = (_loc8_ = _loc5_[_loc7_]).§,§;
               _loc9_ = _loc1_.§&"§;
               _loc10_ = 0;
               while(_loc10_ < _loc9_)
               {
                  _loc11_ = _loc1_.§59§(_loc10_);
                  this.§#a§(_loc11_,_loc6_,_loc4_,_loc1_.scale);
                  _loc10_++;
               }
               _loc7_++;
            }
         }
         for each(_loc1_ in this.§79§)
         {
            _loc1_.dispose();
         }
         this.§79§ = new Vector.<§ e§>();
         this.§&!Z§ = true;
         return true;
      }
      
      private function §#a§(param1:§8!3§, param2:Texture, param3:BitmapData, param4:Number) : void
      {
         var _loc6_:Rectangle = null;
         var _loc7_:§"!&§ = null;
         var _loc5_:§>5§;
         if(!(_loc5_ = this.§[!^§[param1.mName]))
         {
            _loc6_ = param1.§0f§.clone();
            _loc7_ = new §"!&§(param2,_loc6_,false);
            _loc5_ = new §>5§(_loc7_,param3,_loc6_,param1.§+!O§,param1.§7j§,param4);
            this.§[!^§[param1.mName] = _loc5_;
         }
      }
      
      public function §%[§() : void
      {
         var bd:Object = null;
         var texture:Texture = null;
         if(!§6=§.§3!X§)
         {
            for(bd in this.§9X§)
            {
               try
               {
                  texture = this.§9X§[bd];
                  texture.requestBaseTextureUpdate(bd as BitmapData);
               }
               catch(e:Error)
               {
               }
            }
         }
      }
      
      public function §]N§(param1:String) : §>5§
      {
         return this.§[!^§[param1];
      }
      
      public function §8@§(param1:BitmapData, param2:Boolean = true) : Texture
      {
         var _loc3_:Texture = this.§9X§[param1];
         if(_loc3_)
         {
            return _loc3_;
         }
         _loc3_ = §6=§.§,D§(param1,param2);
         this.§9X§[param1] = _loc3_;
         this.§5!<§(_loc3_,param1,true);
         return _loc3_;
      }
      
      public function §5!<§(param1:Texture, param2:BitmapData, param3:Boolean) : void
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
            this.§+>§ += _loc4_ * param2.width * param2.height * 4;
         }
         if(param1)
         {
            _loc5_ = int(param1.width);
            _loc6_ = int(param1.height);
            while(_loc5_ >= 1 && _loc6_ >= 1)
            {
               this.§'[§ += _loc4_ * _loc5_ * _loc6_ * 4;
               _loc5_ >>= 1;
               _loc6_ >>= 1;
            }
         }
      }
      
      public function §[!D§() : Texture
      {
         if(!this.§7+§)
         {
            this.§7+§ = this.§8@§(new BitmapData(40,40,false,16711935));
         }
         return this.§7+§;
      }
      
      public function §]!8§(param1:Texture) : void
      {
         var _loc2_:* = null;
         var _loc3_:BitmapData = null;
         for(_loc2_ in this.§9X§)
         {
            if(this.§9X§[_loc2_] == param1)
            {
               _loc3_ = _loc2_ as BitmapData;
               this.§5!<§(param1,_loc3_,false);
               if(_loc3_)
               {
                  _loc3_.dispose();
               }
               delete this.§9X§[_loc2_];
               param1.dispose();
               return;
            }
         }
      }
      
      public function § !1§(param1:String) : BitmapData
      {
         var _loc2_:§>5§ = this.§]N§(param1);
         if(_loc2_ == null)
         {
            _loc2_ = this.§]N§(param1 + "_1");
         }
         if(_loc2_ == null)
         {
            _loc2_ = this.§]N§(param1 + "_01");
         }
         if(_loc2_ == null)
         {
            return null;
         }
         return _loc2_.bitmapData;
      }
   }
}
