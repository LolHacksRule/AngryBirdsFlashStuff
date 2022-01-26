package §_-5b§
{
   import §_-0-K§.§_-FL§;
   import §_-X4§.§_-EY§;
   import §_-X4§.§_-rI§;
   import §_-a§.*;
   import §_-yz§.§_-sm§;
   import §_-yz§.§_-wB§;
   import §_-yz§.§_-zJ§;
   import override.§_-Eu§;
   
   public class §_-Vj§
   {
      
      public static const §_-n2§:String = "BACKGROUND_BLUE_GRASS";
       
      
      public var §_-Da§:Number = 0;
      
      public var §_-Iw§:Number = -8;
      
      public var §_-3P§:Vector.<§_-zJ§> = null;
      
      public var §_-00M§:Vector.<§_-sm§> = null;
      
      public var §_-fb§:Vector.<§_-wB§> = null;
      
      public var §_-K3§:Vector.<§_-z2§> = null;
      
      public var §_-Ue§:Number = 0;
      
      public var §_-OV§:Boolean = false;
      
      public var §_-pL§:int = 0;
      
      public var §_-pr§:int = 0;
      
      private var §_-a7§:int = 0;
      
      private var §_-7T§:String = null;
      
      public var mName:String = null;
      
      public function §_-Vj§()
      {
         super();
         this.§_-K3§ = new Vector.<§_-z2§>();
         this.§_-3P§ = new Vector.<§_-zJ§>();
         this.§_-00M§ = new Vector.<§_-sm§>();
         this.§_-fb§ = new Vector.<§_-wB§>();
         this.§_-7T§ = §_-n2§;
      }
      
      public static function §_-Kn§(param1:String) : §_-Vj§
      {
         var _loc2_:§_-Vj§ = new §_-Vj§();
         _loc2_.§_-8W§(param1);
         return _loc2_;
      }
      
      public static function §_-Lp§(param1:§_-EY§) : Boolean
      {
         if(param1.§_-ly§ == §_-EY§.§_-0-n§ || param1.§_-ly§ == §_-EY§.§_-DJ§ || param1.§_-ly§ == §_-EY§.§_-Xk§)
         {
            return true;
         }
         return false;
      }
      
      public static function §_-g6§(param1:String) : §_-Vj§
      {
         var _loc2_:§_-Vj§ = §_-Kn§(param1);
         _loc2_.§_-Da§ = _loc2_.§_-00M§[0].x;
         _loc2_.§_-Iw§ = _loc2_.§_-00M§[0].y - 8.5;
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.§_-3P§.length)
         {
            _loc2_.§_-3P§[_loc3_].angle = 360 - _loc2_.§_-3P§[_loc3_].angle;
            _loc3_++;
         }
         return _loc2_;
      }
      
      protected static function §_-wz§(param1:int, param2:Object) : Vector.<§_-wB§>
      {
         var _loc5_:Object = null;
         var _loc6_:§_-wB§ = null;
         var _loc3_:Vector.<§_-wB§> = new Vector.<§_-wB§>();
         var _loc4_:int = 1;
         while(_loc4_ <= param1)
         {
            if((_loc5_ = param2["joint_" + _loc4_]) != null)
            {
               (_loc6_ = new §_-wB§(_loc5_.type,_loc5_.index1,_loc5_.index2)).p1.setTo(_loc5_.x1,_loc5_.y1);
               _loc6_.p2.setTo(_loc5_.x2,_loc5_.y2);
               _loc6_.collideConnected = _loc5_.collideConnected;
               if(_loc6_.type == §_-wB§.§_-wD§)
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
         return this.§_-7T§;
      }
      
      public function set theme(param1:String) : void
      {
         this.§_-7T§ = param1;
      }
      
      public function getEagleScore() : int
      {
         var _loc1_:int = this.§_-98§();
         if(_loc1_ > 0 && _loc1_ < this.§_-a7§)
         {
            return _loc1_;
         }
         if(this.§_-a7§ == 0)
         {
            return _loc1_;
         }
         return this.§_-a7§;
      }
      
      public function §_-m5§(param1:int) : void
      {
         var _loc2_:int = this.§_-98§();
         if(_loc2_ > 0 && _loc2_ < param1)
         {
            return;
         }
         this.§_-a7§ = param1;
      }
      
      public function §_-8W§(param1:String) : void
      {
         var _loc4_:§_-z2§ = null;
         var _loc5_:Object = null;
         var _loc6_:§_-sm§ = null;
         var _loc7_:Object = null;
         var _loc8_:§_-zJ§ = null;
         var _loc2_:Object = JSON.parse(param1);
         this.§_-Ue§ = _loc2_.LevelExtension;
         this.§_-OV§ = false;
         this.§_-pL§ = _loc2_.scoreSilver;
         this.§_-pr§ = _loc2_.scoreGold;
         this.§_-a7§ = _loc2_.scoreEagle;
         this.§_-7T§ = _loc2_.theme;
         this.mName = _loc2_.id;
         if(_loc2_.counts.joints)
         {
            this.§_-fb§ = §_-wz§(_loc2_.counts.joints,_loc2_.world);
         }
         this.§_-K3§ = new Vector.<§_-z2§>();
         this.§_-00M§ = new Vector.<§_-sm§>();
         this.§_-3P§ = new Vector.<§_-zJ§>();
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.camera.length)
         {
            (_loc4_ = new §_-z2§()).x = _loc2_.camera[_loc3_].x;
            _loc4_.y = _loc2_.camera[_loc3_].y;
            _loc4_.left = _loc2_.camera[_loc3_].left;
            _loc4_.right = _loc2_.camera[_loc3_].right;
            _loc4_.top = _loc2_.camera[_loc3_].top;
            _loc4_.bottom = _loc2_.camera[_loc3_].bottom;
            _loc4_.id = _loc2_.camera[_loc3_].id;
            this.§_-K3§.push(_loc4_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.birds)
         {
            _loc5_ = _loc2_.world["bird_" + _loc3_];
            (_loc6_ = new §_-sm§()).x = _loc5_.x;
            _loc6_.y = _loc5_.y;
            _loc6_.id = _loc5_.id;
            this.§_-00M§.push(_loc6_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.blocks)
         {
            _loc7_ = _loc2_.world["block_" + _loc3_];
            (_loc8_ = new §_-zJ§()).x = _loc7_.x;
            _loc8_.y = _loc7_.y;
            _loc8_.id = _loc7_.id;
            if(_loc7_.front)
            {
               _loc8_.front = _loc7_.front;
            }
            _loc8_.angle = _loc7_.angle;
            this.§_-3P§.push(_loc8_);
            _loc3_++;
         }
         this.§_-Da§ = _loc2_.slingshotX;
         this.§_-Iw§ = _loc2_.slingshotY;
      }
      
      public function §_-Hy§() : Object
      {
         var _loc1_:Object = new Object();
         _loc1_.LevelExtension = this.§_-Ue§;
         _loc1_.scoreSilver = this.§_-pL§;
         _loc1_.scoreGold = this.§_-pr§;
         _loc1_.scoreEagle = this.§_-a7§;
         _loc1_.theme = this.§_-7T§;
         _loc1_.name = this.mName;
         _loc1_.camera = this.§_-K3§;
         var _loc2_:Number = 0;
         _loc1_.world = new Object();
         _loc2_ = 0;
         while(_loc2_ < this.§_-00M§.length)
         {
            _loc1_.world["bird_" + (_loc2_ + 1)] = this.§_-00M§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§_-3P§.length)
         {
            _loc1_.world["block_" + (_loc2_ + 1)] = this.§_-3P§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§_-fb§.length)
         {
            _loc1_.world["joint_" + (_loc2_ + 1)] = this.§_-fb§[_loc2_];
            _loc2_++;
         }
         _loc1_.counts = new Object();
         _loc1_.counts.blocks = this.§_-3P§.length;
         _loc1_.counts.birds = this.§_-00M§.length;
         _loc1_.counts.joints = this.§_-fb§.length;
         _loc1_.slingshotX = this.§_-Da§;
         _loc1_.slingshotY = this.§_-Iw§;
         return _loc1_;
      }
      
      public function §_-E-§() : String
      {
         return JSON.stringify(this.§_-Hy§());
      }
      
      public function §_-98§() : int
      {
         var _loc2_:§_-zJ§ = null;
         var _loc3_:String = null;
         var _loc4_:§_-EY§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§_-3P§)
         {
            _loc3_ = _loc2_.id;
            if((_loc4_ = §_-rI§.§_-0l§(_loc3_)) == null && _loc3_.indexOf("MISC_") == 0)
            {
               _loc3_ = "MISC_FOOD_" + _loc3_.substring(5);
               _loc4_ = §_-rI§.§_-0l§(_loc3_);
            }
            if(_loc4_)
            {
               _loc1_ += _loc4_.score;
               if(§_-Lp§(_loc4_))
               {
                  _loc1_ += _loc4_.§_-m1§ * §_-FL§.§_-zA§.getValue();
               }
            }
         }
         return _loc1_;
      }
      
      public function §_-LN§() : XML
      {
         var _loc2_:§_-z2§ = null;
         var _loc3_:int = 0;
         var _loc1_:* = "";
         _loc1_ += "<Level background=\"ThemeHills\"";
         _loc1_ += " LevelExtension=\"" + this.§_-Ue§ + "\"";
         _loc1_ += " AutoCamera=\"" + this.§_-OV§ + "\"";
         _loc1_ += " scoreSilver=\"" + this.§_-pL§ + "\"";
         _loc1_ += " scoreGold=\"" + this.§_-pr§ + "\"";
         _loc1_ += ">";
         _loc1_ += "<Cameras>";
         for each(_loc2_ in this.§_-K3§)
         {
            _loc1_ += " <Camera id=\"" + _loc2_.id + "\" leftBorder=\"" + _loc2_.left + "\" rightBorder=\"" + _loc2_.right + "\" topBorder=\"" + _loc2_.top + "\" bottomBorder=\"" + (_loc2_.top + §_-Eu§.§_-TD§) + "\"></Camera>";
         }
         _loc1_ += "</Cameras>";
         _loc1_ += "<Slingshot x=\"" + this.§_-00M§[0].x + "\" y=\"" + (this.§_-00M§[0].y - 8) + "\">";
         _loc1_ += " <Birds>";
         _loc3_ = 0;
         while(_loc3_ < this.§_-00M§.length)
         {
            _loc1_ += "  <Bird id=\"" + this.§_-00M§[_loc3_].id + "\" x=\"" + this.§_-00M§[_loc3_].x + "\" y=\"" + this.§_-00M§[_loc3_].y + "\"></Bird>";
            _loc3_++;
         }
         _loc1_ += " </Birds>";
         _loc1_ += "</Slingshot>";
         _loc3_ = 0;
         while(_loc3_ < this.§_-3P§.length)
         {
            _loc1_ += "<Item id=\"" + this.§_-3P§[_loc3_].id + "\" x=\"" + this.§_-3P§[_loc3_].x + "\" y=\"" + this.§_-3P§[_loc3_].y + "\" rotation=\"" + this.§_-3P§[_loc3_].angle + "\" ></Item>";
            _loc3_++;
         }
         _loc1_ += "</Level>";
         return new XML(_loc1_);
      }
   }
}
