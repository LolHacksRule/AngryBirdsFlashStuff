package §<!M§
{
   import §2r§.§5l§;
   
   public class §[i§
   {
      
      public static const §-Y§:String = "1-1";
      
      protected static var §@T§:Array = null;
      
      protected static var §+Q§:Array = [];
      
      protected static var §>!J§:Array = [];
      
      public static var §0A§:String = null;
      
      public static var §+!8§:String = null;
      
      public static var §"E§:Boolean;
      
      public static var §%M§:int = 0;
       
      
      public function §[i§()
      {
         super();
      }
      
      public static function §3H§(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:§#W§ = null;
         var _loc4_:String = null;
         var _loc5_:* = null;
         var _loc6_:int = 0;
         §@T§ = new Array();
         for each(_loc2_ in param1.chapters)
         {
            _loc3_ = new §#W§();
            _loc3_.levelsPerPage = _loc2_.levelsPerPage;
            _loc3_.name = _loc2_.name;
            _loc3_.menuImage = _loc2_.menuImage;
            _loc3_.§8Q§ = _loc2_.leftCorner;
            _loc3_.§;F§ = _loc2_.rightCorner;
            _loc3_.§0;§ = _loc2_.pageColors;
            _loc3_.pageIndexes = _loc2_.pageIndexes;
            _loc3_.levelButtons = _loc2_.levelButtons;
            _loc3_.writtenName = _loc2_.writtenName;
            if(_loc2_.cutscenes)
            {
               for(_loc5_ in _loc2_.cutscenes)
               {
                  _loc3_.§<X§(_loc5_,_loc2_.cutscenes[_loc5_]);
               }
            }
            §@T§.push(_loc3_);
            for each(_loc4_ in _loc3_.pageIndexes)
            {
               _loc6_ = 1;
               while(_loc6_ <= _loc3_.levelsPerPage)
               {
                  §>!J§[_loc4_ + "-" + _loc6_] = _loc3_.name;
                  _loc6_++;
               }
            }
         }
      }
      
      public static function §#I§() : void
      {
      }
      
      public static function §#D§(param1:String) : §#W§
      {
         var _loc2_:§#W§ = null;
         for each(_loc2_ in §@T§)
         {
            if(_loc2_.§-y§(param1))
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §'!L§(param1:String) : int
      {
         var _loc3_:§#W§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < §@T§.length)
         {
            _loc3_ = §@T§[_loc2_];
            if(_loc3_.§-y§(param1))
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public static function §'4§(param1:int) : §#W§
      {
         return §@T§[param1];
      }
      
      public static function §'R§(param1:String) : §#W§
      {
         var _loc2_:§#W§ = null;
         for each(_loc2_ in §@T§)
         {
            if(_loc2_.name == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §7x§() : int
      {
         return §@T§.length;
      }
      
      public static function §2!'§(param1:String) : §1!&§
      {
         if(!§+Q§[param1])
         {
            if(§>!J§[param1] == null)
            {
               throw new Error("Error! Level \'" + param1 + "\' does not exist.");
            }
         }
         return §+Q§[param1];
      }
      
      public static function §2=§(param1:String, param2:§1!&§) : void
      {
         §+Q§[param1] = param2;
      }
      
      public static function §>!;§(param1:String, param2:int) : int
      {
         var level:§1!&§ = null;
         var levelId:String = param1;
         var score:int = param2;
         try
         {
            level = §[i§.§2!'§(levelId);
         }
         catch(e:Error)
         {
         }
         if(score <= 0)
         {
            return 0;
         }
         if(score < level.§@c§)
         {
            return 1;
         }
         if(score < level.§0'§)
         {
            return 2;
         }
         return 3;
      }
      
      public static function §0!M§(param1:String) : String
      {
         if(!§>!J§[param1])
         {
            return §-Y§;
         }
         return param1;
      }
      
      public static function §#!#§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:§#W§ = null;
         if(param1 != §0A§)
         {
            _loc2_ = §'!L§(param1);
            if(_loc2_ >= 0)
            {
               §%M§ = _loc2_;
               §+!8§ = §0A§;
               §0A§ = param1;
               _loc3_ = §1V§();
               if(_loc3_)
               {
                  _loc3_.§0!N§ = _loc3_.§7@§(param1);
               }
            }
            else
            {
               §+!8§ = §0A§;
               §0A§ = null;
            }
         }
      }
      
      public static function §?!2§() : String
      {
         return §0A§.substring(5);
      }
      
      public static function §1V§() : §#W§
      {
         return §@T§[§%M§];
      }
      
      public static function §@d§() : Boolean
      {
         return true;
      }
      
      public static function §-!J§() : Boolean
      {
         var _loc1_:String = § §();
         var _loc2_:String = §1V§().§[D§(§0A§ + "-OUTRO");
         if(!_loc2_)
         {
            return false;
         }
         if(_loc1_ == null)
         {
            §5l§.§2!E§(_loc2_);
         }
         return true;
      }
      
      public static function § §() : String
      {
         return §1V§().§ §(§0A§);
      }
   }
}
