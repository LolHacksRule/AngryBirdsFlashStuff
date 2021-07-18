package §_-Qx§
{
   import §_-IG§.§_-1E§;
   import §_-IG§.§_-Hj§;
   import §_-IG§.§_-Jx§;
   import §_-OJ§.§_-LW§;
   import §_-hq§.§_-AD§;
   import §_-mJ§.*;
   
   public class §_-Wv§
   {
       
      
      public var §_-OI§:Number = 0;
      
      public var §_-tP§:Number = 0;
      
      public var §_-yZ§:Vector.<§_-1E§> = null;
      
      public var §_-zK§:Vector.<§_-Jx§> = null;
      
      public var §_-kP§:Vector.<§_-Hj§> = null;
      
      public var §_-Pg§:Vector.<§_-7x§> = null;
      
      public var §_-Sb§:Number = 0;
      
      public var §_-Jo§:Boolean = false;
      
      public var §_-Xf§:Number = 0;
      
      public var §for §:Number = 0;
      
      public var §_-7R§:Number = 0;
      
      public var §_-Tt§:String = null;
      
      public var mName:String = null;
      
      public function §_-Wv§()
      {
         super();
         this.§_-Pg§ = new Vector.<§_-7x§>();
         this.§_-yZ§ = new Vector.<§_-1E§>();
         this.§_-zK§ = new Vector.<§_-Jx§>();
         this.§_-kP§ = new Vector.<§_-Hj§>();
      }
      
      public static function §_-D5§(param1:String) : §_-Wv§
      {
         var _loc2_:§_-Wv§ = new §_-Wv§();
         _loc2_.§_-8J§(param1);
         return _loc2_;
      }
      
      public static function §_-4s§(param1:String) : §_-Wv§
      {
         var _loc2_:§_-Wv§ = §_-D5§(param1);
         _loc2_.§_-OI§ = _loc2_.§_-zK§[0].x;
         _loc2_.§_-tP§ = _loc2_.§_-zK§[0].y - 8.5;
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.§_-yZ§.length)
         {
            _loc2_.§_-yZ§[_loc3_].angle = 360 - _loc2_.§_-yZ§[_loc3_].angle;
            _loc3_++;
         }
         return _loc2_;
      }
      
      protected static function §_-Ep§(param1:int, param2:Object) : Vector.<§_-Hj§>
      {
         var _loc5_:Object = null;
         var _loc6_:§_-Hj§ = null;
         var _loc3_:Vector.<§_-Hj§> = new Vector.<§_-Hj§>();
         var _loc4_:int = 1;
         while(_loc4_ <= param1)
         {
            if((_loc5_ = param2["joint_" + _loc4_]) != null)
            {
               (_loc6_ = new §_-Hj§(_loc5_.type,_loc5_.index1,_loc5_.index2)).p1.setTo(_loc5_.x1,_loc5_.y1);
               _loc6_.p2.setTo(_loc5_.x2,_loc5_.y2);
               _loc6_.collideConnected = _loc5_.collideConnected;
               if(_loc6_.type == §_-Hj§.§_-3H§)
               {
                  _loc6_.limit = _loc5_.limit;
                  _loc6_.backAndForth = _loc5_.backAndForth;
                  _loc6_.motor = _loc5_.motor;
                  _loc6_.motorSpeed = _loc5_.motorSpeed;
                  _loc6_.lowerLimit = _loc5_.lowerLimit;
                  _loc6_.upperLimit = _loc5_.upperLimit;
                  _loc6_.maxTorque = _loc5_.maxTorque;
               }
               _loc3_.push(_loc6_);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public static function §_-9E§(param1:XML) : §_-Wv§
      {
         var _loc3_:XML = null;
         var _loc4_:XML = null;
         var _loc5_:XML = null;
         var _loc6_:§_-7x§ = null;
         var _loc7_:§_-1E§ = null;
         var _loc8_:§_-Jx§ = null;
         var _loc2_:§_-Wv§ = new §_-Wv§();
         _loc2_.§_-Sb§ = param1.@LevelExtension;
         _loc2_.§_-Jo§ = param1.@AutoCamera.toString().toUpperCase() == "TRUE";
         _loc2_.§_-Xf§ = parseInt(param1.@scoreSilver);
         _loc2_.§for § = parseInt(param1.@scoreGold);
         _loc2_.§_-Tt§ = param1.@background;
         _loc2_.§_-OI§ = parseFloat(param1.Slingshot.@x);
         _loc2_.§_-tP§ = parseFloat(param1.Slingshot.@y);
         _loc2_.§_-Pg§ = new Vector.<§_-7x§>();
         _loc2_.§_-zK§ = new Vector.<§_-Jx§>();
         _loc2_.§_-yZ§ = new Vector.<§_-1E§>();
         for each(_loc3_ in param1.Cameras.Camera)
         {
            (_loc6_ = new §_-7x§()).x = parseFloat(_loc3_.@x);
            _loc6_.y = parseFloat(_loc3_.@y) - 50;
            _loc6_.left = parseFloat(_loc3_.@leftBorder);
            _loc6_.right = parseFloat(_loc3_.@rightBorder);
            _loc6_.top = parseFloat(_loc3_.@topBorder);
            _loc6_.bottom = parseFloat(_loc3_.@bottomBorder);
            _loc6_.scale = parseFloat(_loc3_.@scale);
            _loc6_.id = _loc3_.@id.toString();
            _loc2_.§_-Pg§.push(_loc6_);
         }
         for each(_loc4_ in param1.Item)
         {
            (_loc7_ = new §_-1E§()).id = _loc4_.@id.toString();
            _loc7_.x = parseFloat(_loc4_.@x);
            _loc7_.y = parseFloat(_loc4_.@y) - 50;
            _loc7_.angle = parseFloat(_loc4_.@rotation);
            _loc2_.§_-yZ§.push(_loc7_);
         }
         for each(_loc5_ in param1.Slingshot.Birds.Bird)
         {
            (_loc8_ = new §_-Jx§()).id = _loc5_.@id.toString();
            _loc8_.x = parseFloat(_loc5_.@x);
            _loc8_.y = parseFloat(_loc5_.@y) - 50;
            _loc2_.§_-zK§.push(_loc8_);
         }
         return _loc2_;
      }
      
      public function §_-8J§(param1:String) : void
      {
         var _loc4_:§_-7x§ = null;
         var _loc5_:Object = null;
         var _loc6_:§_-Jx§ = null;
         var _loc7_:Object = null;
         var _loc8_:§_-1E§ = null;
         var _loc2_:Object = §_-AD§.§_-Ae§(param1);
         this.§_-Sb§ = _loc2_.LevelExtension;
         this.§_-Jo§ = false;
         this.§_-Xf§ = _loc2_.scoreSilver;
         this.§for § = _loc2_.scoreGold;
         this.§_-7R§ = _loc2_.scoreEagle;
         this.§_-Tt§ = _loc2_.theme;
         this.mName = _loc2_.name;
         if(_loc2_.counts.joints)
         {
            this.§_-kP§ = §_-Ep§(_loc2_.counts.joints,_loc2_.world);
         }
         this.§_-Pg§ = new Vector.<§_-7x§>();
         this.§_-zK§ = new Vector.<§_-Jx§>();
         this.§_-yZ§ = new Vector.<§_-1E§>();
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.camera.length)
         {
            (_loc4_ = new §_-7x§()).x = _loc2_.camera[_loc3_].x;
            _loc4_.y = _loc2_.camera[_loc3_].y;
            _loc4_.left = _loc2_.camera[_loc3_].left;
            _loc4_.right = _loc2_.camera[_loc3_].right;
            _loc4_.top = _loc2_.camera[_loc3_].top;
            _loc4_.bottom = _loc2_.camera[_loc3_].bottom;
            _loc4_.id = _loc2_.camera[_loc3_].id;
            this.§_-Pg§.push(_loc4_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.birds)
         {
            _loc5_ = _loc2_.world["bird_" + _loc3_];
            (_loc6_ = new §_-Jx§()).x = _loc5_.x;
            _loc6_.y = _loc5_.y;
            _loc6_.id = _loc5_.id;
            this.§_-zK§.push(_loc6_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.blocks)
         {
            _loc7_ = _loc2_.world["block_" + _loc3_];
            (_loc8_ = new §_-1E§()).x = _loc7_.x;
            _loc8_.y = _loc7_.y;
            _loc8_.id = _loc7_.id;
            _loc8_.angle = _loc7_.angle;
            this.§_-yZ§.push(_loc8_);
            _loc3_++;
         }
         this.§_-OI§ = _loc2_.slingshotX;
         this.§_-tP§ = _loc2_.slingshotY;
      }
      
      public function §_-KF§() : Object
      {
         var _loc1_:Object = new Object();
         _loc1_.LevelExtension = this.§_-Sb§;
         _loc1_.scoreSilver = this.§_-Xf§;
         _loc1_.scoreGold = this.§for §;
         _loc1_.scoreEagle = this.§_-7R§;
         _loc1_.theme = this.§_-Tt§;
         _loc1_.name = this.mName;
         _loc1_.camera = this.§_-Pg§;
         var _loc2_:Number = 0;
         _loc1_.world = new Object();
         _loc2_ = 0;
         while(_loc2_ < this.§_-zK§.length)
         {
            _loc1_.world["bird_" + (_loc2_ + 1)] = this.§_-zK§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§_-yZ§.length)
         {
            _loc1_.world["block_" + (_loc2_ + 1)] = this.§_-yZ§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§_-kP§.length)
         {
            _loc1_.world["joint_" + (_loc2_ + 1)] = this.§_-kP§[_loc2_];
            _loc2_++;
         }
         _loc1_.counts = new Object();
         _loc1_.counts.blocks = this.§_-yZ§.length;
         _loc1_.counts.birds = this.§_-zK§.length;
         _loc1_.counts.joints = this.§_-kP§.length;
         _loc1_.slingshotX = this.§_-OI§;
         _loc1_.slingshotY = this.§_-tP§;
         return _loc1_;
      }
      
      public function §_-I1§() : String
      {
         return §_-AD§.encode(this.§_-KF§());
      }
      
      public function §_-DC§() : XML
      {
         var _loc2_:§_-7x§ = null;
         var _loc3_:int = 0;
         var _loc1_:* = "";
         _loc1_ += "<Level background=\"ThemeHills\"";
         _loc1_ += " LevelExtension=\"" + this.§_-Sb§ + "\"";
         _loc1_ += " AutoCamera=\"" + this.§_-Jo§ + "\"";
         _loc1_ += " scoreSilver=\"" + this.§_-Xf§ + "\"";
         _loc1_ += " scoreGold=\"" + this.§for § + "\"";
         _loc1_ += ">";
         _loc1_ += "<Cameras>";
         for each(_loc2_ in this.§_-Pg§)
         {
            _loc1_ += " <Camera id=\"" + _loc2_.id + "\" leftBorder=\"" + _loc2_.left + "\" rightBorder=\"" + _loc2_.right + "\" topBorder=\"" + _loc2_.top + "\" bottomBorder=\"" + (_loc2_.top + §_-LW§.§_-iy§) + "\"></Camera>";
         }
         _loc1_ += "</Cameras>";
         _loc1_ += "<Slingshot x=\"" + this.§_-zK§[0].x + "\" y=\"" + (this.§_-zK§[0].y - 8) + "\">";
         _loc1_ += " <Birds>";
         _loc3_ = 0;
         while(_loc3_ < this.§_-zK§.length)
         {
            _loc1_ += "  <Bird id=\"" + this.§_-zK§[_loc3_].id + "\" x=\"" + this.§_-zK§[_loc3_].x + "\" y=\"" + this.§_-zK§[_loc3_].y + "\"></Bird>";
            _loc3_++;
         }
         _loc1_ += " </Birds>";
         _loc1_ += "</Slingshot>";
         _loc3_ = 0;
         while(_loc3_ < this.§_-yZ§.length)
         {
            _loc1_ += "<Item id=\"" + this.§_-yZ§[_loc3_].id + "\" x=\"" + this.§_-yZ§[_loc3_].x + "\" y=\"" + this.§_-yZ§[_loc3_].y + "\" rotation=\"" + this.§_-yZ§[_loc3_].angle + "\" ></Item>";
            _loc3_++;
         }
         _loc1_ += "</Level>";
         return new XML(_loc1_);
      }
   }
}
