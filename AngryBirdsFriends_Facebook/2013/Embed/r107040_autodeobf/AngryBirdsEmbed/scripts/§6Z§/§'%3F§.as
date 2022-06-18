package §6Z§
{
   import §,!M§.§2v§;
   
   public class §'?§
   {
      
      public static const §5-§:String = "1-1";
      
      protected static var §7!J§:Array = null;
      
      protected static var §&+§:Array = [];
      
      protected static var §#Y§:Array = [];
      
      public static var §"t§:String = null;
      
      public static var §9T§:String = null;
      
      public static var §73§:Boolean;
      
      public static var §5!G§:int = 0;
       
      
      public function §'?§()
      {
         super();
      }
      
      public static function §,!;§(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:§ in§ = null;
         var _loc4_:String = null;
         var _loc5_:* = null;
         var _loc6_:int = 0;
         §7!J§ = new Array();
         for each(_loc2_ in param1.chapters)
         {
            _loc3_ = new § in§();
            _loc3_.levelsPerPage = _loc2_.levelsPerPage;
            _loc3_.name = _loc2_.name;
            _loc3_.menuImage = _loc2_.menuImage;
            _loc3_.§[!7§ = _loc2_.leftCorner;
            _loc3_.§%!>§ = _loc2_.rightCorner;
            _loc3_.§[z§ = _loc2_.pageColors;
            _loc3_.pageIndexes = _loc2_.pageIndexes;
            _loc3_.levelButtons = _loc2_.levelButtons;
            _loc3_.writtenName = _loc2_.writtenName;
            if(_loc2_.cutscenes)
            {
               for(_loc5_ in _loc2_.cutscenes)
               {
                  _loc3_.§8c§(_loc5_,_loc2_.cutscenes[_loc5_]);
               }
            }
            §7!J§.push(_loc3_);
            for each(_loc4_ in _loc3_.pageIndexes)
            {
               _loc6_ = 1;
               while(_loc6_ <= _loc3_.levelsPerPage)
               {
                  §#Y§[_loc4_ + "-" + _loc6_] = _loc3_.name;
                  _loc6_++;
               }
            }
         }
      }
      
      public static function §+s§() : void
      {
      }
      
      public static function §+h§(param1:String) : § in§
      {
         var _loc2_:§ in§ = null;
         for each(_loc2_ in §7!J§)
         {
            if(_loc2_.§-g§(param1))
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §,!H§(param1:String) : int
      {
         var _loc3_:§ in§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < §7!J§.length)
         {
            _loc3_ = §7!J§[_loc2_];
            if(_loc3_.§-g§(param1))
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public static function §-7§(param1:int) : § in§
      {
         return §7!J§[param1];
      }
      
      public static function §3N§(param1:String) : § in§
      {
         var _loc2_:§ in§ = null;
         for each(_loc2_ in §7!J§)
         {
            if(_loc2_.name == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §4S§() : int
      {
         return §7!J§.length;
      }
      
      public static function §>5§(param1:String) : §"!;§
      {
         if(!§&+§[param1])
         {
            if(§#Y§[param1] == null)
            {
               throw new Error("Error! Level \'" + param1 + "\' does not exist.");
            }
         }
         return §&+§[param1];
      }
      
      public static function §'!%§(param1:String, param2:§"!;§) : void
      {
         §&+§[param1] = param2;
      }
      
      public static function §[!K§(param1:String, param2:int) : int
      {
         var level:§"!;§ = null;
         var levelId:String = param1;
         var score:int = param2;
         try
         {
            level = §'?§.§>5§(levelId);
         }
         catch(e:Error)
         {
         }
         if(score <= 0)
         {
            return 0;
         }
         if(score < level.§]C§)
         {
            return 1;
         }
         if(score < level.§%!=§)
         {
            return 2;
         }
         return 3;
      }
      
      public static function §0E§(param1:String) : String
      {
         if(!§#Y§[param1])
         {
            return §5-§;
         }
         return param1;
      }
      
      public static function §4y§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:§ in§ = null;
         if(param1 != §"t§)
         {
            _loc2_ = §,!H§(param1);
            if(_loc2_ >= 0)
            {
               §5!G§ = _loc2_;
               §9T§ = §"t§;
               §"t§ = param1;
               _loc3_ = §#>§();
               if(_loc3_)
               {
                  _loc3_.§2L§ = _loc3_.§5Q§(param1);
               }
            }
            else
            {
               §9T§ = §"t§;
               §"t§ = null;
            }
         }
      }
      
      public static function §3b§() : String
      {
         return §"t§.substring(5);
      }
      
      public static function §#>§() : § in§
      {
         return §7!J§[§5!G§];
      }
      
      public static function §,H§() : Boolean
      {
         return true;
      }
      
      public static function §"!'§() : Boolean
      {
         var _loc1_:String = §[§();
         var _loc2_:String = §#>§().§9J§(§"t§ + "-OUTRO");
         if(!_loc2_)
         {
            return false;
         }
         if(_loc1_ == null)
         {
            §2v§.§-&§(_loc2_);
         }
         return true;
      }
      
      public static function §[§() : String
      {
         return §#>§().§[§(§"t§);
      }
   }
}
