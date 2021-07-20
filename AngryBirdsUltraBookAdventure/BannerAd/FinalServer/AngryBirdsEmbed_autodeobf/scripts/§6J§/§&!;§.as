package §6J§
{
   import §'!E§.§-x§;
   import §'!E§.§9!§;
   import §'!E§.§]g§;
   import §7!0§.§9!0§;
   import §7!0§.§9!;§;
   import §?b§.§7!,§;
   import §@!!§.§=_§;
   import §`>§.*;
   import flash.geom.Point;
   
   public class §&!;§
   {
      
      public static const §7D§:String = "BACKGROUND_BLUE_GRASS";
       
      
      public var §+;§:Number = 0;
      
      public var §0_§:Number = -8;
      
      private var §3! §:Vector.<§]g§> = null;
      
      private var §,!&§:Vector.<§-x§> = null;
      
      private var §@i§:Vector.<§9!§> = null;
      
      private var §<!6§:Vector.<§]<§> = null;
      
      public var § `§:Number = 0;
      
      public var §0L§:Boolean = false;
      
      public var §=N§:int = 0;
      
      public var §'T§:int = 0;
      
      private var §case§:int = 0;
      
      private var §%=§:String = null;
      
      public var mName:String = null;
      
      public function §&!;§()
      {
         super();
         this.§<!6§ = new Vector.<§]<§>();
         this.§3! § = new Vector.<§]g§>();
         this.§,!&§ = new Vector.<§-x§>();
         this.§@i§ = new Vector.<§9!§>();
         this.§%=§ = §7D§;
      }
      
      public static function §&-§(param1:String) : §&!;§
      {
         var _loc2_:§&!;§ = new §&!;§();
         _loc2_.§9!3§(param1);
         return _loc2_;
      }
      
      public static function §^G§(param1:§9!;§) : Boolean
      {
         if(param1.§>O§ == §9!;§.§]h§ || param1.§>O§ == §9!;§.§9S§ || param1.§>O§ == §9!;§.§=!5§)
         {
            return true;
         }
         return false;
      }
      
      public static function §@z§(param1:String) : §&!;§
      {
         var _loc2_:§&!;§ = §&-§(param1);
         _loc2_.§+;§ = _loc2_.§,!&§[0].x;
         _loc2_.§0_§ = _loc2_.§,!&§[0].y - 8.5;
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.§3! §.length)
         {
            _loc2_.§3! §[_loc3_].angle = 360 - _loc2_.§3! §[_loc3_].angle;
            _loc3_++;
         }
         return _loc2_;
      }
      
      protected static function §"H§(param1:int, param2:Object) : Vector.<§9!§>
      {
         var _loc5_:Object = null;
         var _loc6_:Point = null;
         var _loc7_:Point = null;
         var _loc8_:§9!§ = null;
         var _loc3_:Vector.<§9!§> = new Vector.<§9!§>();
         var _loc4_:int = 1;
         while(_loc4_ <= param1)
         {
            if((_loc5_ = param2["joint_" + _loc4_]) != null)
            {
               _loc6_ = new Point(_loc5_.x1,_loc5_.y1);
               _loc7_ = new Point(_loc5_.x2,_loc5_.y2);
               _loc8_ = null;
               if(_loc5_.type == §9!§.§#S§ || _loc5_.type == §9!§.§8J§)
               {
                  _loc8_ = new §9!§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected,_loc5_.limit,_loc5_.lowerLimit,_loc5_.upperLimit,_loc5_.motor,_loc5_.motorSpeed,_loc5_.backAndForth,_loc5_.maxTorque);
                  if(_loc5_.type == §9!§.§8J§)
                  {
                     _loc8_.axisX = _loc5_.axisX;
                     _loc8_.axisY = _loc5_.axisY;
                  }
               }
               else
               {
                  _loc8_ = new §9!§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected);
               }
               if(_loc5_.type == §9!§.§3=§)
               {
                  _loc8_.§=w§ = _loc5_.destroyTimer;
               }
               _loc3_.push(_loc8_);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function get §=^§() : int
      {
         return this.§3! §.length;
      }
      
      public function get §<'§() : int
      {
         return this.§@i§.length;
      }
      
      public function get §11§() : int
      {
         return this.§,!&§.length;
      }
      
      public function get §&!@§() : int
      {
         return this.§<!6§.length;
      }
      
      public function get theme() : String
      {
         return this.§%=§;
      }
      
      public function set theme(param1:String) : void
      {
         this.§%=§ = param1;
      }
      
      public function getEagleScore() : int
      {
         var _loc1_:int = this.§="§();
         if(_loc1_ > 0 && _loc1_ < this.§case§)
         {
            return _loc1_;
         }
         if(this.§case§ == 0)
         {
            return _loc1_;
         }
         return this.§case§;
      }
      
      public function §+! §(param1:int) : void
      {
         var _loc2_:int = this.§="§();
         if(_loc2_ > 0 && _loc2_ < param1)
         {
            return;
         }
         this.§case§ = param1;
      }
      
      public function §9!3§(param1:String) : void
      {
         var _loc4_:§]<§ = null;
         var _loc5_:Object = null;
         var _loc6_:§-x§ = null;
         var _loc7_:String = null;
         var _loc8_:Object = null;
         var _loc9_:§]g§ = null;
         var _loc2_:Object = JSON.parse(param1);
         this.§ `§ = _loc2_.LevelExtension;
         this.§0L§ = false;
         this.§=N§ = _loc2_.scoreSilver;
         this.§'T§ = _loc2_.scoreGold;
         this.§case§ = _loc2_.scoreEagle;
         this.§%=§ = _loc2_.theme;
         this.mName = _loc2_.id;
         if(_loc2_.counts.joints)
         {
            this.§@i§ = §"H§(_loc2_.counts.joints,_loc2_.world);
         }
         this.§<!6§ = new Vector.<§]<§>();
         this.§,!&§ = new Vector.<§-x§>();
         this.§3! § = new Vector.<§]g§>();
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.camera.length)
         {
            (_loc4_ = new §]<§()).x = _loc2_.camera[_loc3_].x;
            _loc4_.y = _loc2_.camera[_loc3_].y;
            _loc4_.left = _loc2_.camera[_loc3_].left;
            _loc4_.right = _loc2_.camera[_loc3_].right;
            _loc4_.top = _loc2_.camera[_loc3_].top;
            _loc4_.bottom = _loc2_.camera[_loc3_].bottom;
            _loc4_.id = _loc2_.camera[_loc3_].id;
            this.§<!6§.push(_loc4_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.birds)
         {
            _loc5_ = _loc2_.world["bird_" + _loc3_];
            (_loc6_ = new §-x§()).x = _loc5_.x;
            _loc6_.y = _loc5_.y;
            _loc6_.id = _loc5_.id;
            this.§,!&§.push(_loc6_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.blocks)
         {
            _loc7_ = "block_" + _loc3_;
            _loc8_ = _loc2_.world[_loc7_];
            (_loc9_ = new §]g§()).x = _loc8_.x;
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
            this.§3! §.push(_loc9_);
            _loc3_++;
         }
         this.§+;§ = _loc2_.slingshotX;
         this.§0_§ = _loc2_.slingshotY;
      }
      
      public function §[[§() : Object
      {
         var _loc1_:Object = new Object();
         _loc1_.LevelExtension = this.§ `§;
         _loc1_.scoreSilver = this.§=N§;
         _loc1_.scoreGold = this.§'T§;
         _loc1_.scoreEagle = this.§case§;
         _loc1_.theme = this.§%=§;
         _loc1_.name = this.mName;
         _loc1_.camera = this.§<!6§;
         var _loc2_:Number = 0;
         _loc1_.world = new Object();
         _loc2_ = 0;
         while(_loc2_ < this.§,!&§.length)
         {
            _loc1_.world["bird_" + (_loc2_ + 1)] = this.§,!&§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§3! §.length)
         {
            _loc1_.world["block_" + (_loc2_ + 1)] = this.§3! §[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§@i§.length)
         {
            _loc1_.world["joint_" + (_loc2_ + 1)] = this.§@i§[_loc2_];
            _loc2_++;
         }
         _loc1_.counts = new Object();
         _loc1_.counts.blocks = this.§3! §.length;
         _loc1_.counts.birds = this.§,!&§.length;
         _loc1_.counts.joints = this.§@i§.length;
         _loc1_.slingshotX = this.§+;§;
         _loc1_.slingshotY = this.§0_§;
         return _loc1_;
      }
      
      public function §2H§() : String
      {
         return JSON.stringify(this.§[[§());
      }
      
      public function §="§() : int
      {
         var _loc2_:§]g§ = null;
         var _loc3_:String = null;
         var _loc4_:§9!;§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§3! §)
         {
            _loc3_ = _loc2_.id;
            if((_loc4_ = §9!0§.§&!<§(_loc3_)) == null && _loc3_.indexOf("MISC_") == 0)
            {
               _loc3_ = "MISC_FOOD_" + _loc3_.substring(5);
               _loc4_ = §9!0§.§&!<§(_loc3_);
            }
            if(_loc4_)
            {
               _loc1_ += _loc4_.score;
               if(§^G§(_loc4_))
               {
                  _loc1_ += _loc4_.§ !,§ * §7!,§.§6s§.getValue();
               }
            }
         }
         return _loc1_;
      }
      
      public function §%G§() : XML
      {
         var _loc2_:§]<§ = null;
         var _loc3_:int = 0;
         var _loc1_:* = "";
         _loc1_ += "<Level background=\"ThemeHills\"";
         _loc1_ += " LevelExtension=\"" + this.§ `§ + "\"";
         _loc1_ += " AutoCamera=\"" + this.§0L§ + "\"";
         _loc1_ += " scoreSilver=\"" + this.§=N§ + "\"";
         _loc1_ += " scoreGold=\"" + this.§'T§ + "\"";
         _loc1_ += ">";
         _loc1_ += "<Cameras>";
         for each(_loc2_ in this.§<!6§)
         {
            _loc1_ += " <Camera id=\"" + _loc2_.id + "\" leftBorder=\"" + _loc2_.left + "\" rightBorder=\"" + _loc2_.right + "\" topBorder=\"" + _loc2_.top + "\" bottomBorder=\"" + (_loc2_.top + §=_§.§6!?§) + "\"></Camera>";
         }
         _loc1_ += "</Cameras>";
         _loc1_ += "<Slingshot x=\"" + this.§,!&§[0].x + "\" y=\"" + (this.§,!&§[0].y - 8) + "\">";
         _loc1_ += " <Birds>";
         _loc3_ = 0;
         while(_loc3_ < this.§,!&§.length)
         {
            _loc1_ += "  <Bird id=\"" + this.§,!&§[_loc3_].id + "\" x=\"" + this.§,!&§[_loc3_].x + "\" y=\"" + this.§,!&§[_loc3_].y + "\"></Bird>";
            _loc3_++;
         }
         _loc1_ += " </Birds>";
         _loc1_ += "</Slingshot>";
         _loc3_ = 0;
         while(_loc3_ < this.§3! §.length)
         {
            _loc1_ += "<Item id=\"" + this.§3! §[_loc3_].id + "\" x=\"" + this.§3! §[_loc3_].x + "\" y=\"" + this.§3! §[_loc3_].y + "\" rotation=\"" + this.§3! §[_loc3_].angle + "\" ></Item>";
            _loc3_++;
         }
         _loc1_ += "</Level>";
         return new XML(_loc1_);
      }
      
      public function §"0§(param1:int) : §]g§
      {
         return this.§3! §[param1];
      }
      
      public function addObject(param1:§]g§) : void
      {
         this.§3! §.push(param1);
      }
      
      public function §@l§(param1:int) : §9!§
      {
         return this.§@i§[param1];
      }
      
      public function §18§(param1:§9!§) : void
      {
         this.§@i§.push(param1);
      }
      
      public function §@'§(param1:int) : §-x§
      {
         return this.§,!&§[param1];
      }
      
      public function §!B§(param1:§-x§) : void
      {
         this.§,!&§.push(param1);
      }
      
      public function §,t§() : void
      {
         this.§<!6§ = new Vector.<§]<§>();
      }
      
      public function §-K§() : void
      {
         this.§,!&§ = new Vector.<§-x§>();
      }
      
      public function §5!1§(param1:int) : §]<§
      {
         return this.§<!6§[param1];
      }
      
      public function §<!1§(param1:§]<§) : void
      {
         this.§<!6§.push(param1);
      }
   }
}
