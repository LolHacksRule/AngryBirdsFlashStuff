package §6!&§
{
   import §9!e§.§7,§;
   
   public class §1!c§
   {
      
      public static const §&@§:String = "1-1";
      
      protected static var §"!n§:Array = null;
      
      protected static var §3j§:Array = [];
      
      protected static var §^`§:Array = [];
      
      public static var §'Z§:String = null;
      
      public static var §!f§:String = null;
      
      public static var §1!<§:Boolean;
      
      public static var §+$§:int = 0;
       
      
      public function §1!c§()
      {
         super();
      }
      
      public static function § _§(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:§68§ = null;
         var _loc4_:String = null;
         var _loc5_:* = null;
         var _loc6_:int = 0;
         §"!n§ = new Array();
         for each(_loc2_ in param1.chapters)
         {
            _loc3_ = new §68§();
            _loc3_.levelsPerPage = _loc2_.levelsPerPage;
            _loc3_.name = _loc2_.name;
            _loc3_.menuImage = _loc2_.menuImage;
            _loc3_.§[!]§ = _loc2_.leftCorner;
            _loc3_.§9H§ = _loc2_.rightCorner;
            _loc3_.§%!Z§ = _loc2_.pageColors;
            _loc3_.pageIndexes = _loc2_.pageIndexes;
            _loc3_.levelButtons = _loc2_.levelButtons;
            _loc3_.writtenName = _loc2_.writtenName;
            if(_loc2_.cutscenes)
            {
               for(_loc5_ in _loc2_.cutscenes)
               {
                  _loc3_.§<r§(_loc5_,_loc2_.cutscenes[_loc5_]);
               }
            }
            §"!n§.push(_loc3_);
            for each(_loc4_ in _loc3_.pageIndexes)
            {
               _loc6_ = 1;
               while(_loc6_ <= _loc3_.levelsPerPage)
               {
                  §^`§[_loc4_ + "-" + _loc6_] = _loc3_.name;
                  _loc6_++;
               }
            }
         }
      }
      
      public static function §!!3§() : void
      {
      }
      
      public static function §!F§(param1:String) : §68§
      {
         var _loc2_:§68§ = null;
         for each(_loc2_ in §"!n§)
         {
            if(_loc2_.§@"3§(param1))
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §4!p§(param1:String) : int
      {
         var _loc3_:§68§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < §"!n§.length)
         {
            _loc3_ = §"!n§[_loc2_];
            if(_loc3_.§@"3§(param1))
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public static function §?a§(param1:int) : §68§
      {
         return §"!n§[param1];
      }
      
      public static function §'8§(param1:String) : §68§
      {
         var _loc2_:§68§ = null;
         for each(_loc2_ in §"!n§)
         {
            if(_loc2_.name == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §7m§() : int
      {
         return §"!n§.length;
      }
      
      public static function §-!q§(param1:String) : §0!b§
      {
         if(!§3j§[param1])
         {
            if(§^`§[param1] == null)
            {
               throw new Error("Error! Level \'" + param1 + "\' does not exist.");
            }
         }
         return §3j§[param1];
      }
      
      public static function §9!N§(param1:String, param2:§0!b§) : void
      {
         §3j§[param1] = param2;
      }
      
      public static function §!t§(param1:String, param2:int) : int
      {
         var level:§0!b§ = null;
         var levelId:String = param1;
         var score:int = param2;
         try
         {
            level = §1!c§.§-!q§(levelId);
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
      
      public static function §-"+§(param1:String) : String
      {
         if(!§^`§[param1])
         {
            return §&@§;
         }
         return param1;
      }
      
      public static function loadLevel(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:§68§ = null;
         if(param1 != §'Z§)
         {
            _loc2_ = §4!p§(param1);
            if(_loc2_ >= 0)
            {
               §+$§ = _loc2_;
               §!f§ = §'Z§;
               §'Z§ = param1;
               _loc3_ = §<!7§();
               if(_loc3_)
               {
                  _loc3_.§#z§ = _loc3_.§<!&§(param1);
               }
            }
            else
            {
               §!f§ = §'Z§;
               §'Z§ = null;
            }
         }
      }
      
      public static function §-`§() : String
      {
         return §'Z§.substring(5);
      }
      
      public static function §<!7§() : §68§
      {
         return §"!n§[§+$§];
      }
      
      public static function §,!^§() : Boolean
      {
         return true;
      }
      
      public static function § "'§() : Boolean
      {
         var _loc1_:String = §+5§();
         var _loc2_:String = §<!7§().§>1§(§'Z§ + "-OUTRO");
         if(!_loc2_)
         {
            return false;
         }
         if(_loc1_ == null)
         {
            §7,§.§!u§(_loc2_);
         }
         return true;
      }
      
      public static function §+5§() : String
      {
         return §<!7§().§+5§(§'Z§);
      }
   }
}
