package §_-T8§
{
   import §_-2r§.§_-sn§;
   import §_-TC§.§_-uk§;
   import §_-X§.§_-6g§;
   import §_-X§.§_-MU§;
   import §_-X§.§_-PL§;
   import §_-p5§.§_-Sv§;
   import §_-p5§.§_-lM§;
   import §_-vT§.*;
   
   public class §_-GI§
   {
      
      public static const §_-7c§:String = "BACKGROUND_BLUE_GRASS";
       
      
      public var §_-0-f§:Number = 0;
      
      public var §_-DL§:Number = -8;
      
      public var §_-l0§:Vector.<§_-PL§> = null;
      
      public var §_-a6§:Vector.<§_-6g§> = null;
      
      public var §_-9n§:Vector.<§_-MU§> = null;
      
      public var §_-nL§:Vector.<§_-Yr§> = null;
      
      public var § var§:Number = 0;
      
      public var §_-mP§:Boolean = false;
      
      public var §_-W6§:int = 0;
      
      public var §_-oT§:int = 0;
      
      private var §_-j6§:int = 0;
      
      private var §_-KW§:String = null;
      
      public var mName:String = null;
      
      public function §_-GI§()
      {
         super();
         this.§_-nL§ = new Vector.<§_-Yr§>();
         this.§_-l0§ = new Vector.<§_-PL§>();
         this.§_-a6§ = new Vector.<§_-6g§>();
         this.§_-9n§ = new Vector.<§_-MU§>();
         this.§_-KW§ = §_-7c§;
      }
      
      public static function §_-5n§(param1:String) : §_-GI§
      {
         var _loc2_:§_-GI§ = new §_-GI§();
         _loc2_.§_-NS§(param1);
         return _loc2_;
      }
      
      public static function §_-Tw§(param1:§_-Sv§) : Boolean
      {
         if(param1.§_-1f§ == §_-Sv§.§_-pp§ || param1.§_-1f§ == §_-Sv§.§_-6x§ || param1.§_-1f§ == §_-Sv§.§_-wf§)
         {
            return true;
         }
         return false;
      }
      
      public static function §_-al§(param1:String) : §_-GI§
      {
         var _loc2_:§_-GI§ = §_-5n§(param1);
         _loc2_.§_-0-f§ = _loc2_.§_-a6§[0].x;
         _loc2_.§_-DL§ = _loc2_.§_-a6§[0].y - 8.5;
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.§_-l0§.length)
         {
            _loc2_.§_-l0§[_loc3_].angle = 360 - _loc2_.§_-l0§[_loc3_].angle;
            _loc3_++;
         }
         return _loc2_;
      }
      
      protected static function §_-KN§(param1:int, param2:Object) : Vector.<§_-MU§>
      {
         var _loc5_:Object = null;
         var _loc6_:§_-MU§ = null;
         var _loc3_:Vector.<§_-MU§> = new Vector.<§_-MU§>();
         var _loc4_:int = 1;
         while(_loc4_ <= param1)
         {
            if((_loc5_ = param2["joint_" + _loc4_]) != null)
            {
               (_loc6_ = new §_-MU§(_loc5_.type,_loc5_.index1,_loc5_.index2)).p1.setTo(_loc5_.x1,_loc5_.y1);
               _loc6_.p2.setTo(_loc5_.x2,_loc5_.y2);
               _loc6_.collideConnected = _loc5_.collideConnected;
               if(_loc6_.type == §_-MU§.§_-XY§)
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
         return this.§_-KW§;
      }
      
      public function set theme(param1:String) : void
      {
         this.§_-KW§ = param1;
      }
      
      public function getEagleScore() : int
      {
         var _loc1_:int = this.§_-Vq§();
         if(_loc1_ > 0 && _loc1_ < this.§_-j6§)
         {
            return _loc1_;
         }
         if(this.§_-j6§ == 0)
         {
            return _loc1_;
         }
         return this.§_-j6§;
      }
      
      public function §_-wV§(param1:int) : void
      {
         var _loc2_:int = this.§_-Vq§();
         if(_loc2_ > 0 && _loc2_ < param1)
         {
            return;
         }
         this.§_-j6§ = param1;
      }
      
      public function §_-NS§(param1:String) : void
      {
         var _loc4_:§_-Yr§ = null;
         var _loc5_:Object = null;
         var _loc6_:§_-6g§ = null;
         var _loc7_:Object = null;
         var _loc8_:§_-PL§ = null;
         var _loc2_:Object = JSON.parse(param1);
         this.§ var§ = _loc2_.LevelExtension;
         this.§_-mP§ = false;
         this.§_-W6§ = _loc2_.scoreSilver;
         this.§_-oT§ = _loc2_.scoreGold;
         this.§_-j6§ = _loc2_.scoreEagle;
         this.§_-KW§ = _loc2_.theme;
         this.mName = _loc2_.id;
         if(_loc2_.counts.joints)
         {
            this.§_-9n§ = §_-KN§(_loc2_.counts.joints,_loc2_.world);
         }
         this.§_-nL§ = new Vector.<§_-Yr§>();
         this.§_-a6§ = new Vector.<§_-6g§>();
         this.§_-l0§ = new Vector.<§_-PL§>();
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.camera.length)
         {
            (_loc4_ = new §_-Yr§()).x = _loc2_.camera[_loc3_].x;
            _loc4_.y = _loc2_.camera[_loc3_].y;
            _loc4_.left = _loc2_.camera[_loc3_].left;
            _loc4_.right = _loc2_.camera[_loc3_].right;
            _loc4_.top = _loc2_.camera[_loc3_].top;
            _loc4_.bottom = _loc2_.camera[_loc3_].bottom;
            _loc4_.id = _loc2_.camera[_loc3_].id;
            this.§_-nL§.push(_loc4_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.birds)
         {
            _loc5_ = _loc2_.world["bird_" + _loc3_];
            (_loc6_ = new §_-6g§()).x = _loc5_.x;
            _loc6_.y = _loc5_.y;
            _loc6_.id = _loc5_.id;
            this.§_-a6§.push(_loc6_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.blocks)
         {
            _loc7_ = _loc2_.world["block_" + _loc3_];
            (_loc8_ = new §_-PL§()).x = _loc7_.x;
            _loc8_.y = _loc7_.y;
            _loc8_.id = _loc7_.id;
            if(_loc7_.front)
            {
               _loc8_.front = _loc7_.front;
            }
            _loc8_.angle = _loc7_.angle;
            this.§_-l0§.push(_loc8_);
            _loc3_++;
         }
         this.§_-0-f§ = _loc2_.slingshotX;
         this.§_-DL§ = _loc2_.slingshotY;
      }
      
      public function §_-7m§() : Object
      {
         var _loc1_:Object = new Object();
         _loc1_.LevelExtension = this.§ var§;
         _loc1_.scoreSilver = this.§_-W6§;
         _loc1_.scoreGold = this.§_-oT§;
         _loc1_.scoreEagle = this.§_-j6§;
         _loc1_.theme = this.§_-KW§;
         _loc1_.name = this.mName;
         _loc1_.camera = this.§_-nL§;
         var _loc2_:Number = 0;
         _loc1_.world = new Object();
         _loc2_ = 0;
         while(_loc2_ < this.§_-a6§.length)
         {
            _loc1_.world["bird_" + (_loc2_ + 1)] = this.§_-a6§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§_-l0§.length)
         {
            _loc1_.world["block_" + (_loc2_ + 1)] = this.§_-l0§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§_-9n§.length)
         {
            _loc1_.world["joint_" + (_loc2_ + 1)] = this.§_-9n§[_loc2_];
            _loc2_++;
         }
         _loc1_.counts = new Object();
         _loc1_.counts.blocks = this.§_-l0§.length;
         _loc1_.counts.birds = this.§_-a6§.length;
         _loc1_.counts.joints = this.§_-9n§.length;
         _loc1_.slingshotX = this.§_-0-f§;
         _loc1_.slingshotY = this.§_-DL§;
         return _loc1_;
      }
      
      public function §_-CM§() : String
      {
         return JSON.stringify(this.§_-7m§());
      }
      
      public function §_-Vq§() : int
      {
         var _loc2_:§_-PL§ = null;
         var _loc3_:String = null;
         var _loc4_:§_-Sv§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§_-l0§)
         {
            _loc3_ = _loc2_.id;
            if((_loc4_ = §_-lM§.§_-0-i§(_loc3_)) == null && _loc3_.indexOf("MISC_") == 0)
            {
               _loc3_ = "MISC_FOOD_" + _loc3_.substring(5);
               _loc4_ = §_-lM§.§_-0-i§(_loc3_);
            }
            if(_loc4_)
            {
               _loc1_ += _loc4_.score;
               if(§_-Tw§(_loc4_))
               {
                  _loc1_ += _loc4_.§_-Rj§ * §_-sn§.§_-m9§.getValue();
               }
            }
         }
         return _loc1_;
      }
      
      public function §_-p6§() : XML
      {
         var _loc2_:§_-Yr§ = null;
         var _loc3_:int = 0;
         var _loc1_:* = "";
         _loc1_ += "<Level background=\"ThemeHills\"";
         _loc1_ += " LevelExtension=\"" + this.§ var§ + "\"";
         _loc1_ += " AutoCamera=\"" + this.§_-mP§ + "\"";
         _loc1_ += " scoreSilver=\"" + this.§_-W6§ + "\"";
         _loc1_ += " scoreGold=\"" + this.§_-oT§ + "\"";
         _loc1_ += ">";
         _loc1_ += "<Cameras>";
         for each(_loc2_ in this.§_-nL§)
         {
            _loc1_ += " <Camera id=\"" + _loc2_.id + "\" leftBorder=\"" + _loc2_.left + "\" rightBorder=\"" + _loc2_.right + "\" topBorder=\"" + _loc2_.top + "\" bottomBorder=\"" + (_loc2_.top + §_-uk§.§_-mO§) + "\"></Camera>";
         }
         _loc1_ += "</Cameras>";
         _loc1_ += "<Slingshot x=\"" + this.§_-a6§[0].x + "\" y=\"" + (this.§_-a6§[0].y - 8) + "\">";
         _loc1_ += " <Birds>";
         _loc3_ = 0;
         while(_loc3_ < this.§_-a6§.length)
         {
            _loc1_ += "  <Bird id=\"" + this.§_-a6§[_loc3_].id + "\" x=\"" + this.§_-a6§[_loc3_].x + "\" y=\"" + this.§_-a6§[_loc3_].y + "\"></Bird>";
            _loc3_++;
         }
         _loc1_ += " </Birds>";
         _loc1_ += "</Slingshot>";
         _loc3_ = 0;
         while(_loc3_ < this.§_-l0§.length)
         {
            _loc1_ += "<Item id=\"" + this.§_-l0§[_loc3_].id + "\" x=\"" + this.§_-l0§[_loc3_].x + "\" y=\"" + this.§_-l0§[_loc3_].y + "\" rotation=\"" + this.§_-l0§[_loc3_].angle + "\" ></Item>";
            _loc3_++;
         }
         _loc1_ += "</Level>";
         return new XML(_loc1_);
      }
   }
}
