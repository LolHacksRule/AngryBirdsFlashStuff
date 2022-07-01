package §'!O§
{
   import §8!w§.§<A§;
   
   public class §[!m§
   {
      
      public static const §6H§:String = "1-1";
      
      protected static var §&!u§:Array = null;
      
      protected static var §^C§:Array = [];
      
      protected static var §5S§:Array = [];
      
      public static var §<!D§:String = null;
      
      public static var §use§:String = null;
      
      public static var §&E§:Boolean;
      
      public static var §0`§:int = 0;
       
      
      public function §[!m§()
      {
         super();
      }
      
      public static function §"H§(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:§=!w§ = null;
         var _loc4_:String = null;
         var _loc5_:* = null;
         var _loc6_:int = 0;
         §&!u§ = new Array();
         for each(_loc2_ in param1.chapters)
         {
            _loc3_ = new §=!w§();
            _loc3_.levelsPerPage = _loc2_.levelsPerPage;
            _loc3_.name = _loc2_.name;
            _loc3_.menuImage = _loc2_.menuImage;
            _loc3_.§7t§ = _loc2_.leftCorner;
            _loc3_.§<"%§ = _loc2_.rightCorner;
            _loc3_.§]V§ = _loc2_.pageColors;
            _loc3_.pageIndexes = _loc2_.pageIndexes;
            _loc3_.levelButtons = _loc2_.levelButtons;
            _loc3_.writtenName = _loc2_.writtenName;
            if(_loc2_.cutscenes)
            {
               for(_loc5_ in _loc2_.cutscenes)
               {
                  _loc3_.§]s§(_loc5_,_loc2_.cutscenes[_loc5_]);
               }
            }
            §&!u§.push(_loc3_);
            for each(_loc4_ in _loc3_.pageIndexes)
            {
               _loc6_ = 1;
               while(_loc6_ <= _loc3_.levelsPerPage)
               {
                  §5S§[_loc4_ + "-" + _loc6_] = _loc3_.name;
                  _loc6_++;
               }
            }
         }
      }
      
      public static function §0'§() : void
      {
      }
      
      public static function §?!S§(param1:String) : §=!w§
      {
         var _loc2_:§=!w§ = null;
         for each(_loc2_ in §&!u§)
         {
            if(_loc2_.§5!l§(param1))
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §8!g§(param1:String) : int
      {
         var _loc3_:§=!w§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < §&!u§.length)
         {
            _loc3_ = §&!u§[_loc2_];
            if(_loc3_.§5!l§(param1))
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public static function §3!n§(param1:int) : §=!w§
      {
         return §&!u§[param1];
      }
      
      public static function §#j§(param1:String) : §=!w§
      {
         var _loc2_:§=!w§ = null;
         for each(_loc2_ in §&!u§)
         {
            if(_loc2_.name == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function § !l§() : int
      {
         return §&!u§.length;
      }
      
      public static function §&l§(param1:String) : §@!l§
      {
         if(!§^C§[param1])
         {
            if(§5S§[param1] == null)
            {
               throw new Error("Error! Level \'" + param1 + "\' does not exist.");
            }
         }
         return §^C§[param1];
      }
      
      public static function §?"+§(param1:String, param2:§@!l§) : void
      {
         §^C§[param1] = param2;
      }
      
      public static function §`p§(param1:String, param2:int) : int
      {
         var level:§@!l§ = null;
         var levelId:String = param1;
         var score:int = param2;
         try
         {
            level = §[!m§.§&l§(levelId);
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
      
      public static function §2!I§(param1:String) : String
      {
         if(!§5S§[param1])
         {
            return §6H§;
         }
         return param1;
      }
      
      public static function loadLevel(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:§=!w§ = null;
         if(param1 != §<!D§)
         {
            _loc2_ = §8!g§(param1);
            if(_loc2_ >= 0)
            {
               §0`§ = _loc2_;
               §use§ = §<!D§;
               §<!D§ = param1;
               _loc3_ = §<!<§();
               if(_loc3_)
               {
                  _loc3_.§ !w§ = _loc3_.§>!3§(param1);
               }
            }
            else
            {
               §use§ = §<!D§;
               §<!D§ = null;
            }
         }
      }
      
      public static function §&!O§() : String
      {
         return §<!D§.substring(5);
      }
      
      public static function §<!<§() : §=!w§
      {
         return §&!u§[§0`§];
      }
      
      public static function §"'§() : Boolean
      {
         return true;
      }
      
      public static function §+§() : Boolean
      {
         var _loc1_:String = §7>§();
         var _loc2_:String = §<!<§().§]r§(§<!D§ + "-OUTRO");
         if(!_loc2_)
         {
            return false;
         }
         if(_loc1_ == null)
         {
            §<A§.§>!M§(_loc2_);
         }
         return true;
      }
      
      public static function §7>§() : String
      {
         return §<!<§().§7>§(§<!D§);
      }
   }
}
