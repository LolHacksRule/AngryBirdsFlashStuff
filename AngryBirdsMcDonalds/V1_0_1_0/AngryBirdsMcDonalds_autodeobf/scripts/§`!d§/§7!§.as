package §`!d§
{
   import §%!a§.§%!T§;
   
   public class §7!§
   {
      
      public static const §[2§:String = "1-1";
      
      protected static var §@7§:Array = null;
      
      protected static var §4'§:Array = [];
      
      protected static var §"5§:Array = [];
      
      public static var §+e§:String = null;
      
      public static var §7_§:String = null;
      
      public static var §>!k§:Boolean;
      
      public static var §"X§:int = 0;
       
      
      public function §7!§()
      {
         super();
      }
      
      public static function §`!@§(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:§6b§ = null;
         var _loc4_:String = null;
         var _loc5_:* = null;
         var _loc6_:int = 0;
         §@7§ = new Array();
         for each(_loc2_ in param1.chapters)
         {
            _loc3_ = new §6b§();
            _loc3_.levelsPerPage = _loc2_.levelsPerPage;
            _loc3_.name = _loc2_.name;
            _loc3_.menuImage = _loc2_.menuImage;
            _loc3_.§0!J§ = _loc2_.leftCorner;
            _loc3_.§`e§ = _loc2_.rightCorner;
            _loc3_.§^$§ = _loc2_.pageColors;
            _loc3_.pageIndexes = _loc2_.pageIndexes;
            _loc3_.levelButtons = _loc2_.levelButtons;
            _loc3_.writtenName = _loc2_.writtenName;
            if(_loc2_.cutscenes)
            {
               for(_loc5_ in _loc2_.cutscenes)
               {
                  _loc3_.§4m§(_loc5_,_loc2_.cutscenes[_loc5_]);
               }
            }
            §@7§.push(_loc3_);
            for each(_loc4_ in _loc3_.pageIndexes)
            {
               _loc6_ = 1;
               while(_loc6_ <= _loc3_.levelsPerPage)
               {
                  §"5§[_loc4_ + "-" + _loc6_] = _loc3_.name;
                  _loc6_++;
               }
            }
         }
      }
      
      public static function §+_§() : void
      {
      }
      
      public static function §71§(param1:String) : §6b§
      {
         var _loc2_:§6b§ = null;
         for each(_loc2_ in §@7§)
         {
            if(_loc2_.§?!i§(param1))
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §#X§(param1:String) : int
      {
         var _loc3_:§6b§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < §@7§.length)
         {
            _loc3_ = §@7§[_loc2_];
            if(_loc3_.§?!i§(param1))
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public static function §-k§(param1:int) : §6b§
      {
         return §@7§[param1];
      }
      
      public static function §4f§(param1:String) : §6b§
      {
         var _loc2_:§6b§ = null;
         for each(_loc2_ in §@7§)
         {
            if(_loc2_.name == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §&G§() : int
      {
         return §@7§.length;
      }
      
      public static function §;!G§(param1:String) : §0%§
      {
         if(!§4'§[param1])
         {
            if(§"5§[param1] == null)
            {
               throw new Error("Error! Level \'" + param1 + "\' does not exist.");
            }
         }
         return §4'§[param1];
      }
      
      public static function §,B§(param1:String, param2:§0%§) : void
      {
         §4'§[param1] = param2;
      }
      
      public static function §%!F§(param1:String, param2:int) : int
      {
         var level:§0%§ = null;
         var levelId:String = param1;
         var score:int = param2;
         try
         {
            level = §7!§.§;!G§(levelId);
         }
         catch(e:Error)
         {
         }
         if(score <= 0)
         {
            return 0;
         }
         if(score < level.§,z§)
         {
            return 1;
         }
         if(score < level.§-X§)
         {
            return 2;
         }
         return 3;
      }
      
      public static function §?!n§(param1:String) : String
      {
         if(!§"5§[param1])
         {
            return §[2§;
         }
         return param1;
      }
      
      public static function §>!R§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:§6b§ = null;
         if(param1 != §+e§)
         {
            _loc2_ = §#X§(param1);
            if(_loc2_ >= 0)
            {
               §"X§ = _loc2_;
               §7_§ = §+e§;
               §+e§ = param1;
               _loc3_ = §;!k§();
               if(_loc3_)
               {
                  _loc3_.§"!T§ = _loc3_.§3D§(param1);
               }
            }
            else
            {
               §7_§ = §+e§;
               §+e§ = null;
            }
         }
      }
      
      public static function §6!5§() : String
      {
         return §+e§.substring(5);
      }
      
      public static function §;!k§() : §6b§
      {
         return §@7§[§"X§];
      }
      
      public static function §&y§() : Boolean
      {
         return true;
      }
      
      public static function §'!D§() : Boolean
      {
         var _loc1_:String = §<n§();
         var _loc2_:String = §;!k§().§6;§(§+e§ + "-OUTRO");
         if(!_loc2_)
         {
            return false;
         }
         if(_loc1_ == null)
         {
            §%!T§.§2U§(_loc2_);
         }
         return true;
      }
      
      public static function §<n§() : String
      {
         return §;!k§().§<n§(§+e§);
      }
   }
}
