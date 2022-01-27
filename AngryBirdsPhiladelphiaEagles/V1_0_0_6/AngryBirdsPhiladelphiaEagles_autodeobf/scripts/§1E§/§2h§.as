package §1E§
{
   import §#R§.§0I§;
   
   public class §2h§
   {
      
      public static const §+!>§:String = "1-1";
      
      protected static var §5y§:Array = null;
      
      protected static var §4t§:Array = [];
      
      protected static var §&#§:Array = [];
      
      public static var §,!P§:String = null;
      
      public static var §^B§:String = null;
      
      public static var §4^§:Boolean;
      
      public static var §1V§:int = 0;
       
      
      public function §2h§()
      {
         super();
      }
      
      public static function § !3§(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:§8P§ = null;
         var _loc4_:String = null;
         var _loc5_:* = null;
         var _loc6_:int = 0;
         §5y§ = new Array();
         for each(_loc2_ in param1.chapters)
         {
            _loc3_ = new §8P§();
            _loc3_.levelsPerPage = _loc2_.levelsPerPage;
            _loc3_.name = _loc2_.name;
            _loc3_.menuImage = _loc2_.menuImage;
            _loc3_.§6!>§ = _loc2_.leftCorner;
            _loc3_.§;!K§ = _loc2_.rightCorner;
            _loc3_.§]K§ = _loc2_.pageColors;
            _loc3_.pageIndexes = _loc2_.pageIndexes;
            _loc3_.levelButtons = _loc2_.levelButtons;
            _loc3_.writtenName = _loc2_.writtenName;
            if(_loc2_.cutscenes)
            {
               for(_loc5_ in _loc2_.cutscenes)
               {
                  _loc3_.§3d§(_loc5_,_loc2_.cutscenes[_loc5_]);
               }
            }
            §5y§.push(_loc3_);
            for each(_loc4_ in _loc3_.pageIndexes)
            {
               _loc6_ = 1;
               while(_loc6_ <= _loc3_.levelsPerPage)
               {
                  §&#§[_loc4_ + "-" + _loc6_] = _loc3_.name;
                  _loc6_++;
               }
            }
         }
      }
      
      public static function §>v§() : void
      {
      }
      
      public static function §,?§(param1:String) : §8P§
      {
         var _loc2_:§8P§ = null;
         for each(_loc2_ in §5y§)
         {
            if(_loc2_.§7k§(param1))
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §1U§(param1:String) : int
      {
         var _loc3_:§8P§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < §5y§.length)
         {
            _loc3_ = §5y§[_loc2_];
            if(_loc3_.§7k§(param1))
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public static function §&I§(param1:int) : §8P§
      {
         return §5y§[param1];
      }
      
      public static function §7D§(param1:String) : §8P§
      {
         var _loc2_:§8P§ = null;
         for each(_loc2_ in §5y§)
         {
            if(_loc2_.name == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §01§() : int
      {
         return §5y§.length;
      }
      
      public static function §?J§(param1:String) : §5T§
      {
         if(!§4t§[param1])
         {
            if(§&#§[param1] == null)
            {
               throw new Error("Error! Level \'" + param1 + "\' does not exist.");
            }
         }
         return §4t§[param1];
      }
      
      public static function §1!J§(param1:String, param2:§5T§) : void
      {
         §4t§[param1] = param2;
      }
      
      public static function §;W§(param1:String, param2:int) : int
      {
         var level:§5T§ = null;
         var levelId:String = param1;
         var score:int = param2;
         try
         {
            level = §2h§.§?J§(levelId);
         }
         catch(e:Error)
         {
         }
         if(score <= 0)
         {
            return 0;
         }
         if(score < level.§-!#§)
         {
            return 1;
         }
         if(score < level.§3!3§)
         {
            return 2;
         }
         return 3;
      }
      
      public static function §>w§(param1:String) : String
      {
         if(!§&#§[param1])
         {
            return §+!>§;
         }
         return param1;
      }
      
      public static function §2!I§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:§8P§ = null;
         if(param1 != §,!P§)
         {
            _loc2_ = §1U§(param1);
            if(_loc2_ >= 0)
            {
               §1V§ = _loc2_;
               §^B§ = §,!P§;
               §,!P§ = param1;
               _loc3_ = §4m§();
               if(_loc3_)
               {
                  _loc3_.§`!C§ = _loc3_.§=!-§(param1);
               }
            }
            else
            {
               §^B§ = §,!P§;
               §,!P§ = null;
            }
         }
      }
      
      public static function §<J§() : String
      {
         return §,!P§.substring(5);
      }
      
      public static function §4m§() : §8P§
      {
         return §5y§[§1V§];
      }
      
      public static function §>!N§() : Boolean
      {
         return true;
      }
      
      public static function §<&§() : Boolean
      {
         var _loc1_:String = §@!8§();
         var _loc2_:String = §4m§().§68§(§,!P§ + "-OUTRO");
         if(!_loc2_)
         {
            return false;
         }
         if(_loc1_ == null)
         {
            §0I§.§^S§(_loc2_);
         }
         return true;
      }
      
      public static function §@!8§() : String
      {
         return §4m§().§@!8§(§,!P§);
      }
   }
}
