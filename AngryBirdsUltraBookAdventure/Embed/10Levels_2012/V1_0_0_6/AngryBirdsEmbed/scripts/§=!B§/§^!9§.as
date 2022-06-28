package §=!B§
{
   import §'%§.*;
   import §,!C§.§+X§;
   import §,!C§.§0v§;
   import §3G§.§!E§;
   import §3c§.§^z§;
   import §`6§.§&!?§;
   import §`6§.§5L§;
   import §`6§.§7=§;
   import flash.geom.Point;
   
   public class §^!9§
   {
      
      public static const §%[§:String = "BACKGROUND_BLUE_GRASS";
       
      
      public var §&w§:Number = 0;
      
      public var §11§:Number = -8;
      
      private var §@_§:Vector.<§7=§> = null;
      
      private var §'@§:Vector.<§5L§> = null;
      
      private var §%]§:Vector.<§&!?§> = null;
      
      private var §;!5§:Vector.<§<!-§> = null;
      
      public var §6"§:Number = 0;
      
      public var §6y§:Boolean = false;
      
      public var §7G§:int = 0;
      
      public var §`0§:int = 0;
      
      private var §%C§:int = 0;
      
      private var §`!'§:String = null;
      
      public var mName:String = null;
      
      public function §^!9§()
      {
         super();
         this.§;!5§ = new Vector.<§<!-§>();
         this.§@_§ = new Vector.<§7=§>();
         this.§'@§ = new Vector.<§5L§>();
         this.§%]§ = new Vector.<§&!?§>();
         this.§`!'§ = §%[§;
      }
      
      public static function §^q§(param1:String) : §^!9§
      {
         var _loc2_:§^!9§ = new §^!9§();
         _loc2_.§]l§(param1);
         return _loc2_;
      }
      
      public static function §[!G§(param1:§+X§) : Boolean
      {
         if(param1.§!U§ == §+X§.§92§ || param1.§!U§ == §+X§.§ !'§ || param1.§!U§ == §+X§.§ >§)
         {
            return true;
         }
         return false;
      }
      
      public static function §?!F§(param1:String) : §^!9§
      {
         var _loc2_:§^!9§ = §^q§(param1);
         _loc2_.§&w§ = _loc2_.§'@§[0].x;
         _loc2_.§11§ = _loc2_.§'@§[0].y - 8.5;
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.§@_§.length)
         {
            _loc2_.§@_§[_loc3_].angle = 360 - _loc2_.§@_§[_loc3_].angle;
            _loc3_++;
         }
         return _loc2_;
      }
      
      protected static function §#V§(param1:int, param2:Object) : Vector.<§&!?§>
      {
         var _loc5_:Object = null;
         var _loc6_:Point = null;
         var _loc7_:Point = null;
         var _loc8_:§&!?§ = null;
         var _loc3_:Vector.<§&!?§> = new Vector.<§&!?§>();
         var _loc4_:int = 1;
         while(_loc4_ <= param1)
         {
            if((_loc5_ = param2["joint_" + _loc4_]) != null)
            {
               _loc6_ = new Point(_loc5_.x1,_loc5_.y1);
               _loc7_ = new Point(_loc5_.x2,_loc5_.y2);
               _loc8_ = null;
               if(_loc5_.type == §&!?§.§%!5§ || _loc5_.type == §&!?§.§?9§)
               {
                  _loc8_ = new §&!?§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected,_loc5_.limit,_loc5_.lowerLimit,_loc5_.upperLimit,_loc5_.motor,_loc5_.motorSpeed,_loc5_.backAndForth,_loc5_.maxTorque);
                  if(_loc5_.type == §&!?§.§?9§)
                  {
                     _loc8_.axisX = _loc5_.axisX;
                     _loc8_.axisY = _loc5_.axisY;
                  }
               }
               else
               {
                  _loc8_ = new §&!?§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected);
               }
               if(_loc5_.type == §&!?§.§`!$§)
               {
                  _loc8_.§@M§ = _loc5_.destroyTimer;
               }
               _loc3_.push(_loc8_);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function get §4,§() : int
      {
         return this.§@_§.length;
      }
      
      public function get §1!7§() : int
      {
         return this.§%]§.length;
      }
      
      public function get § true§() : int
      {
         return this.§'@§.length;
      }
      
      public function get §9u§() : int
      {
         return this.§;!5§.length;
      }
      
      public function get theme() : String
      {
         return this.§`!'§;
      }
      
      public function set theme(param1:String) : void
      {
         this.§`!'§ = param1;
      }
      
      public function getEagleScore() : int
      {
         var _loc1_:int = this.§#f§();
         if(_loc1_ > 0 && _loc1_ < this.§%C§)
         {
            return _loc1_;
         }
         if(this.§%C§ == 0)
         {
            return _loc1_;
         }
         return this.§%C§;
      }
      
      public function §7!8§(param1:int) : void
      {
         var _loc2_:int = this.§#f§();
         if(_loc2_ > 0 && _loc2_ < param1)
         {
            return;
         }
         this.§%C§ = param1;
      }
      
      public function §]l§(param1:String) : void
      {
         var _loc4_:§<!-§ = null;
         var _loc5_:Object = null;
         var _loc6_:§5L§ = null;
         var _loc7_:String = null;
         var _loc8_:Object = null;
         var _loc9_:§7=§ = null;
         var _loc2_:Object = JSON.parse(param1);
         this.§6"§ = _loc2_.LevelExtension;
         this.§6y§ = false;
         this.§7G§ = _loc2_.scoreSilver;
         this.§`0§ = _loc2_.scoreGold;
         this.§%C§ = _loc2_.scoreEagle;
         this.§`!'§ = _loc2_.theme;
         this.mName = _loc2_.id;
         if(_loc2_.counts.joints)
         {
            this.§%]§ = §#V§(_loc2_.counts.joints,_loc2_.world);
         }
         this.§;!5§ = new Vector.<§<!-§>();
         this.§'@§ = new Vector.<§5L§>();
         this.§@_§ = new Vector.<§7=§>();
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.camera.length)
         {
            (_loc4_ = new §<!-§()).x = _loc2_.camera[_loc3_].x;
            _loc4_.y = _loc2_.camera[_loc3_].y;
            _loc4_.left = _loc2_.camera[_loc3_].left;
            _loc4_.right = _loc2_.camera[_loc3_].right;
            _loc4_.top = _loc2_.camera[_loc3_].top;
            _loc4_.bottom = _loc2_.camera[_loc3_].bottom;
            _loc4_.id = _loc2_.camera[_loc3_].id;
            this.§;!5§.push(_loc4_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.birds)
         {
            _loc5_ = _loc2_.world["bird_" + _loc3_];
            (_loc6_ = new §5L§()).x = _loc5_.x;
            _loc6_.y = _loc5_.y;
            _loc6_.id = _loc5_.id;
            this.§'@§.push(_loc6_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.blocks)
         {
            _loc7_ = "block_" + _loc3_;
            _loc8_ = _loc2_.world[_loc7_];
            (_loc9_ = new §7=§()).x = _loc8_.x;
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
            this.§@_§.push(_loc9_);
            _loc3_++;
         }
         this.§&w§ = _loc2_.slingshotX;
         this.§11§ = _loc2_.slingshotY;
      }
      
      public function §"!8§() : Object
      {
         var _loc1_:Object = new Object();
         _loc1_.LevelExtension = this.§6"§;
         _loc1_.scoreSilver = this.§7G§;
         _loc1_.scoreGold = this.§`0§;
         _loc1_.scoreEagle = this.§%C§;
         _loc1_.theme = this.§`!'§;
         _loc1_.name = this.mName;
         _loc1_.camera = this.§;!5§;
         var _loc2_:Number = 0;
         _loc1_.world = new Object();
         _loc2_ = 0;
         while(_loc2_ < this.§'@§.length)
         {
            _loc1_.world["bird_" + (_loc2_ + 1)] = this.§'@§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§@_§.length)
         {
            _loc1_.world["block_" + (_loc2_ + 1)] = this.§@_§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§%]§.length)
         {
            _loc1_.world["joint_" + (_loc2_ + 1)] = this.§%]§[_loc2_];
            _loc2_++;
         }
         _loc1_.counts = new Object();
         _loc1_.counts.blocks = this.§@_§.length;
         _loc1_.counts.birds = this.§'@§.length;
         _loc1_.counts.joints = this.§%]§.length;
         _loc1_.slingshotX = this.§&w§;
         _loc1_.slingshotY = this.§11§;
         return _loc1_;
      }
      
      public function §8!;§() : String
      {
         return JSON.stringify(this.§"!8§());
      }
      
      public function §#f§() : int
      {
         var _loc2_:§7=§ = null;
         var _loc3_:String = null;
         var _loc4_:§+X§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§@_§)
         {
            _loc3_ = _loc2_.id;
            if((_loc4_ = §0v§.§&2§(_loc3_)) == null && _loc3_.indexOf("MISC_") == 0)
            {
               _loc3_ = "MISC_FOOD_" + _loc3_.substring(5);
               _loc4_ = §0v§.§&2§(_loc3_);
            }
            if(_loc4_)
            {
               _loc1_ += _loc4_.score;
               if(§[!G§(_loc4_))
               {
                  _loc1_ += _loc4_.§%!J§ * §!E§.§<!#§.getValue();
               }
            }
         }
         return _loc1_;
      }
      
      public function § !@§() : XML
      {
         var _loc2_:§<!-§ = null;
         var _loc3_:int = 0;
         var _loc1_:* = "";
         _loc1_ += "<Level background=\"ThemeHills\"";
         _loc1_ += " LevelExtension=\"" + this.§6"§ + "\"";
         _loc1_ += " AutoCamera=\"" + this.§6y§ + "\"";
         _loc1_ += " scoreSilver=\"" + this.§7G§ + "\"";
         _loc1_ += " scoreGold=\"" + this.§`0§ + "\"";
         _loc1_ += ">";
         _loc1_ += "<Cameras>";
         for each(_loc2_ in this.§;!5§)
         {
            _loc1_ += " <Camera id=\"" + _loc2_.id + "\" leftBorder=\"" + _loc2_.left + "\" rightBorder=\"" + _loc2_.right + "\" topBorder=\"" + _loc2_.top + "\" bottomBorder=\"" + (_loc2_.top + §^z§.§'f§) + "\"></Camera>";
         }
         _loc1_ += "</Cameras>";
         _loc1_ += "<Slingshot x=\"" + this.§'@§[0].x + "\" y=\"" + (this.§'@§[0].y - 8) + "\">";
         _loc1_ += " <Birds>";
         _loc3_ = 0;
         while(_loc3_ < this.§'@§.length)
         {
            _loc1_ += "  <Bird id=\"" + this.§'@§[_loc3_].id + "\" x=\"" + this.§'@§[_loc3_].x + "\" y=\"" + this.§'@§[_loc3_].y + "\"></Bird>";
            _loc3_++;
         }
         _loc1_ += " </Birds>";
         _loc1_ += "</Slingshot>";
         _loc3_ = 0;
         while(_loc3_ < this.§@_§.length)
         {
            _loc1_ += "<Item id=\"" + this.§@_§[_loc3_].id + "\" x=\"" + this.§@_§[_loc3_].x + "\" y=\"" + this.§@_§[_loc3_].y + "\" rotation=\"" + this.§@_§[_loc3_].angle + "\" ></Item>";
            _loc3_++;
         }
         _loc1_ += "</Level>";
         return new XML(_loc1_);
      }
      
      public function §6!"§(param1:int) : §7=§
      {
         return this.§@_§[param1];
      }
      
      public function addObject(param1:§7=§) : void
      {
         this.§@_§.push(param1);
      }
      
      public function §7W§(param1:int) : §&!?§
      {
         return this.§%]§[param1];
      }
      
      public function §4!#§(param1:§&!?§) : void
      {
         this.§%]§.push(param1);
      }
      
      public function §=_§(param1:int) : §5L§
      {
         return this.§'@§[param1];
      }
      
      public function §`$§(param1:§5L§) : void
      {
         this.§'@§.push(param1);
      }
      
      public function §7c§() : void
      {
         this.§;!5§ = new Vector.<§<!-§>();
      }
      
      public function §;!!§() : void
      {
         this.§'@§ = new Vector.<§5L§>();
      }
      
      public function §&W§(param1:int) : §<!-§
      {
         return this.§;!5§[param1];
      }
      
      public function §<!B§(param1:§<!-§) : void
      {
         this.§;!5§.push(param1);
      }
   }
}
