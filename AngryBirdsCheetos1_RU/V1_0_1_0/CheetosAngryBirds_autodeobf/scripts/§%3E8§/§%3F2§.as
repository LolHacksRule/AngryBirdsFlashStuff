package §>8§
{
   import §="§.§`!L§;
   
   public class §?2§
   {
      
      public static const § try§:String = "1-1";
      
      protected static var §3!U§:Array = null;
      
      protected static var §2O§:Array = [];
      
      protected static var §^$§:Array = [];
      
      public static var §=$§:String = null;
      
      public static var §?@§:String = null;
      
      public static var §0p§:Boolean;
      
      public static var §]B§:int = 0;
       
      
      public function §?2§()
      {
         super();
      }
      
      public static function §2!3§(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:§+!&§ = null;
         var _loc4_:String = null;
         var _loc5_:* = null;
         var _loc6_:int = 0;
         §3!U§ = new Array();
         for each(_loc2_ in param1.chapters)
         {
            _loc3_ = new §+!&§();
            _loc3_.levelsPerPage = _loc2_.levelsPerPage;
            _loc3_.name = _loc2_.name;
            _loc3_.menuImage = _loc2_.menuImage;
            _loc3_.§4>§ = _loc2_.leftCorner;
            _loc3_.§<b§ = _loc2_.rightCorner;
            _loc3_.§%!&§ = _loc2_.pageColors;
            _loc3_.pageIndexes = _loc2_.pageIndexes;
            _loc3_.levelButtons = _loc2_.levelButtons;
            _loc3_.writtenName = _loc2_.writtenName;
            if(_loc2_.cutscenes)
            {
               for(_loc5_ in _loc2_.cutscenes)
               {
                  _loc3_.§%3§(_loc5_,_loc2_.cutscenes[_loc5_]);
               }
            }
            §3!U§.push(_loc3_);
            for each(_loc4_ in _loc3_.pageIndexes)
            {
               _loc6_ = 1;
               while(_loc6_ <= _loc3_.levelsPerPage)
               {
                  §^$§[_loc4_ + "-" + _loc6_] = _loc3_.name;
                  _loc6_++;
               }
            }
         }
      }
      
      public static function §0h§() : void
      {
      }
      
      public static function §?!I§(param1:String) : §+!&§
      {
         var _loc2_:§+!&§ = null;
         for each(_loc2_ in §3!U§)
         {
            if(_loc2_.§&P§(param1))
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §-h§(param1:String) : int
      {
         var _loc3_:§+!&§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < §3!U§.length)
         {
            _loc3_ = §3!U§[_loc2_];
            if(_loc3_.§&P§(param1))
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public static function §<,§(param1:int) : §+!&§
      {
         return §3!U§[param1];
      }
      
      public static function §0! §(param1:String) : §+!&§
      {
         var _loc2_:§+!&§ = null;
         for each(_loc2_ in §3!U§)
         {
            if(_loc2_.name == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §'^§() : int
      {
         return §3!U§.length;
      }
      
      public static function getLevelForId(param1:String) : §#%§
      {
         if(!§2O§[param1])
         {
            if(§^$§[param1] == null)
            {
               throw new Error("Error! Level \'" + param1 + "\' does not exist.");
            }
         }
         return §2O§[param1];
      }
      
      public static function §6p§(param1:String, param2:§#%§) : void
      {
         §2O§[param1] = param2;
      }
      
      public static function §#!E§(param1:String, param2:int) : int
      {
         var level:§#%§ = null;
         var levelId:String = param1;
         var score:int = param2;
         try
         {
            level = §?2§.getLevelForId(levelId);
         }
         catch(e:Error)
         {
         }
         if(score <= 0)
         {
            return 0;
         }
         if(score < level.§"]§)
         {
            return 1;
         }
         if(score < level.§'!@§)
         {
            return 2;
         }
         return 3;
      }
      
      public static function §>Y§(param1:String) : String
      {
         if(!§^$§[param1])
         {
            return § try§;
         }
         return param1;
      }
      
      public static function §7T§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:§+!&§ = null;
         if(param1 != §=$§)
         {
            _loc2_ = §-h§(param1);
            if(_loc2_ >= 0)
            {
               §]B§ = _loc2_;
               §?@§ = §=$§;
               §=$§ = param1;
               _loc3_ = §@D§();
               if(_loc3_)
               {
                  _loc3_.currentPage = _loc3_.§?]§(param1);
               }
            }
            else
            {
               §?@§ = §=$§;
               §=$§ = null;
            }
         }
      }
      
      public static function §53§() : String
      {
         return §=$§.substring(5);
      }
      
      public static function §@D§() : §+!&§
      {
         return §3!U§[§]B§];
      }
      
      public static function §'b§() : Boolean
      {
         return true;
      }
      
      public static function §<!I§() : Boolean
      {
         var _loc1_:String = §?f§();
         var _loc2_:String = §@D§().§5y§(§=$§ + "-OUTRO");
         if(!_loc2_)
         {
            return false;
         }
         if(_loc1_ == null)
         {
            §`!L§.§1!§(_loc2_);
         }
         return true;
      }
      
      public static function §?f§() : String
      {
         return §@D§().§?f§(§=$§);
      }
   }
}
