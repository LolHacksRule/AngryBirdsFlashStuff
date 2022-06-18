package § "§
{
   import §3A§.§6L§;
   
   public class §8!3§
   {
      
      public static const §-7§:String = "1-1";
      
      protected static var §'=§:Array = null;
      
      protected static var §^-§:Array = [];
      
      protected static var §`J§:Array = [];
      
      public static var §-[§:String = null;
      
      public static var §>!=§:String = null;
      
      public static var §[!-§:Boolean;
      
      public static var §0! §:int = 0;
       
      
      public function §8!3§()
      {
         super();
      }
      
      public static function §6y§(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:§1!9§ = null;
         var _loc4_:String = null;
         var _loc5_:* = null;
         var _loc6_:int = 0;
         §'=§ = new Array();
         for each(_loc2_ in param1.chapters)
         {
            _loc3_ = new §1!9§();
            _loc3_.levelsPerPage = _loc2_.levelsPerPage;
            _loc3_.name = _loc2_.name;
            _loc3_.menuImage = _loc2_.menuImage;
            _loc3_.§2!4§ = _loc2_.leftCorner;
            _loc3_.§0!B§ = _loc2_.rightCorner;
            _loc3_.§+k§ = _loc2_.pageColors;
            _loc3_.pageIndexes = _loc2_.pageIndexes;
            _loc3_.levelButtons = _loc2_.levelButtons;
            _loc3_.writtenName = _loc2_.writtenName;
            if(_loc2_.cutscenes)
            {
               for(_loc5_ in _loc2_.cutscenes)
               {
                  _loc3_.§<6§(_loc5_,_loc2_.cutscenes[_loc5_]);
               }
            }
            §'=§.push(_loc3_);
            for each(_loc4_ in _loc3_.pageIndexes)
            {
               _loc6_ = 1;
               while(_loc6_ <= _loc3_.levelsPerPage)
               {
                  §`J§[_loc4_ + "-" + _loc6_] = _loc3_.name;
                  _loc6_++;
               }
            }
         }
      }
      
      public static function §+w§() : void
      {
      }
      
      public static function §=!9§(param1:String) : §1!9§
      {
         var _loc2_:§1!9§ = null;
         for each(_loc2_ in §'=§)
         {
            if(_loc2_.§-!$§(param1))
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function § use§(param1:String) : int
      {
         var _loc3_:§1!9§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < §'=§.length)
         {
            _loc3_ = §'=§[_loc2_];
            if(_loc3_.§-!$§(param1))
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public static function §`!5§(param1:int) : §1!9§
      {
         return §'=§[param1];
      }
      
      public static function §7!5§() : int
      {
         return §'=§.length;
      }
      
      public static function §]!>§(param1:String) : §;4§
      {
         if(!§^-§[param1])
         {
            if(§`J§[param1] == null)
            {
               throw new Error("Error! Level \'" + param1 + "\' does not exist.");
            }
         }
         return §^-§[param1];
      }
      
      public static function §<!§(param1:String, param2:§;4§) : void
      {
         §^-§[param1] = param2;
      }
      
      public static function §0-§(param1:String, param2:int) : int
      {
         var level:§;4§ = null;
         var levelId:String = param1;
         var score:int = param2;
         try
         {
            level = §8!3§.§]!>§(levelId);
         }
         catch(e:Error)
         {
         }
         if(score <= 0)
         {
            return 0;
         }
         if(score < level.§]N§)
         {
            return 1;
         }
         if(score < level.§%!!§)
         {
            return 2;
         }
         return 3;
      }
      
      public static function §,9§(param1:String) : String
      {
         if(!§`J§[param1])
         {
            return §-7§;
         }
         return param1;
      }
      
      public static function §+f§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:§1!9§ = null;
         if(param1 != §-[§)
         {
            _loc2_ = § use§(param1);
            if(_loc2_ >= 0)
            {
               §0! § = _loc2_;
               §>!=§ = §-[§;
               §-[§ = param1;
               _loc3_ = §&3§();
               if(_loc3_)
               {
                  _loc3_.§&O§ = _loc3_.§5?§(param1);
               }
            }
            else
            {
               §>!=§ = §-[§;
               §-[§ = null;
            }
         }
      }
      
      public static function §&!<§() : String
      {
         return §-[§.substring(5);
      }
      
      public static function §&3§() : §1!9§
      {
         return §'=§[§0! §];
      }
      
      public static function §^!&§() : Boolean
      {
         return true;
      }
      
      public static function §3!?§() : Boolean
      {
         var _loc1_:String = §9!$§();
         var _loc2_:String = §&3§().§`m§(§-[§ + "-OUTRO");
         if(!_loc2_)
         {
            return false;
         }
         if(_loc1_ == null)
         {
            §6L§.§ !G§(_loc2_);
         }
         return true;
      }
      
      public static function §9!$§() : String
      {
         return §&3§().§9!$§(§-[§);
      }
   }
}
