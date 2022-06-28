package §1!-§
{
   import §2k§.§`n§;
   import §6A§.§ !§;
   import §8§.*;
   import §^!L§.§6<§;
   import §^!L§.each;
   import §^G§.§#H§;
   import §^G§.§;u§;
   import §^G§.§`8§;
   import flash.geom.Point;
   
   public class §@Z§
   {
      
      public static const §try§:String = "BACKGROUND_BLUE_GRASS";
       
      
      public var §!N§:Number = 0;
      
      public var §#!4§:Number = -8;
      
      protected var §+q§:Vector.<§;u§> = null;
      
      protected var §,B§:Vector.<§#H§> = null;
      
      protected var §]J§:Vector.<§`8§> = null;
      
      protected var §5m§:Vector.<§5>§> = null;
      
      public var §!x§:int = 0;
      
      public var §4!6§:int = 0;
      
      private var §#=§:int = 0;
      
      protected var §@t§:String = null;
      
      public var mName:String = null;
      
      public function §@Z§()
      {
         super();
         this.§5m§ = new Vector.<§5>§>();
         this.§+q§ = new Vector.<§;u§>();
         this.§,B§ = new Vector.<§#H§>();
         this.§]J§ = new Vector.<§`8§>();
         this.§@t§ = §try§;
      }
      
      public static function §[e§(param1:String) : §@Z§
      {
         var _loc2_:§@Z§ = new §@Z§();
         _loc2_.§29§(param1);
         return _loc2_;
      }
      
      public static function §'<§(param1:each) : Boolean
      {
         if(param1.§@%§ == each.§,U§ || param1.§@%§ == each.§`V§ || param1.§@%§ == each.§9R§)
         {
            return true;
         }
         return false;
      }
      
      public static function §^&§(param1:String) : §@Z§
      {
         var _loc2_:§@Z§ = §[e§(param1);
         _loc2_.§!N§ = _loc2_.§,B§[0].x;
         _loc2_.§#!4§ = _loc2_.§,B§[0].y - 8.5;
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.§+q§.length)
         {
            _loc2_.§+q§[_loc3_].angle = 360 - _loc2_.§+q§[_loc3_].angle;
            _loc3_++;
         }
         return _loc2_;
      }
      
      protected static function §@f§(param1:int, param2:Object) : Vector.<§`8§>
      {
         var _loc5_:Object = null;
         var _loc6_:Point = null;
         var _loc7_:Point = null;
         var _loc8_:§`8§ = null;
         var _loc3_:Vector.<§`8§> = new Vector.<§`8§>();
         var _loc4_:int = 1;
         while(_loc4_ <= param1)
         {
            if((_loc5_ = param2["joint_" + _loc4_]) != null)
            {
               _loc6_ = new Point(_loc5_.x1,_loc5_.y1);
               _loc7_ = new Point(_loc5_.x2,_loc5_.y2);
               _loc8_ = null;
               if(_loc5_.type == §`8§.§12§ || _loc5_.type == §`8§.§#!K§)
               {
                  _loc8_ = new §`8§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected,_loc5_.limit,_loc5_.lowerLimit,_loc5_.upperLimit,_loc5_.motor,_loc5_.motorSpeed,_loc5_.backAndForth,_loc5_.maxTorque);
                  if(_loc5_.type == §`8§.§#!K§)
                  {
                     _loc8_.axisX = _loc5_.axisX;
                     _loc8_.axisY = _loc5_.axisY;
                  }
               }
               else
               {
                  _loc8_ = new §`8§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected);
               }
               if(_loc5_.type == §`8§.§9!+§)
               {
                  _loc8_.§=e§ = _loc5_.destroyTimer;
               }
               _loc3_.push(_loc8_);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function get §-'§() : int
      {
         return this.§+q§.length;
      }
      
      public function get §#,§() : int
      {
         return this.§]J§.length;
      }
      
      public function get §]U§() : int
      {
         return this.§,B§.length;
      }
      
      public function get §8e§() : int
      {
         return this.§5m§.length;
      }
      
      public function get theme() : String
      {
         return this.§@t§;
      }
      
      public function set theme(param1:String) : void
      {
         this.§@t§ = param1;
      }
      
      public function getEagleScore() : int
      {
         var _loc1_:int = this.§+v§();
         if(_loc1_ > 0 && _loc1_ < this.§#=§)
         {
            return _loc1_;
         }
         if(this.§#=§ == 0)
         {
            return _loc1_;
         }
         return this.§#=§;
      }
      
      public function §&<§(param1:int) : void
      {
         var _loc2_:int = this.§+v§();
         if(_loc2_ > 0 && _loc2_ < param1)
         {
            return;
         }
         this.§#=§ = param1;
      }
      
      public function §29§(param1:String) : void
      {
         var _loc3_:int = 0;
         var _loc5_:Object = null;
         var _loc6_:String = null;
         var _loc8_:§5>§ = null;
         var _loc9_:Object = null;
         var _loc10_:§#H§ = null;
         var _loc11_:§;u§ = null;
         var _loc2_:Object = JSON.parse(param1);
         this.§!x§ = _loc2_.scoreSilver;
         this.§4!6§ = _loc2_.scoreGold;
         this.§#=§ = _loc2_.scoreEagle;
         this.§@t§ = _loc2_.theme;
         this.mName = _loc2_.id;
         if(_loc2_.counts.joints)
         {
            this.§]J§ = §@f§(_loc2_.counts.joints,_loc2_.world);
         }
         this.§5m§ = new Vector.<§5>§>();
         this.§,B§ = new Vector.<§#H§>();
         this.§+q§ = new Vector.<§;u§>();
         _loc3_ = 0;
         while(_loc3_ < _loc2_.camera.length)
         {
            (_loc8_ = new §5>§()).x = _loc2_.camera[_loc3_].x;
            _loc8_.y = _loc2_.camera[_loc3_].y;
            _loc8_.left = _loc2_.camera[_loc3_].left;
            _loc8_.right = _loc2_.camera[_loc3_].right;
            _loc8_.top = _loc2_.camera[_loc3_].top;
            _loc8_.bottom = _loc2_.camera[_loc3_].bottom;
            _loc8_.id = _loc2_.camera[_loc3_].id;
            this.§5m§.push(_loc8_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.birds)
         {
            _loc9_ = _loc2_.world["bird_" + _loc3_];
            (_loc10_ = new §#H§()).x = _loc9_.x;
            _loc10_.y = _loc9_.y;
            _loc10_.id = _loc9_.id;
            this.§,B§.push(_loc10_);
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
            (_loc11_ = new §;u§()).x = _loc5_.x;
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
            this.§+q§.push(_loc11_);
            _loc3_++;
         }
         this.§!N§ = _loc2_.slingshotX;
         this.§#!4§ = _loc2_.slingshotY;
      }
      
      public function §&s§() : Object
      {
         var _loc1_:Object = new Object();
         _loc1_.scoreSilver = this.§!x§;
         _loc1_.scoreGold = this.§4!6§;
         _loc1_.scoreEagle = this.§#=§;
         _loc1_.theme = this.§@t§;
         _loc1_.name = this.mName;
         _loc1_.camera = this.§5m§;
         var _loc2_:Number = 0;
         _loc1_.world = new Object();
         _loc2_ = 0;
         while(_loc2_ < this.§,B§.length)
         {
            _loc1_.world["bird_" + (_loc2_ + 1)] = this.§,B§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§+q§.length)
         {
            _loc1_.world["block_" + (_loc2_ + 1)] = this.§+q§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§]J§.length)
         {
            _loc1_.world["joint_" + (_loc2_ + 1)] = this.§]J§[_loc2_].getAsSerializableObject();
            _loc2_++;
         }
         _loc1_.counts = new Object();
         _loc1_.counts.blocks = this.§+q§.length;
         _loc1_.counts.birds = this.§,B§.length;
         _loc1_.counts.joints = this.§]J§.length;
         _loc1_.slingshotX = this.§!N§;
         _loc1_.slingshotY = this.§#!4§;
         return _loc1_;
      }
      
      public function §+!I§() : String
      {
         return JSON.stringify(this.§&s§());
      }
      
      public function §+v§() : int
      {
         var _loc2_:§;u§ = null;
         var _loc3_:String = null;
         var _loc4_:each = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§+q§)
         {
            _loc3_ = _loc2_.id;
            if((_loc4_ = §6<§.§6H§(_loc3_)) == null && _loc3_.indexOf("MISC_") == 0)
            {
               _loc3_ = "MISC_FOOD_" + _loc3_.substring(5);
               _loc4_ = §6<§.§6H§(_loc3_);
            }
            if(_loc4_)
            {
               _loc1_ += _loc4_.score;
               if(§'<§(_loc4_))
               {
                  _loc1_ += _loc4_.§@!§ * § !§.§6]§.getValue();
               }
            }
         }
         return _loc1_;
      }
      
      public function §?W§() : XML
      {
         var _loc2_:§5>§ = null;
         var _loc3_:int = 0;
         var _loc1_:* = "";
         _loc1_ += "<Level background=\"ThemeHills\"";
         _loc1_ += " scoreSilver=\"" + this.§!x§ + "\"";
         _loc1_ += " scoreGold=\"" + this.§4!6§ + "\"";
         _loc1_ += ">";
         _loc1_ += "<Cameras>";
         for each(_loc2_ in this.§5m§)
         {
            _loc1_ += " <Camera id=\"" + _loc2_.id + "\" leftBorder=\"" + _loc2_.left + "\" rightBorder=\"" + _loc2_.right + "\" topBorder=\"" + _loc2_.top + "\" bottomBorder=\"" + (_loc2_.top + §`n§.§]$§) + "\"></Camera>";
         }
         _loc1_ += "</Cameras>";
         _loc1_ += "<Slingshot x=\"" + this.§,B§[0].x + "\" y=\"" + (this.§,B§[0].y - 8) + "\">";
         _loc1_ += " <Birds>";
         _loc3_ = 0;
         while(_loc3_ < this.§,B§.length)
         {
            _loc1_ += "  <Bird id=\"" + this.§,B§[_loc3_].id + "\" x=\"" + this.§,B§[_loc3_].x + "\" y=\"" + this.§,B§[_loc3_].y + "\"></Bird>";
            _loc3_++;
         }
         _loc1_ += " </Birds>";
         _loc1_ += "</Slingshot>";
         _loc3_ = 0;
         while(_loc3_ < this.§+q§.length)
         {
            _loc1_ += "<Item id=\"" + this.§+q§[_loc3_].id + "\" x=\"" + this.§+q§[_loc3_].x + "\" y=\"" + this.§+q§[_loc3_].y + "\" rotation=\"" + this.§+q§[_loc3_].angle + "\" ></Item>";
            _loc3_++;
         }
         _loc1_ += "</Level>";
         return new XML(_loc1_);
      }
      
      public function §1F§(param1:int) : §;u§
      {
         return this.§+q§[param1];
      }
      
      public function addObject(param1:§;u§) : void
      {
         this.§+q§.push(param1);
      }
      
      public function §04§(param1:int) : §`8§
      {
         return this.§]J§[param1];
      }
      
      public function §,f§(param1:§`8§) : void
      {
         this.§]J§.push(param1);
      }
      
      public function §4w§(param1:int) : §#H§
      {
         return this.§,B§[param1];
      }
      
      public function §+!D§(param1:§#H§) : void
      {
         this.§,B§.push(param1);
      }
      
      public function §5j§() : void
      {
         this.§5m§ = new Vector.<§5>§>();
      }
      
      public function §7!,§() : void
      {
         this.§,B§ = new Vector.<§#H§>();
      }
      
      public function §8=§(param1:int) : §5>§
      {
         return this.§5m§[param1];
      }
      
      public function §'_§(param1:§5>§) : void
      {
         this.§5m§.push(param1);
      }
   }
}
