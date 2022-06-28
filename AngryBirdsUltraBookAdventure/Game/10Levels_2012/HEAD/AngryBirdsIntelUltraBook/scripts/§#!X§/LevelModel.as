package §#!X§
{
   import §#y§.§0!D§;
   import §6Z§.§&D§;
   import §6Z§.§@x§;
   import §6Z§.§^!g§;
   import §?A§.LevelMain;
   import §^!h§.*;
   import §^L§.§0!J§;
   import §^L§.LevelItemManager;
   import flash.geom.Point;
   
   public class LevelModel
   {
      
      public static const §!Z§:String = "BACKGROUND_BLUE_GRASS";
       
      
      public var §<!6§:Number = 0;
      
      public var §]!1§:Number = -8;
      
      private var § !]§:Vector.<§^!g§> = null;
      
      private var §+I§:Vector.<§@x§> = null;
      
      private var §&d§:Vector.<§&D§> = null;
      
      private var §-!A§:Vector.<§7!1§> = null;
      
      public var §]!0§:Number = 0;
      
      public var §5!L§:Boolean = false;
      
      public var §;!>§:int = 0;
      
      public var §&X§:int = 0;
      
      private var §2!_§:int = 0;
      
      private var §]A§:String = null;
      
      public var mName:String = null;
      
      public function LevelModel()
      {
         super();
         this.§-!A§ = new Vector.<§7!1§>();
         this.§ !]§ = new Vector.<§^!g§>();
         this.§+I§ = new Vector.<§@x§>();
         this.§&d§ = new Vector.<§&D§>();
         this.§]A§ = §!Z§;
      }
      
      public static function §!1§(param1:String) : LevelModel
      {
         var _loc2_:LevelModel = new LevelModel();
         _loc2_.§'W§(param1);
         return _loc2_;
      }
      
      public static function §6!;§(param1:§0!J§) : Boolean
      {
         if(param1.§4i§ == §0!J§.§&!2§ || param1.§4i§ == §0!J§.§ K§ || param1.§4i§ == §0!J§.§ !Z§)
         {
            return true;
         }
         return false;
      }
      
      public static function §>!X§(param1:String) : LevelModel
      {
         var _loc2_:LevelModel = §!1§(param1);
         _loc2_.§<!6§ = _loc2_.§+I§[0].x;
         _loc2_.§]!1§ = _loc2_.§+I§[0].y - 8.5;
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.§ !]§.length)
         {
            _loc2_.§ !]§[_loc3_].angle = 360 - _loc2_.§ !]§[_loc3_].angle;
            _loc3_++;
         }
         return _loc2_;
      }
      
      protected static function § d§(param1:int, param2:Object) : Vector.<§&D§>
      {
         var _loc5_:Object = null;
         var _loc6_:Point = null;
         var _loc7_:Point = null;
         var _loc8_:§&D§ = null;
         var _loc3_:Vector.<§&D§> = new Vector.<§&D§>();
         var _loc4_:int = 1;
         while(_loc4_ <= param1)
         {
            _loc5_ = param2["joint_" + _loc4_];
            if(_loc5_ != null)
            {
               _loc6_ = new Point(_loc5_.x1,_loc5_.y1);
               _loc7_ = new Point(_loc5_.x2,_loc5_.y2);
               _loc8_ = null;
               if(_loc5_.type == §&D§.§'!j§ || _loc5_.type == §&D§.§;!I§)
               {
                  _loc8_ = new §&D§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected,_loc5_.limit,_loc5_.lowerLimit,_loc5_.upperLimit,_loc5_.motor,_loc5_.motorSpeed,_loc5_.backAndForth,_loc5_.maxTorque);
                  if(_loc5_.type == §&D§.§;!I§)
                  {
                     _loc8_.axisX = _loc5_.axisX;
                     _loc8_.axisY = _loc5_.axisY;
                  }
               }
               else
               {
                  _loc8_ = new §&D§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected);
               }
               if(_loc5_.type == §&D§.§-0§)
               {
                  _loc8_.§1_§ = _loc5_.destroyTimer;
               }
               _loc3_.push(_loc8_);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function get §;!V§() : int
      {
         return this.§ !]§.length;
      }
      
      public function get §?!Z§() : int
      {
         return this.§&d§.length;
      }
      
      public function get §1!X§() : int
      {
         return this.§+I§.length;
      }
      
      public function get §^p§() : int
      {
         return this.§-!A§.length;
      }
      
      public function get theme() : String
      {
         return this.§]A§;
      }
      
      public function set theme(param1:String) : void
      {
         this.§]A§ = param1;
      }
      
      public function getEagleScore() : int
      {
         var _loc1_:int = this.§[!R§();
         if(_loc1_ > 0 && _loc1_ < this.§2!_§)
         {
            return _loc1_;
         }
         if(this.§2!_§ == 0)
         {
            return _loc1_;
         }
         return this.§2!_§;
      }
      
      public function §8P§(param1:int) : void
      {
         var _loc2_:int = this.§[!R§();
         if(_loc2_ > 0 && _loc2_ < param1)
         {
            return;
         }
         this.§2!_§ = param1;
      }
      
      public function §'W§(param1:String) : void
      {
         var _loc4_:§7!1§ = null;
         var _loc5_:Object = null;
         var _loc6_:§@x§ = null;
         var _loc7_:String = null;
         var _loc8_:Object = null;
         var _loc9_:§^!g§ = null;
         var _loc2_:Object = JSON.parse(param1);
         this.§]!0§ = _loc2_.LevelExtension;
         this.§5!L§ = false;
         this.§;!>§ = _loc2_.scoreSilver;
         this.§&X§ = _loc2_.scoreGold;
         this.§2!_§ = _loc2_.scoreEagle;
         this.§]A§ = _loc2_.theme;
         this.mName = _loc2_.id;
         if(_loc2_.counts.joints)
         {
            this.§&d§ = § d§(_loc2_.counts.joints,_loc2_.world);
         }
         this.§-!A§ = new Vector.<§7!1§>();
         this.§+I§ = new Vector.<§@x§>();
         this.§ !]§ = new Vector.<§^!g§>();
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.camera.length)
         {
            _loc4_ = new §7!1§();
            _loc4_.x = _loc2_.camera[_loc3_].x;
            _loc4_.y = _loc2_.camera[_loc3_].y;
            _loc4_.left = _loc2_.camera[_loc3_].left;
            _loc4_.right = _loc2_.camera[_loc3_].right;
            _loc4_.top = _loc2_.camera[_loc3_].top;
            _loc4_.bottom = _loc2_.camera[_loc3_].bottom;
            _loc4_.id = _loc2_.camera[_loc3_].id;
            this.§-!A§.push(_loc4_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.birds)
         {
            _loc5_ = _loc2_.world["bird_" + _loc3_];
            _loc6_ = new §@x§();
            _loc6_.x = _loc5_.x;
            _loc6_.y = _loc5_.y;
            _loc6_.id = _loc5_.id;
            this.§+I§.push(_loc6_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.blocks)
         {
            _loc7_ = "block_" + _loc3_;
            _loc8_ = _loc2_.world[_loc7_];
            _loc9_ = new §^!g§();
            _loc9_.x = _loc8_.x;
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
            this.§ !]§.push(_loc9_);
            _loc3_++;
         }
         this.§<!6§ = _loc2_.slingshotX;
         this.§]!1§ = _loc2_.slingshotY;
      }
      
      public function §"7§() : Object
      {
         var _loc1_:Object = new Object();
         _loc1_.LevelExtension = this.§]!0§;
         _loc1_.scoreSilver = this.§;!>§;
         _loc1_.scoreGold = this.§&X§;
         _loc1_.scoreEagle = this.§2!_§;
         _loc1_.theme = this.§]A§;
         _loc1_.name = this.mName;
         _loc1_.camera = this.§-!A§;
         var _loc2_:Number = 0;
         _loc1_.world = new Object();
         _loc2_ = 0;
         while(_loc2_ < this.§+I§.length)
         {
            _loc1_.world["bird_" + (_loc2_ + 1)] = this.§+I§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§ !]§.length)
         {
            _loc1_.world["block_" + (_loc2_ + 1)] = this.§ !]§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§&d§.length)
         {
            _loc1_.world["joint_" + (_loc2_ + 1)] = this.§&d§[_loc2_];
            _loc2_++;
         }
         _loc1_.counts = new Object();
         _loc1_.counts.blocks = this.§ !]§.length;
         _loc1_.counts.birds = this.§+I§.length;
         _loc1_.counts.joints = this.§&d§.length;
         _loc1_.slingshotX = this.§<!6§;
         _loc1_.slingshotY = this.§]!1§;
         return _loc1_;
      }
      
      public function §!!S§() : String
      {
         return JSON.stringify(this.§"7§());
      }
      
      public function §[!R§() : int
      {
         var _loc2_:§^!g§ = null;
         var _loc3_:String = null;
         var _loc4_:§0!J§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§ !]§)
         {
            _loc3_ = _loc2_.id;
            _loc4_ = LevelItemManager.§><§(_loc3_);
            if(_loc4_ == null && _loc3_.indexOf("MISC_") == 0)
            {
               _loc3_ = "MISC_FOOD_" + _loc3_.substring(5);
               _loc4_ = LevelItemManager.§><§(_loc3_);
            }
            if(_loc4_)
            {
               _loc1_ += _loc4_.score;
               if(§6!;§(_loc4_))
               {
                  _loc1_ += _loc4_.§^V§ * LevelMain.§<a§.getValue();
               }
            }
         }
         return _loc1_;
      }
      
      public function §4!7§() : XML
      {
         var _loc2_:§7!1§ = null;
         var _loc3_:int = 0;
         var _loc1_:String = "";
         _loc1_ += "<Level background=\"ThemeHills\"";
         _loc1_ += " LevelExtension=\"" + this.§]!0§ + "\"";
         _loc1_ += " AutoCamera=\"" + this.§5!L§ + "\"";
         _loc1_ += " scoreSilver=\"" + this.§;!>§ + "\"";
         _loc1_ += " scoreGold=\"" + this.§&X§ + "\"";
         _loc1_ += ">";
         _loc1_ += "<Cameras>";
         for each(_loc2_ in this.§-!A§)
         {
            _loc1_ += " <Camera id=\"" + _loc2_.id + "\" leftBorder=\"" + _loc2_.left + "\" rightBorder=\"" + _loc2_.right + "\" topBorder=\"" + _loc2_.top + "\" bottomBorder=\"" + (_loc2_.top + §0!D§.§@k§) + "\"></Camera>";
         }
         _loc1_ += "</Cameras>";
         _loc1_ += "<Slingshot x=\"" + this.§+I§[0].x + "\" y=\"" + (this.§+I§[0].y - 8) + "\">";
         _loc1_ += " <Birds>";
         _loc3_ = 0;
         while(_loc3_ < this.§+I§.length)
         {
            _loc1_ += "  <Bird id=\"" + this.§+I§[_loc3_].id + "\" x=\"" + this.§+I§[_loc3_].x + "\" y=\"" + this.§+I§[_loc3_].y + "\"></Bird>";
            _loc3_++;
         }
         _loc1_ += " </Birds>";
         _loc1_ += "</Slingshot>";
         _loc3_ = 0;
         while(_loc3_ < this.§ !]§.length)
         {
            _loc1_ += "<Item id=\"" + this.§ !]§[_loc3_].id + "\" x=\"" + this.§ !]§[_loc3_].x + "\" y=\"" + this.§ !]§[_loc3_].y + "\" rotation=\"" + this.§ !]§[_loc3_].angle + "\" ></Item>";
            _loc3_++;
         }
         _loc1_ += "</Level>";
         return new XML(_loc1_);
      }
      
      public function §[O§(param1:int) : §^!g§
      {
         return this.§ !]§[param1];
      }
      
      public function addObject(param1:§^!g§) : void
      {
         this.§ !]§.push(param1);
      }
      
      public function §&B§(param1:int) : §&D§
      {
         return this.§&d§[param1];
      }
      
      public function §1u§(param1:§&D§) : void
      {
         this.§&d§.push(param1);
      }
      
      public function §`!O§(param1:int) : §@x§
      {
         return this.§+I§[param1];
      }
      
      public function §;!H§(param1:§@x§) : void
      {
         this.§+I§.push(param1);
      }
      
      public function §=!`§() : void
      {
         this.§-!A§ = new Vector.<§7!1§>();
      }
      
      public function §5I§() : void
      {
         this.§+I§ = new Vector.<§@x§>();
      }
      
      public function §4h§(param1:int) : §7!1§
      {
         return this.§-!A§[param1];
      }
      
      public function § ![§(param1:§7!1§) : void
      {
         this.§-!A§.push(param1);
      }
   }
}
