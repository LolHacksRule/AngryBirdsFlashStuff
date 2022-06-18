package §<!@§
{
   import §,!§.§]=§;
   
   public class §!P§
   {
      
      public static const §+U§:String = "1-1";
      
      protected static var §4!6§:Array = null;
      
      protected static var §<y§:Array = [];
      
      protected static var §%,§:Array = [];
      
      public static var §4R§:String = null;
      
      public static var §#!§:String = null;
      
      public static var §%!A§:Boolean;
      
      public static var §>N§:int = 0;
       
      
      public function §!P§()
      {
         super();
      }
      
      public static function §2j§(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:§#c§ = null;
         var _loc4_:String = null;
         var _loc5_:* = null;
         var _loc6_:int = 0;
         §4!6§ = new Array();
         for each(_loc2_ in param1.chapters)
         {
            _loc3_ = new §#c§();
            _loc3_.levelsPerPage = _loc2_.levelsPerPage;
            _loc3_.name = _loc2_.name;
            _loc3_.menuImage = _loc2_.menuImage;
            _loc3_.§^2§ = _loc2_.leftCorner;
            _loc3_.§77§ = _loc2_.rightCorner;
            _loc3_.§^N§ = _loc2_.pageColors;
            _loc3_.pageIndexes = _loc2_.pageIndexes;
            _loc3_.levelButtons = _loc2_.levelButtons;
            _loc3_.writtenName = _loc2_.writtenName;
            if(_loc2_.cutscenes)
            {
               for(_loc5_ in _loc2_.cutscenes)
               {
                  _loc3_.§[6§(_loc5_,_loc2_.cutscenes[_loc5_]);
               }
            }
            §4!6§.push(_loc3_);
            for each(_loc4_ in _loc3_.pageIndexes)
            {
               _loc6_ = 1;
               while(_loc6_ <= _loc3_.levelsPerPage)
               {
                  §%,§[_loc4_ + "-" + _loc6_] = _loc3_.name;
                  _loc6_++;
               }
            }
         }
      }
      
      public static function §6!+§() : void
      {
      }
      
      public static function §5K§(param1:String) : §#c§
      {
         var _loc2_:§#c§ = null;
         for each(_loc2_ in §4!6§)
         {
            if(_loc2_.§^!2§(param1))
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §"!<§(param1:String) : int
      {
         var _loc3_:§#c§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < §4!6§.length)
         {
            _loc3_ = §4!6§[_loc2_];
            if(_loc3_.§^!2§(param1))
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public static function §[]§(param1:int) : §#c§
      {
         return §4!6§[param1];
      }
      
      public static function §0V§() : int
      {
         return §4!6§.length;
      }
      
      public static function §1'§(param1:String) : §+!-§
      {
         if(!§<y§[param1])
         {
            if(§%,§[param1] == null)
            {
               throw new Error("Error! Level \'" + param1 + "\' does not exist.");
            }
         }
         return §<y§[param1];
      }
      
      public static function § X§(param1:String, param2:§+!-§) : void
      {
         §<y§[param1] = param2;
      }
      
      public static function §3!H§(param1:String, param2:int) : int
      {
         var level:§+!-§ = null;
         var levelId:String = param1;
         var score:int = param2;
         try
         {
            level = §!P§.§1'§(levelId);
         }
         catch(e:Error)
         {
         }
         if(score <= 0)
         {
            return 0;
         }
         if(score < level.§6,§)
         {
            return 1;
         }
         if(score < level.§2!E§)
         {
            return 2;
         }
         return 3;
      }
      
      public static function §<!=§(param1:String) : String
      {
         if(!§%,§[param1])
         {
            return §+U§;
         }
         return param1;
      }
      
      public static function §-7§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:§#c§ = null;
         if(param1 != §4R§)
         {
            _loc2_ = §"!<§(param1);
            if(_loc2_ >= 0)
            {
               §>N§ = _loc2_;
               §#!§ = §4R§;
               §4R§ = param1;
               _loc3_ = §^!@§();
               if(_loc3_)
               {
                  _loc3_.§[y§ = _loc3_.§"a§(param1);
               }
            }
            else
            {
               §#!§ = §4R§;
               §4R§ = null;
            }
         }
      }
      
      public static function §`!0§() : String
      {
         return §4R§.substring(5);
      }
      
      public static function §^!@§() : §#c§
      {
         return §4!6§[§>N§];
      }
      
      public static function §1C§() : Boolean
      {
         return true;
      }
      
      public static function §1!§() : Boolean
      {
         var _loc1_:String = §]y§();
         var _loc2_:String = §^!@§().§&&§(§4R§ + "-OUTRO");
         if(!_loc2_)
         {
            return false;
         }
         if(_loc1_ == null)
         {
            §]=§.§6p§(_loc2_);
         }
         return true;
      }
      
      public static function §]y§() : String
      {
         return §^!@§().§]y§(§4R§);
      }
   }
}
