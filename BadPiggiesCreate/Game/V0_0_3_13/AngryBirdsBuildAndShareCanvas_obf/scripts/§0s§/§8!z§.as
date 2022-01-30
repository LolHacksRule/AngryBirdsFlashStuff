package §0s§
{
   import §0!w§.§2"8§;
   
   public class §8!z§
   {
      
      public static const §`"!§:String = "1-1";
      
      protected static var §9"§:Array = null;
      
      protected static var §3X§:Array = [];
      
      protected static var §3!q§:Array = [];
      
      public static var §>!&§:String = null;
      
      public static var § "7§:String = null;
      
      public static var §>!o§:Boolean;
      
      public static var §8"4§:int = 0;
       
      
      public function §8!z§()
      {
         super();
      }
      
      public static function §,a§(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:§=W§ = null;
         var _loc4_:String = null;
         var _loc5_:* = null;
         var _loc6_:int = 0;
         §9"§ = new Array();
         for each(_loc2_ in param1.chapters)
         {
            _loc3_ = new §=W§();
            _loc3_.levelsPerPage = _loc2_.levelsPerPage;
            _loc3_.name = _loc2_.name;
            _loc3_.menuImage = _loc2_.menuImage;
            _loc3_.§[!3§ = _loc2_.leftCorner;
            _loc3_.§?!L§ = _loc2_.rightCorner;
            _loc3_.§7!%§ = _loc2_.pageColors;
            _loc3_.pageIndexes = _loc2_.pageIndexes;
            _loc3_.levelButtons = _loc2_.levelButtons;
            _loc3_.writtenName = _loc2_.writtenName;
            if(_loc2_.cutscenes)
            {
               for(_loc5_ in _loc2_.cutscenes)
               {
                  _loc3_.§3i§(_loc5_,_loc2_.cutscenes[_loc5_]);
               }
            }
            §9"§.push(_loc3_);
            for each(_loc4_ in _loc3_.pageIndexes)
            {
               _loc6_ = 1;
               while(_loc6_ <= _loc3_.levelsPerPage)
               {
                  §3!q§[_loc4_ + "-" + _loc6_] = _loc3_.name;
                  _loc6_++;
               }
            }
         }
      }
      
      public static function §[-§() : void
      {
      }
      
      public static function §=!b§(param1:String) : §=W§
      {
         var _loc2_:§=W§ = null;
         for each(_loc2_ in §9"§)
         {
            if(_loc2_.§'%§(param1))
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §[""§(param1:String) : int
      {
         var _loc3_:§=W§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < §9"§.length)
         {
            _loc3_ = §9"§[_loc2_];
            if(_loc3_.§'%§(param1))
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public static function §]!1§(param1:int) : §=W§
      {
         return §9"§[param1];
      }
      
      public static function §"§(param1:String) : §=W§
      {
         var _loc2_:§=W§ = null;
         for each(_loc2_ in §9"§)
         {
            if(_loc2_.name == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §]!x§() : int
      {
         return §9"§.length;
      }
      
      public static function §5!L§(param1:String) : §];§
      {
         if(!§3X§[param1])
         {
            if(§3!q§[param1] == null)
            {
               throw new Error("Error! Level \'" + param1 + "\' does not exist.");
            }
         }
         return §3X§[param1];
      }
      
      public static function §'!N§(param1:String, param2:§];§) : void
      {
         §3X§[param1] = param2;
      }
      
      public static function §8&§(param1:String, param2:int) : int
      {
         var level:§];§ = null;
         var levelId:String = param1;
         var score:int = param2;
         try
         {
            level = §8!z§.§5!L§(levelId);
         }
         catch(e:Error)
         {
         }
         if(score <= 0)
         {
            return 0;
         }
         if(score < level.mScoreSilver)
         {
            return 1;
         }
         if(score < level.mScoreGold)
         {
            return 2;
         }
         return 3;
      }
      
      public static function § 7§(param1:String) : String
      {
         if(!§3!q§[param1])
         {
            return §`"!§;
         }
         return param1;
      }
      
      public static function loadLevel(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:§=W§ = null;
         if(param1 != §>!&§)
         {
            _loc2_ = §[""§(param1);
            if(_loc2_ >= 0)
            {
               §8"4§ = _loc2_;
               § "7§ = §>!&§;
               §>!&§ = param1;
               _loc3_ = §^!]§();
               if(_loc3_)
               {
                  _loc3_.§^"?§ = _loc3_.§^" §(param1);
               }
            }
            else
            {
               § "7§ = §>!&§;
               §>!&§ = null;
            }
         }
      }
      
      public static function §7M§() : String
      {
         return §>!&§.substring(5);
      }
      
      public static function §^!]§() : §=W§
      {
         return §9"§[§8"4§];
      }
      
      public static function §!!`§() : Boolean
      {
         return true;
      }
      
      public static function §4!3§() : Boolean
      {
         var _loc1_:String = §6"&§();
         var _loc2_:String = §^!]§().§2c§(§>!&§ + "-OUTRO");
         if(!_loc2_)
         {
            return false;
         }
         if(_loc1_ == null)
         {
            §2"8§.§=C§(_loc2_);
         }
         return true;
      }
      
      public static function §6"&§() : String
      {
         return §^!]§().§6"&§(§>!&§);
      }
   }
}
