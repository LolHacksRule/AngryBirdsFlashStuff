package §3!G§
{
   import §@!L§.§-`§;
   
   public class LevelManager
   {
      
      public static const §3!§:String = "1-1";
      
      protected static var §>!t§:Array = null;
      
      protected static var §01§:Array = [];
      
      protected static var §[!n§:Array = [];
      
      public static var §%n§:String = null;
      
      public static var §"!N§:String = null;
      
      public static var §4$§:Boolean;
      
      public static var §>!$§:int = 0;
       
      
      public function LevelManager()
      {
         super();
      }
      
      public static function §0U§(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:§<!#§ = null;
         var _loc4_:String = null;
         var _loc5_:* = null;
         var _loc6_:int = 0;
         §>!t§ = new Array();
         for each(_loc2_ in param1.chapters)
         {
            _loc3_ = new §<!#§();
            _loc3_.levelsPerPage = _loc2_.levelsPerPage;
            _loc3_.name = _loc2_.name;
            _loc3_.menuImage = _loc2_.menuImage;
            _loc3_.§3#§ = _loc2_.leftCorner;
            _loc3_.§4x§ = _loc2_.rightCorner;
            _loc3_.§=m§ = _loc2_.pageColors;
            _loc3_.pageIndexes = _loc2_.pageIndexes;
            _loc3_.levelButtons = _loc2_.levelButtons;
            _loc3_.writtenName = _loc2_.writtenName;
            if(_loc2_.cutscenes)
            {
               for(_loc5_ in _loc2_.cutscenes)
               {
                  _loc3_.§]!0§(_loc5_,_loc2_.cutscenes[_loc5_]);
               }
            }
            §>!t§.push(_loc3_);
            for each(_loc4_ in _loc3_.pageIndexes)
            {
               _loc6_ = 1;
               while(_loc6_ <= _loc3_.levelsPerPage)
               {
                  §[!n§[_loc4_ + "-" + _loc6_] = _loc3_.name;
                  _loc6_++;
               }
            }
         }
      }
      
      public static function §!!T§() : void
      {
      }
      
      public static function §1H§(param1:String) : §<!#§
      {
         var _loc2_:§<!#§ = null;
         for each(_loc2_ in §>!t§)
         {
            if(_loc2_.§,H§(param1))
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §>!3§(param1:String) : int
      {
         var _loc3_:§<!#§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < §>!t§.length)
         {
            _loc3_ = §>!t§[_loc2_];
            if(_loc3_.§,H§(param1))
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public static function §'J§(param1:int) : §<!#§
      {
         return §>!t§[param1];
      }
      
      public static function §#!x§(param1:String) : §<!#§
      {
         var _loc2_:§<!#§ = null;
         for each(_loc2_ in §>!t§)
         {
            if(_loc2_.name == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §?p§() : int
      {
         return §>!t§.length;
      }
      
      public static function §7z§(param1:String) : § y§
      {
         if(!§01§[param1])
         {
            if(§[!n§[param1] == null)
            {
               throw new Error("Error! Level \'" + param1 + "\' does not exist.");
            }
         }
         return §01§[param1];
      }
      
      public static function §=f§(param1:String, param2:§ y§) : void
      {
         §01§[param1] = param2;
      }
      
      public static function §1z§(param1:String, param2:int) : int
      {
         var level:§ y§ = null;
         var levelId:String = param1;
         var score:int = param2;
         try
         {
            level = LevelManager.§7z§(levelId);
         }
         catch(e:Error)
         {
         }
         if(score <= 0)
         {
            return 0;
         }
         if(score < level.§3!4§)
         {
            return 1;
         }
         if(score < level.§+h§)
         {
            return 2;
         }
         return 3;
      }
      
      public static function § o§(param1:String) : String
      {
         if(!§[!n§[param1])
         {
            return §3!§;
         }
         return param1;
      }
      
      public static function §@3§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:§<!#§ = null;
         if(param1 != §%n§)
         {
            _loc2_ = §>!3§(param1);
            if(_loc2_ >= 0)
            {
               §>!$§ = _loc2_;
               §"!N§ = §%n§;
               §%n§ = param1;
               _loc3_ = §];§();
               if(_loc3_)
               {
                  _loc3_.§ each§ = _loc3_.§"!>§(param1);
               }
            }
            else
            {
               §"!N§ = §%n§;
               §%n§ = null;
            }
         }
      }
      
      public static function §,e§() : String
      {
         return §%n§.substring(5);
      }
      
      public static function §];§() : §<!#§
      {
         return §>!t§[§>!$§];
      }
      
      public static function §6!&§() : Boolean
      {
         return true;
      }
      
      public static function §7!J§() : Boolean
      {
         var _loc1_:String = §7!X§();
         var _loc2_:String = §];§().§`!q§(§%n§ + "-OUTRO");
         if(!_loc2_)
         {
            return false;
         }
         if(_loc1_ == null)
         {
            §-`§.§+C§(_loc2_);
         }
         return true;
      }
      
      public static function §7!X§() : String
      {
         return §];§().§7!X§(§%n§);
      }
   }
}
