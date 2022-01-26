package §=q§
{
   import §#!H§.§7V§;
   import §+!U§.§ ]§;
   import §+!U§.§?r§;
   import §+!U§.§]q§;
   import §5x§.§6T§;
   import §5x§.§]R§;
   import §6!S§.*;
   import §7z§.§]!-§;
   import flash.geom.Point;
   
   public class §?X§
   {
      
      public static const §'%§:String = "BACKGROUND_BLUE_GRASS";
       
      
      public var §'l§:Number = 0;
      
      public var §9L§:Number = -8;
      
      private var §]=§:Vector.<§]q§> = null;
      
      private var §`u§:Vector.<§?r§> = null;
      
      private var §%!D§:Vector.<§ ]§> = null;
      
      private var §?l§:Vector.<§+! §> = null;
      
      public var §&!C§:Number = 0;
      
      public var §8s§:Boolean = false;
      
      public var §2B§:int = 0;
      
      public var §&j§:int = 0;
      
      private var §3!6§:int = 0;
      
      private var §,!F§:String = null;
      
      public var mName:String = null;
      
      public function §?X§()
      {
         super();
         this.§?l§ = new Vector.<§+! §>();
         this.§]=§ = new Vector.<§]q§>();
         this.§`u§ = new Vector.<§?r§>();
         this.§%!D§ = new Vector.<§ ]§>();
         this.§,!F§ = §'%§;
      }
      
      public static function § `§(param1:String) : §?X§
      {
         var _loc2_:§?X§ = new §?X§();
         _loc2_.§]h§(param1);
         return _loc2_;
      }
      
      public static function §&!F§(param1:§6T§) : Boolean
      {
         if(param1.§#!%§ == §6T§.§&8§ || param1.§#!%§ == §6T§.§]b§ || param1.§#!%§ == §6T§.§^q§)
         {
            return true;
         }
         return false;
      }
      
      public static function §68§(param1:String) : §?X§
      {
         var _loc2_:§?X§ = § `§(param1);
         _loc2_.§'l§ = _loc2_.§`u§[0].x;
         _loc2_.§9L§ = _loc2_.§`u§[0].y - 8.5;
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.§]=§.length)
         {
            _loc2_.§]=§[_loc3_].angle = 360 - _loc2_.§]=§[_loc3_].angle;
            _loc3_++;
         }
         return _loc2_;
      }
      
      protected static function §!t§(param1:int, param2:Object) : Vector.<§ ]§>
      {
         var _loc5_:Object = null;
         var _loc6_:Point = null;
         var _loc7_:Point = null;
         var _loc8_:§ ]§ = null;
         var _loc3_:Vector.<§ ]§> = new Vector.<§ ]§>();
         var _loc4_:int = 1;
         while(_loc4_ <= param1)
         {
            if((_loc5_ = param2["joint_" + _loc4_]) != null)
            {
               _loc6_ = new Point(_loc5_.x1,_loc5_.y1);
               _loc7_ = new Point(_loc5_.x2,_loc5_.y2);
               _loc8_ = null;
               if(_loc5_.type == § ]§.§set § || _loc5_.type == § ]§.§[j§)
               {
                  _loc8_ = new § ]§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected,_loc5_.limit,_loc5_.lowerLimit,_loc5_.upperLimit,_loc5_.motor,_loc5_.motorSpeed,_loc5_.backAndForth,_loc5_.maxTorque);
                  if(_loc5_.type == § ]§.§[j§)
                  {
                     _loc8_.axisX = _loc5_.axisX;
                     _loc8_.axisY = _loc5_.axisY;
                  }
               }
               else
               {
                  _loc8_ = new § ]§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected);
               }
               if(_loc5_.type == § ]§.§7!P§)
               {
                  _loc8_.each = _loc5_.destroyTimer;
               }
               _loc3_.push(_loc8_);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function get §`_§() : int
      {
         return this.§]=§.length;
      }
      
      public function get §`!C§() : int
      {
         return this.§%!D§.length;
      }
      
      public function get §,I§() : int
      {
         return this.§`u§.length;
      }
      
      public function get §9"§() : int
      {
         return this.§?l§.length;
      }
      
      public function get theme() : String
      {
         return this.§,!F§;
      }
      
      public function set theme(param1:String) : void
      {
         this.§,!F§ = param1;
      }
      
      public function getEagleScore() : int
      {
         var _loc1_:int = this.§`!$§();
         if(_loc1_ > 0 && _loc1_ < this.§3!6§)
         {
            return _loc1_;
         }
         if(this.§3!6§ == 0)
         {
            return _loc1_;
         }
         return this.§3!6§;
      }
      
      public function §5"§(param1:int) : void
      {
         var _loc2_:int = this.§`!$§();
         if(_loc2_ > 0 && _loc2_ < param1)
         {
            return;
         }
         this.§3!6§ = param1;
      }
      
      public function §]h§(param1:String) : void
      {
         var _loc4_:§+! § = null;
         var _loc5_:Object = null;
         var _loc6_:§?r§ = null;
         var _loc7_:String = null;
         var _loc8_:Object = null;
         var _loc9_:§]q§ = null;
         var _loc2_:Object = JSON.parse(param1);
         this.§&!C§ = _loc2_.LevelExtension;
         this.§8s§ = false;
         this.§2B§ = _loc2_.scoreSilver;
         this.§&j§ = _loc2_.scoreGold;
         this.§3!6§ = _loc2_.scoreEagle;
         this.§,!F§ = _loc2_.theme;
         this.mName = _loc2_.id;
         if(_loc2_.counts.joints)
         {
            this.§%!D§ = §!t§(_loc2_.counts.joints,_loc2_.world);
         }
         this.§?l§ = new Vector.<§+! §>();
         this.§`u§ = new Vector.<§?r§>();
         this.§]=§ = new Vector.<§]q§>();
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.camera.length)
         {
            (_loc4_ = new §+! §()).x = _loc2_.camera[_loc3_].x;
            _loc4_.y = _loc2_.camera[_loc3_].y;
            _loc4_.left = _loc2_.camera[_loc3_].left;
            _loc4_.right = _loc2_.camera[_loc3_].right;
            _loc4_.top = _loc2_.camera[_loc3_].top;
            _loc4_.bottom = _loc2_.camera[_loc3_].bottom;
            _loc4_.id = _loc2_.camera[_loc3_].id;
            this.§?l§.push(_loc4_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.birds)
         {
            _loc5_ = _loc2_.world["bird_" + _loc3_];
            (_loc6_ = new §?r§()).x = _loc5_.x;
            _loc6_.y = _loc5_.y;
            _loc6_.id = _loc5_.id;
            this.§`u§.push(_loc6_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.blocks)
         {
            _loc7_ = "block_" + _loc3_;
            _loc8_ = _loc2_.world[_loc7_];
            (_loc9_ = new §]q§()).x = _loc8_.x;
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
            this.§]=§.push(_loc9_);
            _loc3_++;
         }
         this.§'l§ = _loc2_.slingshotX;
         this.§9L§ = _loc2_.slingshotY;
      }
      
      public function §%!>§() : Object
      {
         var _loc1_:Object = new Object();
         _loc1_.LevelExtension = this.§&!C§;
         _loc1_.scoreSilver = this.§2B§;
         _loc1_.scoreGold = this.§&j§;
         _loc1_.scoreEagle = this.§3!6§;
         _loc1_.theme = this.§,!F§;
         _loc1_.name = this.mName;
         _loc1_.camera = this.§?l§;
         var _loc2_:Number = 0;
         _loc1_.world = new Object();
         _loc2_ = 0;
         while(_loc2_ < this.§`u§.length)
         {
            _loc1_.world["bird_" + (_loc2_ + 1)] = this.§`u§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§]=§.length)
         {
            _loc1_.world["block_" + (_loc2_ + 1)] = this.§]=§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§%!D§.length)
         {
            _loc1_.world["joint_" + (_loc2_ + 1)] = this.§%!D§[_loc2_];
            _loc2_++;
         }
         _loc1_.counts = new Object();
         _loc1_.counts.blocks = this.§]=§.length;
         _loc1_.counts.birds = this.§`u§.length;
         _loc1_.counts.joints = this.§%!D§.length;
         _loc1_.slingshotX = this.§'l§;
         _loc1_.slingshotY = this.§9L§;
         return _loc1_;
      }
      
      public function §8!T§() : String
      {
         return JSON.stringify(this.§%!>§());
      }
      
      public function §`!$§() : int
      {
         var _loc2_:§]q§ = null;
         var _loc3_:String = null;
         var _loc4_:§6T§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§]=§)
         {
            _loc3_ = _loc2_.id;
            if((_loc4_ = §]R§.§;!H§(_loc3_)) == null && _loc3_.indexOf("MISC_") == 0)
            {
               _loc3_ = "MISC_FOOD_" + _loc3_.substring(5);
               _loc4_ = §]R§.§;!H§(_loc3_);
            }
            if(_loc4_)
            {
               _loc1_ += _loc4_.score;
               if(§&!F§(_loc4_))
               {
                  _loc1_ += _loc4_.§get § * §]!-§.§[!7§.getValue();
               }
            }
         }
         return _loc1_;
      }
      
      public function §"+§() : XML
      {
         var _loc2_:§+! § = null;
         var _loc3_:int = 0;
         var _loc1_:* = "";
         _loc1_ += "<Level background=\"ThemeHills\"";
         _loc1_ += " LevelExtension=\"" + this.§&!C§ + "\"";
         _loc1_ += " AutoCamera=\"" + this.§8s§ + "\"";
         _loc1_ += " scoreSilver=\"" + this.§2B§ + "\"";
         _loc1_ += " scoreGold=\"" + this.§&j§ + "\"";
         _loc1_ += ">";
         _loc1_ += "<Cameras>";
         for each(_loc2_ in this.§?l§)
         {
            _loc1_ += " <Camera id=\"" + _loc2_.id + "\" leftBorder=\"" + _loc2_.left + "\" rightBorder=\"" + _loc2_.right + "\" topBorder=\"" + _loc2_.top + "\" bottomBorder=\"" + (_loc2_.top + §7V§.§?d§) + "\"></Camera>";
         }
         _loc1_ += "</Cameras>";
         _loc1_ += "<Slingshot x=\"" + this.§`u§[0].x + "\" y=\"" + (this.§`u§[0].y - 8) + "\">";
         _loc1_ += " <Birds>";
         _loc3_ = 0;
         while(_loc3_ < this.§`u§.length)
         {
            _loc1_ += "  <Bird id=\"" + this.§`u§[_loc3_].id + "\" x=\"" + this.§`u§[_loc3_].x + "\" y=\"" + this.§`u§[_loc3_].y + "\"></Bird>";
            _loc3_++;
         }
         _loc1_ += " </Birds>";
         _loc1_ += "</Slingshot>";
         _loc3_ = 0;
         while(_loc3_ < this.§]=§.length)
         {
            _loc1_ += "<Item id=\"" + this.§]=§[_loc3_].id + "\" x=\"" + this.§]=§[_loc3_].x + "\" y=\"" + this.§]=§[_loc3_].y + "\" rotation=\"" + this.§]=§[_loc3_].angle + "\" ></Item>";
            _loc3_++;
         }
         _loc1_ += "</Level>";
         return new XML(_loc1_);
      }
      
      public function §7X§(param1:int) : §]q§
      {
         return this.§]=§[param1];
      }
      
      public function addObject(param1:§]q§) : void
      {
         this.§]=§.push(param1);
      }
      
      public function §2!^§(param1:int) : § ]§
      {
         return this.§%!D§[param1];
      }
      
      public function §=!'§(param1:§ ]§) : void
      {
         this.§%!D§.push(param1);
      }
      
      public function §?w§(param1:int) : §?r§
      {
         return this.§`u§[param1];
      }
      
      public function §<!!§(param1:§?r§) : void
      {
         this.§`u§.push(param1);
      }
      
      public function §4O§() : void
      {
         this.§?l§ = new Vector.<§+! §>();
      }
      
      public function §5a§() : void
      {
         this.§`u§ = new Vector.<§?r§>();
      }
      
      public function §@!U§(param1:int) : §+! §
      {
         return this.§?l§[param1];
      }
      
      public function §9!Y§(param1:§+! §) : void
      {
         this.§?l§.push(param1);
      }
   }
}
