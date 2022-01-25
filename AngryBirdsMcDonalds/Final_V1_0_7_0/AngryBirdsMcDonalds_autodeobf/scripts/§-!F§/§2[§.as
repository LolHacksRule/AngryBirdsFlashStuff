package §-!F§
{
   import §?l§.§?x§;
   
   public class §2[§
   {
      
      public static const §#n§:String = "1-1";
      
      protected static var §^J§:Array = null;
      
      protected static var §5!$§:Array = [];
      
      protected static var §73§:Array = [];
      
      public static var §^N§:String = null;
      
      public static var §4!h§:String = null;
      
      public static var §=@§:Boolean;
      
      public static var §`!h§:int = 0;
       
      
      public function §2[§()
      {
         super();
      }
      
      public static function §8!E§(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:§>!H§ = null;
         var _loc4_:String = null;
         var _loc5_:* = null;
         var _loc6_:int = 0;
         §^J§ = new Array();
         for each(_loc2_ in param1.chapters)
         {
            _loc3_ = new §>!H§();
            _loc3_.levelsPerPage = _loc2_.levelsPerPage;
            _loc3_.name = _loc2_.name;
            _loc3_.menuImage = _loc2_.menuImage;
            _loc3_.§@!O§ = _loc2_.leftCorner;
            _loc3_.§8!l§ = _loc2_.rightCorner;
            _loc3_.§0J§ = _loc2_.pageColors;
            _loc3_.pageIndexes = _loc2_.pageIndexes;
            _loc3_.levelButtons = _loc2_.levelButtons;
            _loc3_.writtenName = _loc2_.writtenName;
            if(_loc2_.cutscenes)
            {
               for(_loc5_ in _loc2_.cutscenes)
               {
                  _loc3_.§"!5§(_loc5_,_loc2_.cutscenes[_loc5_]);
               }
            }
            §^J§.push(_loc3_);
            for each(_loc4_ in _loc3_.pageIndexes)
            {
               _loc6_ = 1;
               while(_loc6_ <= _loc3_.levelsPerPage)
               {
                  §73§[_loc4_ + "-" + _loc6_] = _loc3_.name;
                  _loc6_++;
               }
            }
         }
      }
      
      public static function §``§() : void
      {
      }
      
      public static function §+T§(param1:String) : §>!H§
      {
         var _loc2_:§>!H§ = null;
         for each(_loc2_ in §^J§)
         {
            if(_loc2_.§>G§(param1))
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §4!9§(param1:String) : int
      {
         var _loc3_:§>!H§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < §^J§.length)
         {
            _loc3_ = §^J§[_loc2_];
            if(_loc3_.§>G§(param1))
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public static function §]!=§(param1:int) : §>!H§
      {
         return §^J§[param1];
      }
      
      public static function §#g§(param1:String) : §>!H§
      {
         var _loc2_:§>!H§ = null;
         for each(_loc2_ in §^J§)
         {
            if(_loc2_.name == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §5?§() : int
      {
         return §^J§.length;
      }
      
      public static function §'M§(param1:String) : §`+§
      {
         if(!§5!$§[param1])
         {
            if(§73§[param1] == null)
            {
               throw new Error("Error! Level \'" + param1 + "\' does not exist.");
            }
         }
         return §5!$§[param1];
      }
      
      public static function §8M§(param1:String, param2:§`+§) : void
      {
         §5!$§[param1] = param2;
      }
      
      public static function §,n§(param1:String, param2:int) : int
      {
         var level:§`+§ = null;
         var levelId:String = param1;
         var score:int = param2;
         try
         {
            level = §2[§.§'M§(levelId);
         }
         catch(e:Error)
         {
         }
         if(score <= 0)
         {
            return 0;
         }
         if(score < level.§2H§)
         {
            return 1;
         }
         if(score < level.§;k§)
         {
            return 2;
         }
         return 3;
      }
      
      public static function §`t§(param1:String) : String
      {
         if(!§73§[param1])
         {
            return §#n§;
         }
         return param1;
      }
      
      public static function §'!T§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:§>!H§ = null;
         if(param1 != §^N§)
         {
            _loc2_ = §4!9§(param1);
            if(_loc2_ >= 0)
            {
               §`!h§ = _loc2_;
               §4!h§ = §^N§;
               §^N§ = param1;
               _loc3_ = §-!E§();
               if(_loc3_)
               {
                  _loc3_.§#U§ = _loc3_.§6!U§(param1);
               }
            }
            else
            {
               §4!h§ = §^N§;
               §^N§ = null;
            }
         }
      }
      
      public static function §;]§() : String
      {
         return §^N§.substring(5);
      }
      
      public static function §-!E§() : §>!H§
      {
         return §^J§[§`!h§];
      }
      
      public static function §,!C§() : Boolean
      {
         return true;
      }
      
      public static function §]!]§() : Boolean
      {
         var _loc1_:String = §+G§();
         var _loc2_:String = §-!E§().§6f§(§^N§ + "-OUTRO");
         if(!_loc2_)
         {
            return false;
         }
         if(_loc1_ == null)
         {
            §?x§.§?g§(_loc2_);
         }
         return true;
      }
      
      public static function §+G§() : String
      {
         return §-!E§().§+G§(§^N§);
      }
   }
}
