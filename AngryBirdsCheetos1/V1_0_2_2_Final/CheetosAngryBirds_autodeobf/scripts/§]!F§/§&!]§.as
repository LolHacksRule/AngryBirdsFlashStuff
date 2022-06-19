package §]!F§
{
   import §!X§.§86§;
   import §%J§.§#^§;
   import §%J§.§8C§;
   import §%J§.§`u§;
   import §2!D§.*;
   import §?h§.§<I§;
   import §default§.§%<§;
   import §default§.§-r§;
   import flash.geom.Point;
   
   public class §&!]§
   {
      
      public static const § get§:String = "BACKGROUND_BLUE_GRASS";
       
      
      public var §^!E§:Number = 0;
      
      public var §0!;§:Number = -8;
      
      private var §%o§:Vector.<§`u§> = null;
      
      private var §8k§:Vector.<§#^§> = null;
      
      private var §[%§:Vector.<§8C§> = null;
      
      private var §[!,§:Vector.<§'A§> = null;
      
      public var §,u§:Number = 0;
      
      public var §%M§:Boolean = false;
      
      public var §;!L§:int = 0;
      
      public var §7z§:int = 0;
      
      private var § E§:int = 0;
      
      private var §%!%§:String = null;
      
      public var mName:String = null;
      
      public function §&!]§()
      {
         super();
         this.§[!,§ = new Vector.<§'A§>();
         this.§%o§ = new Vector.<§`u§>();
         this.§8k§ = new Vector.<§#^§>();
         this.§[%§ = new Vector.<§8C§>();
         this.§%!%§ = § get§;
      }
      
      public static function §]"§(param1:String) : §&!]§
      {
         var _loc2_:§&!]§ = new §&!]§();
         _loc2_.§?3§(param1);
         return _loc2_;
      }
      
      public static function §"u§(param1:§-r§) : Boolean
      {
         if(param1.§?n§ == §-r§.§`T§ || param1.§?n§ == §-r§.§"!1§ || param1.§?n§ == §-r§.§+!S§)
         {
            return true;
         }
         return false;
      }
      
      public static function §'F§(param1:String) : §&!]§
      {
         var _loc2_:§&!]§ = §]"§(param1);
         _loc2_.§^!E§ = _loc2_.§8k§[0].x;
         _loc2_.§0!;§ = _loc2_.§8k§[0].y - 8.5;
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.§%o§.length)
         {
            _loc2_.§%o§[_loc3_].angle = 360 - _loc2_.§%o§[_loc3_].angle;
            _loc3_++;
         }
         return _loc2_;
      }
      
      protected static function §<a§(param1:int, param2:Object) : Vector.<§8C§>
      {
         var _loc5_:Object = null;
         var _loc6_:Point = null;
         var _loc7_:Point = null;
         var _loc8_:§8C§ = null;
         var _loc3_:Vector.<§8C§> = new Vector.<§8C§>();
         var _loc4_:int = 1;
         while(_loc4_ <= param1)
         {
            if((_loc5_ = param2["joint_" + _loc4_]) != null)
            {
               _loc6_ = new Point(_loc5_.x1,_loc5_.y1);
               _loc7_ = new Point(_loc5_.x2,_loc5_.y2);
               _loc8_ = null;
               if(_loc5_.type == §8C§.§2u§ || _loc5_.type == §8C§.§=G§)
               {
                  _loc8_ = new §8C§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected,_loc5_.limit,_loc5_.lowerLimit,_loc5_.upperLimit,_loc5_.motor,_loc5_.motorSpeed,_loc5_.backAndForth,_loc5_.maxTorque);
                  if(_loc5_.type == §8C§.§=G§)
                  {
                     _loc8_.axisX = _loc5_.axisX;
                     _loc8_.axisY = _loc5_.axisY;
                  }
               }
               else
               {
                  _loc8_ = new §8C§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected);
               }
               if(_loc5_.type == §8C§.§[!S§)
               {
                  _loc8_.§-7§ = _loc5_.destroyTimer;
               }
               _loc3_.push(_loc8_);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function get §5"§() : int
      {
         return this.§%o§.length;
      }
      
      public function get §=!R§() : int
      {
         return this.§[%§.length;
      }
      
      public function get §3]§() : int
      {
         return this.§8k§.length;
      }
      
      public function get §0^§() : int
      {
         return this.§[!,§.length;
      }
      
      public function get theme() : String
      {
         return this.§%!%§;
      }
      
      public function set theme(param1:String) : void
      {
         this.§%!%§ = param1;
      }
      
      public function getEagleScore() : int
      {
         var _loc1_:int = this.§=!^§();
         if(_loc1_ > 0 && _loc1_ < this.§ E§)
         {
            return _loc1_;
         }
         if(this.§ E§ == 0)
         {
            return _loc1_;
         }
         return this.§ E§;
      }
      
      public function §""§(param1:int) : void
      {
         var _loc2_:int = this.§=!^§();
         if(_loc2_ > 0 && _loc2_ < param1)
         {
            return;
         }
         this.§ E§ = param1;
      }
      
      public function §?3§(param1:String) : void
      {
         var _loc4_:§'A§ = null;
         var _loc5_:Object = null;
         var _loc6_:§#^§ = null;
         var _loc7_:String = null;
         var _loc8_:Object = null;
         var _loc9_:§`u§ = null;
         var _loc2_:Object = JSON.parse(param1);
         this.§,u§ = _loc2_.LevelExtension;
         this.§%M§ = false;
         this.§;!L§ = _loc2_.scoreSilver;
         this.§7z§ = _loc2_.scoreGold;
         this.§ E§ = _loc2_.scoreEagle;
         this.§%!%§ = _loc2_.theme;
         this.mName = _loc2_.id;
         if(_loc2_.counts.joints)
         {
            this.§[%§ = §<a§(_loc2_.counts.joints,_loc2_.world);
         }
         this.§[!,§ = new Vector.<§'A§>();
         this.§8k§ = new Vector.<§#^§>();
         this.§%o§ = new Vector.<§`u§>();
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.camera.length)
         {
            (_loc4_ = new §'A§()).x = _loc2_.camera[_loc3_].x;
            _loc4_.y = _loc2_.camera[_loc3_].y;
            _loc4_.left = _loc2_.camera[_loc3_].left;
            _loc4_.right = _loc2_.camera[_loc3_].right;
            _loc4_.top = _loc2_.camera[_loc3_].top;
            _loc4_.bottom = _loc2_.camera[_loc3_].bottom;
            _loc4_.id = _loc2_.camera[_loc3_].id;
            this.§[!,§.push(_loc4_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.birds)
         {
            _loc5_ = _loc2_.world["bird_" + _loc3_];
            (_loc6_ = new §#^§()).x = _loc5_.x;
            _loc6_.y = _loc5_.y;
            _loc6_.id = _loc5_.id;
            this.§8k§.push(_loc6_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.blocks)
         {
            _loc7_ = "block_" + _loc3_;
            _loc8_ = _loc2_.world[_loc7_];
            (_loc9_ = new §`u§()).x = _loc8_.x;
            _loc9_.y = _loc8_.y;
            _loc9_.id = _loc8_.id;
            if(_loc8_.uniqueID)
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
            this.§%o§.push(_loc9_);
            _loc3_++;
         }
         this.§^!E§ = _loc2_.slingshotX;
         this.§0!;§ = _loc2_.slingshotY;
      }
      
      public function §;!G§() : Object
      {
         var _loc1_:Object = new Object();
         _loc1_.LevelExtension = this.§,u§;
         _loc1_.scoreSilver = this.§;!L§;
         _loc1_.scoreGold = this.§7z§;
         _loc1_.scoreEagle = this.§ E§;
         _loc1_.theme = this.§%!%§;
         _loc1_.name = this.mName;
         _loc1_.camera = this.§[!,§;
         var _loc2_:Number = 0;
         _loc1_.world = new Object();
         _loc2_ = 0;
         while(_loc2_ < this.§8k§.length)
         {
            _loc1_.world["bird_" + (_loc2_ + 1)] = this.§8k§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§%o§.length)
         {
            _loc1_.world["block_" + (_loc2_ + 1)] = this.§%o§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§[%§.length)
         {
            _loc1_.world["joint_" + (_loc2_ + 1)] = this.§[%§[_loc2_];
            _loc2_++;
         }
         _loc1_.counts = new Object();
         _loc1_.counts.blocks = this.§%o§.length;
         _loc1_.counts.birds = this.§8k§.length;
         _loc1_.counts.joints = this.§[%§.length;
         _loc1_.slingshotX = this.§^!E§;
         _loc1_.slingshotY = this.§0!;§;
         return _loc1_;
      }
      
      public function §@7§() : String
      {
         return JSON.stringify(this.§;!G§());
      }
      
      public function §=!^§() : int
      {
         var _loc2_:§`u§ = null;
         var _loc3_:String = null;
         var _loc4_:§-r§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§%o§)
         {
            _loc3_ = _loc2_.id;
            if((_loc4_ = §%<§.§<<§(_loc3_)) == null && _loc3_.indexOf("MISC_") == 0)
            {
               _loc3_ = "MISC_FOOD_" + _loc3_.substring(5);
               _loc4_ = §%<§.§<<§(_loc3_);
            }
            if(_loc4_)
            {
               _loc1_ += _loc4_.score;
               if(§"u§(_loc4_))
               {
                  _loc1_ += _loc4_.§+?§ * §86§.§@r§.getValue();
               }
            }
         }
         return _loc1_;
      }
      
      public function §8!$§() : XML
      {
         var _loc2_:§'A§ = null;
         var _loc3_:int = 0;
         var _loc1_:* = "";
         _loc1_ += "<Level background=\"ThemeHills\"";
         _loc1_ += " LevelExtension=\"" + this.§,u§ + "\"";
         _loc1_ += " AutoCamera=\"" + this.§%M§ + "\"";
         _loc1_ += " scoreSilver=\"" + this.§;!L§ + "\"";
         _loc1_ += " scoreGold=\"" + this.§7z§ + "\"";
         _loc1_ += ">";
         _loc1_ += "<Cameras>";
         for each(_loc2_ in this.§[!,§)
         {
            _loc1_ += " <Camera id=\"" + _loc2_.id + "\" leftBorder=\"" + _loc2_.left + "\" rightBorder=\"" + _loc2_.right + "\" topBorder=\"" + _loc2_.top + "\" bottomBorder=\"" + (_loc2_.top + §<I§.§0!2§) + "\"></Camera>";
         }
         _loc1_ += "</Cameras>";
         _loc1_ += "<Slingshot x=\"" + this.§8k§[0].x + "\" y=\"" + (this.§8k§[0].y - 8) + "\">";
         _loc1_ += " <Birds>";
         _loc3_ = 0;
         while(_loc3_ < this.§8k§.length)
         {
            _loc1_ += "  <Bird id=\"" + this.§8k§[_loc3_].id + "\" x=\"" + this.§8k§[_loc3_].x + "\" y=\"" + this.§8k§[_loc3_].y + "\"></Bird>";
            _loc3_++;
         }
         _loc1_ += " </Birds>";
         _loc1_ += "</Slingshot>";
         _loc3_ = 0;
         while(_loc3_ < this.§%o§.length)
         {
            _loc1_ += "<Item id=\"" + this.§%o§[_loc3_].id + "\" x=\"" + this.§%o§[_loc3_].x + "\" y=\"" + this.§%o§[_loc3_].y + "\" rotation=\"" + this.§%o§[_loc3_].angle + "\" ></Item>";
            _loc3_++;
         }
         _loc1_ += "</Level>";
         return new XML(_loc1_);
      }
      
      public function §1T§(param1:int) : §`u§
      {
         return this.§%o§[param1];
      }
      
      public function addObject(param1:§`u§) : void
      {
         this.§%o§.push(param1);
      }
      
      public function §"4§(param1:int) : §8C§
      {
         return this.§[%§[param1];
      }
      
      public function §9!U§(param1:§8C§) : void
      {
         this.§[%§.push(param1);
      }
      
      public function §!!J§(param1:int) : §#^§
      {
         return this.§8k§[param1];
      }
      
      public function §"L§(param1:§#^§) : void
      {
         this.§8k§.push(param1);
      }
      
      public function §>^§() : void
      {
         this.§[!,§ = new Vector.<§'A§>();
      }
      
      public function §,`§() : void
      {
         this.§8k§ = new Vector.<§#^§>();
      }
      
      public function §`;§(param1:int) : §'A§
      {
         return this.§[!,§[param1];
      }
      
      public function §&[§(param1:§'A§) : void
      {
         this.§[!,§.push(param1);
      }
   }
}
