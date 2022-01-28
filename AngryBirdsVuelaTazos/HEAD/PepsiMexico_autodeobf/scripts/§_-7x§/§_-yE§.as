package §_-7x§
{
   import §_-8H§.*;
   import §_-Di§.§_-ix§;
   import §_-Rm§.§_-kO§;
   import §_-Rm§.§_-tv§;
   import §_-bu§.§_-1U§;
   import §_-bu§.§_-MA§;
   import §_-bu§.§_-Yc§;
   import §_-ym§.§_-7s§;
   
   public class §_-yE§
   {
      
      public static const §_-D3§:String = "BACKGROUND_BLUE_GRASS";
       
      
      public var §_-Iv§:Number = 0;
      
      public var §_-pW§:Number = 0;
      
      public var §_-dD§:Vector.<§_-Yc§> = null;
      
      public var §_-TO§:Vector.<§_-MA§> = null;
      
      public var §_-Ot§:Vector.<§_-1U§> = null;
      
      public var §_-o9§:Vector.<§_-oH§> = null;
      
      public var §_-pu§:Number = 0;
      
      public var §_-56§:Boolean = false;
      
      public var §_-9§:int = 0;
      
      public var §_-pR§:int = 0;
      
      private var §_-Df§:int = 0;
      
      public var §_-9Q§:String = null;
      
      public var mName:String = null;
      
      public function §_-yE§()
      {
         super();
         this.§_-o9§ = new Vector.<§_-oH§>();
         this.§_-dD§ = new Vector.<§_-Yc§>();
         this.§_-TO§ = new Vector.<§_-MA§>();
         this.§_-Ot§ = new Vector.<§_-1U§>();
         this.§_-9Q§ = §_-D3§;
      }
      
      public static function §_-MM§(param1:String) : §_-yE§
      {
         var _loc2_:§_-yE§ = new §_-yE§();
         _loc2_.§_-pj§(param1);
         return _loc2_;
      }
      
      public static function §_-eb§(param1:§_-kO§) : Boolean
      {
         if(param1.§_-rw§ == §_-kO§.§_-uv§ || param1.§_-rw§ == §_-kO§.§_-xN§ || param1.§_-rw§ == §_-kO§.§_-zs§)
         {
            return true;
         }
         return false;
      }
      
      public static function §_-tw§(param1:String) : §_-yE§
      {
         var _loc2_:§_-yE§ = §_-MM§(param1);
         _loc2_.§_-Iv§ = _loc2_.§_-TO§[0].x;
         _loc2_.§_-pW§ = _loc2_.§_-TO§[0].y - 8.5;
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.§_-dD§.length)
         {
            _loc2_.§_-dD§[_loc3_].angle = 360 - _loc2_.§_-dD§[_loc3_].angle;
            _loc3_++;
         }
         return _loc2_;
      }
      
      protected static function §_-pS§(param1:int, param2:Object) : Vector.<§_-1U§>
      {
         var _loc5_:Object = null;
         var _loc6_:§_-1U§ = null;
         var _loc3_:Vector.<§_-1U§> = new Vector.<§_-1U§>();
         var _loc4_:int = 1;
         while(_loc4_ <= param1)
         {
            if((_loc5_ = param2["joint_" + _loc4_]) != null)
            {
               (_loc6_ = new §_-1U§(_loc5_.type,_loc5_.index1,_loc5_.index2)).p1.setTo(_loc5_.x1,_loc5_.y1);
               _loc6_.p2.setTo(_loc5_.x2,_loc5_.y2);
               _loc6_.collideConnected = _loc5_.collideConnected;
               if(_loc6_.type == §_-1U§.§_-9P§)
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
      
      public function getEagleScore() : int
      {
         var _loc1_:int = this.§_-ff§();
         if(_loc1_ > 0 && _loc1_ < this.§_-Df§)
         {
            return _loc1_;
         }
         if(this.§_-Df§ == 0)
         {
            return _loc1_;
         }
         return this.§_-Df§;
      }
      
      public function §_-Yv§(param1:int) : void
      {
         var _loc2_:int = this.§_-ff§();
         if(_loc2_ > 0 && _loc2_ < param1)
         {
            return;
         }
         this.§_-Df§ = param1;
      }
      
      public function §_-pj§(param1:String) : void
      {
         var _loc4_:§_-oH§ = null;
         var _loc5_:Object = null;
         var _loc6_:§_-MA§ = null;
         var _loc7_:Object = null;
         var _loc8_:§_-Yc§ = null;
         var _loc2_:Object = JSON.parse(param1);
         this.§_-pu§ = _loc2_.LevelExtension;
         this.§_-56§ = false;
         this.§_-9§ = _loc2_.scoreSilver;
         this.§_-pR§ = _loc2_.scoreGold;
         this.§_-Df§ = _loc2_.scoreEagle;
         this.§_-9Q§ = _loc2_.theme;
         this.mName = _loc2_.name;
         if(_loc2_.counts.joints)
         {
            this.§_-Ot§ = §_-pS§(_loc2_.counts.joints,_loc2_.world);
         }
         this.§_-o9§ = new Vector.<§_-oH§>();
         this.§_-TO§ = new Vector.<§_-MA§>();
         this.§_-dD§ = new Vector.<§_-Yc§>();
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.camera.length)
         {
            (_loc4_ = new §_-oH§()).x = _loc2_.camera[_loc3_].x;
            _loc4_.y = _loc2_.camera[_loc3_].y;
            _loc4_.left = _loc2_.camera[_loc3_].left;
            _loc4_.right = _loc2_.camera[_loc3_].right;
            _loc4_.top = _loc2_.camera[_loc3_].top;
            _loc4_.bottom = _loc2_.camera[_loc3_].bottom;
            _loc4_.id = _loc2_.camera[_loc3_].id;
            this.§_-o9§.push(_loc4_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.birds)
         {
            _loc5_ = _loc2_.world["bird_" + _loc3_];
            (_loc6_ = new §_-MA§()).x = _loc5_.x;
            _loc6_.y = _loc5_.y;
            _loc6_.id = _loc5_.id;
            this.§_-TO§.push(_loc6_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.blocks)
         {
            _loc7_ = _loc2_.world["block_" + _loc3_];
            (_loc8_ = new §_-Yc§()).x = _loc7_.x;
            _loc8_.y = _loc7_.y;
            _loc8_.id = _loc7_.id;
            if(_loc7_.front)
            {
               _loc8_.front = _loc7_.front;
            }
            _loc8_.angle = _loc7_.angle;
            this.§_-dD§.push(_loc8_);
            _loc3_++;
         }
         this.§_-Iv§ = _loc2_.slingshotX;
         this.§_-pW§ = _loc2_.slingshotY;
      }
      
      public function §_-I8§() : Object
      {
         var _loc1_:Object = new Object();
         _loc1_.LevelExtension = this.§_-pu§;
         _loc1_.scoreSilver = this.§_-9§;
         _loc1_.scoreGold = this.§_-pR§;
         _loc1_.scoreEagle = this.§_-Df§;
         _loc1_.theme = this.§_-9Q§;
         _loc1_.name = this.mName;
         _loc1_.camera = this.§_-o9§;
         var _loc2_:Number = 0;
         _loc1_.world = new Object();
         _loc2_ = 0;
         while(_loc2_ < this.§_-TO§.length)
         {
            _loc1_.world["bird_" + (_loc2_ + 1)] = this.§_-TO§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§_-dD§.length)
         {
            _loc1_.world["block_" + (_loc2_ + 1)] = this.§_-dD§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§_-Ot§.length)
         {
            _loc1_.world["joint_" + (_loc2_ + 1)] = this.§_-Ot§[_loc2_];
            _loc2_++;
         }
         _loc1_.counts = new Object();
         _loc1_.counts.blocks = this.§_-dD§.length;
         _loc1_.counts.birds = this.§_-TO§.length;
         _loc1_.counts.joints = this.§_-Ot§.length;
         _loc1_.slingshotX = this.§_-Iv§;
         _loc1_.slingshotY = this.§_-pW§;
         return _loc1_;
      }
      
      public function §_-Sv§() : String
      {
         return JSON.stringify(this.§_-I8§());
      }
      
      public function §_-ff§() : int
      {
         var _loc2_:§_-Yc§ = null;
         var _loc3_:String = null;
         var _loc4_:§_-kO§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§_-dD§)
         {
            _loc3_ = _loc2_.id;
            if((_loc4_ = §_-tv§.§get §(_loc3_)) == null && _loc3_.indexOf("MISC_") == 0)
            {
               _loc3_ = "MISC_FOOD_" + _loc3_.substring(5);
               _loc4_ = §_-tv§.§get §(_loc3_);
            }
            if(_loc4_)
            {
               _loc1_ += _loc4_.score;
               if(§_-eb§(_loc4_))
               {
                  _loc1_ += _loc4_.§_-eV§ * §_-ix§.§case §.getValue();
               }
            }
         }
         return _loc1_;
      }
      
      public function §_-WN§() : XML
      {
         var _loc2_:§_-oH§ = null;
         var _loc3_:int = 0;
         var _loc1_:* = "";
         _loc1_ += "<Level background=\"ThemeHills\"";
         _loc1_ += " LevelExtension=\"" + this.§_-pu§ + "\"";
         _loc1_ += " AutoCamera=\"" + this.§_-56§ + "\"";
         _loc1_ += " scoreSilver=\"" + this.§_-9§ + "\"";
         _loc1_ += " scoreGold=\"" + this.§_-pR§ + "\"";
         _loc1_ += ">";
         _loc1_ += "<Cameras>";
         for each(_loc2_ in this.§_-o9§)
         {
            _loc1_ += " <Camera id=\"" + _loc2_.id + "\" leftBorder=\"" + _loc2_.left + "\" rightBorder=\"" + _loc2_.right + "\" topBorder=\"" + _loc2_.top + "\" bottomBorder=\"" + (_loc2_.top + §_-7s§.§_-SG§) + "\"></Camera>";
         }
         _loc1_ += "</Cameras>";
         _loc1_ += "<Slingshot x=\"" + this.§_-TO§[0].x + "\" y=\"" + (this.§_-TO§[0].y - 8) + "\">";
         _loc1_ += " <Birds>";
         _loc3_ = 0;
         while(_loc3_ < this.§_-TO§.length)
         {
            _loc1_ += "  <Bird id=\"" + this.§_-TO§[_loc3_].id + "\" x=\"" + this.§_-TO§[_loc3_].x + "\" y=\"" + this.§_-TO§[_loc3_].y + "\"></Bird>";
            _loc3_++;
         }
         _loc1_ += " </Birds>";
         _loc1_ += "</Slingshot>";
         _loc3_ = 0;
         while(_loc3_ < this.§_-dD§.length)
         {
            _loc1_ += "<Item id=\"" + this.§_-dD§[_loc3_].id + "\" x=\"" + this.§_-dD§[_loc3_].x + "\" y=\"" + this.§_-dD§[_loc3_].y + "\" rotation=\"" + this.§_-dD§[_loc3_].angle + "\" ></Item>";
            _loc3_++;
         }
         _loc1_ += "</Level>";
         return new XML(_loc1_);
      }
   }
}
