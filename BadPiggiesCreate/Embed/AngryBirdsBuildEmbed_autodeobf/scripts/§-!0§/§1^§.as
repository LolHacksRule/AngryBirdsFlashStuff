package §-!0§
{
   import §9!$§.§,i§;
   
   public class §1^§
   {
      
      public static const §;!8§:String = "1-1";
      
      protected static var §]Q§:Array = null;
      
      protected static var §5o§:Array = [];
      
      protected static var § _§:Array = [];
      
      public static var § ]§:String = null;
      
      public static var §3W§:String = null;
      
      public static var §,6§:Boolean;
      
      public static var §<J§:int = 0;
       
      
      public function §1^§()
      {
         super();
      }
      
      public static function §2A§(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:§4!N§ = null;
         var _loc4_:String = null;
         var _loc5_:* = null;
         var _loc6_:int = 0;
         §]Q§ = new Array();
         for each(_loc2_ in param1.chapters)
         {
            _loc3_ = new §4!N§();
            _loc3_.levelsPerPage = _loc2_.levelsPerPage;
            _loc3_.name = _loc2_.name;
            _loc3_.menuImage = _loc2_.menuImage;
            _loc3_.§!!6§ = _loc2_.leftCorner;
            _loc3_.§1!§ = _loc2_.rightCorner;
            _loc3_.§2!f§ = _loc2_.pageColors;
            _loc3_.pageIndexes = _loc2_.pageIndexes;
            _loc3_.levelButtons = _loc2_.levelButtons;
            _loc3_.writtenName = _loc2_.writtenName;
            if(_loc2_.cutscenes)
            {
               for(_loc5_ in _loc2_.cutscenes)
               {
                  _loc3_.§%!'§(_loc5_,_loc2_.cutscenes[_loc5_]);
               }
            }
            §]Q§.push(_loc3_);
            for each(_loc4_ in _loc3_.pageIndexes)
            {
               _loc6_ = 1;
               while(_loc6_ <= _loc3_.levelsPerPage)
               {
                  § _§[_loc4_ + "-" + _loc6_] = _loc3_.name;
                  _loc6_++;
               }
            }
         }
      }
      
      public static function §=9§() : void
      {
      }
      
      public static function §['§(param1:String) : §4!N§
      {
         var _loc2_:§4!N§ = null;
         for each(_loc2_ in §]Q§)
         {
            if(_loc2_.§,!k§(param1))
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §8t§(param1:String) : int
      {
         var _loc3_:§4!N§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < §]Q§.length)
         {
            _loc3_ = §]Q§[_loc2_];
            if(_loc3_.§,!k§(param1))
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public static function §?!0§(param1:int) : §4!N§
      {
         return §]Q§[param1];
      }
      
      public static function §9!d§() : int
      {
         return §]Q§.length;
      }
      
      public static function §'!_§(param1:String) : §2! §
      {
         if(!§5o§[param1])
         {
            if(§ _§[param1] == null)
            {
               throw new Error("Error! Level \'" + param1 + "\' does not exist.");
            }
         }
         return §5o§[param1];
      }
      
      public static function §`'§(param1:String, param2:§2! §) : void
      {
         §5o§[param1] = param2;
      }
      
      public static function §>6§(param1:String, param2:int) : int
      {
         var level:§2! § = null;
         var levelId:String = param1;
         var score:int = param2;
         try
         {
            level = §1^§.§'!_§(levelId);
         }
         catch(e:Error)
         {
         }
         if(score <= 0)
         {
            return 0;
         }
         if(score < level.§6!H§)
         {
            return 1;
         }
         if(score < level.§9>§)
         {
            return 2;
         }
         return 3;
      }
      
      public static function §=h§(param1:String) : String
      {
         if(!§ _§[param1])
         {
            return §;!8§;
         }
         return param1;
      }
      
      public static function loadLevel(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:§4!N§ = null;
         if(param1 != § ]§)
         {
            _loc2_ = §8t§(param1);
            if(_loc2_ >= 0)
            {
               §<J§ = _loc2_;
               §3W§ = § ]§;
               § ]§ = param1;
               _loc3_ = §'j§();
               if(_loc3_)
               {
                  _loc3_.§2!%§ = _loc3_.§#;§(param1);
               }
            }
            else
            {
               §3W§ = § ]§;
               § ]§ = null;
            }
         }
      }
      
      public static function §var §() : String
      {
         return § ]§.substring(5);
      }
      
      public static function §'j§() : §4!N§
      {
         return §]Q§[§<J§];
      }
      
      public static function §5x§() : Boolean
      {
         return true;
      }
      
      public static function §`!?§() : Boolean
      {
         var _loc1_:String = §`!L§();
         var _loc2_:String = §'j§().§8!Z§(§ ]§ + "-OUTRO");
         if(!_loc2_)
         {
            return false;
         }
         if(_loc1_ == null)
         {
            §,i§.§4I§(_loc2_);
         }
         return true;
      }
      
      public static function §`!L§() : String
      {
         return §'j§().§`!L§(§ ]§);
      }
   }
}
