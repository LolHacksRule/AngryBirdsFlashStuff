package §_-PS§
{
   import §_-0§.*;
   import §_-FQ§.§_-if§;
   import §_-Jm§.§_-5c§;
   import §_-Jm§.§_-GP§;
   import §_-Jm§.§_-o3§;
   
   public class §_-sq§
   {
       
      
      public var §_-CF§:Number = 0;
      
      public var §_-fm§:Number = 0;
      
      public var §_-7u§:Vector.<§_-GP§> = null;
      
      public var §_-KC§:Vector.<§_-o3§> = null;
      
      public var §_-q9§:Vector.<§_-5c§> = null;
      
      public var §_-PR§:Vector.<§_-zG§> = null;
      
      public var §_-QD§:Number = 0;
      
      public var §_-Bi§:Boolean = false;
      
      public var §_-4l§:Number = 0;
      
      public var §_-N2§:Number = 0;
      
      public var §_-e6§:Number = 0;
      
      public var §_-r1§:String = null;
      
      public var mName:String = null;
      
      public function §_-sq§()
      {
         super();
         this.§_-PR§ = new Vector.<§_-zG§>();
         this.§_-7u§ = new Vector.<§_-GP§>();
         this.§_-KC§ = new Vector.<§_-o3§>();
         this.§_-q9§ = new Vector.<§_-5c§>();
      }
      
      public static function §_-xD§(param1:String) : §_-sq§
      {
         var _loc2_:§_-sq§ = new §_-sq§();
         _loc2_.§_-xy§(param1);
         return _loc2_;
      }
      
      public static function §_-tp§(param1:String) : §_-sq§
      {
         var _loc2_:§_-sq§ = §_-xD§(param1);
         _loc2_.§_-CF§ = _loc2_.§_-KC§[0].x;
         _loc2_.§_-fm§ = _loc2_.§_-KC§[0].y - 8.5;
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.§_-7u§.length)
         {
            _loc2_.§_-7u§[_loc3_].angle = 360 - _loc2_.§_-7u§[_loc3_].angle;
            _loc3_++;
         }
         return _loc2_;
      }
      
      protected static function §_-H6§(param1:int, param2:Object) : Vector.<§_-5c§>
      {
         var _loc5_:Object = null;
         var _loc6_:§_-5c§ = null;
         var _loc3_:Vector.<§_-5c§> = new Vector.<§_-5c§>();
         var _loc4_:int = 1;
         while(_loc4_ <= param1)
         {
            if((_loc5_ = param2["joint_" + _loc4_]) != null)
            {
               (_loc6_ = new §_-5c§(_loc5_.type,_loc5_.index1,_loc5_.index2)).p1.setTo(_loc5_.x1,_loc5_.y1);
               _loc6_.p2.setTo(_loc5_.x2,_loc5_.y2);
               _loc6_.collideConnected = _loc5_.collideConnected;
               if(_loc6_.type == §_-5c§.§_-4O§)
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
      
      public static function §_-5§(param1:XML) : §_-sq§
      {
         var _loc3_:XML = null;
         var _loc4_:XML = null;
         var _loc5_:XML = null;
         var _loc6_:§_-zG§ = null;
         var _loc7_:§_-GP§ = null;
         var _loc8_:§_-o3§ = null;
         var _loc2_:§_-sq§ = new §_-sq§();
         _loc2_.§_-QD§ = param1.@LevelExtension;
         _loc2_.§_-Bi§ = param1.@AutoCamera.toString().toUpperCase() == "TRUE";
         _loc2_.§_-4l§ = parseInt(param1.@scoreSilver);
         _loc2_.§_-N2§ = parseInt(param1.@scoreGold);
         _loc2_.§_-r1§ = param1.@background;
         _loc2_.§_-CF§ = parseFloat(param1.Slingshot.@x);
         _loc2_.§_-fm§ = parseFloat(param1.Slingshot.@y);
         _loc2_.§_-PR§ = new Vector.<§_-zG§>();
         _loc2_.§_-KC§ = new Vector.<§_-o3§>();
         _loc2_.§_-7u§ = new Vector.<§_-GP§>();
         for each(_loc3_ in param1.Cameras.Camera)
         {
            (_loc6_ = new §_-zG§()).x = parseFloat(_loc3_.@x);
            _loc6_.y = parseFloat(_loc3_.@y) - 50;
            _loc6_.left = parseFloat(_loc3_.@leftBorder);
            _loc6_.right = parseFloat(_loc3_.@rightBorder);
            _loc6_.top = parseFloat(_loc3_.@topBorder);
            _loc6_.bottom = parseFloat(_loc3_.@bottomBorder);
            _loc6_.scale = parseFloat(_loc3_.@scale);
            _loc6_.id = _loc3_.@id.toString();
            _loc2_.§_-PR§.push(_loc6_);
         }
         for each(_loc4_ in param1.Item)
         {
            (_loc7_ = new §_-GP§()).id = _loc4_.@id.toString();
            _loc7_.x = parseFloat(_loc4_.@x);
            _loc7_.y = parseFloat(_loc4_.@y) - 50;
            _loc7_.angle = parseFloat(_loc4_.@rotation);
            _loc2_.§_-7u§.push(_loc7_);
         }
         for each(_loc5_ in param1.Slingshot.Birds.Bird)
         {
            (_loc8_ = new §_-o3§()).id = _loc5_.@id.toString();
            _loc8_.x = parseFloat(_loc5_.@x);
            _loc8_.y = parseFloat(_loc5_.@y) - 50;
            _loc2_.§_-KC§.push(_loc8_);
         }
         return _loc2_;
      }
      
      public function §_-xy§(param1:String) : void
      {
         var _loc4_:§_-zG§ = null;
         var _loc5_:Object = null;
         var _loc6_:§_-o3§ = null;
         var _loc7_:Object = null;
         var _loc8_:§_-GP§ = null;
         var _loc2_:Object = JSON.parse(param1);
         this.§_-QD§ = _loc2_.LevelExtension;
         this.§_-Bi§ = false;
         this.§_-4l§ = _loc2_.scoreSilver;
         this.§_-N2§ = _loc2_.scoreGold;
         this.§_-e6§ = _loc2_.scoreEagle;
         this.§_-r1§ = _loc2_.theme;
         this.mName = _loc2_.name;
         if(_loc2_.counts.joints)
         {
            this.§_-q9§ = §_-H6§(_loc2_.counts.joints,_loc2_.world);
         }
         this.§_-PR§ = new Vector.<§_-zG§>();
         this.§_-KC§ = new Vector.<§_-o3§>();
         this.§_-7u§ = new Vector.<§_-GP§>();
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.camera.length)
         {
            (_loc4_ = new §_-zG§()).x = _loc2_.camera[_loc3_].x;
            _loc4_.y = _loc2_.camera[_loc3_].y;
            _loc4_.left = _loc2_.camera[_loc3_].left;
            _loc4_.right = _loc2_.camera[_loc3_].right;
            _loc4_.top = _loc2_.camera[_loc3_].top;
            _loc4_.bottom = _loc2_.camera[_loc3_].bottom;
            _loc4_.id = _loc2_.camera[_loc3_].id;
            this.§_-PR§.push(_loc4_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.birds)
         {
            _loc5_ = _loc2_.world["bird_" + _loc3_];
            (_loc6_ = new §_-o3§()).x = _loc5_.x;
            _loc6_.y = _loc5_.y;
            _loc6_.id = _loc5_.id;
            this.§_-KC§.push(_loc6_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.blocks)
         {
            _loc7_ = _loc2_.world["block_" + _loc3_];
            (_loc8_ = new §_-GP§()).x = _loc7_.x;
            _loc8_.y = _loc7_.y;
            _loc8_.id = _loc7_.id;
            _loc8_.angle = _loc7_.angle;
            this.§_-7u§.push(_loc8_);
            _loc3_++;
         }
         this.§_-CF§ = _loc2_.slingshotX;
         this.§_-fm§ = _loc2_.slingshotY;
      }
      
      public function §_-aF§() : Object
      {
         var _loc1_:Object = new Object();
         _loc1_.LevelExtension = this.§_-QD§;
         _loc1_.scoreSilver = this.§_-4l§;
         _loc1_.scoreGold = this.§_-N2§;
         _loc1_.scoreEagle = this.§_-e6§;
         _loc1_.theme = this.§_-r1§;
         _loc1_.name = this.mName;
         _loc1_.camera = this.§_-PR§;
         var _loc2_:Number = 0;
         _loc1_.world = new Object();
         _loc2_ = 0;
         while(_loc2_ < this.§_-KC§.length)
         {
            _loc1_.world["bird_" + (_loc2_ + 1)] = this.§_-KC§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§_-7u§.length)
         {
            _loc1_.world["block_" + (_loc2_ + 1)] = this.§_-7u§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§_-q9§.length)
         {
            _loc1_.world["joint_" + (_loc2_ + 1)] = this.§_-q9§[_loc2_];
            _loc2_++;
         }
         _loc1_.counts = new Object();
         _loc1_.counts.blocks = this.§_-7u§.length;
         _loc1_.counts.birds = this.§_-KC§.length;
         _loc1_.counts.joints = this.§_-q9§.length;
         _loc1_.slingshotX = this.§_-CF§;
         _loc1_.slingshotY = this.§_-fm§;
         return _loc1_;
      }
      
      public function §_-YJ§() : String
      {
         return JSON.stringify(this.§_-aF§());
      }
      
      public function §_-HQ§() : XML
      {
         var _loc2_:§_-zG§ = null;
         var _loc3_:int = 0;
         var _loc1_:* = "";
         _loc1_ += "<Level background=\"ThemeHills\"";
         _loc1_ += " LevelExtension=\"" + this.§_-QD§ + "\"";
         _loc1_ += " AutoCamera=\"" + this.§_-Bi§ + "\"";
         _loc1_ += " scoreSilver=\"" + this.§_-4l§ + "\"";
         _loc1_ += " scoreGold=\"" + this.§_-N2§ + "\"";
         _loc1_ += ">";
         _loc1_ += "<Cameras>";
         for each(_loc2_ in this.§_-PR§)
         {
            _loc1_ += " <Camera id=\"" + _loc2_.id + "\" leftBorder=\"" + _loc2_.left + "\" rightBorder=\"" + _loc2_.right + "\" topBorder=\"" + _loc2_.top + "\" bottomBorder=\"" + (_loc2_.top + §_-if§.§_-Lz§) + "\"></Camera>";
         }
         _loc1_ += "</Cameras>";
         _loc1_ += "<Slingshot x=\"" + this.§_-KC§[0].x + "\" y=\"" + (this.§_-KC§[0].y - 8) + "\">";
         _loc1_ += " <Birds>";
         _loc3_ = 0;
         while(_loc3_ < this.§_-KC§.length)
         {
            _loc1_ += "  <Bird id=\"" + this.§_-KC§[_loc3_].id + "\" x=\"" + this.§_-KC§[_loc3_].x + "\" y=\"" + this.§_-KC§[_loc3_].y + "\"></Bird>";
            _loc3_++;
         }
         _loc1_ += " </Birds>";
         _loc1_ += "</Slingshot>";
         _loc3_ = 0;
         while(_loc3_ < this.§_-7u§.length)
         {
            _loc1_ += "<Item id=\"" + this.§_-7u§[_loc3_].id + "\" x=\"" + this.§_-7u§[_loc3_].x + "\" y=\"" + this.§_-7u§[_loc3_].y + "\" rotation=\"" + this.§_-7u§[_loc3_].angle + "\" ></Item>";
            _loc3_++;
         }
         _loc1_ += "</Level>";
         return new XML(_loc1_);
      }
   }
}
