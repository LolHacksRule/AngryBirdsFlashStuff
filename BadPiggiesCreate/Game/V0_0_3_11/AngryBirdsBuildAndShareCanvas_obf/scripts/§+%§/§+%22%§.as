package §+%§
{
   import §!-§.§%!#§;
   
   public class §+"%§
   {
      
      public static const §-$§:String = "1-1";
      
      protected static var §0r§:Array = null;
      
      protected static var §5@§:Array = [];
      
      protected static var §5!h§:Array = [];
      
      public static var §9!'§:String = null;
      
      public static var §%"'§:String = null;
      
      public static var §>H§:Boolean;
      
      public static var §-!F§:int = 0;
       
      
      public function §+"%§()
      {
         super();
      }
      
      public static function §0V§(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:§=^§ = null;
         var _loc4_:String = null;
         var _loc5_:* = null;
         var _loc6_:int = 0;
         §0r§ = new Array();
         for each(_loc2_ in param1.chapters)
         {
            _loc3_ = new §=^§();
            _loc3_.levelsPerPage = _loc2_.levelsPerPage;
            _loc3_.name = _loc2_.name;
            _loc3_.menuImage = _loc2_.menuImage;
            _loc3_.§'0§ = _loc2_.leftCorner;
            _loc3_.§'!B§ = _loc2_.rightCorner;
            _loc3_.§;U§ = _loc2_.pageColors;
            _loc3_.pageIndexes = _loc2_.pageIndexes;
            _loc3_.levelButtons = _loc2_.levelButtons;
            _loc3_.writtenName = _loc2_.writtenName;
            if(_loc2_.cutscenes)
            {
               for(_loc5_ in _loc2_.cutscenes)
               {
                  _loc3_.§0!W§(_loc5_,_loc2_.cutscenes[_loc5_]);
               }
            }
            §0r§.push(_loc3_);
            for each(_loc4_ in _loc3_.pageIndexes)
            {
               _loc6_ = 1;
               while(_loc6_ <= _loc3_.levelsPerPage)
               {
                  §5!h§[_loc4_ + "-" + _loc6_] = _loc3_.name;
                  _loc6_++;
               }
            }
         }
      }
      
      public static function §#!O§() : void
      {
      }
      
      public static function §?!7§(param1:String) : §=^§
      {
         var _loc2_:§=^§ = null;
         for each(_loc2_ in §0r§)
         {
            if(_loc2_.§5!n§(param1))
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function § in§(param1:String) : int
      {
         var _loc3_:§=^§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < §0r§.length)
         {
            _loc3_ = §0r§[_loc2_];
            if(_loc3_.§5!n§(param1))
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public static function §%!Y§(param1:int) : §=^§
      {
         return §0r§[param1];
      }
      
      public static function §!!z§(param1:String) : §=^§
      {
         var _loc2_:§=^§ = null;
         for each(_loc2_ in §0r§)
         {
            if(_loc2_.name == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §<g§() : int
      {
         return §0r§.length;
      }
      
      public static function §,>§(param1:String) : §5!F§
      {
         if(!§5@§[param1])
         {
            if(§5!h§[param1] == null)
            {
               throw new Error("Error! Level \'" + param1 + "\' does not exist.");
            }
         }
         return §5@§[param1];
      }
      
      public static function §9!a§(param1:String, param2:§5!F§) : void
      {
         §5@§[param1] = param2;
      }
      
      public static function §6Z§(param1:String, param2:int) : int
      {
         var level:§5!F§ = null;
         var levelId:String = param1;
         var score:int = param2;
         try
         {
            level = §+"%§.§,>§(levelId);
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
      
      public static function §'q§(param1:String) : String
      {
         if(!§5!h§[param1])
         {
            return §-$§;
         }
         return param1;
      }
      
      public static function loadLevel(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:§=^§ = null;
         if(param1 != §9!'§)
         {
            _loc2_ = § in§(param1);
            if(_loc2_ >= 0)
            {
               §-!F§ = _loc2_;
               §%"'§ = §9!'§;
               §9!'§ = param1;
               _loc3_ = §,!6§();
               if(_loc3_)
               {
                  _loc3_.§@K§ = _loc3_.§0!=§(param1);
               }
            }
            else
            {
               §%"'§ = §9!'§;
               §9!'§ = null;
            }
         }
      }
      
      public static function §4!p§() : String
      {
         return §9!'§.substring(5);
      }
      
      public static function §,!6§() : §=^§
      {
         return §0r§[§-!F§];
      }
      
      public static function §7@§() : Boolean
      {
         return true;
      }
      
      public static function §#x§() : Boolean
      {
         var _loc1_:String = §^!`§();
         var _loc2_:String = §,!6§().§&h§(§9!'§ + "-OUTRO");
         if(!_loc2_)
         {
            return false;
         }
         if(_loc1_ == null)
         {
            §%!#§.§'!>§(_loc2_);
         }
         return true;
      }
      
      public static function §^!`§() : String
      {
         return §,!6§().§^!`§(§9!'§);
      }
   }
}
