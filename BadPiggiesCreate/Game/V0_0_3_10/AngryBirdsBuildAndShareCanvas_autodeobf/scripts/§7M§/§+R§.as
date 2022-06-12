package §7M§
{
   import §%!I§.§ C§;
   import §%!I§.§,!3§;
   import §%!I§.§<G§;
   import §&!s§.§+!O§;
   import §&!s§.§1!S§;
   import §2!§.§1!n§;
   import §4!s§.§%I§;
   import §63§.*;
   import flash.geom.Point;
   
   public class §+R§
   {
      
      public static const §1"5§:String = "BACKGROUND_BLUE_GRASS";
       
      
      public var §;!u§:Number = 0;
      
      public var §?!L§:Number = -8;
      
      private var §`F§:Vector.<§,!3§> = null;
      
      private var mBirds:Vector.<§<G§> = null;
      
      private var §[z§:Vector.<§ C§> = null;
      
      private var §>^§:Vector.<§?!p§> = null;
      
      public var §<D§:Number = 0;
      
      public var §-2§:Boolean = false;
      
      public var mScoreSilver:int = 0;
      
      public var mScoreGold:int = 0;
      
      private var §;!J§:int = 0;
      
      private var §<!v§:String = null;
      
      public var mName:String = null;
      
      public function §+R§()
      {
         super();
         this.§>^§ = new Vector.<§?!p§>();
         this.§`F§ = new Vector.<§,!3§>();
         this.mBirds = new Vector.<§<G§>();
         this.§[z§ = new Vector.<§ C§>();
         this.§<!v§ = §1"5§;
      }
      
      public static function §>"&§(param1:String) : §+R§
      {
         var _loc2_:§+R§ = new §+R§();
         _loc2_.§%!S§(param1);
         return _loc2_;
      }
      
      public static function §4$§(param1:§1!S§) : Boolean
      {
         if(param1.§`!A§ == §1!S§.§?8§ || param1.§`!A§ == §1!S§.§=^§ || param1.§`!A§ == §1!S§.§,!G§)
         {
            return true;
         }
         return false;
      }
      
      public static function §=!L§(param1:String) : §+R§
      {
         var _loc2_:§+R§ = §>"&§(param1);
         _loc2_.§;!u§ = _loc2_.mBirds[0].x;
         _loc2_.§?!L§ = _loc2_.mBirds[0].y - 8.5;
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.§`F§.length)
         {
            _loc2_.§`F§[_loc3_].angle = 360 - _loc2_.§`F§[_loc3_].angle;
            _loc3_++;
         }
         return _loc2_;
      }
      
      protected static function §=!Y§(param1:int, param2:Object) : Vector.<§ C§>
      {
         var _loc5_:Object = null;
         var _loc6_:Point = null;
         var _loc7_:Point = null;
         var _loc8_:§ C§ = null;
         var _loc3_:Vector.<§ C§> = new Vector.<§ C§>();
         var _loc4_:int = 1;
         while(_loc4_ <= param1)
         {
            if((_loc5_ = param2["joint_" + _loc4_]) != null)
            {
               _loc6_ = new Point(_loc5_.x1,_loc5_.y1);
               _loc7_ = new Point(_loc5_.x2,_loc5_.y2);
               _loc8_ = null;
               if(_loc5_.type == § C§.§;%§ || _loc5_.type == § C§.§<!&§)
               {
                  _loc8_ = new § C§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected,_loc5_.limit,_loc5_.lowerLimit,_loc5_.upperLimit,_loc5_.motor,_loc5_.motorSpeed,_loc5_.backAndForth,_loc5_.maxTorque);
                  if(_loc5_.type == § C§.§<!&§)
                  {
                     _loc8_.axisX = _loc5_.axisX;
                     _loc8_.axisY = _loc5_.axisY;
                  }
               }
               else
               {
                  _loc8_ = new § C§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected);
               }
               if(_loc5_.type == § C§.§<" §)
               {
                  _loc8_.§-^§ = _loc5_.destroyTimer;
               }
               _loc3_.push(_loc8_);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function get §3J§() : int
      {
         return this.§`F§.length;
      }
      
      public function get §7"4§() : int
      {
         return this.§[z§.length;
      }
      
      public function get §!;§() : int
      {
         return this.mBirds.length;
      }
      
      public function get §^"%§() : int
      {
         return this.§>^§.length;
      }
      
      public function get theme() : String
      {
         return this.§<!v§;
      }
      
      public function set theme(param1:String) : void
      {
         this.§<!v§ = param1;
      }
      
      public function getEagleScore() : int
      {
         var _loc1_:int = this.§="6§();
         if(_loc1_ > 0 && _loc1_ < this.§;!J§)
         {
            return _loc1_;
         }
         if(this.§;!J§ == 0)
         {
            return _loc1_;
         }
         return this.§;!J§;
      }
      
      public function §%!A§(param1:int) : void
      {
         var _loc2_:int = this.§="6§();
         if(_loc2_ > 0 && _loc2_ < param1)
         {
            return;
         }
         this.§;!J§ = param1;
      }
      
      public function §%!S§(param1:String) : void
      {
         var _loc5_:Object = null;
         var _loc6_:String = null;
         var _loc8_:§?!p§ = null;
         var _loc9_:Object = null;
         var _loc10_:§<G§ = null;
         var _loc11_:§,!3§ = null;
         var _loc2_:Object = JSON.parse(param1);
         this.§<D§ = _loc2_.LevelExtension;
         this.§-2§ = false;
         this.mScoreSilver = _loc2_.scoreSilver;
         this.mScoreGold = _loc2_.scoreGold;
         this.§;!J§ = _loc2_.scoreEagle;
         this.§<!v§ = _loc2_.theme;
         this.mName = _loc2_.id;
         if(_loc2_.counts.joints)
         {
            this.§[z§ = §=!Y§(_loc2_.counts.joints,_loc2_.world);
         }
         this.§>^§ = new Vector.<§?!p§>();
         this.mBirds = new Vector.<§<G§>();
         this.§`F§ = new Vector.<§,!3§>();
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.camera.length)
         {
            (_loc8_ = new §?!p§()).x = _loc2_.camera[_loc3_].x;
            _loc8_.y = _loc2_.camera[_loc3_].y;
            _loc8_.left = _loc2_.camera[_loc3_].left;
            _loc8_.right = _loc2_.camera[_loc3_].right;
            _loc8_.top = _loc2_.camera[_loc3_].top;
            _loc8_.bottom = _loc2_.camera[_loc3_].bottom;
            _loc8_.id = _loc2_.camera[_loc3_].id;
            this.§>^§.push(_loc8_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.birds)
         {
            _loc9_ = _loc2_.world["bird_" + _loc3_];
            (_loc10_ = new §<G§()).x = _loc9_.x;
            _loc10_.y = _loc9_.y;
            _loc10_.id = _loc9_.id;
            this.mBirds.push(_loc10_);
            _loc3_++;
         }
         var _loc4_:Vector.<int> = new Vector.<int>();
         var _loc7_:int = 1;
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.blocks)
         {
            _loc6_ = "block_" + _loc3_;
            if((_loc5_ = _loc2_.world[_loc6_]).uniqueID && _loc5_.uniqueID.length > 0)
            {
               _loc4_.push(_loc5_.uniqueID);
            }
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.blocks)
         {
            _loc6_ = "block_" + _loc3_;
            _loc5_ = _loc2_.world[_loc6_];
            (_loc11_ = new §,!3§()).x = _loc5_.x;
            _loc11_.y = _loc5_.y;
            _loc11_.id = _loc5_.id;
            if(_loc5_.uniqueID && _loc5_.uniqueID.length > 0)
            {
               _loc11_.uniqueID = _loc5_.uniqueID;
            }
            else
            {
               while(_loc4_.indexOf(_loc7_) >= 0)
               {
                  _loc7_++;
               }
               _loc11_.uniqueID = _loc7_.toString();
               _loc4_.push(_loc7_);
            }
            if(_loc5_.front)
            {
               _loc11_.front = _loc5_.front;
            }
            _loc11_.angle = _loc5_.angle;
            this.§`F§.push(_loc11_);
            _loc3_++;
         }
         this.§;!u§ = _loc2_.slingshotX;
         this.§?!L§ = _loc2_.slingshotY;
      }
      
      public function §?"#§() : Object
      {
         var _loc1_:Object = new Object();
         _loc1_.LevelExtension = this.§<D§;
         _loc1_.scoreSilver = this.mScoreSilver;
         _loc1_.scoreGold = this.mScoreGold;
         _loc1_.scoreEagle = this.§;!J§;
         _loc1_.theme = this.§<!v§;
         _loc1_.name = this.mName;
         _loc1_.camera = this.§>^§;
         var _loc2_:Number = 0;
         _loc1_.world = new Object();
         _loc2_ = 0;
         while(_loc2_ < this.mBirds.length)
         {
            _loc1_.world["bird_" + (_loc2_ + 1)] = this.mBirds[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§`F§.length)
         {
            _loc1_.world["block_" + (_loc2_ + 1)] = this.§`F§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§[z§.length)
         {
            _loc1_.world["joint_" + (_loc2_ + 1)] = this.§[z§[_loc2_];
            _loc2_++;
         }
         _loc1_.counts = new Object();
         _loc1_.counts.blocks = this.§`F§.length;
         _loc1_.counts.birds = this.mBirds.length;
         _loc1_.counts.joints = this.§[z§.length;
         _loc1_.slingshotX = this.§;!u§;
         _loc1_.slingshotY = this.§?!L§;
         return _loc1_;
      }
      
      public function § j§() : String
      {
         return JSON.stringify(this.§?"#§());
      }
      
      public function §="6§() : int
      {
         var _loc2_:§,!3§ = null;
         var _loc3_:String = null;
         var _loc4_:§1!S§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§`F§)
         {
            _loc3_ = _loc2_.id;
            if((_loc4_ = §+!O§.§?!b§(_loc3_)) == null && _loc3_.indexOf("MISC_") == 0)
            {
               _loc3_ = "MISC_FOOD_" + _loc3_.substring(5);
               _loc4_ = §+!O§.§?!b§(_loc3_);
            }
            if(_loc4_)
            {
               _loc1_ += _loc4_.score;
               if(§4$§(_loc4_))
               {
                  _loc1_ += _loc4_.§4>§ * §%I§.§2Q§.getValue();
               }
            }
         }
         return _loc1_;
      }
      
      public function §3`§() : XML
      {
         var _loc2_:§?!p§ = null;
         var _loc3_:int = 0;
         var _loc1_:* = "";
         _loc1_ += "<Level background=\"ThemeHills\"";
         _loc1_ += " LevelExtension=\"" + this.§<D§ + "\"";
         _loc1_ += " AutoCamera=\"" + this.§-2§ + "\"";
         _loc1_ += " scoreSilver=\"" + this.mScoreSilver + "\"";
         _loc1_ += " scoreGold=\"" + this.mScoreGold + "\"";
         _loc1_ += ">";
         _loc1_ += "<Cameras>";
         for each(_loc2_ in this.§>^§)
         {
            _loc1_ += " <Camera id=\"" + _loc2_.id + "\" leftBorder=\"" + _loc2_.left + "\" rightBorder=\"" + _loc2_.right + "\" topBorder=\"" + _loc2_.top + "\" bottomBorder=\"" + (_loc2_.top + §1!n§.SCREEN_HEIGHT_B2) + "\"></Camera>";
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
         while(_loc3_ < this.§`F§.length)
         {
            _loc1_ += "<Item id=\"" + this.§`F§[_loc3_].id + "\" x=\"" + this.§`F§[_loc3_].x + "\" y=\"" + this.§`F§[_loc3_].y + "\" rotation=\"" + this.§`F§[_loc3_].angle + "\" ></Item>";
            _loc3_++;
         }
         _loc1_ += "</Level>";
         return new XML(_loc1_);
      }
      
      public function getObject(param1:int) : §,!3§
      {
         return this.§`F§[param1];
      }
      
      public function addObject(param1:§,!3§) : void
      {
         this.§`F§.push(param1);
      }
      
      public function §;-§(param1:int) : § C§
      {
         return this.§[z§[param1];
      }
      
      public function §+!Q§(param1:§ C§) : void
      {
         this.§[z§.push(param1);
      }
      
      public function §!!,§(param1:int) : §<G§
      {
         return this.mBirds[param1];
      }
      
      public function §?+§(param1:§<G§) : void
      {
         this.mBirds.push(param1);
      }
      
      public function §0"5§() : void
      {
         this.§>^§ = new Vector.<§?!p§>();
      }
      
      public function §<Q§() : void
      {
         this.mBirds = new Vector.<§<G§>();
      }
      
      public function §+!V§(param1:int) : §?!p§
      {
         return this.§>^§[param1];
      }
      
      public function §;"#§(param1:§?!p§) : void
      {
         this.§>^§.push(param1);
      }
   }
}
