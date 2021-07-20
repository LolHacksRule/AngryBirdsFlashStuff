package §`!n§
{
   import §3D§.§%!x§;
   
   public class LevelManager
   {
      
      public static const §!1§:String = "1-1";
      
      protected static var §6!A§:Array = null;
      
      protected static var §<!u§:Array = [];
      
      protected static var §'W§:Array = [];
      
      public static var §`-§:String = null;
      
      public static var §]!5§:String = null;
      
      public static var §`F§:Boolean;
      
      public static var §5"G§:int = 0;
       
      
      public function LevelManager()
      {
         super();
      }
      
      public static function §`!q§(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:§=!-§ = null;
         var _loc4_:String = null;
         var _loc5_:* = null;
         var _loc6_:int = 0;
         §6!A§ = new Array();
         for each(_loc2_ in param1.chapters)
         {
            _loc3_ = new §=!-§();
            _loc3_.levelsPerPage = _loc2_.levelsPerPage;
            _loc3_.name = _loc2_.name;
            _loc3_.menuImage = _loc2_.menuImage;
            _loc3_.§["6§ = _loc2_.leftCorner;
            _loc3_.§"q§ = _loc2_.rightCorner;
            _loc3_.§;a§ = _loc2_.pageColors;
            _loc3_.pageIndexes = _loc2_.pageIndexes;
            _loc3_.levelButtons = _loc2_.levelButtons;
            _loc3_.writtenName = _loc2_.writtenName;
            if(_loc2_.cutscenes)
            {
               for(_loc5_ in _loc2_.cutscenes)
               {
                  _loc3_.§@!"§(_loc5_,_loc2_.cutscenes[_loc5_]);
               }
            }
            §6!A§.push(_loc3_);
            for each(_loc4_ in _loc3_.pageIndexes)
            {
               _loc6_ = 1;
               while(_loc6_ <= _loc3_.levelsPerPage)
               {
                  §'W§[_loc4_ + "-" + _loc6_] = _loc3_.name;
                  _loc6_++;
               }
            }
         }
      }
      
      public static function §]"<§() : void
      {
      }
      
      public static function §0"§(param1:String) : §=!-§
      {
         var _loc2_:§=!-§ = null;
         for each(_loc2_ in §6!A§)
         {
            if(_loc2_.§0!X§(param1))
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §<,§(param1:String) : int
      {
         var _loc3_:§=!-§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < §6!A§.length)
         {
            _loc3_ = §6!A§[_loc2_];
            if(_loc3_.§0!X§(param1))
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public static function §9"&§(param1:int) : §=!-§
      {
         return §6!A§[param1];
      }
      
      public static function §2!p§(param1:String) : §=!-§
      {
         var _loc2_:§=!-§ = null;
         for each(_loc2_ in §6!A§)
         {
            if(_loc2_.name == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §>!3§() : int
      {
         return §6!A§.length;
      }
      
      public static function §>! §(param1:String) : §#!s§
      {
         if(!§<!u§[param1])
         {
            if(§'W§[param1] == null)
            {
               throw new Error("Error! Level \'" + param1 + "\' does not exist.");
            }
         }
         return §<!u§[param1];
      }
      
      public static function §'g§(param1:String, param2:§#!s§) : void
      {
         §<!u§[param1] = param2;
      }
      
      public static function §-!w§(param1:String, param2:int) : int
      {
         var level:§#!s§ = null;
         var levelId:String = param1;
         var score:int = param2;
         try
         {
            level = LevelManager.§>! §(levelId);
         }
         catch(e:Error)
         {
         }
         if(score <= 0)
         {
            return 0;
         }
         if(score < level.§8!&§)
         {
            return 1;
         }
         if(score < level.§`!O§)
         {
            return 2;
         }
         return 3;
      }
      
      public static function §&!1§(param1:String) : String
      {
         if(!§'W§[param1])
         {
            return §!1§;
         }
         return param1;
      }
      
      public static function §^p§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:§=!-§ = null;
         if(param1 != §`-§)
         {
            _loc2_ = §<,§(param1);
            if(_loc2_ >= 0)
            {
               §5"G§ = _loc2_;
               §]!5§ = §`-§;
               §`-§ = param1;
               _loc3_ = §6!6§();
               if(_loc3_)
               {
                  _loc3_.§]!q§ = _loc3_.§-8§(param1);
               }
            }
            else
            {
               §]!5§ = §`-§;
               §`-§ = null;
            }
         }
      }
      
      public static function §1"§() : String
      {
         return §`-§.substring(5);
      }
      
      public static function §6!6§() : §=!-§
      {
         return §6!A§[§5"G§];
      }
      
      public static function §0!Y§() : Boolean
      {
         return true;
      }
      
      public static function §;"@§() : Boolean
      {
         var _loc1_:String = §&4§();
         var _loc2_:String = §6!6§().§&!i§(§`-§ + "-OUTRO");
         if(!_loc2_)
         {
            return false;
         }
         if(_loc1_ == null)
         {
            §%!x§.§<!x§(_loc2_);
         }
         return true;
      }
      
      public static function §&4§() : String
      {
         return §6!6§().§&4§(§`-§);
      }
   }
}
