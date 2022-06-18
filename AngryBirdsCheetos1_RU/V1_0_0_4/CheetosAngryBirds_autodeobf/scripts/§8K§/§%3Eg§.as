package §8K§
{
   import §7!0§.§<!9§;
   import §7!0§.§`C§;
   import §^n§.§;!_§;
   import §^n§.Texture;
   import §`M§.§'C§;
   import flash.display.BitmapData;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class §>g§ extends EventDispatcher
   {
      
      private static const §=v§:int = 2;
      
      private static const §&E§:int = 2048;
      
      private static var §+!`§:§>g§;
       
      
      private var §76§:Dictionary;
      
      private var § !G§:Vector.<§<!9§>;
      
      private var §+s§:Dictionary;
      
      private var §7l§:Boolean;
      
      private var §#!J§:String;
      
      private var §#]§:Texture;
      
      private var §?!_§:int;
      
      private var §^%§:int;
      
      public function §>g§(param1:String = null)
      {
         super();
         this.§ !G§ = new Vector.<§<!9§>();
         this.§76§ = new Dictionary();
         this.§+s§ = new Dictionary();
         this.§#!J§ = param1;
      }
      
      public static function get §[P§() : §>g§
      {
         if(!§+!`§)
         {
            §+!`§ = new §>g§();
         }
         return §+!`§;
      }
      
      public function get §3l§() : int
      {
         return this.§?!_§;
      }
      
      public function get §6!O§() : int
      {
         return this.§^%§;
      }
      
      public function get id() : String
      {
         return this.§#!J§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§9!S§ = null;
         var _loc2_:§<!9§ = null;
         if(this.§76§)
         {
            for each(_loc1_ in this.§76§)
            {
               this.§>P§(_loc1_.texture.parent);
               _loc1_.dispose();
            }
            this.§76§ = null;
         }
         if(this.§ !G§)
         {
            for each(_loc2_ in this.§ !G§)
            {
               _loc2_.dispose();
            }
            this.§ !G§ = null;
         }
         if(this.§+s§)
         {
            this.§+s§ = null;
         }
         if(this.§#]§)
         {
            this.§#]§.dispose();
            this.§#]§ = null;
         }
         this.§ !G§ = new Vector.<§<!9§>();
         this.§76§ = new Dictionary();
         this.§+s§ = new Dictionary();
      }
      
      public function §[!>§(param1:§<!9§) : void
      {
         if(this.§7l§)
         {
            return;
         }
         if(this.§ !G§.indexOf(param1) >= 0)
         {
            return;
         }
         this.§ !G§.push(param1);
      }
      
      private function §6P§(param1:Array) : Rectangle
      {
         var _loc9_:§<!9§ = null;
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
            if(_loc2_ + _loc10_.width + §=v§ >= §&E§)
            {
               _loc2_ = 0;
               _loc3_ += _loc6_;
               _loc6_ = 0;
            }
            if(_loc3_ + _loc10_.height + §=v§ >= §&E§)
            {
               break;
            }
            _loc2_ += _loc10_.width + §=v§;
            if(_loc2_ > _loc4_)
            {
               _loc4_ = _loc2_;
            }
            if(_loc10_.height + §=v§ > _loc6_)
            {
               _loc6_ = _loc10_.height + §=v§;
               _loc5_ = _loc3_ + _loc6_;
            }
            _loc8_++;
         }
         return new Rectangle(0,0,_loc4_,_loc5_);
      }
      
      private function §[=§(param1:Array, param2:BitmapData) : Array
      {
         var _loc8_:§<!9§ = null;
         var _loc9_:BitmapData = null;
         var _loc10_:§5![§ = null;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:§`C§ = null;
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
            if(_loc3_ + _loc9_.width + §=v§ > param2.width)
            {
               _loc3_ = 0;
               _loc4_ += _loc5_;
               _loc5_ = 0;
            }
            if(_loc4_ + _loc9_.height + §=v§ > param2.height)
            {
               break;
            }
            param2.copyPixels(_loc9_,_loc9_.rect,new Point(_loc3_,_loc4_),null,null,true);
            (_loc10_ = new §5![§()).offset = new Point(_loc3_,_loc4_);
            _loc10_.§=h§ = _loc8_;
            _loc6_.push(_loc10_);
            _loc11_ = _loc8_.§[;§;
            _loc12_ = 0;
            while(_loc12_ < _loc11_)
            {
               (_loc13_ = _loc8_.§+!9§(_loc12_)).§7E§ = null;
               _loc13_.§<j§.offset(_loc3_,_loc4_);
               _loc12_++;
            }
            _loc3_ += _loc9_.width + §=v§;
            if(_loc9_.height + §=v§ > _loc5_)
            {
               _loc5_ = _loc9_.height + §=v§;
            }
            param1.splice(0,1);
         }
         return _loc6_;
      }
      
      public function §#+§() : Boolean
      {
         var _loc1_:§<!9§ = null;
         var _loc3_:Rectangle = null;
         var _loc4_:BitmapData = null;
         var _loc5_:Array = null;
         var _loc6_:Texture = null;
         var _loc7_:int = 0;
         var _loc8_:§5![§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:§`C§ = null;
         if(!§'C§.§61§())
         {
            return false;
         }
         if(this.§7l§)
         {
            return true;
         }
         var _loc2_:Array = [];
         for each(_loc1_ in this.§ !G§)
         {
            if(_loc1_.§[;§ > 0)
            {
               _loc2_.push(_loc1_);
            }
         }
         while(_loc2_.length > 0)
         {
            _loc3_ = this.§6P§(_loc2_);
            if(_loc3_.width * _loc3_.height == 0)
            {
               throw new Error("Found too large sprite sheet image!");
            }
            _loc4_ = new BitmapData(_loc3_.width,_loc3_.height,true,0);
            if((_loc5_ = this.§[=§(_loc2_,_loc4_)).length == 0)
            {
               throw new Error("Found too large sprite sheet image!");
            }
            _loc6_ = this.§@U§(_loc4_);
            _loc7_ = 0;
            while(_loc7_ < _loc5_.length)
            {
               _loc1_ = (_loc8_ = _loc5_[_loc7_]).§=h§;
               _loc9_ = _loc1_.§[;§;
               _loc10_ = 0;
               while(_loc10_ < _loc9_)
               {
                  _loc11_ = _loc1_.§+!9§(_loc10_);
                  this.§?Q§(_loc11_,_loc6_,_loc4_,_loc1_.scale);
                  _loc10_++;
               }
               _loc7_++;
            }
         }
         for each(_loc1_ in this.§ !G§)
         {
            _loc1_.dispose();
         }
         this.§ !G§ = new Vector.<§<!9§>();
         this.§7l§ = true;
         return true;
      }
      
      private function §?Q§(param1:§`C§, param2:Texture, param3:BitmapData, param4:Number) : void
      {
         var _loc6_:Rectangle = null;
         var _loc7_:§;!_§ = null;
         var _loc5_:§9!S§;
         if(!(_loc5_ = this.§76§[param1.mName]))
         {
            _loc6_ = param1.§<j§.clone();
            _loc7_ = new §;!_§(param2,_loc6_,false);
            _loc5_ = new §9!S§(_loc7_,param3,_loc6_,param1.§ z§,param1.§]E§,param4);
            this.§76§[param1.mName] = _loc5_;
         }
      }
      
      public function §`1§() : void
      {
         var bd:Object = null;
         var texture:Texture = null;
         if(!§'C§.§1!;§)
         {
            for(bd in this.§+s§)
            {
               try
               {
                  texture = this.§+s§[bd];
                  texture.requestBaseTextureUpdate(bd as BitmapData);
               }
               catch(e:Error)
               {
               }
            }
         }
      }
      
      public function §0!F§(param1:String) : §9!S§
      {
         return this.§76§[param1];
      }
      
      public function §@U§(param1:BitmapData, param2:Boolean = true) : Texture
      {
         var _loc3_:Texture = this.§+s§[param1];
         if(_loc3_)
         {
            return _loc3_;
         }
         _loc3_ = §'C§.§ !`§(param1,param2);
         this.§+s§[param1] = _loc3_;
         this.§!!;§(_loc3_,param1,true);
         return _loc3_;
      }
      
      public function §!!;§(param1:Texture, param2:BitmapData, param3:Boolean) : void
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
            this.§^%§ += _loc4_ * param2.width * param2.height * 4;
         }
         if(param1)
         {
            _loc5_ = int(param1.width);
            _loc6_ = int(param1.height);
            while(_loc5_ >= 1 && _loc6_ >= 1)
            {
               this.§?!_§ += _loc4_ * _loc5_ * _loc6_ * 4;
               _loc5_ >>= 1;
               _loc6_ >>= 1;
            }
         }
      }
      
      public function §,!^§() : Texture
      {
         if(!this.§#]§)
         {
            this.§#]§ = this.§@U§(new BitmapData(40,40,false,16711935));
         }
         return this.§#]§;
      }
      
      public function §>P§(param1:Texture) : void
      {
         var _loc2_:* = null;
         var _loc3_:BitmapData = null;
         for(_loc2_ in this.§+s§)
         {
            if(this.§+s§[_loc2_] == param1)
            {
               _loc3_ = _loc2_ as BitmapData;
               this.§!!;§(param1,_loc3_,false);
               if(_loc3_)
               {
                  _loc3_.dispose();
               }
               delete this.§+s§[_loc2_];
               param1.dispose();
               return;
            }
         }
      }
      
      public function §^!6§(param1:String) : BitmapData
      {
         var _loc2_:§9!S§ = this.§0!F§(param1);
         if(_loc2_ == null)
         {
            _loc2_ = this.§0!F§(param1 + "_1");
         }
         if(_loc2_ == null)
         {
            _loc2_ = this.§0!F§(param1 + "_01");
         }
         if(_loc2_ == null)
         {
            return null;
         }
         return _loc2_.bitmapData;
      }
   }
}
