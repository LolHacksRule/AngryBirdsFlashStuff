package §5=§
{
   import §'!I§.§8Y§;
   
   public class §^n§
   {
      
      public static const §0!'§:String = "1-1";
      
      protected static var §69§:Array = null;
      
      protected static var §!8§:Array = [];
      
      protected static var §7!@§:Array = [];
      
      public static var §-7§:String = null;
      
      public static var §8!1§:String = null;
      
      public static var §2?§:Boolean;
      
      public static var §@W§:int = 0;
       
      
      public function §^n§()
      {
         super();
      }
      
      public static function §4!;§(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:§-+§ = null;
         var _loc4_:String = null;
         var _loc5_:* = null;
         var _loc6_:int = 0;
         §69§ = new Array();
         for each(_loc2_ in param1.chapters)
         {
            _loc3_ = new §-+§();
            _loc3_.levelsPerPage = _loc2_.levelsPerPage;
            _loc3_.name = _loc2_.name;
            _loc3_.menuImage = _loc2_.menuImage;
            _loc3_.§]k§ = _loc2_.leftCorner;
            _loc3_.§4t§ = _loc2_.rightCorner;
            _loc3_.§>@§ = _loc2_.pageColors;
            _loc3_.pageIndexes = _loc2_.pageIndexes;
            _loc3_.levelButtons = _loc2_.levelButtons;
            _loc3_.writtenName = _loc2_.writtenName;
            if(_loc2_.cutscenes)
            {
               for(_loc5_ in _loc2_.cutscenes)
               {
                  _loc3_.§+%§(_loc5_,_loc2_.cutscenes[_loc5_]);
               }
            }
            §69§.push(_loc3_);
            for each(_loc4_ in _loc3_.pageIndexes)
            {
               _loc6_ = 1;
               while(_loc6_ <= _loc3_.levelsPerPage)
               {
                  §7!@§[_loc4_ + "-" + _loc6_] = _loc3_.name;
                  _loc6_++;
               }
            }
         }
      }
      
      public static function §?B§() : void
      {
      }
      
      public static function §@-§(param1:String) : §-+§
      {
         var _loc2_:§-+§ = null;
         for each(_loc2_ in §69§)
         {
            if(_loc2_.§0t§(param1))
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function § M§(param1:String) : int
      {
         var _loc3_:§-+§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < §69§.length)
         {
            _loc3_ = §69§[_loc2_];
            if(_loc3_.§0t§(param1))
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public static function §0!,§(param1:int) : §-+§
      {
         return §69§[param1];
      }
      
      public static function §!!3§(param1:String) : §-+§
      {
         var _loc2_:§-+§ = null;
         for each(_loc2_ in §69§)
         {
            if(_loc2_.name == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §;9§() : int
      {
         return §69§.length;
      }
      
      public static function §5'§(param1:String) : §8G§
      {
         if(!§!8§[param1])
         {
            if(§7!@§[param1] == null)
            {
               throw new Error("Error! Level \'" + param1 + "\' does not exist.");
            }
         }
         return §!8§[param1];
      }
      
      public static function §+r§(param1:String, param2:§8G§) : void
      {
         §!8§[param1] = param2;
      }
      
      public static function §!!A§(param1:String, param2:int) : int
      {
         var level:§8G§ = null;
         var levelId:String = param1;
         var score:int = param2;
         try
         {
            level = §^n§.§5'§(levelId);
         }
         catch(e:Error)
         {
         }
         if(score <= 0)
         {
            return 0;
         }
         if(score < level.§-! §)
         {
            return 1;
         }
         if(score < level.§"@§)
         {
            return 2;
         }
         return 3;
      }
      
      public static function §while§(param1:String) : String
      {
         if(!§7!@§[param1])
         {
            return §0!'§;
         }
         return param1;
      }
      
      public static function §4S§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:§-+§ = null;
         if(param1 != §-7§)
         {
            _loc2_ = § M§(param1);
            if(_loc2_ >= 0)
            {
               §@W§ = _loc2_;
               §8!1§ = §-7§;
               §-7§ = param1;
               _loc3_ = §>V§();
               if(_loc3_)
               {
                  _loc3_.§&b§ = _loc3_.§"4§(param1);
               }
            }
            else
            {
               §8!1§ = §-7§;
               §-7§ = null;
            }
         }
      }
      
      public static function §03§() : String
      {
         return §-7§.substring(5);
      }
      
      public static function §>V§() : §-+§
      {
         return §69§[§@W§];
      }
      
      public static function §!K§() : Boolean
      {
         return true;
      }
      
      public static function §[@§() : Boolean
      {
         var _loc1_:String = §<_§();
         var _loc2_:String = §>V§().§-!F§(§-7§ + "-OUTRO");
         if(!_loc2_)
         {
            return false;
         }
         if(_loc1_ == null)
         {
            §8Y§.§44§(_loc2_);
         }
         return true;
      }
      
      public static function §<_§() : String
      {
         return §>V§().§<_§(§-7§);
      }
   }
}
