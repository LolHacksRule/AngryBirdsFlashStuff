package §#!X§
{
   import §?$§.CutSceneManager;
   
   public class LevelManager
   {
      
      public static const §get §:String = "1-1";
      
      protected static var §"-§:Array = null;
      
      protected static var §-!@§:Array = [];
      
      protected static var §@!P§:Array = [];
      
      public static var §!=§:String = null;
      
      public static var § !Y§:String = null;
      
      public static var § @§:Boolean;
      
      public static var §3V§:int = 0;
       
      
      public function LevelManager()
      {
         super();
      }
      
      public static function §9>§(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:ChapterModel = null;
         var _loc4_:String = null;
         var _loc5_:* = null;
         var _loc6_:int = 0;
         §"-§ = new Array();
         for each(_loc2_ in param1.chapters)
         {
            _loc3_ = new ChapterModel();
            _loc3_.levelsPerPage = _loc2_.levelsPerPage;
            _loc3_.name = _loc2_.name;
            _loc3_.menuImage = _loc2_.menuImage;
            _loc3_.§=F§ = _loc2_.leftCorner;
            _loc3_.§,`§ = _loc2_.rightCorner;
            _loc3_.§79§ = _loc2_.pageColors;
            _loc3_.pageIndexes = _loc2_.pageIndexes;
            _loc3_.levelButtons = _loc2_.levelButtons;
            _loc3_.writtenName = _loc2_.writtenName;
            if(_loc2_.cutscenes)
            {
               for(_loc5_ in _loc2_.cutscenes)
               {
                  _loc3_.§[K§(_loc5_,_loc2_.cutscenes[_loc5_]);
               }
            }
            §"-§.push(_loc3_);
            for each(_loc4_ in _loc3_.pageIndexes)
            {
               _loc6_ = 1;
               while(_loc6_ <= _loc3_.levelsPerPage)
               {
                  §@!P§[_loc4_ + "-" + _loc6_] = _loc3_.name;
                  _loc6_++;
               }
            }
         }
      }
      
      public static function §@!C§() : void
      {
      }
      
      public static function §'!7§(param1:String) : ChapterModel
      {
         var _loc2_:ChapterModel = null;
         for each(_loc2_ in §"-§)
         {
            if(_loc2_.§15§(param1))
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §-!B§(param1:String) : int
      {
         var _loc3_:ChapterModel = null;
         var _loc2_:int = 0;
         while(_loc2_ < §"-§.length)
         {
            _loc3_ = §"-§[_loc2_];
            if(_loc3_.§15§(param1))
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public static function § m§(param1:int) : ChapterModel
      {
         return §"-§[param1];
      }
      
      public static function §&!;§(param1:String) : ChapterModel
      {
         var _loc2_:ChapterModel = null;
         for each(_loc2_ in §"-§)
         {
            if(_loc2_.name == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §8H§() : int
      {
         return §"-§.length;
      }
      
      public static function §<l§(param1:String) : LevelModel
      {
         if(!§-!@§[param1])
         {
            if(§@!P§[param1] == null)
            {
               throw new Error("Error! Level \'" + param1 + "\' does not exist.");
            }
         }
         return §-!@§[param1];
      }
      
      public static function §"@§(param1:String, param2:LevelModel) : void
      {
         §-!@§[param1] = param2;
      }
      
      public static function §%!"§(param1:String, param2:int) : int
      {
         var level:LevelModel = null;
         var levelId:String = param1;
         var score:int = param2;
         try
         {
            level = LevelManager.§<l§(levelId);
         }
         catch(e:Error)
         {
         }
         if(score <= 0)
         {
            return 0;
         }
         if(score < level.§;!>§)
         {
            return 1;
         }
         if(score < level.§&X§)
         {
            return 2;
         }
         return 3;
      }
      
      public static function §[!U§(param1:String) : String
      {
         if(!§@!P§[param1])
         {
            return §get §;
         }
         return param1;
      }
      
      public static function §%<§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:ChapterModel = null;
         if(param1 != §!=§)
         {
            _loc2_ = §-!B§(param1);
            if(_loc2_ >= 0)
            {
               §3V§ = _loc2_;
               § !Y§ = §!=§;
               §!=§ = param1;
               _loc3_ = §7+§();
               if(_loc3_)
               {
                  _loc3_.§9!O§ = _loc3_.§ !,§(param1);
               }
            }
            else
            {
               § !Y§ = §!=§;
               §!=§ = null;
            }
         }
      }
      
      public static function §<e§() : String
      {
         return §!=§.substring(5);
      }
      
      public static function §7+§() : ChapterModel
      {
         return §"-§[§3V§];
      }
      
      public static function §+a§() : Boolean
      {
         return true;
      }
      
      public static function §2! §() : Boolean
      {
         var _loc1_:String = §`l§();
         var _loc2_:String = §7+§().§#L§(§!=§ + "-OUTRO");
         if(!_loc2_)
         {
            return false;
         }
         if(_loc1_ == null)
         {
            CutSceneManager.§2!C§(_loc2_);
         }
         return true;
      }
      
      public static function §`l§() : String
      {
         return §7+§().§`l§(§!=§);
      }
   }
}
