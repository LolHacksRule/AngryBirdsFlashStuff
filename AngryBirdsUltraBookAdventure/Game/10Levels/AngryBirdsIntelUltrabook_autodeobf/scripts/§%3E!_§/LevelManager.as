package §>!_§
{
   import §%r§.CutSceneManager;
   
   public class LevelManager
   {
      
      public static const §@E§:String = "1-1";
      
      protected static var §0C§:Array = null;
      
      protected static var § !d§:Array = [];
      
      protected static var §`>§:Array = [];
      
      public static var §1m§:String = null;
      
      public static var §=t§:String = null;
      
      public static var §+A§:Boolean;
      
      public static var §]!U§:int = 0;
       
      
      public function LevelManager()
      {
         super();
      }
      
      public static function §'!J§(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:ChapterModel = null;
         var _loc4_:String = null;
         var _loc5_:* = null;
         var _loc6_:int = 0;
         §0C§ = new Array();
         for each(_loc2_ in param1.chapters)
         {
            _loc3_ = new ChapterModel();
            _loc3_.levelsPerPage = _loc2_.levelsPerPage;
            _loc3_.name = _loc2_.name;
            _loc3_.menuImage = _loc2_.menuImage;
            _loc3_.§=g§ = _loc2_.leftCorner;
            _loc3_.§>3§ = _loc2_.rightCorner;
            _loc3_.§"K§ = _loc2_.pageColors;
            _loc3_.pageIndexes = _loc2_.pageIndexes;
            _loc3_.levelButtons = _loc2_.levelButtons;
            _loc3_.writtenName = _loc2_.writtenName;
            if(_loc2_.cutscenes)
            {
               for(_loc5_ in _loc2_.cutscenes)
               {
                  _loc3_.§-!f§(_loc5_,_loc2_.cutscenes[_loc5_]);
               }
            }
            §0C§.push(_loc3_);
            for each(_loc4_ in _loc3_.pageIndexes)
            {
               _loc6_ = 1;
               while(_loc6_ <= _loc3_.levelsPerPage)
               {
                  §`>§[_loc4_ + "-" + _loc6_] = _loc3_.name;
                  _loc6_++;
               }
            }
         }
      }
      
      public static function §0P§() : void
      {
      }
      
      public static function §6X§(param1:String) : ChapterModel
      {
         var _loc2_:ChapterModel = null;
         for each(_loc2_ in §0C§)
         {
            if(_loc2_.§,!B§(param1))
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §=!0§(param1:String) : int
      {
         var _loc3_:ChapterModel = null;
         var _loc2_:int = 0;
         while(_loc2_ < §0C§.length)
         {
            _loc3_ = §0C§[_loc2_];
            if(_loc3_.§,!B§(param1))
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public static function §7Z§(param1:int) : ChapterModel
      {
         return §0C§[param1];
      }
      
      public static function §^<§(param1:String) : ChapterModel
      {
         var _loc2_:ChapterModel = null;
         for each(_loc2_ in §0C§)
         {
            if(_loc2_.name == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §3!3§() : int
      {
         return §0C§.length;
      }
      
      public static function §1n§(param1:String) : LevelModel
      {
         if(!§ !d§[param1])
         {
            if(§`>§[param1] == null)
            {
               throw new Error("Error! Level \'" + param1 + "\' does not exist.");
            }
         }
         return § !d§[param1];
      }
      
      public static function §@!b§(param1:String, param2:LevelModel) : void
      {
         § !d§[param1] = param2;
      }
      
      public static function §8!R§(param1:String, param2:int) : int
      {
         var level:LevelModel = null;
         var levelId:String = param1;
         var score:int = param2;
         try
         {
            level = LevelManager.§1n§(levelId);
         }
         catch(e:Error)
         {
         }
         if(score <= 0)
         {
            return 0;
         }
         if(score < level.§4!4§)
         {
            return 1;
         }
         if(score < level.§<q§)
         {
            return 2;
         }
         return 3;
      }
      
      public static function §'!^§(param1:String) : String
      {
         if(!§`>§[param1])
         {
            return §@E§;
         }
         return param1;
      }
      
      public static function §?h§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:ChapterModel = null;
         if(param1 != §1m§)
         {
            _loc2_ = §=!0§(param1);
            if(_loc2_ >= 0)
            {
               §]!U§ = _loc2_;
               §=t§ = §1m§;
               §1m§ = param1;
               _loc3_ = §!]§();
               if(_loc3_)
               {
                  _loc3_.§0N§ = _loc3_.§1k§(param1);
               }
            }
            else
            {
               §=t§ = §1m§;
               §1m§ = null;
            }
         }
      }
      
      public static function §<z§() : String
      {
         return §1m§.substring(5);
      }
      
      public static function §!]§() : ChapterModel
      {
         return §0C§[§]!U§];
      }
      
      public static function §0i§() : Boolean
      {
         return true;
      }
      
      public static function §%!M§() : Boolean
      {
         var _loc1_:String = §8!I§();
         var _loc2_:String = §!]§().§+B§(§1m§ + "-OUTRO");
         if(!_loc2_)
         {
            return false;
         }
         if(_loc1_ == null)
         {
            CutSceneManager.§]O§(_loc2_);
         }
         return true;
      }
      
      public static function §8!I§() : String
      {
         return §!]§().§8!I§(§1m§);
      }
   }
}
