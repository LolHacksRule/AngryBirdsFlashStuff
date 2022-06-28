package §"L§
{
   import §4u§.CutSceneManager;
   
   public class LevelManager
   {
      
      public static const §>B§:String = "1-1";
      
      protected static var §?!M§:Array = null;
      
      protected static var §>#§:Array = [];
      
      protected static var §=!L§:Array = [];
      
      public static var §var§:String = null;
      
      public static var §;p§:String = null;
      
      public static var §+3§:Boolean;
      
      public static var §?Q§:int = 0;
       
      
      public function LevelManager()
      {
         super();
      }
      
      public static function §2!@§(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:ChapterModel = null;
         var _loc4_:String = null;
         var _loc5_:* = null;
         var _loc6_:int = 0;
         §?!M§ = new Array();
         for each(_loc2_ in param1.chapters)
         {
            _loc3_ = new ChapterModel();
            _loc3_.levelsPerPage = _loc2_.levelsPerPage;
            _loc3_.name = _loc2_.name;
            _loc3_.menuImage = _loc2_.menuImage;
            _loc3_.§set § = _loc2_.leftCorner;
            _loc3_.§8!^§ = _loc2_.rightCorner;
            _loc3_.§@@§ = _loc2_.pageColors;
            _loc3_.pageIndexes = _loc2_.pageIndexes;
            _loc3_.levelButtons = _loc2_.levelButtons;
            _loc3_.writtenName = _loc2_.writtenName;
            if(_loc2_.cutscenes)
            {
               for(_loc5_ in _loc2_.cutscenes)
               {
                  _loc3_.§0!k§(_loc5_,_loc2_.cutscenes[_loc5_]);
               }
            }
            §?!M§.push(_loc3_);
            for each(_loc4_ in _loc3_.pageIndexes)
            {
               _loc6_ = 1;
               while(_loc6_ <= _loc3_.levelsPerPage)
               {
                  §=!L§[_loc4_ + "-" + _loc6_] = _loc3_.name;
                  _loc6_++;
               }
            }
         }
      }
      
      public static function §]m§() : void
      {
      }
      
      public static function §;<§(param1:String) : ChapterModel
      {
         var _loc2_:ChapterModel = null;
         for each(_loc2_ in §?!M§)
         {
            if(_loc2_.§=$§(param1))
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §5e§(param1:String) : int
      {
         var _loc3_:ChapterModel = null;
         var _loc2_:int = 0;
         while(_loc2_ < §?!M§.length)
         {
            _loc3_ = §?!M§[_loc2_];
            if(_loc3_.§=$§(param1))
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public static function §;![§(param1:int) : ChapterModel
      {
         return §?!M§[param1];
      }
      
      public static function §4!J§(param1:String) : ChapterModel
      {
         var _loc2_:ChapterModel = null;
         for each(_loc2_ in §?!M§)
         {
            if(_loc2_.name == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §??§() : int
      {
         return §?!M§.length;
      }
      
      public static function §;!a§(param1:String) : LevelModel
      {
         if(!§>#§[param1])
         {
            if(§=!L§[param1] == null)
            {
               throw new Error("Error! Level \'" + param1 + "\' does not exist.");
            }
         }
         return §>#§[param1];
      }
      
      public static function §7+§(param1:String, param2:LevelModel) : void
      {
         §>#§[param1] = param2;
      }
      
      public static function §+y§(param1:String, param2:int) : int
      {
         var level:LevelModel = null;
         var levelId:String = param1;
         var score:int = param2;
         try
         {
            level = LevelManager.§;!a§(levelId);
         }
         catch(e:Error)
         {
         }
         if(score <= 0)
         {
            return 0;
         }
         if(score < level.§^]§)
         {
            return 1;
         }
         if(score < level.§;!L§)
         {
            return 2;
         }
         return 3;
      }
      
      public static function §"%§(param1:String) : String
      {
         if(!§=!L§[param1])
         {
            return §>B§;
         }
         return param1;
      }
      
      public static function §]!R§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:ChapterModel = null;
         if(param1 != §var§)
         {
            _loc2_ = §5e§(param1);
            if(_loc2_ >= 0)
            {
               §?Q§ = _loc2_;
               §;p§ = §var§;
               §var§ = param1;
               _loc3_ = §&!e§();
               if(_loc3_)
               {
                  _loc3_.§ !_§ = _loc3_.§-u§(param1);
               }
            }
            else
            {
               §;p§ = §var§;
               §var§ = null;
            }
         }
      }
      
      public static function §]K§() : String
      {
         return §var§.substring(5);
      }
      
      public static function §&!e§() : ChapterModel
      {
         return §?!M§[§?Q§];
      }
      
      public static function §4!Y§() : Boolean
      {
         return true;
      }
      
      public static function §>s§() : Boolean
      {
         var _loc1_:String = §>!1§();
         var _loc2_:String = §&!e§().§9!Z§(§var§ + "-OUTRO");
         if(!_loc2_)
         {
            return false;
         }
         if(_loc1_ == null)
         {
            CutSceneManager.§9!a§(_loc2_);
         }
         return true;
      }
      
      public static function §>!1§() : String
      {
         return §&!e§().§>!1§(§var§);
      }
   }
}
