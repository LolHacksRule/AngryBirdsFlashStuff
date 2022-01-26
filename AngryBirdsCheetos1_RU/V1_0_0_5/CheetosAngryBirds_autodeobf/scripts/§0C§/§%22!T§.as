package §0C§
{
   import §2]§.§#!I§;
   
   public class §"!T§
   {
      
      public static const §%!5§:String = "1-1";
      
      protected static var §@!9§:Array = null;
      
      protected static var §'7§:Array = [];
      
      protected static var §,s§:Array = [];
      
      public static var §-Q§:String = null;
      
      public static var §8y§:String = null;
      
      public static var §,!J§:Boolean;
      
      public static var §56§:int = 0;
       
      
      public function §"!T§()
      {
         super();
      }
      
      public static function §8! §(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:§>e§ = null;
         var _loc4_:String = null;
         var _loc5_:* = null;
         var _loc6_:int = 0;
         §@!9§ = new Array();
         for each(_loc2_ in param1.chapters)
         {
            _loc3_ = new §>e§();
            _loc3_.levelsPerPage = _loc2_.levelsPerPage;
            _loc3_.name = _loc2_.name;
            _loc3_.menuImage = _loc2_.menuImage;
            _loc3_.§9!C§ = _loc2_.leftCorner;
            _loc3_.§-s§ = _loc2_.rightCorner;
            _loc3_.§9!=§ = _loc2_.pageColors;
            _loc3_.pageIndexes = _loc2_.pageIndexes;
            _loc3_.levelButtons = _loc2_.levelButtons;
            _loc3_.writtenName = _loc2_.writtenName;
            if(_loc2_.cutscenes)
            {
               for(_loc5_ in _loc2_.cutscenes)
               {
                  _loc3_.§&!;§(_loc5_,_loc2_.cutscenes[_loc5_]);
               }
            }
            §@!9§.push(_loc3_);
            for each(_loc4_ in _loc3_.pageIndexes)
            {
               _loc6_ = 1;
               while(_loc6_ <= _loc3_.levelsPerPage)
               {
                  §,s§[_loc4_ + "-" + _loc6_] = _loc3_.name;
                  _loc6_++;
               }
            }
         }
      }
      
      public static function §&!F§() : void
      {
      }
      
      public static function §!M§(param1:String) : §>e§
      {
         var _loc2_:§>e§ = null;
         for each(_loc2_ in §@!9§)
         {
            if(_loc2_.§&!L§(param1))
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §9h§(param1:String) : int
      {
         var _loc3_:§>e§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < §@!9§.length)
         {
            _loc3_ = §@!9§[_loc2_];
            if(_loc3_.§&!L§(param1))
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public static function §'!§(param1:int) : §>e§
      {
         return §@!9§[param1];
      }
      
      public static function §%g§(param1:String) : §>e§
      {
         var _loc2_:§>e§ = null;
         for each(_loc2_ in §@!9§)
         {
            if(_loc2_.name == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §+!V§() : int
      {
         return §@!9§.length;
      }
      
      public static function getLevelForId(param1:String) : §;!Q§
      {
         if(!§'7§[param1])
         {
            if(§,s§[param1] == null)
            {
               throw new Error("Error! Level \'" + param1 + "\' does not exist.");
            }
         }
         return §'7§[param1];
      }
      
      public static function §?!I§(param1:String, param2:§;!Q§) : void
      {
         §'7§[param1] = param2;
      }
      
      public static function §?X§(param1:String, param2:int) : int
      {
         var level:§;!Q§ = null;
         var levelId:String = param1;
         var score:int = param2;
         try
         {
            level = §"!T§.getLevelForId(levelId);
         }
         catch(e:Error)
         {
         }
         if(score <= 0)
         {
            return 0;
         }
         if(score < level.§;T§)
         {
            return 1;
         }
         if(score < level.§ do§)
         {
            return 2;
         }
         return 3;
      }
      
      public static function §1!§(param1:String) : String
      {
         if(!§,s§[param1])
         {
            return §%!5§;
         }
         return param1;
      }
      
      public static function §"!3§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:§>e§ = null;
         if(param1 != §-Q§)
         {
            _loc2_ = §9h§(param1);
            if(_loc2_ >= 0)
            {
               §56§ = _loc2_;
               §8y§ = §-Q§;
               §-Q§ = param1;
               _loc3_ = §?+§();
               if(_loc3_)
               {
                  _loc3_.currentPage = _loc3_.§7K§(param1);
               }
            }
            else
            {
               §8y§ = §-Q§;
               §-Q§ = null;
            }
         }
      }
      
      public static function get() : String
      {
         return §-Q§.substring(5);
      }
      
      public static function §?+§() : §>e§
      {
         return §@!9§[§56§];
      }
      
      public static function §5!;§() : Boolean
      {
         return true;
      }
      
      public static function §-C§() : Boolean
      {
         var _loc1_:String = §6!2§();
         var _loc2_:String = §?+§().§"!Y§(§-Q§ + "-OUTRO");
         if(!_loc2_)
         {
            return false;
         }
         if(_loc1_ == null)
         {
            §#!I§.§"J§(_loc2_);
         }
         return true;
      }
      
      public static function §6!2§() : String
      {
         return §?+§().§6!2§(§-Q§);
      }
   }
}
