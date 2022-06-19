package §9t§
{
   import §+6§.§=!`§;
   import §+6§.§^j§;
   import §6;§.§%[§;
   import §]!a§.Texture;
   import §]!a§.§^!!§;
   import flash.display.BitmapData;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class §=!>§ extends EventDispatcher
   {
      
      private static const §@J§:int = 2;
      
      private static const §;s§:int = 2048;
      
      private static var §3!L§:§=!>§;
       
      
      private var §9!M§:Dictionary;
      
      private var §&q§:Vector.<§^j§>;
      
      private var §1W§:Dictionary;
      
      private var §7G§:Boolean;
      
      private var §7Q§:String;
      
      private var §%!O§:Texture;
      
      private var §1!I§:int;
      
      private var §]Q§:int;
      
      public function §=!>§(param1:String = null)
      {
         super();
         this.§&q§ = new Vector.<§^j§>();
         this.§9!M§ = new Dictionary();
         this.§1W§ = new Dictionary();
         this.§7Q§ = param1;
      }
      
      public static function get §'I§() : §=!>§
      {
         if(!§3!L§)
         {
            §3!L§ = new §=!>§();
         }
         return §3!L§;
      }
      
      public function get §true§() : int
      {
         return this.§1!I§;
      }
      
      public function get §?^§() : int
      {
         return this.§]Q§;
      }
      
      public function get id() : String
      {
         return this.§7Q§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§35§ = null;
         var _loc2_:§^j§ = null;
         if(this.§9!M§)
         {
            for each(_loc1_ in this.§9!M§)
            {
               this.§`E§(_loc1_.texture.parent);
               _loc1_.dispose();
            }
            this.§9!M§ = null;
         }
         if(this.§&q§)
         {
            for each(_loc2_ in this.§&q§)
            {
               _loc2_.dispose();
            }
            this.§&q§ = null;
         }
         if(this.§1W§)
         {
            this.§1W§ = null;
         }
         if(this.§%!O§)
         {
            this.§%!O§.dispose();
            this.§%!O§ = null;
         }
         this.§&q§ = new Vector.<§^j§>();
         this.§9!M§ = new Dictionary();
         this.§1W§ = new Dictionary();
      }
      
      public function §;Y§(param1:§^j§) : void
      {
         if(this.§7G§)
         {
            return;
         }
         if(this.§&q§.indexOf(param1) >= 0)
         {
            return;
         }
         this.§&q§.push(param1);
      }
      
      private function §,!]§(param1:Array) : Rectangle
      {
         var _loc9_:§^j§ = null;
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
            if(_loc2_ + _loc10_.width + §@J§ >= §;s§)
            {
               _loc2_ = 0;
               _loc3_ += _loc6_;
               _loc6_ = 0;
            }
            if(_loc3_ + _loc10_.height + §@J§ >= §;s§)
            {
               break;
            }
            _loc2_ += _loc10_.width + §@J§;
            if(_loc2_ > _loc4_)
            {
               _loc4_ = _loc2_;
            }
            if(_loc10_.height + §@J§ > _loc6_)
            {
               _loc6_ = _loc10_.height + §@J§;
               _loc5_ = _loc3_ + _loc6_;
            }
            _loc8_++;
         }
         return new Rectangle(0,0,_loc4_,_loc5_);
      }
      
      private function §72§(param1:Array, param2:BitmapData) : Array
      {
         var _loc8_:§^j§ = null;
         var _loc9_:BitmapData = null;
         var _loc10_:§0!_§ = null;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:§=!`§ = null;
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
            if(_loc3_ + _loc9_.width + §@J§ > param2.width)
            {
               _loc3_ = 0;
               _loc4_ += _loc5_;
               _loc5_ = 0;
            }
            if(_loc4_ + _loc9_.height + §@J§ > param2.height)
            {
               break;
            }
            param2.copyPixels(_loc9_,_loc9_.rect,new Point(_loc3_,_loc4_),null,null,true);
            (_loc10_ = new §0!_§()).offset = new Point(_loc3_,_loc4_);
            _loc10_.§1P§ = _loc8_;
            _loc6_.push(_loc10_);
            _loc11_ = _loc8_.§`!X§;
            _loc12_ = 0;
            while(_loc12_ < _loc11_)
            {
               (_loc13_ = _loc8_.§@9§(_loc12_)).§03§ = null;
               _loc13_.§ k§.offset(_loc3_,_loc4_);
               _loc12_++;
            }
            _loc3_ += _loc9_.width + §@J§;
            if(_loc9_.height + §@J§ > _loc5_)
            {
               _loc5_ = _loc9_.height + §@J§;
            }
            param1.splice(0,1);
         }
         return _loc6_;
      }
      
      public function §<h§() : Boolean
      {
         var _loc1_:§^j§ = null;
         var _loc3_:Rectangle = null;
         var _loc4_:BitmapData = null;
         var _loc5_:Array = null;
         var _loc6_:Texture = null;
         var _loc7_:int = 0;
         var _loc8_:§0!_§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:§=!`§ = null;
         if(!§%[§.§2U§())
         {
            return false;
         }
         if(this.§7G§)
         {
            return true;
         }
         var _loc2_:Array = [];
         for each(_loc1_ in this.§&q§)
         {
            if(_loc1_.§`!X§ > 0)
            {
               _loc2_.push(_loc1_);
            }
         }
         while(_loc2_.length > 0)
         {
            _loc3_ = this.§,!]§(_loc2_);
            if(_loc3_.width * _loc3_.height == 0)
            {
               throw new Error("Found too large sprite sheet image!");
            }
            _loc4_ = new BitmapData(_loc3_.width,_loc3_.height,true,0);
            if((_loc5_ = this.§72§(_loc2_,_loc4_)).length == 0)
            {
               throw new Error("Found too large sprite sheet image!");
            }
            _loc6_ = this.§0!U§(_loc4_);
            _loc7_ = 0;
            while(_loc7_ < _loc5_.length)
            {
               _loc1_ = (_loc8_ = _loc5_[_loc7_]).§1P§;
               _loc9_ = _loc1_.§`!X§;
               _loc10_ = 0;
               while(_loc10_ < _loc9_)
               {
                  _loc11_ = _loc1_.§@9§(_loc10_);
                  this.§[!E§(_loc11_,_loc6_,_loc4_,_loc1_.scale);
                  _loc10_++;
               }
               _loc7_++;
            }
         }
         for each(_loc1_ in this.§&q§)
         {
            _loc1_.dispose();
         }
         this.§&q§ = new Vector.<§^j§>();
         this.§7G§ = true;
         return true;
      }
      
      private function §[!E§(param1:§=!`§, param2:Texture, param3:BitmapData, param4:Number) : void
      {
         var _loc6_:Rectangle = null;
         var _loc7_:§^!!§ = null;
         var _loc5_:§35§;
         if(!(_loc5_ = this.§9!M§[param1.mName]))
         {
            _loc6_ = param1.§ k§.clone();
            _loc7_ = new §^!!§(param2,_loc6_,false);
            _loc5_ = new §35§(_loc7_,param3,_loc6_,param1.§4!=§,param1.§>!D§,param4);
            this.§9!M§[param1.mName] = _loc5_;
         }
      }
      
      public function §3Z§() : void
      {
         var bd:Object = null;
         var texture:Texture = null;
         if(!§%[§.§[!e§)
         {
            for(bd in this.§1W§)
            {
               try
               {
                  texture = this.§1W§[bd];
                  texture.requestBaseTextureUpdate(bd as BitmapData);
               }
               catch(e:Error)
               {
               }
            }
         }
      }
      
      public function §=!+§(param1:String) : §35§
      {
         return this.§9!M§[param1];
      }
      
      public function §0!U§(param1:BitmapData, param2:Boolean = true) : Texture
      {
         var _loc3_:Texture = this.§1W§[param1];
         if(_loc3_)
         {
            return _loc3_;
         }
         _loc3_ = §%[§.§&!>§(param1,param2);
         this.§1W§[param1] = _loc3_;
         this.§9!-§(_loc3_,param1,true);
         return _loc3_;
      }
      
      public function §9!-§(param1:Texture, param2:BitmapData, param3:Boolean) : void
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
            this.§]Q§ += _loc4_ * param2.width * param2.height * 4;
         }
         if(param1)
         {
            _loc5_ = int(param1.width);
            _loc6_ = int(param1.height);
            while(_loc5_ >= 1 && _loc6_ >= 1)
            {
               this.§1!I§ += _loc4_ * _loc5_ * _loc6_ * 4;
               _loc5_ >>= 1;
               _loc6_ >>= 1;
            }
         }
      }
      
      public function §93§() : Texture
      {
         if(!this.§%!O§)
         {
            this.§%!O§ = this.§0!U§(new BitmapData(40,40,false,16711935));
         }
         return this.§%!O§;
      }
      
      public function §`E§(param1:Texture) : void
      {
         var _loc2_:* = null;
         var _loc3_:BitmapData = null;
         for(_loc2_ in this.§1W§)
         {
            if(this.§1W§[_loc2_] == param1)
            {
               _loc3_ = _loc2_ as BitmapData;
               this.§9!-§(param1,_loc3_,false);
               if(_loc3_)
               {
                  _loc3_.dispose();
               }
               delete this.§1W§[_loc2_];
               param1.dispose();
               return;
            }
         }
      }
      
      public function §[!h§(param1:String) : BitmapData
      {
         var _loc2_:§35§ = this.§=!+§(param1);
         if(_loc2_ == null)
         {
            _loc2_ = this.§=!+§(param1 + "_1");
         }
         if(_loc2_ == null)
         {
            _loc2_ = this.§=!+§(param1 + "_01");
         }
         if(_loc2_ == null)
         {
            return null;
         }
         return _loc2_.bitmapData;
      }
   }
}
