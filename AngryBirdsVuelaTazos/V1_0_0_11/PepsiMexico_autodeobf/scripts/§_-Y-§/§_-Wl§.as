package §_-Y-§
{
   import §_-ez§.§_-8g§;
   import §_-nU§.*;
   import §_-th§.§_-EX§;
   import §_-th§.§_-SE§;
   import §_-th§.§_-WF§;
   
   public class §_-Wl§
   {
       
      
      public var §_-KK§:Number = 0;
      
      public var §_-Ya§:Number = 0;
      
      public var §_-rp§:Vector.<§_-WF§> = null;
      
      public var mBirds:Vector.<§_-EX§> = null;
      
      public var §_-8e§:Vector.<§_-SE§> = null;
      
      public var §_-Jc§:Vector.<§_-ZB§> = null;
      
      public var §_-Rw§:Number = 0;
      
      public var §_-Mh§:Boolean = false;
      
      public var §_-JZ§:Number = 0;
      
      public var §_-5l§:Number = 0;
      
      public var §_-VU§:Number = 0;
      
      public var §_-W8§:String = null;
      
      public var mName:String = null;
      
      public function §_-Wl§()
      {
         super();
         this.§_-Jc§ = new Vector.<§_-ZB§>();
         this.§_-rp§ = new Vector.<§_-WF§>();
         this.mBirds = new Vector.<§_-EX§>();
         this.§_-8e§ = new Vector.<§_-SE§>();
      }
      
      public static function §_-Se§(param1:String) : §_-Wl§
      {
         var _loc2_:§_-Wl§ = new §_-Wl§();
         _loc2_.§_-aX§(param1);
         return _loc2_;
      }
      
      public static function §_-J§(param1:String) : §_-Wl§
      {
         var _loc2_:§_-Wl§ = §_-Se§(param1);
         _loc2_.§_-KK§ = _loc2_.mBirds[0].x;
         _loc2_.§_-Ya§ = _loc2_.mBirds[0].y - 8.5;
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.§_-rp§.length)
         {
            _loc2_.§_-rp§[_loc3_].angle = 360 - _loc2_.§_-rp§[_loc3_].angle;
            _loc3_++;
         }
         return _loc2_;
      }
      
      protected static function §_-hq§(param1:int, param2:Object) : Vector.<§_-SE§>
      {
         var _loc5_:Object = null;
         var _loc6_:§_-SE§ = null;
         var _loc3_:Vector.<§_-SE§> = new Vector.<§_-SE§>();
         var _loc4_:int = 1;
         while(_loc4_ <= param1)
         {
            if((_loc5_ = param2["joint_" + _loc4_]) != null)
            {
               (_loc6_ = new §_-SE§(_loc5_.type,_loc5_.index1,_loc5_.index2)).p1.setTo(_loc5_.x1,_loc5_.y1);
               _loc6_.p2.setTo(_loc5_.x2,_loc5_.y2);
               _loc6_.collideConnected = _loc5_.collideConnected;
               if(_loc6_.type == §_-SE§.§_-F8§)
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
      
      public static function §_-gZ§(param1:XML) : §_-Wl§
      {
         var _loc3_:XML = null;
         var _loc4_:XML = null;
         var _loc5_:XML = null;
         var _loc6_:§_-ZB§ = null;
         var _loc7_:§_-WF§ = null;
         var _loc8_:§_-EX§ = null;
         var _loc2_:§_-Wl§ = new §_-Wl§();
         _loc2_.§_-Rw§ = param1.@LevelExtension;
         _loc2_.§_-Mh§ = param1.@AutoCamera.toString().toUpperCase() == "TRUE";
         _loc2_.§_-JZ§ = parseInt(param1.@scoreSilver);
         _loc2_.§_-5l§ = parseInt(param1.@scoreGold);
         _loc2_.§_-W8§ = param1.@background;
         _loc2_.§_-KK§ = parseFloat(param1.Slingshot.@x);
         _loc2_.§_-Ya§ = parseFloat(param1.Slingshot.@y);
         _loc2_.§_-Jc§ = new Vector.<§_-ZB§>();
         _loc2_.mBirds = new Vector.<§_-EX§>();
         _loc2_.§_-rp§ = new Vector.<§_-WF§>();
         for each(_loc3_ in param1.Cameras.Camera)
         {
            (_loc6_ = new §_-ZB§()).x = parseFloat(_loc3_.@x);
            _loc6_.y = parseFloat(_loc3_.@y) - 50;
            _loc6_.left = parseFloat(_loc3_.@leftBorder);
            _loc6_.right = parseFloat(_loc3_.@rightBorder);
            _loc6_.top = parseFloat(_loc3_.@topBorder);
            _loc6_.bottom = parseFloat(_loc3_.@bottomBorder);
            _loc6_.scale = parseFloat(_loc3_.@scale);
            _loc6_.id = _loc3_.@id.toString();
            _loc2_.§_-Jc§.push(_loc6_);
         }
         for each(_loc4_ in param1.Item)
         {
            (_loc7_ = new §_-WF§()).id = _loc4_.@id.toString();
            _loc7_.x = parseFloat(_loc4_.@x);
            _loc7_.y = parseFloat(_loc4_.@y) - 50;
            _loc7_.angle = parseFloat(_loc4_.@rotation);
            _loc2_.§_-rp§.push(_loc7_);
         }
         for each(_loc5_ in param1.Slingshot.Birds.Bird)
         {
            (_loc8_ = new §_-EX§()).id = _loc5_.@id.toString();
            _loc8_.x = parseFloat(_loc5_.@x);
            _loc8_.y = parseFloat(_loc5_.@y) - 50;
            _loc2_.mBirds.push(_loc8_);
         }
         return _loc2_;
      }
      
      public function §_-aX§(param1:String) : void
      {
         var _loc4_:§_-ZB§ = null;
         var _loc5_:Object = null;
         var _loc6_:§_-EX§ = null;
         var _loc7_:Object = null;
         var _loc8_:§_-WF§ = null;
         var _loc2_:Object = JSON.parse(param1);
         this.§_-Rw§ = _loc2_.LevelExtension;
         this.§_-Mh§ = false;
         this.§_-JZ§ = _loc2_.scoreSilver;
         this.§_-5l§ = _loc2_.scoreGold;
         this.§_-VU§ = _loc2_.scoreEagle;
         this.§_-W8§ = _loc2_.theme;
         this.mName = _loc2_.name;
         if(_loc2_.counts.joints)
         {
            this.§_-8e§ = §_-hq§(_loc2_.counts.joints,_loc2_.world);
         }
         this.§_-Jc§ = new Vector.<§_-ZB§>();
         this.mBirds = new Vector.<§_-EX§>();
         this.§_-rp§ = new Vector.<§_-WF§>();
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.camera.length)
         {
            (_loc4_ = new §_-ZB§()).x = _loc2_.camera[_loc3_].x;
            _loc4_.y = _loc2_.camera[_loc3_].y;
            _loc4_.left = _loc2_.camera[_loc3_].left;
            _loc4_.right = _loc2_.camera[_loc3_].right;
            _loc4_.top = _loc2_.camera[_loc3_].top;
            _loc4_.bottom = _loc2_.camera[_loc3_].bottom;
            _loc4_.id = _loc2_.camera[_loc3_].id;
            this.§_-Jc§.push(_loc4_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.birds)
         {
            _loc5_ = _loc2_.world["bird_" + _loc3_];
            (_loc6_ = new §_-EX§()).x = _loc5_.x;
            _loc6_.y = _loc5_.y;
            _loc6_.id = _loc5_.id;
            this.mBirds.push(_loc6_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.blocks)
         {
            _loc7_ = _loc2_.world["block_" + _loc3_];
            (_loc8_ = new §_-WF§()).x = _loc7_.x;
            _loc8_.y = _loc7_.y;
            _loc8_.id = _loc7_.id;
            _loc8_.angle = _loc7_.angle;
            this.§_-rp§.push(_loc8_);
            _loc3_++;
         }
         this.§_-KK§ = _loc2_.slingshotX;
         this.§_-Ya§ = _loc2_.slingshotY;
      }
      
      public function §_-8P§() : Object
      {
         var _loc1_:Object = new Object();
         _loc1_.LevelExtension = this.§_-Rw§;
         _loc1_.scoreSilver = this.§_-JZ§;
         _loc1_.scoreGold = this.§_-5l§;
         _loc1_.scoreEagle = this.§_-VU§;
         _loc1_.theme = this.§_-W8§;
         _loc1_.name = this.mName;
         _loc1_.camera = this.§_-Jc§;
         var _loc2_:Number = 0;
         _loc1_.world = new Object();
         _loc2_ = 0;
         while(_loc2_ < this.mBirds.length)
         {
            _loc1_.world["bird_" + (_loc2_ + 1)] = this.mBirds[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§_-rp§.length)
         {
            _loc1_.world["block_" + (_loc2_ + 1)] = this.§_-rp§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§_-8e§.length)
         {
            _loc1_.world["joint_" + (_loc2_ + 1)] = this.§_-8e§[_loc2_];
            _loc2_++;
         }
         _loc1_.counts = new Object();
         _loc1_.counts.blocks = this.§_-rp§.length;
         _loc1_.counts.birds = this.mBirds.length;
         _loc1_.counts.joints = this.§_-8e§.length;
         _loc1_.slingshotX = this.§_-KK§;
         _loc1_.slingshotY = this.§_-Ya§;
         return _loc1_;
      }
      
      public function §_-Nm§() : String
      {
         return JSON.stringify(this.§_-8P§());
      }
      
      public function §_-54§() : XML
      {
         var _loc2_:§_-ZB§ = null;
         var _loc3_:int = 0;
         var _loc1_:* = "";
         _loc1_ += "<Level background=\"ThemeHills\"";
         _loc1_ += " LevelExtension=\"" + this.§_-Rw§ + "\"";
         _loc1_ += " AutoCamera=\"" + this.§_-Mh§ + "\"";
         _loc1_ += " scoreSilver=\"" + this.§_-JZ§ + "\"";
         _loc1_ += " scoreGold=\"" + this.§_-5l§ + "\"";
         _loc1_ += ">";
         _loc1_ += "<Cameras>";
         for each(_loc2_ in this.§_-Jc§)
         {
            _loc1_ += " <Camera id=\"" + _loc2_.id + "\" leftBorder=\"" + _loc2_.left + "\" rightBorder=\"" + _loc2_.right + "\" topBorder=\"" + _loc2_.top + "\" bottomBorder=\"" + (_loc2_.top + §_-8g§.§_-pu§) + "\"></Camera>";
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
         while(_loc3_ < this.§_-rp§.length)
         {
            _loc1_ += "<Item id=\"" + this.§_-rp§[_loc3_].id + "\" x=\"" + this.§_-rp§[_loc3_].x + "\" y=\"" + this.§_-rp§[_loc3_].y + "\" rotation=\"" + this.§_-rp§[_loc3_].angle + "\" ></Item>";
            _loc3_++;
         }
         _loc1_ += "</Level>";
         return new XML(_loc1_);
      }
   }
}
