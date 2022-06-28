package §_-Ga§
{
   import §_-0BV§.*;
   import §_-0DG§.§_-0-A§;
   import §_-0DG§.§_-09t§;
   import §_-JK§.§_-S2§;
   import §_-TG§.§_-00u§;
   import §_-by§.§_-CE§;
   import §_-by§.§_-Tr§;
   import §_-by§.§_-fi§;
   import flash.geom.Point;
   
   public class §_-bm§
   {
      
      public static const §_-0A0§:String = "BACKGROUND_BLUE_GRASS";
       
      
      public var §_-7M§:Number = 0;
      
      public var §_-Rc§:Number = -8;
      
      private var §_-057§:Vector.<§_-CE§> = null;
      
      private var §_-j9§:Vector.<§_-Tr§> = null;
      
      private var §_-T3§:Vector.<§_-fi§> = null;
      
      private var §_-WA§:Vector.<§_-2w§> = null;
      
      public var §_-w1§:Number = 0;
      
      public var §_-vc§:Boolean = false;
      
      public var §_-Td§:int = 0;
      
      public var §_-iC§:int = 0;
      
      private var §_-EA§:int = 0;
      
      private var §_-6N§:String = null;
      
      public var mName:String = null;
      
      public function §_-bm§()
      {
         super();
         this.§_-WA§ = new Vector.<§_-2w§>();
         this.§_-057§ = new Vector.<§_-CE§>();
         this.§_-j9§ = new Vector.<§_-Tr§>();
         this.§_-T3§ = new Vector.<§_-fi§>();
         this.§_-6N§ = §_-0A0§;
      }
      
      public static function §_-04-§(param1:String) : §_-bm§
      {
         var _loc2_:§_-bm§ = new §_-bm§();
         _loc2_.§_-Wi§(param1);
         return _loc2_;
      }
      
      public static function §_-r-§(param1:§_-0-A§) : Boolean
      {
         if(param1.§_-kD§ == §_-0-A§.§_-Zt§ || param1.§_-kD§ == §_-0-A§.§_-OZ§ || param1.§_-kD§ == §_-0-A§.§_-FB§)
         {
            return true;
         }
         return false;
      }
      
      public static function §_-009§(param1:String) : §_-bm§
      {
         var _loc2_:§_-bm§ = §_-04-§(param1);
         _loc2_.§_-7M§ = _loc2_.§_-j9§[0].x;
         _loc2_.§_-Rc§ = _loc2_.§_-j9§[0].y - 8.5;
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.§_-057§.length)
         {
            _loc2_.§_-057§[_loc3_].angle = 360 - _loc2_.§_-057§[_loc3_].angle;
            _loc3_++;
         }
         return _loc2_;
      }
      
      protected static function §_-59§(param1:int, param2:Object) : Vector.<§_-fi§>
      {
         var _loc5_:Object = null;
         var _loc6_:Point = null;
         var _loc7_:Point = null;
         var _loc8_:§_-fi§ = null;
         var _loc3_:Vector.<§_-fi§> = new Vector.<§_-fi§>();
         var _loc4_:int = 1;
         while(_loc4_ <= param1)
         {
            if((_loc5_ = param2["joint_" + _loc4_]) != null)
            {
               _loc6_ = new Point(_loc5_.x1,_loc5_.y1);
               _loc7_ = new Point(_loc5_.x2,_loc5_.y2);
               _loc8_ = null;
               if(_loc5_.type == §_-fi§.§_-N0§ || _loc5_.type == §_-fi§.§_-37§)
               {
                  _loc8_ = new §_-fi§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected,_loc5_.limit,_loc5_.lowerLimit,_loc5_.upperLimit,_loc5_.motor,_loc5_.motorSpeed,_loc5_.backAndForth,_loc5_.maxTorque);
                  if(_loc5_.type == §_-fi§.§_-37§)
                  {
                     _loc8_.axisX = _loc5_.axisX;
                     _loc8_.axisY = _loc5_.axisY;
                  }
               }
               else
               {
                  _loc8_ = new §_-fi§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected);
               }
               if(_loc5_.type == §_-fi§.§_-09G§)
               {
                  _loc8_.§_-0e§ = _loc5_.destroyTimer;
               }
               _loc3_.push(_loc8_);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function get §_-uM§() : int
      {
         return this.§_-057§.length;
      }
      
      public function get §_-zw§() : int
      {
         return this.§_-T3§.length;
      }
      
      public function get §_-9m§() : int
      {
         return this.§_-j9§.length;
      }
      
      public function get §_-aj§() : int
      {
         return this.§_-WA§.length;
      }
      
      public function get theme() : String
      {
         return this.§_-6N§;
      }
      
      public function set theme(param1:String) : void
      {
         this.§_-6N§ = param1;
      }
      
      public function getEagleScore() : int
      {
         var _loc1_:int = this.§_-LO§();
         if(_loc1_ > 0 && _loc1_ < this.§_-EA§)
         {
            return _loc1_;
         }
         if(this.§_-EA§ == 0)
         {
            return _loc1_;
         }
         return this.§_-EA§;
      }
      
      public function §_-1Q§(param1:int) : void
      {
         var _loc2_:int = this.§_-LO§();
         if(_loc2_ > 0 && _loc2_ < param1)
         {
            return;
         }
         this.§_-EA§ = param1;
      }
      
      public function §_-Wi§(param1:String) : void
      {
         var _loc4_:§_-2w§ = null;
         var _loc5_:Object = null;
         var _loc6_:§_-Tr§ = null;
         var _loc7_:String = null;
         var _loc8_:Object = null;
         var _loc9_:§_-CE§ = null;
         var _loc2_:Object = JSON.parse(param1);
         this.§_-w1§ = _loc2_.LevelExtension;
         this.§_-vc§ = false;
         this.§_-Td§ = _loc2_.scoreSilver;
         this.§_-iC§ = _loc2_.scoreGold;
         this.§_-EA§ = _loc2_.scoreEagle;
         this.§_-6N§ = _loc2_.theme;
         this.mName = _loc2_.id;
         if(_loc2_.counts.joints)
         {
            this.§_-T3§ = §_-59§(_loc2_.counts.joints,_loc2_.world);
         }
         this.§_-WA§ = new Vector.<§_-2w§>();
         this.§_-j9§ = new Vector.<§_-Tr§>();
         this.§_-057§ = new Vector.<§_-CE§>();
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.camera.length)
         {
            (_loc4_ = new §_-2w§()).x = _loc2_.camera[_loc3_].x;
            _loc4_.y = _loc2_.camera[_loc3_].y;
            _loc4_.left = _loc2_.camera[_loc3_].left;
            _loc4_.right = _loc2_.camera[_loc3_].right;
            _loc4_.top = _loc2_.camera[_loc3_].top;
            _loc4_.bottom = _loc2_.camera[_loc3_].bottom;
            _loc4_.id = _loc2_.camera[_loc3_].id;
            this.§_-WA§.push(_loc4_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.birds)
         {
            _loc5_ = _loc2_.world["bird_" + _loc3_];
            (_loc6_ = new §_-Tr§()).x = _loc5_.x;
            _loc6_.y = _loc5_.y;
            _loc6_.id = _loc5_.id;
            this.§_-j9§.push(_loc6_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.blocks)
         {
            _loc7_ = "block_" + _loc3_;
            _loc8_ = _loc2_.world[_loc7_];
            (_loc9_ = new §_-CE§()).x = _loc8_.x;
            _loc9_.y = _loc8_.y;
            _loc9_.id = _loc8_.id;
            if(_loc8_.uniqueID && _loc8_.uniqueID.length > 0)
            {
               _loc9_.uniqueID = _loc8_.uniqueID;
            }
            else
            {
               _loc9_.uniqueID = _loc7_;
            }
            if(_loc8_.front)
            {
               _loc9_.front = _loc8_.front;
            }
            _loc9_.angle = _loc8_.angle;
            this.§_-057§.push(_loc9_);
            _loc3_++;
         }
         this.§_-7M§ = _loc2_.slingshotX;
         this.§_-Rc§ = _loc2_.slingshotY;
      }
      
      public function §_-076§() : Object
      {
         var _loc1_:Object = new Object();
         _loc1_.LevelExtension = this.§_-w1§;
         _loc1_.scoreSilver = this.§_-Td§;
         _loc1_.scoreGold = this.§_-iC§;
         _loc1_.scoreEagle = this.§_-EA§;
         _loc1_.theme = this.§_-6N§;
         _loc1_.name = this.mName;
         _loc1_.camera = this.§_-WA§;
         var _loc2_:Number = 0;
         _loc1_.world = new Object();
         _loc2_ = 0;
         while(_loc2_ < this.§_-j9§.length)
         {
            _loc1_.world["bird_" + (_loc2_ + 1)] = this.§_-j9§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§_-057§.length)
         {
            _loc1_.world["block_" + (_loc2_ + 1)] = this.§_-057§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§_-T3§.length)
         {
            _loc1_.world["joint_" + (_loc2_ + 1)] = this.§_-T3§[_loc2_];
            _loc2_++;
         }
         _loc1_.counts = new Object();
         _loc1_.counts.blocks = this.§_-057§.length;
         _loc1_.counts.birds = this.§_-j9§.length;
         _loc1_.counts.joints = this.§_-T3§.length;
         _loc1_.slingshotX = this.§_-7M§;
         _loc1_.slingshotY = this.§_-Rc§;
         return _loc1_;
      }
      
      public function §_-0-P§() : String
      {
         return JSON.stringify(this.§_-076§());
      }
      
      public function §_-LO§() : int
      {
         var _loc2_:§_-CE§ = null;
         var _loc3_:String = null;
         var _loc4_:§_-0-A§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§_-057§)
         {
            _loc3_ = _loc2_.id;
            if((_loc4_ = §_-09t§.§_-yf§(_loc3_)) == null && _loc3_.indexOf("MISC_") == 0)
            {
               _loc3_ = "MISC_FOOD_" + _loc3_.substring(5);
               _loc4_ = §_-09t§.§_-yf§(_loc3_);
            }
            if(_loc4_)
            {
               _loc1_ += _loc4_.score;
               if(§_-r-§(_loc4_))
               {
                  _loc1_ += _loc4_.§_-8l§ * §_-00u§.§_-KE§.getValue();
               }
            }
         }
         return _loc1_;
      }
      
      public function §_-4J§() : XML
      {
         var _loc2_:§_-2w§ = null;
         var _loc3_:int = 0;
         var _loc1_:* = "";
         _loc1_ += "<Level background=\"ThemeHills\"";
         _loc1_ += " LevelExtension=\"" + this.§_-w1§ + "\"";
         _loc1_ += " AutoCamera=\"" + this.§_-vc§ + "\"";
         _loc1_ += " scoreSilver=\"" + this.§_-Td§ + "\"";
         _loc1_ += " scoreGold=\"" + this.§_-iC§ + "\"";
         _loc1_ += ">";
         _loc1_ += "<Cameras>";
         for each(_loc2_ in this.§_-WA§)
         {
            _loc1_ += " <Camera id=\"" + _loc2_.id + "\" leftBorder=\"" + _loc2_.left + "\" rightBorder=\"" + _loc2_.right + "\" topBorder=\"" + _loc2_.top + "\" bottomBorder=\"" + (_loc2_.top + §_-S2§.§_-u-§) + "\"></Camera>";
         }
         _loc1_ += "</Cameras>";
         _loc1_ += "<Slingshot x=\"" + this.§_-j9§[0].x + "\" y=\"" + (this.§_-j9§[0].y - 8) + "\">";
         _loc1_ += " <Birds>";
         _loc3_ = 0;
         while(_loc3_ < this.§_-j9§.length)
         {
            _loc1_ += "  <Bird id=\"" + this.§_-j9§[_loc3_].id + "\" x=\"" + this.§_-j9§[_loc3_].x + "\" y=\"" + this.§_-j9§[_loc3_].y + "\"></Bird>";
            _loc3_++;
         }
         _loc1_ += " </Birds>";
         _loc1_ += "</Slingshot>";
         _loc3_ = 0;
         while(_loc3_ < this.§_-057§.length)
         {
            _loc1_ += "<Item id=\"" + this.§_-057§[_loc3_].id + "\" x=\"" + this.§_-057§[_loc3_].x + "\" y=\"" + this.§_-057§[_loc3_].y + "\" rotation=\"" + this.§_-057§[_loc3_].angle + "\" ></Item>";
            _loc3_++;
         }
         _loc1_ += "</Level>";
         return new XML(_loc1_);
      }
      
      public function §_-086§(param1:int) : §_-CE§
      {
         return this.§_-057§[param1];
      }
      
      public function addObject(param1:§_-CE§) : void
      {
         this.§_-057§.push(param1);
      }
      
      public function §_-0Cb§(param1:int) : §_-fi§
      {
         return this.§_-T3§[param1];
      }
      
      public function § try§(param1:§_-fi§) : void
      {
         this.§_-T3§.push(param1);
      }
      
      public function §_-gz§(param1:int) : §_-Tr§
      {
         return this.§_-j9§[param1];
      }
      
      public function §_-0AY§(param1:§_-Tr§) : void
      {
         this.§_-j9§.push(param1);
      }
      
      public function §_-iT§() : void
      {
         this.§_-WA§ = new Vector.<§_-2w§>();
      }
      
      public function §_-GC§() : void
      {
         this.§_-j9§ = new Vector.<§_-Tr§>();
      }
      
      public function §_-jQ§(param1:int) : §_-2w§
      {
         return this.§_-WA§[param1];
      }
      
      public function §_-03T§(param1:§_-2w§) : void
      {
         this.§_-WA§.push(param1);
      }
   }
}
