package §>!_§
{
   import §4!C§.§,!0§;
   import §4!C§.§7W§;
   import §4!C§.§>!Q§;
   import §5u§.§[!,§;
   import §>! §.*;
   import §]!@§.LevelMain;
   import flash.geom.Point;
   import §package§.§2Y§;
   import §package§.LevelItemManager;
   
   public class LevelModel
   {
      
      public static const §9J§:String = "BACKGROUND_BLUE_GRASS";
       
      
      public var §=0§:Number = 0;
      
      public var §?!=§:Number = -8;
      
      private var §]6§:Vector.<§,!0§> = null;
      
      private var §2!X§:Vector.<§>!Q§> = null;
      
      private var §#!R§:Vector.<§7W§> = null;
      
      private var §-'§:Vector.<§5!"§> = null;
      
      public var §+]§:Number = 0;
      
      public var §,!h§:Boolean = false;
      
      public var §4!4§:int = 0;
      
      public var §<q§:int = 0;
      
      private var § !V§:int = 0;
      
      private var §!!A§:String = null;
      
      public var mName:String = null;
      
      public function LevelModel()
      {
         super();
         this.§-'§ = new Vector.<§5!"§>();
         this.§]6§ = new Vector.<§,!0§>();
         this.§2!X§ = new Vector.<§>!Q§>();
         this.§#!R§ = new Vector.<§7W§>();
         this.§!!A§ = §9J§;
      }
      
      public static function §#T§(param1:String) : LevelModel
      {
         var _loc2_:LevelModel = new LevelModel();
         _loc2_.§=h§(param1);
         return _loc2_;
      }
      
      public static function §7!F§(param1:§2Y§) : Boolean
      {
         if(param1.§4o§ == §2Y§.§<%§ || param1.§4o§ == §2Y§.§9!0§ || param1.§4o§ == §2Y§.§?N§)
         {
            return true;
         }
         return false;
      }
      
      public static function §;!&§(param1:String) : LevelModel
      {
         var _loc2_:LevelModel = §#T§(param1);
         _loc2_.§=0§ = _loc2_.§2!X§[0].x;
         _loc2_.§?!=§ = _loc2_.§2!X§[0].y - 8.5;
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.§]6§.length)
         {
            _loc2_.§]6§[_loc3_].angle = 360 - _loc2_.§]6§[_loc3_].angle;
            _loc3_++;
         }
         return _loc2_;
      }
      
      protected static function §&z§(param1:int, param2:Object) : Vector.<§7W§>
      {
         var _loc5_:Object = null;
         var _loc6_:Point = null;
         var _loc7_:Point = null;
         var _loc8_:§7W§ = null;
         var _loc3_:Vector.<§7W§> = new Vector.<§7W§>();
         var _loc4_:int = 1;
         while(_loc4_ <= param1)
         {
            _loc5_ = param2["joint_" + _loc4_];
            if(_loc5_ != null)
            {
               _loc6_ = new Point(_loc5_.x1,_loc5_.y1);
               _loc7_ = new Point(_loc5_.x2,_loc5_.y2);
               _loc8_ = null;
               if(_loc5_.type == §7W§.§'!5§ || _loc5_.type == §7W§.§=N§)
               {
                  _loc8_ = new §7W§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected,_loc5_.limit,_loc5_.lowerLimit,_loc5_.upperLimit,_loc5_.motor,_loc5_.motorSpeed,_loc5_.backAndForth,_loc5_.maxTorque);
                  if(_loc5_.type == §7W§.§=N§)
                  {
                     _loc8_.axisX = _loc5_.axisX;
                     _loc8_.axisY = _loc5_.axisY;
                  }
               }
               else
               {
                  _loc8_ = new §7W§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected);
               }
               if(_loc5_.type == §7W§.§9c§)
               {
                  _loc8_.§6G§ = _loc5_.destroyTimer;
               }
               _loc3_.push(_loc8_);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function get §"&§() : int
      {
         return this.§]6§.length;
      }
      
      public function get §,!j§() : int
      {
         return this.§#!R§.length;
      }
      
      public function get §4!I§() : int
      {
         return this.§2!X§.length;
      }
      
      public function get override() : int
      {
         return this.§-'§.length;
      }
      
      public function get theme() : String
      {
         return this.§!!A§;
      }
      
      public function set theme(param1:String) : void
      {
         this.§!!A§ = param1;
      }
      
      public function getEagleScore() : int
      {
         var _loc1_:int = this.§-!^§();
         if(_loc1_ > 0 && _loc1_ < this.§ !V§)
         {
            return _loc1_;
         }
         if(this.§ !V§ == 0)
         {
            return _loc1_;
         }
         return this.§ !V§;
      }
      
      public function §,!P§(param1:int) : void
      {
         var _loc2_:int = this.§-!^§();
         if(_loc2_ > 0 && _loc2_ < param1)
         {
            return;
         }
         this.§ !V§ = param1;
      }
      
      public function §=h§(param1:String) : void
      {
         var _loc4_:§5!"§ = null;
         var _loc5_:Object = null;
         var _loc6_:§>!Q§ = null;
         var _loc7_:String = null;
         var _loc8_:Object = null;
         var _loc9_:§,!0§ = null;
         var _loc2_:Object = JSON.parse(param1);
         this.§+]§ = _loc2_.LevelExtension;
         this.§,!h§ = false;
         this.§4!4§ = _loc2_.scoreSilver;
         this.§<q§ = _loc2_.scoreGold;
         this.§ !V§ = _loc2_.scoreEagle;
         this.§!!A§ = _loc2_.theme;
         this.mName = _loc2_.id;
         if(_loc2_.counts.joints)
         {
            this.§#!R§ = §&z§(_loc2_.counts.joints,_loc2_.world);
         }
         this.§-'§ = new Vector.<§5!"§>();
         this.§2!X§ = new Vector.<§>!Q§>();
         this.§]6§ = new Vector.<§,!0§>();
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.camera.length)
         {
            _loc4_ = new §5!"§();
            _loc4_.x = _loc2_.camera[_loc3_].x;
            _loc4_.y = _loc2_.camera[_loc3_].y;
            _loc4_.left = _loc2_.camera[_loc3_].left;
            _loc4_.right = _loc2_.camera[_loc3_].right;
            _loc4_.top = _loc2_.camera[_loc3_].top;
            _loc4_.bottom = _loc2_.camera[_loc3_].bottom;
            _loc4_.id = _loc2_.camera[_loc3_].id;
            this.§-'§.push(_loc4_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.birds)
         {
            _loc5_ = _loc2_.world["bird_" + _loc3_];
            _loc6_ = new §>!Q§();
            _loc6_.x = _loc5_.x;
            _loc6_.y = _loc5_.y;
            _loc6_.id = _loc5_.id;
            this.§2!X§.push(_loc6_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.blocks)
         {
            _loc7_ = "block_" + _loc3_;
            _loc8_ = _loc2_.world[_loc7_];
            _loc9_ = new §,!0§();
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
            this.§]6§.push(_loc9_);
            _loc3_++;
         }
         this.§=0§ = _loc2_.slingshotX;
         this.§?!=§ = _loc2_.slingshotY;
      }
      
      public function §%!#§() : Object
      {
         var _loc1_:Object = new Object();
         _loc1_.LevelExtension = this.§+]§;
         _loc1_.scoreSilver = this.§4!4§;
         _loc1_.scoreGold = this.§<q§;
         _loc1_.scoreEagle = this.§ !V§;
         _loc1_.theme = this.§!!A§;
         _loc1_.name = this.mName;
         _loc1_.camera = this.§-'§;
         var _loc2_:Number = 0;
         _loc1_.world = new Object();
         _loc2_ = 0;
         while(_loc2_ < this.§2!X§.length)
         {
            _loc1_.world["bird_" + (_loc2_ + 1)] = this.§2!X§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§]6§.length)
         {
            _loc1_.world["block_" + (_loc2_ + 1)] = this.§]6§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§#!R§.length)
         {
            _loc1_.world["joint_" + (_loc2_ + 1)] = this.§#!R§[_loc2_];
            _loc2_++;
         }
         _loc1_.counts = new Object();
         _loc1_.counts.blocks = this.§]6§.length;
         _loc1_.counts.birds = this.§2!X§.length;
         _loc1_.counts.joints = this.§#!R§.length;
         _loc1_.slingshotX = this.§=0§;
         _loc1_.slingshotY = this.§?!=§;
         return _loc1_;
      }
      
      public function §7M§() : String
      {
         return JSON.stringify(this.§%!#§());
      }
      
      public function §-!^§() : int
      {
         var _loc2_:§,!0§ = null;
         var _loc3_:String = null;
         var _loc4_:§2Y§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§]6§)
         {
            _loc3_ = _loc2_.id;
            _loc4_ = LevelItemManager.§-`§(_loc3_);
            if(_loc4_ == null && _loc3_.indexOf("MISC_") == 0)
            {
               _loc3_ = "MISC_FOOD_" + _loc3_.substring(5);
               _loc4_ = LevelItemManager.§-`§(_loc3_);
            }
            if(_loc4_)
            {
               _loc1_ += _loc4_.score;
               if(§7!F§(_loc4_))
               {
                  _loc1_ += _loc4_.§>!"§ * LevelMain.§2!S§.getValue();
               }
            }
         }
         return _loc1_;
      }
      
      public function §0s§() : XML
      {
         var _loc2_:§5!"§ = null;
         var _loc3_:int = 0;
         var _loc1_:String = "";
         _loc1_ += "<Level background=\"ThemeHills\"";
         _loc1_ += " LevelExtension=\"" + this.§+]§ + "\"";
         _loc1_ += " AutoCamera=\"" + this.§,!h§ + "\"";
         _loc1_ += " scoreSilver=\"" + this.§4!4§ + "\"";
         _loc1_ += " scoreGold=\"" + this.§<q§ + "\"";
         _loc1_ += ">";
         _loc1_ += "<Cameras>";
         for each(_loc2_ in this.§-'§)
         {
            _loc1_ += " <Camera id=\"" + _loc2_.id + "\" leftBorder=\"" + _loc2_.left + "\" rightBorder=\"" + _loc2_.right + "\" topBorder=\"" + _loc2_.top + "\" bottomBorder=\"" + (_loc2_.top + §[!,§.§4!@§) + "\"></Camera>";
         }
         _loc1_ += "</Cameras>";
         _loc1_ += "<Slingshot x=\"" + this.§2!X§[0].x + "\" y=\"" + (this.§2!X§[0].y - 8) + "\">";
         _loc1_ += " <Birds>";
         _loc3_ = 0;
         while(_loc3_ < this.§2!X§.length)
         {
            _loc1_ += "  <Bird id=\"" + this.§2!X§[_loc3_].id + "\" x=\"" + this.§2!X§[_loc3_].x + "\" y=\"" + this.§2!X§[_loc3_].y + "\"></Bird>";
            _loc3_++;
         }
         _loc1_ += " </Birds>";
         _loc1_ += "</Slingshot>";
         _loc3_ = 0;
         while(_loc3_ < this.§]6§.length)
         {
            _loc1_ += "<Item id=\"" + this.§]6§[_loc3_].id + "\" x=\"" + this.§]6§[_loc3_].x + "\" y=\"" + this.§]6§[_loc3_].y + "\" rotation=\"" + this.§]6§[_loc3_].angle + "\" ></Item>";
            _loc3_++;
         }
         _loc1_ += "</Level>";
         return new XML(_loc1_);
      }
      
      public function §98§(param1:int) : §,!0§
      {
         return this.§]6§[param1];
      }
      
      public function addObject(param1:§,!0§) : void
      {
         this.§]6§.push(param1);
      }
      
      public function §!n§(param1:int) : §7W§
      {
         return this.§#!R§[param1];
      }
      
      public function §?7§(param1:§7W§) : void
      {
         this.§#!R§.push(param1);
      }
      
      public function §3n§(param1:int) : §>!Q§
      {
         return this.§2!X§[param1];
      }
      
      public function §5$§(param1:§>!Q§) : void
      {
         this.§2!X§.push(param1);
      }
      
      public function §%!=§() : void
      {
         this.§-'§ = new Vector.<§5!"§>();
      }
      
      public function §<W§() : void
      {
         this.§2!X§ = new Vector.<§>!Q§>();
      }
      
      public function §%O§(param1:int) : §5!"§
      {
         return this.§-'§[param1];
      }
      
      public function §=!J§(param1:§5!"§) : void
      {
         this.§-'§.push(param1);
      }
   }
}
