package §0H§
{
   import §"!P§.§-!+§;
   import §"!P§.§8!N§;
   import §"!P§.§]s§;
   import §%n§.§5!6§;
   import §%n§.§<>§;
   import §4c§.*;
   import §8!`§.§4J§;
   import §@!?§.§9Z§;
   import flash.geom.Point;
   
   public class §0!&§
   {
      
      public static const §1!L§:String = "BACKGROUND_BLUE_GRASS";
       
      
      public var §#!X§:Number = 0;
      
      public var §@h§:Number = -8;
      
      private var §[!Y§:Vector.<§8!N§> = null;
      
      private var §%!4§:Vector.<§]s§> = null;
      
      private var §7!"§:Vector.<§-!+§> = null;
      
      private var §7t§:Vector.<§1+§> = null;
      
      public var §<#§:Number = 0;
      
      public var §<e§:Boolean = false;
      
      public var § !W§:int = 0;
      
      public var § !L§:int = 0;
      
      private var §]f§:int = 0;
      
      private var §9S§:String = null;
      
      public var mName:String = null;
      
      public function §0!&§()
      {
         super();
         this.§7t§ = new Vector.<§1+§>();
         this.§[!Y§ = new Vector.<§8!N§>();
         this.§%!4§ = new Vector.<§]s§>();
         this.§7!"§ = new Vector.<§-!+§>();
         this.§9S§ = §1!L§;
      }
      
      public static function §=!Y§(param1:String) : §0!&§
      {
         var _loc2_:§0!&§ = new §0!&§();
         _loc2_.§^'§(param1);
         return _loc2_;
      }
      
      public static function §+!3§(param1:§<>§) : Boolean
      {
         if(param1.§;&§ == §<>§.§2V§ || param1.§;&§ == §<>§.§-!F§ || param1.§;&§ == §<>§.§'I§)
         {
            return true;
         }
         return false;
      }
      
      public static function §@c§(param1:String) : §0!&§
      {
         var _loc2_:§0!&§ = §=!Y§(param1);
         _loc2_.§#!X§ = _loc2_.§%!4§[0].x;
         _loc2_.§@h§ = _loc2_.§%!4§[0].y - 8.5;
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.§[!Y§.length)
         {
            _loc2_.§[!Y§[_loc3_].angle = 360 - _loc2_.§[!Y§[_loc3_].angle;
            _loc3_++;
         }
         return _loc2_;
      }
      
      protected static function §?y§(param1:int, param2:Object) : Vector.<§-!+§>
      {
         var _loc5_:Object = null;
         var _loc6_:Point = null;
         var _loc7_:Point = null;
         var _loc8_:§-!+§ = null;
         var _loc3_:Vector.<§-!+§> = new Vector.<§-!+§>();
         var _loc4_:int = 1;
         while(_loc4_ <= param1)
         {
            if((_loc5_ = param2["joint_" + _loc4_]) != null)
            {
               _loc6_ = new Point(_loc5_.x1,_loc5_.y1);
               _loc7_ = new Point(_loc5_.x2,_loc5_.y2);
               _loc8_ = null;
               if(_loc5_.type == §-!+§.§[!<§ || _loc5_.type == §-!+§.§%!E§)
               {
                  _loc8_ = new §-!+§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected,_loc5_.limit,_loc5_.lowerLimit,_loc5_.upperLimit,_loc5_.motor,_loc5_.motorSpeed,_loc5_.backAndForth,_loc5_.maxTorque);
                  if(_loc5_.type == §-!+§.§%!E§)
                  {
                     _loc8_.axisX = _loc5_.axisX;
                     _loc8_.axisY = _loc5_.axisY;
                  }
               }
               else
               {
                  _loc8_ = new §-!+§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected);
               }
               if(_loc5_.type == §-!+§.§ !H§)
               {
                  _loc8_.§>4§ = _loc5_.destroyTimer;
               }
               _loc3_.push(_loc8_);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function get §1c§() : int
      {
         return this.§[!Y§.length;
      }
      
      public function get §;T§() : int
      {
         return this.§7!"§.length;
      }
      
      public function get §;G§() : int
      {
         return this.§%!4§.length;
      }
      
      public function get §0c§() : int
      {
         return this.§7t§.length;
      }
      
      public function get theme() : String
      {
         return this.§9S§;
      }
      
      public function set theme(param1:String) : void
      {
         this.§9S§ = param1;
      }
      
      public function getEagleScore() : int
      {
         var _loc1_:int = this.§=C§();
         if(_loc1_ > 0 && _loc1_ < this.§]f§)
         {
            return _loc1_;
         }
         if(this.§]f§ == 0)
         {
            return _loc1_;
         }
         return this.§]f§;
      }
      
      public function §#y§(param1:int) : void
      {
         var _loc2_:int = this.§=C§();
         if(_loc2_ > 0 && _loc2_ < param1)
         {
            return;
         }
         this.§]f§ = param1;
      }
      
      public function §^'§(param1:String) : void
      {
         var _loc4_:§1+§ = null;
         var _loc5_:Object = null;
         var _loc6_:§]s§ = null;
         var _loc7_:String = null;
         var _loc8_:Object = null;
         var _loc9_:§8!N§ = null;
         var _loc2_:Object = JSON.parse(param1);
         this.§<#§ = _loc2_.LevelExtension;
         this.§<e§ = false;
         this.§ !W§ = _loc2_.scoreSilver;
         this.§ !L§ = _loc2_.scoreGold;
         this.§]f§ = _loc2_.scoreEagle;
         this.§9S§ = _loc2_.theme;
         this.mName = _loc2_.id;
         if(_loc2_.counts.joints)
         {
            this.§7!"§ = §?y§(_loc2_.counts.joints,_loc2_.world);
         }
         this.§7t§ = new Vector.<§1+§>();
         this.§%!4§ = new Vector.<§]s§>();
         this.§[!Y§ = new Vector.<§8!N§>();
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.camera.length)
         {
            (_loc4_ = new §1+§()).x = _loc2_.camera[_loc3_].x;
            _loc4_.y = _loc2_.camera[_loc3_].y;
            _loc4_.left = _loc2_.camera[_loc3_].left;
            _loc4_.right = _loc2_.camera[_loc3_].right;
            _loc4_.top = _loc2_.camera[_loc3_].top;
            _loc4_.bottom = _loc2_.camera[_loc3_].bottom;
            _loc4_.id = _loc2_.camera[_loc3_].id;
            this.§7t§.push(_loc4_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.birds)
         {
            _loc5_ = _loc2_.world["bird_" + _loc3_];
            (_loc6_ = new §]s§()).x = _loc5_.x;
            _loc6_.y = _loc5_.y;
            _loc6_.id = _loc5_.id;
            this.§%!4§.push(_loc6_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.blocks)
         {
            _loc7_ = "block_" + _loc3_;
            _loc8_ = _loc2_.world[_loc7_];
            (_loc9_ = new §8!N§()).x = _loc8_.x;
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
            this.§[!Y§.push(_loc9_);
            _loc3_++;
         }
         this.§#!X§ = _loc2_.slingshotX;
         this.§@h§ = _loc2_.slingshotY;
      }
      
      public function §else §() : Object
      {
         var _loc1_:Object = new Object();
         _loc1_.LevelExtension = this.§<#§;
         _loc1_.scoreSilver = this.§ !W§;
         _loc1_.scoreGold = this.§ !L§;
         _loc1_.scoreEagle = this.§]f§;
         _loc1_.theme = this.§9S§;
         _loc1_.name = this.mName;
         _loc1_.camera = this.§7t§;
         var _loc2_:Number = 0;
         _loc1_.world = new Object();
         _loc2_ = 0;
         while(_loc2_ < this.§%!4§.length)
         {
            _loc1_.world["bird_" + (_loc2_ + 1)] = this.§%!4§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§[!Y§.length)
         {
            _loc1_.world["block_" + (_loc2_ + 1)] = this.§[!Y§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§7!"§.length)
         {
            _loc1_.world["joint_" + (_loc2_ + 1)] = this.§7!"§[_loc2_];
            _loc2_++;
         }
         _loc1_.counts = new Object();
         _loc1_.counts.blocks = this.§[!Y§.length;
         _loc1_.counts.birds = this.§%!4§.length;
         _loc1_.counts.joints = this.§7!"§.length;
         _loc1_.slingshotX = this.§#!X§;
         _loc1_.slingshotY = this.§@h§;
         return _loc1_;
      }
      
      public function §#q§() : String
      {
         return JSON.stringify(this.§else §());
      }
      
      public function §=C§() : int
      {
         var _loc2_:§8!N§ = null;
         var _loc3_:String = null;
         var _loc4_:§<>§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§[!Y§)
         {
            _loc3_ = _loc2_.id;
            if((_loc4_ = §5!6§.§,Q§(_loc3_)) == null && _loc3_.indexOf("MISC_") == 0)
            {
               _loc3_ = "MISC_FOOD_" + _loc3_.substring(5);
               _loc4_ = §5!6§.§,Q§(_loc3_);
            }
            if(_loc4_)
            {
               _loc1_ += _loc4_.score;
               if(§+!3§(_loc4_))
               {
                  _loc1_ += _loc4_.§!e§ * §4J§.§<+§.getValue();
               }
            }
         }
         return _loc1_;
      }
      
      public function § !A§() : XML
      {
         var _loc2_:§1+§ = null;
         var _loc3_:int = 0;
         var _loc1_:* = "";
         _loc1_ += "<Level background=\"ThemeHills\"";
         _loc1_ += " LevelExtension=\"" + this.§<#§ + "\"";
         _loc1_ += " AutoCamera=\"" + this.§<e§ + "\"";
         _loc1_ += " scoreSilver=\"" + this.§ !W§ + "\"";
         _loc1_ += " scoreGold=\"" + this.§ !L§ + "\"";
         _loc1_ += ">";
         _loc1_ += "<Cameras>";
         for each(_loc2_ in this.§7t§)
         {
            _loc1_ += " <Camera id=\"" + _loc2_.id + "\" leftBorder=\"" + _loc2_.left + "\" rightBorder=\"" + _loc2_.right + "\" topBorder=\"" + _loc2_.top + "\" bottomBorder=\"" + (_loc2_.top + §9Z§.§+!8§) + "\"></Camera>";
         }
         _loc1_ += "</Cameras>";
         _loc1_ += "<Slingshot x=\"" + this.§%!4§[0].x + "\" y=\"" + (this.§%!4§[0].y - 8) + "\">";
         _loc1_ += " <Birds>";
         _loc3_ = 0;
         while(_loc3_ < this.§%!4§.length)
         {
            _loc1_ += "  <Bird id=\"" + this.§%!4§[_loc3_].id + "\" x=\"" + this.§%!4§[_loc3_].x + "\" y=\"" + this.§%!4§[_loc3_].y + "\"></Bird>";
            _loc3_++;
         }
         _loc1_ += " </Birds>";
         _loc1_ += "</Slingshot>";
         _loc3_ = 0;
         while(_loc3_ < this.§[!Y§.length)
         {
            _loc1_ += "<Item id=\"" + this.§[!Y§[_loc3_].id + "\" x=\"" + this.§[!Y§[_loc3_].x + "\" y=\"" + this.§[!Y§[_loc3_].y + "\" rotation=\"" + this.§[!Y§[_loc3_].angle + "\" ></Item>";
            _loc3_++;
         }
         _loc1_ += "</Level>";
         return new XML(_loc1_);
      }
      
      public function §,S§(param1:int) : §8!N§
      {
         return this.§[!Y§[param1];
      }
      
      public function addObject(param1:§8!N§) : void
      {
         this.§[!Y§.push(param1);
      }
      
      public function §8,§(param1:int) : §-!+§
      {
         return this.§7!"§[param1];
      }
      
      public function §]_§(param1:§-!+§) : void
      {
         this.§7!"§.push(param1);
      }
      
      public function §8!"§(param1:int) : §]s§
      {
         return this.§%!4§[param1];
      }
      
      public function §0D§(param1:§]s§) : void
      {
         this.§%!4§.push(param1);
      }
      
      public function §]Z§() : void
      {
         this.§7t§ = new Vector.<§1+§>();
      }
      
      public function §>J§() : void
      {
         this.§%!4§ = new Vector.<§]s§>();
      }
      
      public function §=A§(param1:int) : §1+§
      {
         return this.§7t§[param1];
      }
      
      public function §!!H§(param1:§1+§) : void
      {
         this.§7t§.push(param1);
      }
   }
}
