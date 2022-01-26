package §_-Su§
{
   import §_-EG§.*;
   import §_-rp§.§_-Hz§;
   import §_-wa§.§ try§;
   import §_-wa§.§_-Zg§;
   import §_-wa§.§_-k§;
   
   public class §_-Xk§
   {
       
      
      public var §_-Lc§:Number = 0;
      
      public var §_-rG§:Number = 0;
      
      public var §_-X5§:Vector.<§_-Zg§> = null;
      
      public var mBirds:Vector.<§_-k§> = null;
      
      public var §_-IM§:Vector.<§ try§> = null;
      
      public var §_-0y§:Vector.<§_-Bk§> = null;
      
      public var §_-E4§:Number = 0;
      
      public var §_-pH§:Boolean = false;
      
      public var §_-Ql§:Number = 0;
      
      public var §_-Rm§:Number = 0;
      
      public var §_-hQ§:Number = 0;
      
      public var §_-Of§:String = null;
      
      public var mName:String = null;
      
      public function §_-Xk§()
      {
         super();
         this.§_-0y§ = new Vector.<§_-Bk§>();
         this.§_-X5§ = new Vector.<§_-Zg§>();
         this.mBirds = new Vector.<§_-k§>();
         this.§_-IM§ = new Vector.<§ try§>();
      }
      
      public static function §_-27§(param1:String) : §_-Xk§
      {
         var _loc2_:§_-Xk§ = new §_-Xk§();
         _loc2_.§_-9R§(param1);
         return _loc2_;
      }
      
      public static function §_-Pl§(param1:String) : §_-Xk§
      {
         var _loc2_:§_-Xk§ = §_-27§(param1);
         _loc2_.§_-Lc§ = _loc2_.mBirds[0].x;
         _loc2_.§_-rG§ = _loc2_.mBirds[0].y - 8.5;
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.§_-X5§.length)
         {
            _loc2_.§_-X5§[_loc3_].angle = 360 - _loc2_.§_-X5§[_loc3_].angle;
            _loc3_++;
         }
         return _loc2_;
      }
      
      protected static function §_-VU§(param1:int, param2:Object) : Vector.<§ try§>
      {
         var _loc5_:Object = null;
         var _loc6_:§ try§ = null;
         var _loc3_:Vector.<§ try§> = new Vector.<§ try§>();
         var _loc4_:int = 1;
         while(_loc4_ <= param1)
         {
            if((_loc5_ = param2["joint_" + _loc4_]) != null)
            {
               (_loc6_ = new § try§(_loc5_.type,_loc5_.index1,_loc5_.index2)).p1.setTo(_loc5_.x1,_loc5_.y1);
               _loc6_.p2.setTo(_loc5_.x2,_loc5_.y2);
               _loc6_.collideConnected = _loc5_.collideConnected;
               if(_loc6_.type == § try§.§_-8C§)
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
      
      public static function §_-Iy§(param1:XML) : §_-Xk§
      {
         var _loc3_:XML = null;
         var _loc4_:XML = null;
         var _loc5_:XML = null;
         var _loc6_:§_-Bk§ = null;
         var _loc7_:§_-Zg§ = null;
         var _loc8_:§_-k§ = null;
         var _loc2_:§_-Xk§ = new §_-Xk§();
         _loc2_.§_-E4§ = param1.@LevelExtension;
         _loc2_.§_-pH§ = param1.@AutoCamera.toString().toUpperCase() == "TRUE";
         _loc2_.§_-Ql§ = parseInt(param1.@scoreSilver);
         _loc2_.§_-Rm§ = parseInt(param1.@scoreGold);
         _loc2_.§_-Of§ = param1.@background;
         _loc2_.§_-Lc§ = parseFloat(param1.Slingshot.@x);
         _loc2_.§_-rG§ = parseFloat(param1.Slingshot.@y);
         _loc2_.§_-0y§ = new Vector.<§_-Bk§>();
         _loc2_.mBirds = new Vector.<§_-k§>();
         _loc2_.§_-X5§ = new Vector.<§_-Zg§>();
         for each(_loc3_ in param1.Cameras.Camera)
         {
            (_loc6_ = new §_-Bk§()).x = parseFloat(_loc3_.@x);
            _loc6_.y = parseFloat(_loc3_.@y) - 50;
            _loc6_.left = parseFloat(_loc3_.@leftBorder);
            _loc6_.right = parseFloat(_loc3_.@rightBorder);
            _loc6_.top = parseFloat(_loc3_.@topBorder);
            _loc6_.bottom = parseFloat(_loc3_.@bottomBorder);
            _loc6_.scale = parseFloat(_loc3_.@scale);
            _loc6_.id = _loc3_.@id.toString();
            _loc2_.§_-0y§.push(_loc6_);
         }
         for each(_loc4_ in param1.Item)
         {
            (_loc7_ = new §_-Zg§()).id = _loc4_.@id.toString();
            _loc7_.x = parseFloat(_loc4_.@x);
            _loc7_.y = parseFloat(_loc4_.@y) - 50;
            _loc7_.angle = parseFloat(_loc4_.@rotation);
            _loc2_.§_-X5§.push(_loc7_);
         }
         for each(_loc5_ in param1.Slingshot.Birds.Bird)
         {
            (_loc8_ = new §_-k§()).id = _loc5_.@id.toString();
            _loc8_.x = parseFloat(_loc5_.@x);
            _loc8_.y = parseFloat(_loc5_.@y) - 50;
            _loc2_.mBirds.push(_loc8_);
         }
         return _loc2_;
      }
      
      public function §_-9R§(param1:String) : void
      {
         var _loc4_:§_-Bk§ = null;
         var _loc5_:Object = null;
         var _loc6_:§_-k§ = null;
         var _loc7_:Object = null;
         var _loc8_:§_-Zg§ = null;
         var _loc2_:Object = JSON.parse(param1);
         this.§_-E4§ = _loc2_.LevelExtension;
         this.§_-pH§ = false;
         this.§_-Ql§ = _loc2_.scoreSilver;
         this.§_-Rm§ = _loc2_.scoreGold;
         this.§_-hQ§ = _loc2_.scoreEagle;
         this.§_-Of§ = _loc2_.theme;
         this.mName = _loc2_.name;
         if(_loc2_.counts.joints)
         {
            this.§_-IM§ = §_-VU§(_loc2_.counts.joints,_loc2_.world);
         }
         this.§_-0y§ = new Vector.<§_-Bk§>();
         this.mBirds = new Vector.<§_-k§>();
         this.§_-X5§ = new Vector.<§_-Zg§>();
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.camera.length)
         {
            (_loc4_ = new §_-Bk§()).x = _loc2_.camera[_loc3_].x;
            _loc4_.y = _loc2_.camera[_loc3_].y;
            _loc4_.left = _loc2_.camera[_loc3_].left;
            _loc4_.right = _loc2_.camera[_loc3_].right;
            _loc4_.top = _loc2_.camera[_loc3_].top;
            _loc4_.bottom = _loc2_.camera[_loc3_].bottom;
            _loc4_.id = _loc2_.camera[_loc3_].id;
            this.§_-0y§.push(_loc4_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.birds)
         {
            _loc5_ = _loc2_.world["bird_" + _loc3_];
            (_loc6_ = new §_-k§()).x = _loc5_.x;
            _loc6_.y = _loc5_.y;
            _loc6_.id = _loc5_.id;
            this.mBirds.push(_loc6_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.blocks)
         {
            _loc7_ = _loc2_.world["block_" + _loc3_];
            (_loc8_ = new §_-Zg§()).x = _loc7_.x;
            _loc8_.y = _loc7_.y;
            _loc8_.id = _loc7_.id;
            _loc8_.angle = _loc7_.angle;
            this.§_-X5§.push(_loc8_);
            _loc3_++;
         }
         this.§_-Lc§ = _loc2_.slingshotX;
         this.§_-rG§ = _loc2_.slingshotY;
      }
      
      public function §_-n2§() : Object
      {
         var _loc1_:Object = new Object();
         _loc1_.LevelExtension = this.§_-E4§;
         _loc1_.scoreSilver = this.§_-Ql§;
         _loc1_.scoreGold = this.§_-Rm§;
         _loc1_.scoreEagle = this.§_-hQ§;
         _loc1_.theme = this.§_-Of§;
         _loc1_.name = this.mName;
         _loc1_.camera = this.§_-0y§;
         var _loc2_:Number = 0;
         _loc1_.world = new Object();
         _loc2_ = 0;
         while(_loc2_ < this.mBirds.length)
         {
            _loc1_.world["bird_" + (_loc2_ + 1)] = this.mBirds[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§_-X5§.length)
         {
            _loc1_.world["block_" + (_loc2_ + 1)] = this.§_-X5§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§_-IM§.length)
         {
            _loc1_.world["joint_" + (_loc2_ + 1)] = this.§_-IM§[_loc2_];
            _loc2_++;
         }
         _loc1_.counts = new Object();
         _loc1_.counts.blocks = this.§_-X5§.length;
         _loc1_.counts.birds = this.mBirds.length;
         _loc1_.counts.joints = this.§_-IM§.length;
         _loc1_.slingshotX = this.§_-Lc§;
         _loc1_.slingshotY = this.§_-rG§;
         return _loc1_;
      }
      
      public function §_-Tu§() : String
      {
         return JSON.stringify(this.§_-n2§());
      }
      
      public function §_-uM§() : XML
      {
         var _loc2_:§_-Bk§ = null;
         var _loc3_:int = 0;
         var _loc1_:* = "";
         _loc1_ += "<Level background=\"ThemeHills\"";
         _loc1_ += " LevelExtension=\"" + this.§_-E4§ + "\"";
         _loc1_ += " AutoCamera=\"" + this.§_-pH§ + "\"";
         _loc1_ += " scoreSilver=\"" + this.§_-Ql§ + "\"";
         _loc1_ += " scoreGold=\"" + this.§_-Rm§ + "\"";
         _loc1_ += ">";
         _loc1_ += "<Cameras>";
         for each(_loc2_ in this.§_-0y§)
         {
            _loc1_ += " <Camera id=\"" + _loc2_.id + "\" leftBorder=\"" + _loc2_.left + "\" rightBorder=\"" + _loc2_.right + "\" topBorder=\"" + _loc2_.top + "\" bottomBorder=\"" + (_loc2_.top + §_-Hz§.§_-Lb§) + "\"></Camera>";
         }
         _loc1_ += "</Cameras>";
         _loc1_ += "<Slingshot x=\"" + this.mBirds[0].x + "\" y=\"" + (this.mBirds[0].y - 8) + "\">";
         _loc1_ += " <Birds>";
         _loc3_ = 0;
         while(_loc3_ < this.mBirds.length)
         {
            _loc1_ += "  <Bird id=\"" + this.mBirds[_loc3_].id + "\" x=\"" + this.mBirds[_loc3_].x + "\" y=\"" + this.mBirds[_loc3_].y + "\"></Bird>";
            _loc3_++;
         }
         _loc1_ += " </Birds>";
         _loc1_ += "</Slingshot>";
         _loc3_ = 0;
         while(_loc3_ < this.§_-X5§.length)
         {
            _loc1_ += "<Item id=\"" + this.§_-X5§[_loc3_].id + "\" x=\"" + this.§_-X5§[_loc3_].x + "\" y=\"" + this.§_-X5§[_loc3_].y + "\" rotation=\"" + this.§_-X5§[_loc3_].angle + "\" ></Item>";
            _loc3_++;
         }
         _loc1_ += "</Level>";
         return new XML(_loc1_);
      }
   }
}
