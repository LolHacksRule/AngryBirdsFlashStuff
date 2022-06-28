package §0!N§
{
   import §`!i§.§6n§;
   
   public class LevelManager
   {
      
      public static const §3!_§:String = "1-1";
      
      protected static var §3!f§:Array = null;
      
      protected static var §@!B§:Array = [];
      
      protected static var §2!m§:Array = [];
      
      public static var §4Y§:String = null;
      
      public static var §,C§:String = null;
      
      public static var §?G§:Boolean;
      
      public static var §>!§:int = 0;
       
      
      public function LevelManager()
      {
         super();
      }
      
      public static function §4!#§(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:§4n§ = null;
         var _loc4_:String = null;
         var _loc5_:* = null;
         var _loc6_:int = 0;
         §3!f§ = new Array();
         for each(_loc2_ in param1.chapters)
         {
            _loc3_ = new §4n§();
            _loc3_.levelsPerPage = _loc2_.levelsPerPage;
            _loc3_.name = _loc2_.name;
            _loc3_.menuImage = _loc2_.menuImage;
            _loc3_.§-!p§ = _loc2_.leftCorner;
            _loc3_.§%V§ = _loc2_.rightCorner;
            _loc3_.§0!"§ = _loc2_.pageColors;
            _loc3_.pageIndexes = _loc2_.pageIndexes;
            _loc3_.levelButtons = _loc2_.levelButtons;
            _loc3_.writtenName = _loc2_.writtenName;
            if(_loc2_.cutscenes)
            {
               for(_loc5_ in _loc2_.cutscenes)
               {
                  _loc3_.§&!Z§(_loc5_,_loc2_.cutscenes[_loc5_]);
               }
            }
            §3!f§.push(_loc3_);
            for each(_loc4_ in _loc3_.pageIndexes)
            {
               _loc6_ = 1;
               while(_loc6_ <= _loc3_.levelsPerPage)
               {
                  §2!m§[_loc4_ + "-" + _loc6_] = _loc3_.name;
                  _loc6_++;
               }
            }
         }
      }
      
      public static function §4b§() : void
      {
      }
      
      public static function §2!9§(param1:String) : §4n§
      {
         var _loc2_:§4n§ = null;
         for each(_loc2_ in §3!f§)
         {
            if(_loc2_.§'!,§(param1))
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §+R§(param1:String) : int
      {
         var _loc3_:§4n§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < §3!f§.length)
         {
            _loc3_ = §3!f§[_loc2_];
            if(_loc3_.§'!,§(param1))
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public static function §`!-§(param1:int) : §4n§
      {
         return §3!f§[param1];
      }
      
      public static function §!!i§(param1:String) : §4n§
      {
         var _loc2_:§4n§ = null;
         for each(_loc2_ in §3!f§)
         {
            if(_loc2_.name == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §1K§() : int
      {
         return §3!f§.length;
      }
      
      public static function §-V§(param1:String) : §=+§
      {
         if(!§@!B§[param1])
         {
            if(§2!m§[param1] == null)
            {
               throw new Error("Error! Level \'" + param1 + "\' does not exist.");
            }
         }
         return §@!B§[param1];
      }
      
      public static function §6! §(param1:String, param2:§=+§) : void
      {
         §@!B§[param1] = param2;
      }
      
      public static function §@!Z§(param1:String, param2:int) : int
      {
         var level:§=+§ = null;
         var levelId:String = param1;
         var score:int = param2;
         try
         {
            level = LevelManager.§-V§(levelId);
         }
         catch(e:Error)
         {
         }
         if(score <= 0)
         {
            return 0;
         }
         if(score < level.§8!l§)
         {
            return 1;
         }
         if(score < level.§>!o§)
         {
            return 2;
         }
         return 3;
      }
      
      public static function §@!L§(param1:String) : String
      {
         if(!§2!m§[param1])
         {
            return §3!_§;
         }
         return param1;
      }
      
      public static function §1!+§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:§4n§ = null;
         if(param1 != §4Y§)
         {
            _loc2_ = §+R§(param1);
            if(_loc2_ >= 0)
            {
               §>!§ = _loc2_;
               §,C§ = §4Y§;
               §4Y§ = param1;
               _loc3_ = §0v§();
               if(_loc3_)
               {
                  _loc3_.§-!F§ = _loc3_.§@h§(param1);
               }
            }
            else
            {
               §,C§ = §4Y§;
               §4Y§ = null;
            }
         }
      }
      
      public static function §@'§() : String
      {
         return §4Y§.substring(5);
      }
      
      public static function §0v§() : §4n§
      {
         return §3!f§[§>!§];
      }
      
      public static function §;L§() : Boolean
      {
         return true;
      }
      
      public static function §8!<§() : Boolean
      {
         var _loc1_:String = §9!j§();
         var _loc2_:String = §0v§().§['§(§4Y§ + "-OUTRO");
         if(!_loc2_)
         {
            return false;
         }
         if(_loc1_ == null)
         {
            §6n§.§1!#§(_loc2_);
         }
         return true;
      }
      
      public static function §9!j§() : String
      {
         return §0v§().§9!j§(§4Y§);
      }
   }
}
