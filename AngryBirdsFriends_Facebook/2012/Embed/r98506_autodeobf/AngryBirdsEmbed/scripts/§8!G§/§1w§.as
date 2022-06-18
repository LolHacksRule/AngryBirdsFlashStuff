package §8!G§
{
   import § y§.*;
   import §#;§.§4!8§;
   import §2!+§.§'!G§;
   import §2!+§.§4>§;
   import §2!+§.§>!?§;
   import §;!5§.§=y§;
   import §^V§.§;n§;
   import §^V§.§[H§;
   import flash.geom.Point;
   
   public class §1w§
   {
      
      public static const §6@§:String = "BACKGROUND_BLUE_GRASS";
       
      
      public var §4!E§:Number = 0;
      
      public var §9^§:Number = -8;
      
      private var §&P§:Vector.<§'!G§> = null;
      
      private var §%h§:Vector.<§4>§> = null;
      
      private var §-h§:Vector.<§>!?§> = null;
      
      private var §6'§:Vector.<§![§> = null;
      
      public var §@!H§:Number = 0;
      
      public var §%!!§:Boolean = false;
      
      public var §""§:int = 0;
      
      public var §@K§:int = 0;
      
      private var §%^§:int = 0;
      
      private var §#!>§:String = null;
      
      public var mName:String = null;
      
      public function §1w§()
      {
         super();
         this.§6'§ = new Vector.<§![§>();
         this.§&P§ = new Vector.<§'!G§>();
         this.§%h§ = new Vector.<§4>§>();
         this.§-h§ = new Vector.<§>!?§>();
         this.§#!>§ = §6@§;
      }
      
      public static function §&!<§(param1:String) : §1w§
      {
         var _loc2_:§1w§ = new §1w§();
         _loc2_.§[!=§(param1);
         return _loc2_;
      }
      
      public static function §>,§(param1:§[H§) : Boolean
      {
         if(param1.§,'§ == §[H§.§'o§ || param1.§,'§ == §[H§.§-@§ || param1.§,'§ == §[H§.§97§)
         {
            return true;
         }
         return false;
      }
      
      public static function §^!7§(param1:String) : §1w§
      {
         var _loc2_:§1w§ = §&!<§(param1);
         _loc2_.§4!E§ = _loc2_.§%h§[0].x;
         _loc2_.§9^§ = _loc2_.§%h§[0].y - 8.5;
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.§&P§.length)
         {
            _loc2_.§&P§[_loc3_].angle = 360 - _loc2_.§&P§[_loc3_].angle;
            _loc3_++;
         }
         return _loc2_;
      }
      
      protected static function §%+§(param1:int, param2:Object) : Vector.<§>!?§>
      {
         var _loc5_:Object = null;
         var _loc6_:Point = null;
         var _loc7_:Point = null;
         var _loc8_:§>!?§ = null;
         var _loc3_:Vector.<§>!?§> = new Vector.<§>!?§>();
         var _loc4_:int = 1;
         while(_loc4_ <= param1)
         {
            if((_loc5_ = param2["joint_" + _loc4_]) != null)
            {
               _loc6_ = new Point(_loc5_.x1,_loc5_.y1);
               _loc7_ = new Point(_loc5_.x2,_loc5_.y2);
               _loc8_ = null;
               if(_loc5_.type == §>!?§.§,K§ || _loc5_.type == §>!?§.§-s§)
               {
                  _loc8_ = new §>!?§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected,_loc5_.limit,_loc5_.lowerLimit,_loc5_.upperLimit,_loc5_.motor,_loc5_.motorSpeed,_loc5_.backAndForth,_loc5_.maxTorque);
                  if(_loc5_.type == §>!?§.§-s§)
                  {
                     _loc8_.axisX = _loc5_.axisX;
                     _loc8_.axisY = _loc5_.axisY;
                  }
               }
               else
               {
                  _loc8_ = new §>!?§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected);
               }
               if(_loc5_.type == §>!?§.§@_§)
               {
                  _loc8_.§[8§ = _loc5_.destroyTimer;
               }
               _loc3_.push(_loc8_);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function get §!j§() : int
      {
         return this.§&P§.length;
      }
      
      public function get § use§() : int
      {
         return this.§-h§.length;
      }
      
      public function get §4V§() : int
      {
         return this.§%h§.length;
      }
      
      public function get §?[§() : int
      {
         return this.§6'§.length;
      }
      
      public function get theme() : String
      {
         return this.§#!>§;
      }
      
      public function set theme(param1:String) : void
      {
         this.§#!>§ = param1;
      }
      
      public function getEagleScore() : int
      {
         var _loc1_:int = this.§=!1§();
         if(_loc1_ > 0 && _loc1_ < this.§%^§)
         {
            return _loc1_;
         }
         if(this.§%^§ == 0)
         {
            return _loc1_;
         }
         return this.§%^§;
      }
      
      public function §0J§(param1:int) : void
      {
         var _loc2_:int = this.§=!1§();
         if(_loc2_ > 0 && _loc2_ < param1)
         {
            return;
         }
         this.§%^§ = param1;
      }
      
      public function §[!=§(param1:String) : void
      {
         var _loc4_:§![§ = null;
         var _loc5_:Object = null;
         var _loc6_:§4>§ = null;
         var _loc7_:String = null;
         var _loc8_:Object = null;
         var _loc9_:§'!G§ = null;
         var _loc2_:Object = JSON.parse(param1);
         this.§@!H§ = _loc2_.LevelExtension;
         this.§%!!§ = false;
         this.§""§ = _loc2_.scoreSilver;
         this.§@K§ = _loc2_.scoreGold;
         this.§%^§ = _loc2_.scoreEagle;
         this.§#!>§ = _loc2_.theme;
         this.mName = _loc2_.id;
         if(_loc2_.counts.joints)
         {
            this.§-h§ = §%+§(_loc2_.counts.joints,_loc2_.world);
         }
         this.§6'§ = new Vector.<§![§>();
         this.§%h§ = new Vector.<§4>§>();
         this.§&P§ = new Vector.<§'!G§>();
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.camera.length)
         {
            (_loc4_ = new §![§()).x = _loc2_.camera[_loc3_].x;
            _loc4_.y = _loc2_.camera[_loc3_].y;
            _loc4_.left = _loc2_.camera[_loc3_].left;
            _loc4_.right = _loc2_.camera[_loc3_].right;
            _loc4_.top = _loc2_.camera[_loc3_].top;
            _loc4_.bottom = _loc2_.camera[_loc3_].bottom;
            _loc4_.id = _loc2_.camera[_loc3_].id;
            this.§6'§.push(_loc4_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.birds)
         {
            _loc5_ = _loc2_.world["bird_" + _loc3_];
            (_loc6_ = new §4>§()).x = _loc5_.x;
            _loc6_.y = _loc5_.y;
            _loc6_.id = _loc5_.id;
            this.§%h§.push(_loc6_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.blocks)
         {
            _loc7_ = "block_" + _loc3_;
            _loc8_ = _loc2_.world[_loc7_];
            (_loc9_ = new §'!G§()).x = _loc8_.x;
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
            this.§&P§.push(_loc9_);
            _loc3_++;
         }
         this.§4!E§ = _loc2_.slingshotX;
         this.§9^§ = _loc2_.slingshotY;
      }
      
      public function §%V§() : Object
      {
         var _loc1_:Object = new Object();
         _loc1_.LevelExtension = this.§@!H§;
         _loc1_.scoreSilver = this.§""§;
         _loc1_.scoreGold = this.§@K§;
         _loc1_.scoreEagle = this.§%^§;
         _loc1_.theme = this.§#!>§;
         _loc1_.name = this.mName;
         _loc1_.camera = this.§6'§;
         var _loc2_:Number = 0;
         _loc1_.world = new Object();
         _loc2_ = 0;
         while(_loc2_ < this.§%h§.length)
         {
            _loc1_.world["bird_" + (_loc2_ + 1)] = this.§%h§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§&P§.length)
         {
            _loc1_.world["block_" + (_loc2_ + 1)] = this.§&P§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§-h§.length)
         {
            _loc1_.world["joint_" + (_loc2_ + 1)] = this.§-h§[_loc2_];
            _loc2_++;
         }
         _loc1_.counts = new Object();
         _loc1_.counts.blocks = this.§&P§.length;
         _loc1_.counts.birds = this.§%h§.length;
         _loc1_.counts.joints = this.§-h§.length;
         _loc1_.slingshotX = this.§4!E§;
         _loc1_.slingshotY = this.§9^§;
         return _loc1_;
      }
      
      public function §[!%§() : String
      {
         return JSON.stringify(this.§%V§());
      }
      
      public function §=!1§() : int
      {
         var _loc2_:§'!G§ = null;
         var _loc3_:String = null;
         var _loc4_:§[H§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§&P§)
         {
            _loc3_ = _loc2_.id;
            if((_loc4_ = §;n§.§@!G§(_loc3_)) == null && _loc3_.indexOf("MISC_") == 0)
            {
               _loc3_ = "MISC_FOOD_" + _loc3_.substring(5);
               _loc4_ = §;n§.§@!G§(_loc3_);
            }
            if(_loc4_)
            {
               _loc1_ += _loc4_.score;
               if(§>,§(_loc4_))
               {
                  _loc1_ += _loc4_.§;u§ * §4!8§.§ ]§.getValue();
               }
            }
         }
         return _loc1_;
      }
      
      public function §5!0§() : XML
      {
         var _loc2_:§![§ = null;
         var _loc3_:int = 0;
         var _loc1_:* = "";
         _loc1_ += "<Level background=\"ThemeHills\"";
         _loc1_ += " LevelExtension=\"" + this.§@!H§ + "\"";
         _loc1_ += " AutoCamera=\"" + this.§%!!§ + "\"";
         _loc1_ += " scoreSilver=\"" + this.§""§ + "\"";
         _loc1_ += " scoreGold=\"" + this.§@K§ + "\"";
         _loc1_ += ">";
         _loc1_ += "<Cameras>";
         for each(_loc2_ in this.§6'§)
         {
            _loc1_ += " <Camera id=\"" + _loc2_.id + "\" leftBorder=\"" + _loc2_.left + "\" rightBorder=\"" + _loc2_.right + "\" topBorder=\"" + _loc2_.top + "\" bottomBorder=\"" + (_loc2_.top + §=y§.§#!@§) + "\"></Camera>";
         }
         _loc1_ += "</Cameras>";
         _loc1_ += "<Slingshot x=\"" + this.§%h§[0].x + "\" y=\"" + (this.§%h§[0].y - 8) + "\">";
         _loc1_ += " <Birds>";
         _loc3_ = 0;
         while(_loc3_ < this.§%h§.length)
         {
            _loc1_ += "  <Bird id=\"" + this.§%h§[_loc3_].id + "\" x=\"" + this.§%h§[_loc3_].x + "\" y=\"" + this.§%h§[_loc3_].y + "\"></Bird>";
            _loc3_++;
         }
         _loc1_ += " </Birds>";
         _loc1_ += "</Slingshot>";
         _loc3_ = 0;
         while(_loc3_ < this.§&P§.length)
         {
            _loc1_ += "<Item id=\"" + this.§&P§[_loc3_].id + "\" x=\"" + this.§&P§[_loc3_].x + "\" y=\"" + this.§&P§[_loc3_].y + "\" rotation=\"" + this.§&P§[_loc3_].angle + "\" ></Item>";
            _loc3_++;
         }
         _loc1_ += "</Level>";
         return new XML(_loc1_);
      }
      
      public function §9!#§(param1:int) : §'!G§
      {
         return this.§&P§[param1];
      }
      
      public function addObject(param1:§'!G§) : void
      {
         this.§&P§.push(param1);
      }
      
      public function §==§(param1:int) : §>!?§
      {
         return this.§-h§[param1];
      }
      
      public function §#F§(param1:§>!?§) : void
      {
         this.§-h§.push(param1);
      }
      
      public function §[_§(param1:int) : §4>§
      {
         return this.§%h§[param1];
      }
      
      public function §^s§(param1:§4>§) : void
      {
         this.§%h§.push(param1);
      }
      
      public function §+?§() : void
      {
         this.§6'§ = new Vector.<§![§>();
      }
      
      public function §7U§() : void
      {
         this.§%h§ = new Vector.<§4>§>();
      }
      
      public function §%W§(param1:int) : §![§
      {
         return this.§6'§[param1];
      }
      
      public function §7s§(param1:§![§) : void
      {
         this.§6'§.push(param1);
      }
   }
}
