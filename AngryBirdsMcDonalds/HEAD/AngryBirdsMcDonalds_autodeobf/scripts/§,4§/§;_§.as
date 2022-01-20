package §,4§
{
   import §8%§.§[!7§;
   
   public class §;_§
   {
      
      public static const §+Z§:String = "1-1";
      
      protected static var §,!=§:Array = null;
      
      protected static var §<!+§:Array = [];
      
      protected static var §35§:Array = [];
      
      public static var §2!Q§:String = null;
      
      public static var §each §:String = null;
      
      public static var §#!e§:Boolean;
      
      public static var §+O§:int = 0;
       
      
      public function §;_§()
      {
         super();
      }
      
      public static function §8!j§(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:§@!A§ = null;
         var _loc4_:String = null;
         var _loc5_:* = null;
         var _loc6_:int = 0;
         §,!=§ = new Array();
         for each(_loc2_ in param1.chapters)
         {
            _loc3_ = new §@!A§();
            _loc3_.levelsPerPage = _loc2_.levelsPerPage;
            _loc3_.name = _loc2_.name;
            _loc3_.menuImage = _loc2_.menuImage;
            _loc3_.§4!Y§ = _loc2_.leftCorner;
            _loc3_.§0-§ = _loc2_.rightCorner;
            _loc3_.§2W§ = _loc2_.pageColors;
            _loc3_.pageIndexes = _loc2_.pageIndexes;
            _loc3_.levelButtons = _loc2_.levelButtons;
            _loc3_.writtenName = _loc2_.writtenName;
            if(_loc2_.cutscenes)
            {
               for(_loc5_ in _loc2_.cutscenes)
               {
                  _loc3_.§<!X§(_loc5_,_loc2_.cutscenes[_loc5_]);
               }
            }
            §,!=§.push(_loc3_);
            for each(_loc4_ in _loc3_.pageIndexes)
            {
               _loc6_ = 1;
               while(_loc6_ <= _loc3_.levelsPerPage)
               {
                  §35§[_loc4_ + "-" + _loc6_] = _loc3_.name;
                  _loc6_++;
               }
            }
         }
      }
      
      public static function §^!H§() : void
      {
      }
      
      public static function §'-§(param1:String) : §@!A§
      {
         var _loc2_:§@!A§ = null;
         for each(_loc2_ in §,!=§)
         {
            if(_loc2_.§?!T§(param1))
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §&v§(param1:String) : int
      {
         var _loc3_:§@!A§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < §,!=§.length)
         {
            _loc3_ = §,!=§[_loc2_];
            if(_loc3_.§?!T§(param1))
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public static function §5H§(param1:int) : §@!A§
      {
         return §,!=§[param1];
      }
      
      public static function §6N§(param1:String) : §@!A§
      {
         var _loc2_:§@!A§ = null;
         for each(_loc2_ in §,!=§)
         {
            if(_loc2_.name == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §?,§() : int
      {
         return §,!=§.length;
      }
      
      public static function §`!,§(param1:String) : §0B§
      {
         if(!§<!+§[param1])
         {
            if(§35§[param1] == null)
            {
               throw new Error("Error! Level \'" + param1 + "\' does not exist.");
            }
         }
         return §<!+§[param1];
      }
      
      public static function §9?§(param1:String, param2:§0B§) : void
      {
         §<!+§[param1] = param2;
      }
      
      public static function §98§(param1:String, param2:int) : int
      {
         var level:§0B§ = null;
         var levelId:String = param1;
         var score:int = param2;
         try
         {
            level = §;_§.§`!,§(levelId);
         }
         catch(e:Error)
         {
         }
         if(score <= 0)
         {
            return 0;
         }
         if(score < level.§-b§)
         {
            return 1;
         }
         if(score < level.§+!Z§)
         {
            return 2;
         }
         return 3;
      }
      
      public static function §6D§(param1:String) : String
      {
         if(!§35§[param1])
         {
            return §+Z§;
         }
         return param1;
      }
      
      public static function §;!M§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:§@!A§ = null;
         if(param1 != §2!Q§)
         {
            _loc2_ = §&v§(param1);
            if(_loc2_ >= 0)
            {
               §+O§ = _loc2_;
               §each § = §2!Q§;
               §2!Q§ = param1;
               _loc3_ = §9!Z§();
               if(_loc3_)
               {
                  _loc3_.§^t§ = _loc3_.§<!c§(param1);
               }
            }
            else
            {
               §each § = §2!Q§;
               §2!Q§ = null;
            }
         }
      }
      
      public static function § c§() : String
      {
         return §2!Q§.substring(5);
      }
      
      public static function §9!Z§() : §@!A§
      {
         return §,!=§[§+O§];
      }
      
      public static function §?!%§() : Boolean
      {
         return true;
      }
      
      public static function § !e§() : Boolean
      {
         var _loc1_:String = §]!h§();
         var _loc2_:String = §9!Z§().§=w§(§2!Q§ + "-OUTRO");
         if(!_loc2_)
         {
            return false;
         }
         if(_loc1_ == null)
         {
            §[!7§.§>L§(_loc2_);
         }
         return true;
      }
      
      public static function §]!h§() : String
      {
         return §9!Z§().§]!h§(§2!Q§);
      }
   }
}
