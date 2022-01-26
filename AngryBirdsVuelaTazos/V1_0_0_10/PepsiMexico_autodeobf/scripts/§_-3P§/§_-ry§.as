package §_-3P§
{
   import §_-0y§.§_-Y4§;
   import §_-Ij§.*;
   import §_-hT§.§_-4r§;
   import §_-hT§.§_-hH§;
   import §_-hT§.§_-rE§;
   
   public class §_-ry§
   {
       
      
      public var §_-7R§:Number = 0;
      
      public var §_-0Y§:Number = 0;
      
      public var §_-Oe§:Vector.<§_-rE§> = null;
      
      public var mBirds:Vector.<§_-4r§> = null;
      
      public var §_-MM§:Vector.<§_-hH§> = null;
      
      public var §_-wo§:Vector.<§_-Ln§> = null;
      
      public var §_-t7§:Number = 0;
      
      public var §_-FH§:Boolean = false;
      
      public var §_-h2§:Number = 0;
      
      public var §_-JR§:Number = 0;
      
      public var §_-ud§:Number = 0;
      
      public var §_-j3§:String = null;
      
      public var mName:String = null;
      
      public function §_-ry§()
      {
         super();
         this.§_-wo§ = new Vector.<§_-Ln§>();
         this.§_-Oe§ = new Vector.<§_-rE§>();
         this.mBirds = new Vector.<§_-4r§>();
         this.§_-MM§ = new Vector.<§_-hH§>();
      }
      
      public static function §_-nN§(param1:String) : §_-ry§
      {
         var _loc2_:§_-ry§ = new §_-ry§();
         _loc2_.§_-jy§(param1);
         return _loc2_;
      }
      
      public static function §_-Hu§(param1:String) : §_-ry§
      {
         var _loc2_:§_-ry§ = §_-nN§(param1);
         _loc2_.§_-7R§ = _loc2_.mBirds[0].x;
         _loc2_.§_-0Y§ = _loc2_.mBirds[0].y - 8.5;
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.§_-Oe§.length)
         {
            _loc2_.§_-Oe§[_loc3_].angle = 360 - _loc2_.§_-Oe§[_loc3_].angle;
            _loc3_++;
         }
         return _loc2_;
      }
      
      protected static function §_-8V§(param1:int, param2:Object) : Vector.<§_-hH§>
      {
         var _loc5_:Object = null;
         var _loc6_:§_-hH§ = null;
         var _loc3_:Vector.<§_-hH§> = new Vector.<§_-hH§>();
         var _loc4_:int = 1;
         while(_loc4_ <= param1)
         {
            if((_loc5_ = param2["joint_" + _loc4_]) != null)
            {
               (_loc6_ = new §_-hH§(_loc5_.type,_loc5_.index1,_loc5_.index2)).p1.setTo(_loc5_.x1,_loc5_.y1);
               _loc6_.p2.setTo(_loc5_.x2,_loc5_.y2);
               _loc6_.collideConnected = _loc5_.collideConnected;
               if(_loc6_.type == §_-hH§.§_-8y§)
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
      
      public static function §_-FT§(param1:XML) : §_-ry§
      {
         var _loc3_:XML = null;
         var _loc4_:XML = null;
         var _loc5_:XML = null;
         var _loc6_:§_-Ln§ = null;
         var _loc7_:§_-rE§ = null;
         var _loc8_:§_-4r§ = null;
         var _loc2_:§_-ry§ = new §_-ry§();
         _loc2_.§_-t7§ = param1.@LevelExtension;
         _loc2_.§_-FH§ = param1.@AutoCamera.toString().toUpperCase() == "TRUE";
         _loc2_.§_-h2§ = parseInt(param1.@scoreSilver);
         _loc2_.§_-JR§ = parseInt(param1.@scoreGold);
         _loc2_.§_-j3§ = param1.@background;
         _loc2_.§_-7R§ = parseFloat(param1.Slingshot.@x);
         _loc2_.§_-0Y§ = parseFloat(param1.Slingshot.@y);
         _loc2_.§_-wo§ = new Vector.<§_-Ln§>();
         _loc2_.mBirds = new Vector.<§_-4r§>();
         _loc2_.§_-Oe§ = new Vector.<§_-rE§>();
         for each(_loc3_ in param1.Cameras.Camera)
         {
            (_loc6_ = new §_-Ln§()).x = parseFloat(_loc3_.@x);
            _loc6_.y = parseFloat(_loc3_.@y) - 50;
            _loc6_.left = parseFloat(_loc3_.@leftBorder);
            _loc6_.right = parseFloat(_loc3_.@rightBorder);
            _loc6_.top = parseFloat(_loc3_.@topBorder);
            _loc6_.bottom = parseFloat(_loc3_.@bottomBorder);
            _loc6_.scale = parseFloat(_loc3_.@scale);
            _loc6_.id = _loc3_.@id.toString();
            _loc2_.§_-wo§.push(_loc6_);
         }
         for each(_loc4_ in param1.Item)
         {
            (_loc7_ = new §_-rE§()).id = _loc4_.@id.toString();
            _loc7_.x = parseFloat(_loc4_.@x);
            _loc7_.y = parseFloat(_loc4_.@y) - 50;
            _loc7_.angle = parseFloat(_loc4_.@rotation);
            _loc2_.§_-Oe§.push(_loc7_);
         }
         for each(_loc5_ in param1.Slingshot.Birds.Bird)
         {
            (_loc8_ = new §_-4r§()).id = _loc5_.@id.toString();
            _loc8_.x = parseFloat(_loc5_.@x);
            _loc8_.y = parseFloat(_loc5_.@y) - 50;
            _loc2_.mBirds.push(_loc8_);
         }
         return _loc2_;
      }
      
      public function §_-jy§(param1:String) : void
      {
         var _loc4_:§_-Ln§ = null;
         var _loc5_:Object = null;
         var _loc6_:§_-4r§ = null;
         var _loc7_:Object = null;
         var _loc8_:§_-rE§ = null;
         var _loc2_:Object = JSON.parse(param1);
         this.§_-t7§ = _loc2_.LevelExtension;
         this.§_-FH§ = false;
         this.§_-h2§ = _loc2_.scoreSilver;
         this.§_-JR§ = _loc2_.scoreGold;
         this.§_-ud§ = _loc2_.scoreEagle;
         this.§_-j3§ = _loc2_.theme;
         this.mName = _loc2_.name;
         if(_loc2_.counts.joints)
         {
            this.§_-MM§ = §_-8V§(_loc2_.counts.joints,_loc2_.world);
         }
         this.§_-wo§ = new Vector.<§_-Ln§>();
         this.mBirds = new Vector.<§_-4r§>();
         this.§_-Oe§ = new Vector.<§_-rE§>();
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.camera.length)
         {
            (_loc4_ = new §_-Ln§()).x = _loc2_.camera[_loc3_].x;
            _loc4_.y = _loc2_.camera[_loc3_].y;
            _loc4_.left = _loc2_.camera[_loc3_].left;
            _loc4_.right = _loc2_.camera[_loc3_].right;
            _loc4_.top = _loc2_.camera[_loc3_].top;
            _loc4_.bottom = _loc2_.camera[_loc3_].bottom;
            _loc4_.id = _loc2_.camera[_loc3_].id;
            this.§_-wo§.push(_loc4_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.birds)
         {
            _loc5_ = _loc2_.world["bird_" + _loc3_];
            (_loc6_ = new §_-4r§()).x = _loc5_.x;
            _loc6_.y = _loc5_.y;
            _loc6_.id = _loc5_.id;
            this.mBirds.push(_loc6_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.blocks)
         {
            _loc7_ = _loc2_.world["block_" + _loc3_];
            (_loc8_ = new §_-rE§()).x = _loc7_.x;
            _loc8_.y = _loc7_.y;
            _loc8_.id = _loc7_.id;
            _loc8_.angle = _loc7_.angle;
            this.§_-Oe§.push(_loc8_);
            _loc3_++;
         }
         this.§_-7R§ = _loc2_.slingshotX;
         this.§_-0Y§ = _loc2_.slingshotY;
      }
      
      public function §_-CW§() : Object
      {
         var _loc1_:Object = new Object();
         _loc1_.LevelExtension = this.§_-t7§;
         _loc1_.scoreSilver = this.§_-h2§;
         _loc1_.scoreGold = this.§_-JR§;
         _loc1_.scoreEagle = this.§_-ud§;
         _loc1_.theme = this.§_-j3§;
         _loc1_.name = this.mName;
         _loc1_.camera = this.§_-wo§;
         var _loc2_:Number = 0;
         _loc1_.world = new Object();
         _loc2_ = 0;
         while(_loc2_ < this.mBirds.length)
         {
            _loc1_.world["bird_" + (_loc2_ + 1)] = this.mBirds[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§_-Oe§.length)
         {
            _loc1_.world["block_" + (_loc2_ + 1)] = this.§_-Oe§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§_-MM§.length)
         {
            _loc1_.world["joint_" + (_loc2_ + 1)] = this.§_-MM§[_loc2_];
            _loc2_++;
         }
         _loc1_.counts = new Object();
         _loc1_.counts.blocks = this.§_-Oe§.length;
         _loc1_.counts.birds = this.mBirds.length;
         _loc1_.counts.joints = this.§_-MM§.length;
         _loc1_.slingshotX = this.§_-7R§;
         _loc1_.slingshotY = this.§_-0Y§;
         return _loc1_;
      }
      
      public function §_-Bo§() : String
      {
         return JSON.stringify(this.§_-CW§());
      }
      
      public function §_-ez§() : XML
      {
         var _loc2_:§_-Ln§ = null;
         var _loc3_:int = 0;
         var _loc1_:* = "";
         _loc1_ += "<Level background=\"ThemeHills\"";
         _loc1_ += " LevelExtension=\"" + this.§_-t7§ + "\"";
         _loc1_ += " AutoCamera=\"" + this.§_-FH§ + "\"";
         _loc1_ += " scoreSilver=\"" + this.§_-h2§ + "\"";
         _loc1_ += " scoreGold=\"" + this.§_-JR§ + "\"";
         _loc1_ += ">";
         _loc1_ += "<Cameras>";
         for each(_loc2_ in this.§_-wo§)
         {
            _loc1_ += " <Camera id=\"" + _loc2_.id + "\" leftBorder=\"" + _loc2_.left + "\" rightBorder=\"" + _loc2_.right + "\" topBorder=\"" + _loc2_.top + "\" bottomBorder=\"" + (_loc2_.top + §_-Y4§.§_-nq§) + "\"></Camera>";
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
         while(_loc3_ < this.§_-Oe§.length)
         {
            _loc1_ += "<Item id=\"" + this.§_-Oe§[_loc3_].id + "\" x=\"" + this.§_-Oe§[_loc3_].x + "\" y=\"" + this.§_-Oe§[_loc3_].y + "\" rotation=\"" + this.§_-Oe§[_loc3_].angle + "\" ></Item>";
            _loc3_++;
         }
         _loc1_ += "</Level>";
         return new XML(_loc1_);
      }
   }
}
