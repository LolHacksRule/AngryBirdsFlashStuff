package §_-uh§
{
   import §_-2z§.§_-rz§;
   import §_-5Y§.§_-vn§;
   import §_-BQ§.§_-dO§;
   import §_-BQ§.§_-eU§;
   import §_-BQ§.§_-hm§;
   import §_-Y2§.*;
   
   public class §_-US§
   {
       
      
      public var §_-yG§:Number = 0;
      
      public var §_-Wq§:Number = 0;
      
      public var §_-pf§:Vector.<§_-dO§> = null;
      
      public var §_-zl§:Vector.<§_-eU§> = null;
      
      public var §_-cv§:Vector.<§_-hm§> = null;
      
      public var §_-Ha§:Vector.<§_-YW§> = null;
      
      public var §_-kR§:Number = 0;
      
      public var §_-PI§:Boolean = false;
      
      public var §_-Ti§:Number = 0;
      
      public var §_-Fj§:Number = 0;
      
      public var §_-mq§:Number = 0;
      
      public var §_-TB§:String = null;
      
      public var mName:String = null;
      
      public function §_-US§()
      {
         super();
         this.§_-Ha§ = new Vector.<§_-YW§>();
         this.§_-pf§ = new Vector.<§_-dO§>();
         this.§_-zl§ = new Vector.<§_-eU§>();
         this.§_-cv§ = new Vector.<§_-hm§>();
      }
      
      public static function §_-q9§(param1:String) : §_-US§
      {
         var _loc2_:§_-US§ = new §_-US§();
         _loc2_.§_-iB§(param1);
         return _loc2_;
      }
      
      public static function §_-Oi§(param1:String) : §_-US§
      {
         var _loc2_:§_-US§ = §_-q9§(param1);
         _loc2_.§_-yG§ = _loc2_.§_-zl§[0].x;
         _loc2_.§_-Wq§ = _loc2_.§_-zl§[0].y - 8.5;
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.§_-pf§.length)
         {
            _loc2_.§_-pf§[_loc3_].angle = 360 - _loc2_.§_-pf§[_loc3_].angle;
            _loc3_++;
         }
         return _loc2_;
      }
      
      protected static function §_-8D§(param1:int, param2:Object) : Vector.<§_-hm§>
      {
         var _loc5_:Object = null;
         var _loc6_:§_-hm§ = null;
         var _loc3_:Vector.<§_-hm§> = new Vector.<§_-hm§>();
         var _loc4_:int = 1;
         while(_loc4_ <= param1)
         {
            if((_loc5_ = param2["joint_" + _loc4_]) != null)
            {
               (_loc6_ = new §_-hm§(_loc5_.type,_loc5_.index1,_loc5_.index2)).p1.setTo(_loc5_.x1,_loc5_.y1);
               _loc6_.p2.setTo(_loc5_.x2,_loc5_.y2);
               _loc6_.collideConnected = _loc5_.collideConnected;
               if(_loc6_.type == §_-hm§.§_-GL§)
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
      
      public static function §_-Xz§(param1:XML) : §_-US§
      {
         var _loc3_:XML = null;
         var _loc4_:XML = null;
         var _loc5_:XML = null;
         var _loc6_:§_-YW§ = null;
         var _loc7_:§_-dO§ = null;
         var _loc8_:§_-eU§ = null;
         var _loc2_:§_-US§ = new §_-US§();
         _loc2_.§_-kR§ = param1.@LevelExtension;
         _loc2_.§_-PI§ = param1.@AutoCamera.toString().toUpperCase() == "TRUE";
         _loc2_.§_-Ti§ = parseInt(param1.@scoreSilver);
         _loc2_.§_-Fj§ = parseInt(param1.@scoreGold);
         _loc2_.§_-TB§ = param1.@background;
         _loc2_.§_-yG§ = parseFloat(param1.Slingshot.@x);
         _loc2_.§_-Wq§ = parseFloat(param1.Slingshot.@y);
         _loc2_.§_-Ha§ = new Vector.<§_-YW§>();
         _loc2_.§_-zl§ = new Vector.<§_-eU§>();
         _loc2_.§_-pf§ = new Vector.<§_-dO§>();
         for each(_loc3_ in param1.Cameras.Camera)
         {
            (_loc6_ = new §_-YW§()).x = parseFloat(_loc3_.@x);
            _loc6_.y = parseFloat(_loc3_.@y) - 50;
            _loc6_.left = parseFloat(_loc3_.@leftBorder);
            _loc6_.right = parseFloat(_loc3_.@rightBorder);
            _loc6_.top = parseFloat(_loc3_.@topBorder);
            _loc6_.bottom = parseFloat(_loc3_.@bottomBorder);
            _loc6_.scale = parseFloat(_loc3_.@scale);
            _loc6_.id = _loc3_.@id.toString();
            _loc2_.§_-Ha§.push(_loc6_);
         }
         for each(_loc4_ in param1.Item)
         {
            (_loc7_ = new §_-dO§()).id = _loc4_.@id.toString();
            _loc7_.x = parseFloat(_loc4_.@x);
            _loc7_.y = parseFloat(_loc4_.@y) - 50;
            _loc7_.angle = parseFloat(_loc4_.@rotation);
            _loc2_.§_-pf§.push(_loc7_);
         }
         for each(_loc5_ in param1.Slingshot.Birds.Bird)
         {
            (_loc8_ = new §_-eU§()).id = _loc5_.@id.toString();
            _loc8_.x = parseFloat(_loc5_.@x);
            _loc8_.y = parseFloat(_loc5_.@y) - 50;
            _loc2_.§_-zl§.push(_loc8_);
         }
         return _loc2_;
      }
      
      public function §_-iB§(param1:String) : void
      {
         var _loc4_:§_-YW§ = null;
         var _loc5_:Object = null;
         var _loc6_:§_-eU§ = null;
         var _loc7_:Object = null;
         var _loc8_:§_-dO§ = null;
         var _loc2_:Object = §_-rz§.§_-EM§(param1);
         this.§_-kR§ = _loc2_.LevelExtension;
         this.§_-PI§ = false;
         this.§_-Ti§ = _loc2_.scoreSilver;
         this.§_-Fj§ = _loc2_.scoreGold;
         this.§_-mq§ = _loc2_.scoreEagle;
         this.§_-TB§ = _loc2_.theme;
         this.mName = _loc2_.name;
         if(_loc2_.counts.joints)
         {
            this.§_-cv§ = §_-8D§(_loc2_.counts.joints,_loc2_.world);
         }
         this.§_-Ha§ = new Vector.<§_-YW§>();
         this.§_-zl§ = new Vector.<§_-eU§>();
         this.§_-pf§ = new Vector.<§_-dO§>();
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.camera.length)
         {
            (_loc4_ = new §_-YW§()).x = _loc2_.camera[_loc3_].x;
            _loc4_.y = _loc2_.camera[_loc3_].y;
            _loc4_.left = _loc2_.camera[_loc3_].left;
            _loc4_.right = _loc2_.camera[_loc3_].right;
            _loc4_.top = _loc2_.camera[_loc3_].top;
            _loc4_.bottom = _loc2_.camera[_loc3_].bottom;
            _loc4_.id = _loc2_.camera[_loc3_].id;
            this.§_-Ha§.push(_loc4_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.birds)
         {
            _loc5_ = _loc2_.world["bird_" + _loc3_];
            (_loc6_ = new §_-eU§()).x = _loc5_.x;
            _loc6_.y = _loc5_.y;
            _loc6_.id = _loc5_.id;
            this.§_-zl§.push(_loc6_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.blocks)
         {
            _loc7_ = _loc2_.world["block_" + _loc3_];
            (_loc8_ = new §_-dO§()).x = _loc7_.x;
            _loc8_.y = _loc7_.y;
            _loc8_.id = _loc7_.id;
            _loc8_.angle = _loc7_.angle;
            this.§_-pf§.push(_loc8_);
            _loc3_++;
         }
         this.§_-yG§ = _loc2_.slingshotX;
         this.§_-Wq§ = _loc2_.slingshotY;
      }
      
      public function §_-cx§() : Object
      {
         var _loc1_:Object = new Object();
         _loc1_.LevelExtension = this.§_-kR§;
         _loc1_.scoreSilver = this.§_-Ti§;
         _loc1_.scoreGold = this.§_-Fj§;
         _loc1_.scoreEagle = this.§_-mq§;
         _loc1_.theme = this.§_-TB§;
         _loc1_.name = this.mName;
         _loc1_.camera = this.§_-Ha§;
         var _loc2_:Number = 0;
         _loc1_.world = new Object();
         _loc2_ = 0;
         while(_loc2_ < this.§_-zl§.length)
         {
            _loc1_.world["bird_" + (_loc2_ + 1)] = this.§_-zl§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§_-pf§.length)
         {
            _loc1_.world["block_" + (_loc2_ + 1)] = this.§_-pf§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§_-cv§.length)
         {
            _loc1_.world["joint_" + (_loc2_ + 1)] = this.§_-cv§[_loc2_];
            _loc2_++;
         }
         _loc1_.counts = new Object();
         _loc1_.counts.blocks = this.§_-pf§.length;
         _loc1_.counts.birds = this.§_-zl§.length;
         _loc1_.counts.joints = this.§_-cv§.length;
         _loc1_.slingshotX = this.§_-yG§;
         _loc1_.slingshotY = this.§_-Wq§;
         return _loc1_;
      }
      
      public function §_-3§() : String
      {
         return §_-rz§.encode(this.§_-cx§());
      }
      
      public function §_-tT§() : XML
      {
         var _loc2_:§_-YW§ = null;
         var _loc3_:int = 0;
         var _loc1_:* = "";
         _loc1_ += "<Level background=\"ThemeHills\"";
         _loc1_ += " LevelExtension=\"" + this.§_-kR§ + "\"";
         _loc1_ += " AutoCamera=\"" + this.§_-PI§ + "\"";
         _loc1_ += " scoreSilver=\"" + this.§_-Ti§ + "\"";
         _loc1_ += " scoreGold=\"" + this.§_-Fj§ + "\"";
         _loc1_ += ">";
         _loc1_ += "<Cameras>";
         for each(_loc2_ in this.§_-Ha§)
         {
            _loc1_ += " <Camera id=\"" + _loc2_.id + "\" leftBorder=\"" + _loc2_.left + "\" rightBorder=\"" + _loc2_.right + "\" topBorder=\"" + _loc2_.top + "\" bottomBorder=\"" + (_loc2_.top + §_-vn§.§_-1F§) + "\"></Camera>";
         }
         _loc1_ += "</Cameras>";
         _loc1_ += "<Slingshot x=\"" + this.§_-zl§[0].x + "\" y=\"" + (this.§_-zl§[0].y - 8) + "\">";
         _loc1_ += " <Birds>";
         _loc3_ = 0;
         while(_loc3_ < this.§_-zl§.length)
         {
            _loc1_ += "  <Bird id=\"" + this.§_-zl§[_loc3_].id + "\" x=\"" + this.§_-zl§[_loc3_].x + "\" y=\"" + this.§_-zl§[_loc3_].y + "\"></Bird>";
            _loc3_++;
         }
         _loc1_ += " </Birds>";
         _loc1_ += "</Slingshot>";
         _loc3_ = 0;
         while(_loc3_ < this.§_-pf§.length)
         {
            _loc1_ += "<Item id=\"" + this.§_-pf§[_loc3_].id + "\" x=\"" + this.§_-pf§[_loc3_].x + "\" y=\"" + this.§_-pf§[_loc3_].y + "\" rotation=\"" + this.§_-pf§[_loc3_].angle + "\" ></Item>";
            _loc3_++;
         }
         _loc1_ += "</Level>";
         return new XML(_loc1_);
      }
   }
}
