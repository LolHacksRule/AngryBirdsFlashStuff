package §!!§
{
   import §"!&§.§[>§;
   
   public class LevelManager
   {
      
      public static const §3!&§:String = "1-1";
      
      protected static var §1"§:Array = null;
      
      protected static var §!y§:Array = [];
      
      protected static var §@8§:Array = [];
      
      public static var §^!F§:String = null;
      
      public static var §<5§:String = null;
      
      public static var §&!Q§:Boolean;
      
      public static var §;`§:int = 0;
       
      
      public function LevelManager()
      {
         super();
      }
      
      public static function §,v§(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:§@+§ = null;
         var _loc4_:String = null;
         var _loc5_:* = null;
         var _loc6_:int = 0;
         §1"§ = new Array();
         for each(_loc2_ in param1.chapters)
         {
            _loc3_ = new §@+§();
            _loc3_.levelsPerPage = _loc2_.levelsPerPage;
            _loc3_.name = _loc2_.name;
            _loc3_.menuImage = _loc2_.menuImage;
            _loc3_.§0l§ = _loc2_.leftCorner;
            _loc3_.§1!S§ = _loc2_.rightCorner;
            _loc3_.§^B§ = _loc2_.pageColors;
            _loc3_.pageIndexes = _loc2_.pageIndexes;
            _loc3_.levelButtons = _loc2_.levelButtons;
            _loc3_.writtenName = _loc2_.writtenName;
            if(_loc2_.cutscenes)
            {
               for(_loc5_ in _loc2_.cutscenes)
               {
                  _loc3_.§5k§(_loc5_,_loc2_.cutscenes[_loc5_]);
               }
            }
            §1"§.push(_loc3_);
            for each(_loc4_ in _loc3_.pageIndexes)
            {
               _loc6_ = 1;
               while(_loc6_ <= _loc3_.levelsPerPage)
               {
                  §@8§[_loc4_ + "-" + _loc6_] = _loc3_.name;
                  _loc6_++;
               }
            }
         }
      }
      
      public static function §^!A§() : void
      {
      }
      
      public static function §,m§(param1:String) : §@+§
      {
         var _loc2_:§@+§ = null;
         for each(_loc2_ in §1"§)
         {
            if(_loc2_.§]!1§(param1))
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §3=§(param1:String) : int
      {
         var _loc3_:§@+§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < §1"§.length)
         {
            _loc3_ = §1"§[_loc2_];
            if(_loc3_.§]!1§(param1))
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public static function §'v§(param1:int) : §@+§
      {
         return §1"§[param1];
      }
      
      public static function §"`§(param1:String) : §@+§
      {
         var _loc2_:§@+§ = null;
         for each(_loc2_ in §1"§)
         {
            if(_loc2_.name == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §`!v§() : int
      {
         return §1"§.length;
      }
      
      public static function §5!c§(param1:String) : §>4§
      {
         if(!§!y§[param1])
         {
            if(§@8§[param1] == null)
            {
               throw new Error("Error! Level \'" + param1 + "\' does not exist.");
            }
         }
         return §!y§[param1];
      }
      
      public static function §'S§(param1:String, param2:§>4§) : void
      {
         §!y§[param1] = param2;
      }
      
      public static function §'!J§(param1:String, param2:int) : int
      {
         var level:§>4§ = null;
         var levelId:String = param1;
         var score:int = param2;
         try
         {
            level = LevelManager.§5!c§(levelId);
         }
         catch(e:Error)
         {
         }
         if(score <= 0)
         {
            return 0;
         }
         if(score < level.§^T§)
         {
            return 1;
         }
         if(score < level.§6t§)
         {
            return 2;
         }
         return 3;
      }
      
      public static function §%e§(param1:String) : String
      {
         if(!§@8§[param1])
         {
            return §3!&§;
         }
         return param1;
      }
      
      public static function §9!d§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:§@+§ = null;
         if(param1 != §^!F§)
         {
            _loc2_ = §3=§(param1);
            if(_loc2_ >= 0)
            {
               §;`§ = _loc2_;
               §<5§ = §^!F§;
               §^!F§ = param1;
               _loc3_ = §5!K§();
               if(_loc3_)
               {
                  _loc3_.§-+§ = _loc3_.§'Z§(param1);
               }
            }
            else
            {
               §<5§ = §^!F§;
               §^!F§ = null;
            }
         }
      }
      
      public static function §2<§() : String
      {
         return §^!F§.substring(5);
      }
      
      public static function §5!K§() : §@+§
      {
         return §1"§[§;`§];
      }
      
      public static function §4s§() : Boolean
      {
         return true;
      }
      
      public static function §-!q§() : Boolean
      {
         var _loc1_:String = §=L§();
         var _loc2_:String = §5!K§().§4!#§(§^!F§ + "-OUTRO");
         if(!_loc2_)
         {
            return false;
         }
         if(_loc1_ == null)
         {
            §[>§.§+m§(_loc2_);
         }
         return true;
      }
      
      public static function §=L§() : String
      {
         return §5!K§().§=L§(§^!F§);
      }
   }
}
