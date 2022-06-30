package §`!H§
{
   import § !9§.§5O§;
   import § !9§.Texture;
   import §+!R§.§"O§;
   import §+!R§.§`!C§;
   import §>Q§.§5!5§;
   import flash.display.BitmapData;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class §@!E§ extends EventDispatcher
   {
      
      private static const §[o§:int = 2;
      
      private static const §;z§:int = 2048;
      
      private static var §#R§:§@!E§;
       
      
      private var §@Q§:Dictionary;
      
      private var §&!+§:Vector.<§`!C§>;
      
      private var §3_§:Dictionary;
      
      private var § R§:Boolean;
      
      private var §8o§:String;
      
      private var §9o§:Texture;
      
      private var §null§:int;
      
      private var §-!Q§:int;
      
      public function §@!E§(param1:String = null)
      {
         super();
         this.§&!+§ = new Vector.<§`!C§>();
         this.§@Q§ = new Dictionary();
         this.§3_§ = new Dictionary();
         this.§8o§ = param1;
      }
      
      public static function get §;!F§() : §@!E§
      {
         if(!§#R§)
         {
            §#R§ = new §@!E§();
         }
         return §#R§;
      }
      
      public function get §<,§() : int
      {
         return this.§null§;
      }
      
      public function get §]Q§() : int
      {
         return this.§-!Q§;
      }
      
      public function get id() : String
      {
         return this.§8o§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§5f§ = null;
         var _loc2_:§`!C§ = null;
         if(this.§@Q§)
         {
            for each(_loc1_ in this.§@Q§)
            {
               this.§1G§(_loc1_.texture.parent);
               _loc1_.dispose();
            }
            this.§@Q§ = null;
         }
         if(this.§&!+§)
         {
            for each(_loc2_ in this.§&!+§)
            {
               _loc2_.dispose();
            }
            this.§&!+§ = null;
         }
         if(this.§3_§)
         {
            this.§3_§ = null;
         }
         if(this.§9o§)
         {
            this.§9o§.dispose();
            this.§9o§ = null;
         }
         this.§&!+§ = new Vector.<§`!C§>();
         this.§@Q§ = new Dictionary();
         this.§3_§ = new Dictionary();
      }
      
      public function §,8§(param1:§`!C§) : void
      {
         if(this.§ R§)
         {
            return;
         }
         if(this.§&!+§.indexOf(param1) >= 0)
         {
            return;
         }
         this.§&!+§.push(param1);
      }
      
      private function §?D§(param1:Array) : Rectangle
      {
         var _loc9_:§`!C§ = null;
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
            if(_loc2_ + _loc10_.width + §[o§ >= §;z§)
            {
               _loc2_ = 0;
               _loc3_ += _loc6_;
               _loc6_ = 0;
            }
            if(_loc3_ + _loc10_.height + §[o§ >= §;z§)
            {
               break;
            }
            _loc2_ += _loc10_.width + §[o§;
            if(_loc2_ > _loc4_)
            {
               _loc4_ = _loc2_;
            }
            if(_loc10_.height + §[o§ > _loc6_)
            {
               _loc6_ = _loc10_.height + §[o§;
               _loc5_ = _loc3_ + _loc6_;
            }
            _loc8_++;
         }
         return new Rectangle(0,0,_loc4_,_loc5_);
      }
      
      private function §2!M§(param1:Array, param2:BitmapData) : Array
      {
         var _loc8_:§`!C§ = null;
         var _loc9_:BitmapData = null;
         var _loc10_:§=!T§ = null;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:§"O§ = null;
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
            if(_loc3_ + _loc9_.width + §[o§ > param2.width)
            {
               _loc3_ = 0;
               _loc4_ += _loc5_;
               _loc5_ = 0;
            }
            if(_loc4_ + _loc9_.height + §[o§ > param2.height)
            {
               break;
            }
            param2.copyPixels(_loc9_,_loc9_.rect,new Point(_loc3_,_loc4_),null,null,true);
            (_loc10_ = new §=!T§()).offset = new Point(_loc3_,_loc4_);
            _loc10_.§#!V§ = _loc8_;
            _loc6_.push(_loc10_);
            _loc11_ = _loc8_.§=! §;
            _loc12_ = 0;
            while(_loc12_ < _loc11_)
            {
               (_loc13_ = _loc8_.§!0§(_loc12_)).§1!"§ = null;
               _loc13_.§7i§.offset(_loc3_,_loc4_);
               _loc12_++;
            }
            _loc3_ += _loc9_.width + §[o§;
            if(_loc9_.height + §[o§ > _loc5_)
            {
               _loc5_ = _loc9_.height + §[o§;
            }
            param1.splice(0,1);
         }
         return _loc6_;
      }
      
      public function §6D§() : Boolean
      {
         var _loc1_:§`!C§ = null;
         var _loc3_:Rectangle = null;
         var _loc4_:BitmapData = null;
         var _loc5_:Array = null;
         var _loc6_:Texture = null;
         var _loc7_:int = 0;
         var _loc8_:§=!T§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:§"O§ = null;
         if(!§5!5§.override())
         {
            return false;
         }
         if(this.§ R§)
         {
            return true;
         }
         var _loc2_:Array = [];
         for each(_loc1_ in this.§&!+§)
         {
            if(_loc1_.§=! § > 0)
            {
               _loc2_.push(_loc1_);
            }
         }
         while(_loc2_.length > 0)
         {
            _loc3_ = this.§?D§(_loc2_);
            if(_loc3_.width * _loc3_.height == 0)
            {
               throw new Error("Found too large sprite sheet image!");
            }
            _loc4_ = new BitmapData(_loc3_.width,_loc3_.height,true,0);
            if((_loc5_ = this.§2!M§(_loc2_,_loc4_)).length == 0)
            {
               throw new Error("Found too large sprite sheet image!");
            }
            _loc6_ = this.§1!1§(_loc4_);
            _loc7_ = 0;
            while(_loc7_ < _loc5_.length)
            {
               _loc1_ = (_loc8_ = _loc5_[_loc7_]).§#!V§;
               _loc9_ = _loc1_.§=! §;
               _loc10_ = 0;
               while(_loc10_ < _loc9_)
               {
                  _loc11_ = _loc1_.§!0§(_loc10_);
                  this.§[c§(_loc11_,_loc6_,_loc4_,_loc1_.scale);
                  _loc10_++;
               }
               _loc7_++;
            }
         }
         for each(_loc1_ in this.§&!+§)
         {
            _loc1_.dispose();
         }
         this.§&!+§ = new Vector.<§`!C§>();
         this.§ R§ = true;
         return true;
      }
      
      private function §[c§(param1:§"O§, param2:Texture, param3:BitmapData, param4:Number) : void
      {
         var _loc6_:Rectangle = null;
         var _loc7_:§5O§ = null;
         var _loc5_:§5f§;
         if(!(_loc5_ = this.§@Q§[param1.mName]))
         {
            _loc6_ = param1.§7i§.clone();
            _loc7_ = new §5O§(param2,_loc6_,false);
            _loc5_ = new §5f§(_loc7_,param3,_loc6_,param1.§^!V§,param1.§],§,param4);
            this.§@Q§[param1.mName] = _loc5_;
         }
      }
      
      public function § !]§() : void
      {
         var bd:Object = null;
         var texture:Texture = null;
         if(!§5!5§.§#b§)
         {
            for(bd in this.§3_§)
            {
               try
               {
                  texture = this.§3_§[bd];
                  texture.requestBaseTextureUpdate(bd as BitmapData);
               }
               catch(e:Error)
               {
               }
            }
         }
      }
      
      public function §;X§(param1:String) : §5f§
      {
         return this.§@Q§[param1];
      }
      
      public function §1!1§(param1:BitmapData, param2:Boolean = true) : Texture
      {
         var _loc3_:Texture = this.§3_§[param1];
         if(_loc3_)
         {
            return _loc3_;
         }
         _loc3_ = §5!5§.§ ! §(param1,param2);
         this.§3_§[param1] = _loc3_;
         this.§%!P§(_loc3_,param1,true);
         return _loc3_;
      }
      
      public function §%!P§(param1:Texture, param2:BitmapData, param3:Boolean) : void
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
            this.§-!Q§ += _loc4_ * param2.width * param2.height * 4;
         }
         if(param1)
         {
            _loc5_ = int(param1.width);
            _loc6_ = int(param1.height);
            while(_loc5_ >= 1 && _loc6_ >= 1)
            {
               this.§null§ += _loc4_ * _loc5_ * _loc6_ * 4;
               _loc5_ >>= 1;
               _loc6_ >>= 1;
            }
         }
      }
      
      public function §%!W§() : Texture
      {
         if(!this.§9o§)
         {
            this.§9o§ = this.§1!1§(new BitmapData(40,40,false,16711935));
         }
         return this.§9o§;
      }
      
      public function §1G§(param1:Texture) : void
      {
         var _loc2_:* = null;
         var _loc3_:BitmapData = null;
         for(_loc2_ in this.§3_§)
         {
            if(this.§3_§[_loc2_] == param1)
            {
               _loc3_ = _loc2_ as BitmapData;
               this.§%!P§(param1,_loc3_,false);
               if(_loc3_)
               {
                  _loc3_.dispose();
               }
               delete this.§3_§[_loc2_];
               param1.dispose();
               return;
            }
         }
      }
      
      public function §6!T§(param1:String) : BitmapData
      {
         var _loc2_:§5f§ = this.§;X§(param1);
         if(_loc2_ == null)
         {
            _loc2_ = this.§;X§(param1 + "_1");
         }
         if(_loc2_ == null)
         {
            _loc2_ = this.§;X§(param1 + "_01");
         }
         if(_loc2_ == null)
         {
            return null;
         }
         return _loc2_.bitmapData;
      }
   }
}
