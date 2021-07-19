package §]!F§
{
   import §=!7§.§[!C§;
   
   public class §7e§
   {
      
      public static const §^!H§:String = "1-1";
      
      protected static var §>g§:Array = null;
      
      protected static var §^a§:Array = [];
      
      protected static var §8t§:Array = [];
      
      public static var §^"§:String = null;
      
      public static var §<=§:String = null;
      
      public static var §-!F§:Boolean;
      
      public static var §]!U§:int = 0;
       
      
      public function §7e§()
      {
         super();
      }
      
      public static function §[!$§(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:§^!O§ = null;
         var _loc4_:String = null;
         var _loc5_:* = null;
         var _loc6_:int = 0;
         §>g§ = new Array();
         for each(_loc2_ in param1.chapters)
         {
            _loc3_ = new §^!O§();
            _loc3_.levelsPerPage = _loc2_.levelsPerPage;
            _loc3_.name = _loc2_.name;
            _loc3_.menuImage = _loc2_.menuImage;
            _loc3_.§;!'§ = _loc2_.leftCorner;
            _loc3_.§ 2§ = _loc2_.rightCorner;
            _loc3_.§8!C§ = _loc2_.pageColors;
            _loc3_.pageIndexes = _loc2_.pageIndexes;
            _loc3_.levelButtons = _loc2_.levelButtons;
            _loc3_.writtenName = _loc2_.writtenName;
            if(_loc2_.cutscenes)
            {
               for(_loc5_ in _loc2_.cutscenes)
               {
                  _loc3_.§6B§(_loc5_,_loc2_.cutscenes[_loc5_]);
               }
            }
            §>g§.push(_loc3_);
            for each(_loc4_ in _loc3_.pageIndexes)
            {
               _loc6_ = 1;
               while(_loc6_ <= _loc3_.levelsPerPage)
               {
                  §8t§[_loc4_ + "-" + _loc6_] = _loc3_.name;
                  _loc6_++;
               }
            }
         }
      }
      
      public static function §;j§() : void
      {
      }
      
      public static function §1!Q§(param1:String) : §^!O§
      {
         var _loc2_:§^!O§ = null;
         for each(_loc2_ in §>g§)
         {
            if(_loc2_.§[g§(param1))
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §,!5§(param1:String) : int
      {
         var _loc3_:§^!O§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < §>g§.length)
         {
            _loc3_ = §>g§[_loc2_];
            if(_loc3_.§[g§(param1))
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public static function §2§(param1:int) : §^!O§
      {
         return §>g§[param1];
      }
      
      public static function § =§() : int
      {
         return §>g§.length;
      }
      
      public static function §`!7§(param1:String) : §&!]§
      {
         if(!§^a§[param1])
         {
            if(§8t§[param1] == null)
            {
               throw new Error("Error! Level \'" + param1 + "\' does not exist.");
            }
         }
         return §^a§[param1];
      }
      
      public static function §+8§(param1:String, param2:§&!]§) : void
      {
         §^a§[param1] = param2;
      }
      
      public static function §]!7§(param1:String, param2:int) : int
      {
         var level:§&!]§ = null;
         var levelId:String = param1;
         var score:int = param2;
         try
         {
            level = §7e§.§`!7§(levelId);
         }
         catch(e:Error)
         {
         }
         if(score <= 0)
         {
            return 0;
         }
         if(score < level.§;!L§)
         {
            return 1;
         }
         if(score < level.§7z§)
         {
            return 2;
         }
         return 3;
      }
      
      public static function §8a§(param1:String) : String
      {
         if(!§8t§[param1])
         {
            return §^!H§;
         }
         return param1;
      }
      
      public static function §!!@§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:§^!O§ = null;
         if(param1 != §^"§)
         {
            _loc2_ = §,!5§(param1);
            if(_loc2_ >= 0)
            {
               §]!U§ = _loc2_;
               §<=§ = §^"§;
               §^"§ = param1;
               _loc3_ = §[!?§();
               if(_loc3_)
               {
                  _loc3_.currentPage = _loc3_.§7b§(param1);
               }
            }
            else
            {
               §<=§ = §^"§;
               §^"§ = null;
            }
         }
      }
      
      public static function §;4§() : String
      {
         return §^"§.substring(5);
      }
      
      public static function §[!?§() : §^!O§
      {
         return §>g§[§]!U§];
      }
      
      public static function §@f§() : Boolean
      {
         return true;
      }
      
      public static function §7!N§() : Boolean
      {
         var _loc1_:String = §3N§();
         var _loc2_:String = §[!?§().§9[§(§^"§ + "-OUTRO");
         if(!_loc2_)
         {
            return false;
         }
         if(_loc1_ == null)
         {
            §[!C§.§5y§(_loc2_);
         }
         return true;
      }
      
      public static function §3N§() : String
      {
         return §[!?§().§3N§(§^"§);
      }
   }
}
