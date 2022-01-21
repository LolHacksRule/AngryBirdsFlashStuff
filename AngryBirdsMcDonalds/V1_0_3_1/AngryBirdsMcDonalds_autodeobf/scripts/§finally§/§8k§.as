package §finally§
{
   import §[>§.§@n§;
   
   public class §8k§
   {
      
      public static const §58§:String = "1-1";
      
      protected static var §@,§:Array = null;
      
      protected static var §6Z§:Array = [];
      
      protected static var §=S§:Array = [];
      
      public static var §8h§:String = null;
      
      public static var §-!U§:String = null;
      
      public static var §#8§:Boolean;
      
      public static var §"s§:int = 0;
       
      
      public function §8k§()
      {
         super();
      }
      
      public static function §'!Q§(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:§?_§ = null;
         var _loc4_:String = null;
         var _loc5_:* = null;
         var _loc6_:int = 0;
         §@,§ = new Array();
         for each(_loc2_ in param1.chapters)
         {
            _loc3_ = new §?_§();
            _loc3_.levelsPerPage = _loc2_.levelsPerPage;
            _loc3_.name = _loc2_.name;
            _loc3_.menuImage = _loc2_.menuImage;
            _loc3_.§`!f§ = _loc2_.leftCorner;
            _loc3_.§^!3§ = _loc2_.rightCorner;
            _loc3_.§;W§ = _loc2_.pageColors;
            _loc3_.pageIndexes = _loc2_.pageIndexes;
            _loc3_.levelButtons = _loc2_.levelButtons;
            _loc3_.writtenName = _loc2_.writtenName;
            if(_loc2_.cutscenes)
            {
               for(_loc5_ in _loc2_.cutscenes)
               {
                  _loc3_.§%!c§(_loc5_,_loc2_.cutscenes[_loc5_]);
               }
            }
            §@,§.push(_loc3_);
            for each(_loc4_ in _loc3_.pageIndexes)
            {
               _loc6_ = 1;
               while(_loc6_ <= _loc3_.levelsPerPage)
               {
                  §=S§[_loc4_ + "-" + _loc6_] = _loc3_.name;
                  _loc6_++;
               }
            }
         }
      }
      
      public static function §0<§() : void
      {
      }
      
      public static function §@!T§(param1:String) : §?_§
      {
         var _loc2_:§?_§ = null;
         for each(_loc2_ in §@,§)
         {
            if(_loc2_.§"!B§(param1))
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §?!p§(param1:String) : int
      {
         var _loc3_:§?_§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < §@,§.length)
         {
            _loc3_ = §@,§[_loc2_];
            if(_loc3_.§"!B§(param1))
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public static function §',§(param1:int) : §?_§
      {
         return §@,§[param1];
      }
      
      public static function §+!5§(param1:String) : §?_§
      {
         var _loc2_:§?_§ = null;
         for each(_loc2_ in §@,§)
         {
            if(_loc2_.name == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §`m§() : int
      {
         return §@,§.length;
      }
      
      public static function §7v§(param1:String) : §@z§
      {
         if(!§6Z§[param1])
         {
            if(§=S§[param1] == null)
            {
               throw new Error("Error! Level \'" + param1 + "\' does not exist.");
            }
         }
         return §6Z§[param1];
      }
      
      public static function §4F§(param1:String, param2:§@z§) : void
      {
         §6Z§[param1] = param2;
      }
      
      public static function §]!<§(param1:String, param2:int) : int
      {
         var level:§@z§ = null;
         var levelId:String = param1;
         var score:int = param2;
         try
         {
            level = §8k§.§7v§(levelId);
         }
         catch(e:Error)
         {
         }
         if(score <= 0)
         {
            return 0;
         }
         if(score < level.§"!M§)
         {
            return 1;
         }
         if(score < level.§4h§)
         {
            return 2;
         }
         return 3;
      }
      
      public static function §]x§(param1:String) : String
      {
         if(!§=S§[param1])
         {
            return §58§;
         }
         return param1;
      }
      
      public static function §;z§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:§?_§ = null;
         if(param1 != §8h§)
         {
            _loc2_ = §?!p§(param1);
            if(_loc2_ >= 0)
            {
               §"s§ = _loc2_;
               §-!U§ = §8h§;
               §8h§ = param1;
               _loc3_ = §7!_§();
               if(_loc3_)
               {
                  _loc3_.§'%§ = _loc3_.§@l§(param1);
               }
            }
            else
            {
               §-!U§ = §8h§;
               §8h§ = null;
            }
         }
      }
      
      public static function §4N§() : String
      {
         return §8h§.substring(5);
      }
      
      public static function §7!_§() : §?_§
      {
         return §@,§[§"s§];
      }
      
      public static function §]!h§() : Boolean
      {
         return true;
      }
      
      public static function §-!5§() : Boolean
      {
         var _loc1_:String = §4!c§();
         var _loc2_:String = §7!_§().§<!f§(§8h§ + "-OUTRO");
         if(!_loc2_)
         {
            return false;
         }
         if(_loc1_ == null)
         {
            §@n§.§!2§(_loc2_);
         }
         return true;
      }
      
      public static function §4!c§() : String
      {
         return §7!_§().§4!c§(§8h§);
      }
   }
}
