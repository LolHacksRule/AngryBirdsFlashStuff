package §-!C§
{
   import §4!3§.§'!@§;
   
   public class §#!G§
   {
      
      public static const §#%§:String = "1-1";
      
      protected static var §3_§:Array = null;
      
      protected static var §-0§:Array = [];
      
      protected static var §!w§:Array = [];
      
      public static var §9C§:String = null;
      
      public static var §0E§:String = null;
      
      public static var §`B§:Boolean;
      
      public static var §7!?§:int = 0;
       
      
      public function §#!G§()
      {
         super();
      }
      
      public static function §7m§(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:§=W§ = null;
         var _loc4_:String = null;
         var _loc5_:* = null;
         var _loc6_:int = 0;
         §3_§ = new Array();
         for each(_loc2_ in param1.chapters)
         {
            _loc3_ = new §=W§();
            _loc3_.levelsPerPage = _loc2_.levelsPerPage;
            _loc3_.name = _loc2_.name;
            _loc3_.menuImage = _loc2_.menuImage;
            _loc3_.§'^§ = _loc2_.leftCorner;
            _loc3_.§%!-§ = _loc2_.rightCorner;
            _loc3_.§2T§ = _loc2_.pageColors;
            _loc3_.pageIndexes = _loc2_.pageIndexes;
            _loc3_.levelButtons = _loc2_.levelButtons;
            _loc3_.writtenName = _loc2_.writtenName;
            if(_loc2_.cutscenes)
            {
               for(_loc5_ in _loc2_.cutscenes)
               {
                  _loc3_.§#a§(_loc5_,_loc2_.cutscenes[_loc5_]);
               }
            }
            §3_§.push(_loc3_);
            for each(_loc4_ in _loc3_.pageIndexes)
            {
               _loc6_ = 1;
               while(_loc6_ <= _loc3_.levelsPerPage)
               {
                  §!w§[_loc4_ + "-" + _loc6_] = _loc3_.name;
                  _loc6_++;
               }
            }
         }
      }
      
      public static function §4s§() : void
      {
      }
      
      public static function §6P§(param1:String) : §=W§
      {
         var _loc2_:§=W§ = null;
         for each(_loc2_ in §3_§)
         {
            if(_loc2_.§+A§(param1))
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §0k§(param1:String) : int
      {
         var _loc3_:§=W§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < §3_§.length)
         {
            _loc3_ = §3_§[_loc2_];
            if(_loc3_.§+A§(param1))
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public static function §^<§(param1:int) : §=W§
      {
         return §3_§[param1];
      }
      
      public static function §'b§(param1:String) : §=W§
      {
         var _loc2_:§=W§ = null;
         for each(_loc2_ in §3_§)
         {
            if(_loc2_.name == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §^!?§() : int
      {
         return §3_§.length;
      }
      
      public static function §2!0§(param1:String) : §3!H§
      {
         if(!§-0§[param1])
         {
            if(§!w§[param1] == null)
            {
               throw new Error("Error! Level \'" + param1 + "\' does not exist.");
            }
         }
         return §-0§[param1];
      }
      
      public static function §[!<§(param1:String, param2:§3!H§) : void
      {
         §-0§[param1] = param2;
      }
      
      public static function §!%§(param1:String, param2:int) : int
      {
         var level:§3!H§ = null;
         var levelId:String = param1;
         var score:int = param2;
         try
         {
            level = §#!G§.§2!0§(levelId);
         }
         catch(e:Error)
         {
         }
         if(score <= 0)
         {
            return 0;
         }
         if(score < level.§,4§)
         {
            return 1;
         }
         if(score < level.§"=§)
         {
            return 2;
         }
         return 3;
      }
      
      public static function §"b§(param1:String) : String
      {
         if(!§!w§[param1])
         {
            return §#%§;
         }
         return param1;
      }
      
      public static function §=I§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:§=W§ = null;
         if(param1 != §9C§)
         {
            _loc2_ = §0k§(param1);
            if(_loc2_ >= 0)
            {
               §7!?§ = _loc2_;
               §0E§ = §9C§;
               §9C§ = param1;
               _loc3_ = §+!>§();
               if(_loc3_)
               {
                  _loc3_.§0V§ = _loc3_.§=u§(param1);
               }
            }
            else
            {
               §0E§ = §9C§;
               §9C§ = null;
            }
         }
      }
      
      public static function § !C§() : String
      {
         return §9C§.substring(5);
      }
      
      public static function §+!>§() : §=W§
      {
         return §3_§[§7!?§];
      }
      
      public static function §<j§() : Boolean
      {
         return true;
      }
      
      public static function §7V§() : Boolean
      {
         var _loc1_:String = §5N§();
         var _loc2_:String = §+!>§().§3y§(§9C§ + "-OUTRO");
         if(!_loc2_)
         {
            return false;
         }
         if(_loc1_ == null)
         {
            §'!@§.§^!2§(_loc2_);
         }
         return true;
      }
      
      public static function §5N§() : String
      {
         return §+!>§().§5N§(§9C§);
      }
   }
}
