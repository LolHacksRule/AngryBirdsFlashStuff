package §7e§
{
   import §"!@§.§=!J§;
   
   public class §#w§
   {
      
      public static const §8!K§:String = "1-1";
      
      protected static var §86§:Array = null;
      
      protected static var §9n§:Array = [];
      
      protected static var §+!d§:Array = [];
      
      public static var § !'§:String = null;
      
      public static var §'!L§:String = null;
      
      public static var §1!G§:Boolean;
      
      public static var §^!E§:int = 0;
       
      
      public function §#w§()
      {
         super();
      }
      
      public static function §9!b§(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:§8!-§ = null;
         var _loc4_:String = null;
         var _loc5_:* = null;
         var _loc6_:int = 0;
         §86§ = new Array();
         for each(_loc2_ in param1.chapters)
         {
            _loc3_ = new §8!-§();
            _loc3_.levelsPerPage = _loc2_.levelsPerPage;
            _loc3_.name = _loc2_.name;
            _loc3_.menuImage = _loc2_.menuImage;
            _loc3_.§ !!§ = _loc2_.leftCorner;
            _loc3_.§]!F§ = _loc2_.rightCorner;
            _loc3_.§=!f§ = _loc2_.pageColors;
            _loc3_.pageIndexes = _loc2_.pageIndexes;
            _loc3_.levelButtons = _loc2_.levelButtons;
            _loc3_.writtenName = _loc2_.writtenName;
            if(_loc2_.cutscenes)
            {
               for(_loc5_ in _loc2_.cutscenes)
               {
                  _loc3_.§]N§(_loc5_,_loc2_.cutscenes[_loc5_]);
               }
            }
            §86§.push(_loc3_);
            for each(_loc4_ in _loc3_.pageIndexes)
            {
               _loc6_ = 1;
               while(_loc6_ <= _loc3_.levelsPerPage)
               {
                  §+!d§[_loc4_ + "-" + _loc6_] = _loc3_.name;
                  _loc6_++;
               }
            }
         }
      }
      
      public static function §4^§() : void
      {
      }
      
      public static function §%!C§(param1:String) : §8!-§
      {
         var _loc2_:§8!-§ = null;
         for each(_loc2_ in §86§)
         {
            if(_loc2_.§ &§(param1))
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §00§(param1:String) : int
      {
         var _loc3_:§8!-§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < §86§.length)
         {
            _loc3_ = §86§[_loc2_];
            if(_loc3_.§ &§(param1))
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public static function §^!0§(param1:int) : §8!-§
      {
         return §86§[param1];
      }
      
      public static function §^!4§(param1:String) : §8!-§
      {
         var _loc2_:§8!-§ = null;
         for each(_loc2_ in §86§)
         {
            if(_loc2_.name == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §7_§() : int
      {
         return §86§.length;
      }
      
      public static function §;!E§(param1:String) : §8!P§
      {
         if(!§9n§[param1])
         {
            if(§+!d§[param1] == null)
            {
               throw new Error("Error! Level \'" + param1 + "\' does not exist.");
            }
         }
         return §9n§[param1];
      }
      
      public static function §>f§(param1:String, param2:§8!P§) : void
      {
         §9n§[param1] = param2;
      }
      
      public static function §2!O§(param1:String, param2:int) : int
      {
         var level:§8!P§ = null;
         var levelId:String = param1;
         var score:int = param2;
         try
         {
            level = §#w§.§;!E§(levelId);
         }
         catch(e:Error)
         {
         }
         if(score <= 0)
         {
            return 0;
         }
         if(score < level.§7!C§)
         {
            return 1;
         }
         if(score < level.§'c§)
         {
            return 2;
         }
         return 3;
      }
      
      public static function §0?§(param1:String) : String
      {
         if(!§+!d§[param1])
         {
            return §8!K§;
         }
         return param1;
      }
      
      public static function §8>§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:§8!-§ = null;
         if(param1 != § !'§)
         {
            _loc2_ = §00§(param1);
            if(_loc2_ >= 0)
            {
               §^!E§ = _loc2_;
               §'!L§ = § !'§;
               § !'§ = param1;
               _loc3_ = §,g§();
               if(_loc3_)
               {
                  _loc3_.§`E§ = _loc3_.§2i§(param1);
               }
            }
            else
            {
               §'!L§ = § !'§;
               § !'§ = null;
            }
         }
      }
      
      public static function §`L§() : String
      {
         return § !'§.substring(5);
      }
      
      public static function §,g§() : §8!-§
      {
         return §86§[§^!E§];
      }
      
      public static function §;c§() : Boolean
      {
         return true;
      }
      
      public static function §[!P§() : Boolean
      {
         var _loc1_:String = §7$§();
         var _loc2_:String = §,g§().§2$§(§ !'§ + "-OUTRO");
         if(!_loc2_)
         {
            return false;
         }
         if(_loc1_ == null)
         {
            §=!J§.§!!]§(_loc2_);
         }
         return true;
      }
      
      public static function §7$§() : String
      {
         return §,g§().§7$§(§ !'§);
      }
   }
}
