package §9!n§
{
   import §4;§.§=!^§;
   
   public class LevelManager
   {
      
      public static const §1!c§:String = "1-1";
      
      protected static var §0"4§:Array = null;
      
      protected static var §#n§:Array = [];
      
      protected static var §@!w§:Array = [];
      
      public static var § T§:String = null;
      
      public static var §&"V§:String = null;
      
      public static var §50§:Boolean;
      
      public static var §,m§:int = 0;
       
      
      public function LevelManager()
      {
         super();
      }
      
      public static function §@@§(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:§3-§ = null;
         var _loc4_:String = null;
         var _loc5_:* = null;
         var _loc6_:int = 0;
         §0"4§ = new Array();
         for each(_loc2_ in param1.chapters)
         {
            _loc3_ = new §3-§();
            _loc3_.levelsPerPage = _loc2_.levelsPerPage;
            _loc3_.name = _loc2_.name;
            _loc3_.menuImage = _loc2_.menuImage;
            _loc3_.§#">§ = _loc2_.leftCorner;
            _loc3_.§2A§ = _loc2_.rightCorner;
            _loc3_.§%"2§ = _loc2_.pageColors;
            _loc3_.pageIndexes = _loc2_.pageIndexes;
            _loc3_.levelButtons = _loc2_.levelButtons;
            _loc3_.writtenName = _loc2_.writtenName;
            if(_loc2_.cutscenes)
            {
               for(_loc5_ in _loc2_.cutscenes)
               {
                  _loc3_.§=""§(_loc5_,_loc2_.cutscenes[_loc5_]);
               }
            }
            §0"4§.push(_loc3_);
            for each(_loc4_ in _loc3_.pageIndexes)
            {
               _loc6_ = 1;
               while(_loc6_ <= _loc3_.levelsPerPage)
               {
                  §@!w§[_loc4_ + "-" + _loc6_] = _loc3_.name;
                  _loc6_++;
               }
            }
         }
      }
      
      public static function §2!0§() : void
      {
      }
      
      public static function §5!T§(param1:String) : §3-§
      {
         var _loc2_:§3-§ = null;
         for each(_loc2_ in §0"4§)
         {
            if(_loc2_.§6_§(param1))
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §2p§(param1:String) : int
      {
         var _loc3_:§3-§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < §0"4§.length)
         {
            _loc3_ = §0"4§[_loc2_];
            if(_loc3_.§6_§(param1))
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public static function §1!m§(param1:int) : §3-§
      {
         return §0"4§[param1];
      }
      
      public static function §2R§(param1:String) : §3-§
      {
         var _loc2_:§3-§ = null;
         for each(_loc2_ in §0"4§)
         {
            if(_loc2_.name == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §0"5§() : int
      {
         return §0"4§.length;
      }
      
      public static function § "§(param1:String) : §0"T§
      {
         if(!§#n§[param1])
         {
            if(§@!w§[param1] == null)
            {
               throw new Error("Error! Level \'" + param1 + "\' does not exist.");
            }
         }
         return §#n§[param1];
      }
      
      public static function §4M§(param1:String, param2:§0"T§) : void
      {
         §#n§[param1] = param2;
      }
      
      public static function §=S§(param1:String, param2:int) : int
      {
         var level:§0"T§ = null;
         var levelId:String = param1;
         var score:int = param2;
         try
         {
            level = LevelManager.§ "§(levelId);
         }
         catch(e:Error)
         {
         }
         if(score <= 0)
         {
            return 0;
         }
         if(score < level.§;!?§)
         {
            return 1;
         }
         if(score < level.§8"G§)
         {
            return 2;
         }
         return 3;
      }
      
      public static function §["S§(param1:String) : String
      {
         if(!§@!w§[param1])
         {
            return §1!c§;
         }
         return param1;
      }
      
      public static function §,!m§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:§3-§ = null;
         if(param1 != § T§)
         {
            _loc2_ = §2p§(param1);
            if(_loc2_ >= 0)
            {
               §,m§ = _loc2_;
               §&"V§ = § T§;
               § T§ = param1;
               _loc3_ = §`"Q§();
               if(_loc3_)
               {
                  _loc3_.§4t§ = _loc3_.§!!N§(param1);
               }
            }
            else
            {
               §&"V§ = § T§;
               § T§ = null;
            }
         }
      }
      
      public static function §%!-§() : String
      {
         return § T§.substring(5);
      }
      
      public static function §`"Q§() : §3-§
      {
         return §0"4§[§,m§];
      }
      
      public static function § try§() : Boolean
      {
         return true;
      }
      
      public static function §%!8§() : Boolean
      {
         var _loc1_:String = §8t§();
         var _loc2_:String = §`"Q§().§"!X§(§ T§ + "-OUTRO");
         if(!_loc2_)
         {
            return false;
         }
         if(_loc1_ == null)
         {
            §=!^§.§=u§(_loc2_);
         }
         return true;
      }
      
      public static function §8t§() : String
      {
         return §`"Q§().§8t§(§ T§);
      }
   }
}
