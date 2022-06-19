package §_-MP§
{
   import §_-7T§.§_-yJ§;
   import §_-Kz§.§_-c3§;
   import §_-Ny§.§_-7j§;
   import §_-Ny§.§_-Sv§;
   import §_-Ny§.§_-xJ§;
   import §_-Rd§.*;
   import §_-TV§.§_-Or§;
   import §_-TV§.§_-gb§;
   
   public class §_-BI§
   {
      
      public static const §_-Hg§:String = "BACKGROUND_BLUE_GRASS";
       
      
      public var §_-Ov§:Number = 0;
      
      public var §_-kI§:Number = -8;
      
      public var §_-uU§:Vector.<§_-Sv§> = null;
      
      public var §_-Mg§:Vector.<§_-xJ§> = null;
      
      public var §_-v§:Vector.<§_-7j§> = null;
      
      public var §_-nc§:Vector.<§_-vz§> = null;
      
      public var §_-uk§:Number = 0;
      
      public var §_-NG§:Boolean = false;
      
      public var §_-YI§:int = 0;
      
      public var §_-eC§:int = 0;
      
      private var §_-h1§:int = 0;
      
      private var §_-z5§:String = null;
      
      public var mName:String = null;
      
      public function §_-BI§()
      {
         super();
         this.§_-nc§ = new Vector.<§_-vz§>();
         this.§_-uU§ = new Vector.<§_-Sv§>();
         this.§_-Mg§ = new Vector.<§_-xJ§>();
         this.§_-v§ = new Vector.<§_-7j§>();
         this.§_-z5§ = §_-Hg§;
      }
      
      public static function §_-7m§(param1:String) : §_-BI§
      {
         var _loc2_:§_-BI§ = new §_-BI§();
         _loc2_.§_-wp§(param1);
         return _loc2_;
      }
      
      public static function §_-iY§(param1:§_-Or§) : Boolean
      {
         if(param1.§_-rV§ == §_-Or§.§_-6n§ || param1.§_-rV§ == §_-Or§.§_-ka§ || param1.§_-rV§ == §_-Or§.§_-0c§)
         {
            return true;
         }
         return false;
      }
      
      public static function §_-10§(param1:String) : §_-BI§
      {
         var _loc2_:§_-BI§ = §_-7m§(param1);
         _loc2_.§_-Ov§ = _loc2_.§_-Mg§[0].x;
         _loc2_.§_-kI§ = _loc2_.§_-Mg§[0].y - 8.5;
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.§_-uU§.length)
         {
            _loc2_.§_-uU§[_loc3_].angle = 360 - _loc2_.§_-uU§[_loc3_].angle;
            _loc3_++;
         }
         return _loc2_;
      }
      
      protected static function §_-iy§(param1:int, param2:Object) : Vector.<§_-7j§>
      {
         var _loc5_:Object = null;
         var _loc6_:§_-7j§ = null;
         var _loc3_:Vector.<§_-7j§> = new Vector.<§_-7j§>();
         var _loc4_:int = 1;
         while(_loc4_ <= param1)
         {
            if((_loc5_ = param2["joint_" + _loc4_]) != null)
            {
               (_loc6_ = new §_-7j§(_loc5_.type,_loc5_.index1,_loc5_.index2)).p1.setTo(_loc5_.x1,_loc5_.y1);
               _loc6_.p2.setTo(_loc5_.x2,_loc5_.y2);
               _loc6_.collideConnected = _loc5_.collideConnected;
               if(_loc6_.type == §_-7j§.§_-00J§)
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
      
      public function get theme() : String
      {
         return this.§_-z5§;
      }
      
      public function set theme(param1:String) : void
      {
         this.§_-z5§ = param1;
      }
      
      public function getEagleScore() : int
      {
         var _loc1_:int = this.§_-rT§();
         if(_loc1_ > 0 && _loc1_ < this.§_-h1§)
         {
            return _loc1_;
         }
         if(this.§_-h1§ == 0)
         {
            return _loc1_;
         }
         return this.§_-h1§;
      }
      
      public function §_-Yq§(param1:int) : void
      {
         var _loc2_:int = this.§_-rT§();
         if(_loc2_ > 0 && _loc2_ < param1)
         {
            return;
         }
         this.§_-h1§ = param1;
      }
      
      public function §_-wp§(param1:String) : void
      {
         var _loc4_:§_-vz§ = null;
         var _loc5_:Object = null;
         var _loc6_:§_-xJ§ = null;
         var _loc7_:Object = null;
         var _loc8_:§_-Sv§ = null;
         var _loc2_:Object = JSON.parse(param1);
         this.§_-uk§ = _loc2_.LevelExtension;
         this.§_-NG§ = false;
         this.§_-YI§ = _loc2_.scoreSilver;
         this.§_-eC§ = _loc2_.scoreGold;
         this.§_-h1§ = _loc2_.scoreEagle;
         this.§_-z5§ = _loc2_.theme;
         this.mName = _loc2_.id;
         if(_loc2_.counts.joints)
         {
            this.§_-v§ = §_-iy§(_loc2_.counts.joints,_loc2_.world);
         }
         this.§_-nc§ = new Vector.<§_-vz§>();
         this.§_-Mg§ = new Vector.<§_-xJ§>();
         this.§_-uU§ = new Vector.<§_-Sv§>();
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.camera.length)
         {
            (_loc4_ = new §_-vz§()).x = _loc2_.camera[_loc3_].x;
            _loc4_.y = _loc2_.camera[_loc3_].y;
            _loc4_.left = _loc2_.camera[_loc3_].left;
            _loc4_.right = _loc2_.camera[_loc3_].right;
            _loc4_.top = _loc2_.camera[_loc3_].top;
            _loc4_.bottom = _loc2_.camera[_loc3_].bottom;
            _loc4_.id = _loc2_.camera[_loc3_].id;
            this.§_-nc§.push(_loc4_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.birds)
         {
            _loc5_ = _loc2_.world["bird_" + _loc3_];
            (_loc6_ = new §_-xJ§()).x = _loc5_.x;
            _loc6_.y = _loc5_.y;
            _loc6_.id = _loc5_.id;
            this.§_-Mg§.push(_loc6_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.blocks)
         {
            _loc7_ = _loc2_.world["block_" + _loc3_];
            (_loc8_ = new §_-Sv§()).x = _loc7_.x;
            _loc8_.y = _loc7_.y;
            _loc8_.id = _loc7_.id;
            if(_loc7_.front)
            {
               _loc8_.front = _loc7_.front;
            }
            _loc8_.angle = _loc7_.angle;
            this.§_-uU§.push(_loc8_);
            _loc3_++;
         }
         this.§_-Ov§ = _loc2_.slingshotX;
         this.§_-kI§ = _loc2_.slingshotY;
      }
      
      public function §_-rH§() : Object
      {
         var _loc1_:Object = new Object();
         _loc1_.LevelExtension = this.§_-uk§;
         _loc1_.scoreSilver = this.§_-YI§;
         _loc1_.scoreGold = this.§_-eC§;
         _loc1_.scoreEagle = this.§_-h1§;
         _loc1_.theme = this.§_-z5§;
         _loc1_.name = this.mName;
         _loc1_.camera = this.§_-nc§;
         var _loc2_:Number = 0;
         _loc1_.world = new Object();
         _loc2_ = 0;
         while(_loc2_ < this.§_-Mg§.length)
         {
            _loc1_.world["bird_" + (_loc2_ + 1)] = this.§_-Mg§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§_-uU§.length)
         {
            _loc1_.world["block_" + (_loc2_ + 1)] = this.§_-uU§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§_-v§.length)
         {
            _loc1_.world["joint_" + (_loc2_ + 1)] = this.§_-v§[_loc2_];
            _loc2_++;
         }
         _loc1_.counts = new Object();
         _loc1_.counts.blocks = this.§_-uU§.length;
         _loc1_.counts.birds = this.§_-Mg§.length;
         _loc1_.counts.joints = this.§_-v§.length;
         _loc1_.slingshotX = this.§_-Ov§;
         _loc1_.slingshotY = this.§_-kI§;
         return _loc1_;
      }
      
      public function §_-Er§() : String
      {
         return JSON.stringify(this.§_-rH§());
      }
      
      public function §_-rT§() : int
      {
         var _loc2_:§_-Sv§ = null;
         var _loc3_:String = null;
         var _loc4_:§_-Or§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§_-uU§)
         {
            _loc3_ = _loc2_.id;
            if((_loc4_ = §_-gb§.§_-iR§(_loc3_)) == null && _loc3_.indexOf("MISC_") == 0)
            {
               _loc3_ = "MISC_FOOD_" + _loc3_.substring(5);
               _loc4_ = §_-gb§.§_-iR§(_loc3_);
            }
            if(_loc4_)
            {
               _loc1_ += _loc4_.score;
               if(§_-iY§(_loc4_))
               {
                  _loc1_ += _loc4_.§_-EU§ * §_-c3§.§_-a-§.getValue();
               }
            }
         }
         return _loc1_;
      }
      
      public function §_-Xu§() : XML
      {
         var _loc2_:§_-vz§ = null;
         var _loc3_:int = 0;
         var _loc1_:* = "";
         _loc1_ += "<Level background=\"ThemeHills\"";
         _loc1_ += " LevelExtension=\"" + this.§_-uk§ + "\"";
         _loc1_ += " AutoCamera=\"" + this.§_-NG§ + "\"";
         _loc1_ += " scoreSilver=\"" + this.§_-YI§ + "\"";
         _loc1_ += " scoreGold=\"" + this.§_-eC§ + "\"";
         _loc1_ += ">";
         _loc1_ += "<Cameras>";
         for each(_loc2_ in this.§_-nc§)
         {
            _loc1_ += " <Camera id=\"" + _loc2_.id + "\" leftBorder=\"" + _loc2_.left + "\" rightBorder=\"" + _loc2_.right + "\" topBorder=\"" + _loc2_.top + "\" bottomBorder=\"" + (_loc2_.top + §_-yJ§.§_-Sc§) + "\"></Camera>";
         }
         _loc1_ += "</Cameras>";
         _loc1_ += "<Slingshot x=\"" + this.§_-Mg§[0].x + "\" y=\"" + (this.§_-Mg§[0].y - 8) + "\">";
         _loc1_ += " <Birds>";
         _loc3_ = 0;
         while(_loc3_ < this.§_-Mg§.length)
         {
            _loc1_ += "  <Bird id=\"" + this.§_-Mg§[_loc3_].id + "\" x=\"" + this.§_-Mg§[_loc3_].x + "\" y=\"" + this.§_-Mg§[_loc3_].y + "\"></Bird>";
            _loc3_++;
         }
         _loc1_ += " </Birds>";
         _loc1_ += "</Slingshot>";
         _loc3_ = 0;
         while(_loc3_ < this.§_-uU§.length)
         {
            _loc1_ += "<Item id=\"" + this.§_-uU§[_loc3_].id + "\" x=\"" + this.§_-uU§[_loc3_].x + "\" y=\"" + this.§_-uU§[_loc3_].y + "\" rotation=\"" + this.§_-uU§[_loc3_].angle + "\" ></Item>";
            _loc3_++;
         }
         _loc1_ += "</Level>";
         return new XML(_loc1_);
      }
   }
}
