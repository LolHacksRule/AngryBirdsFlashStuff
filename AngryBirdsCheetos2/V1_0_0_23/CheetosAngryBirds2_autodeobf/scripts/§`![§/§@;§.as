package §`![§
{
   import §3!Z§.§ !b§;
   
   public class §@;§
   {
      
      public static const §7%§:String = "1-1";
      
      protected static var §&!Q§:Array = null;
      
      protected static var §`!&§:Array = [];
      
      protected static var §?!"§:Array = [];
      
      public static var §6!K§:String = null;
      
      public static var §=C§:String = null;
      
      public static var §5!2§:Boolean;
      
      public static var §5!K§:int = 0;
       
      
      public function §@;§()
      {
         super();
      }
      
      public static function §<U§(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:§1!K§ = null;
         var _loc4_:String = null;
         var _loc5_:* = null;
         var _loc6_:int = 0;
         §&!Q§ = new Array();
         for each(_loc2_ in param1.chapters)
         {
            _loc3_ = new §1!K§();
            _loc3_.levelsPerPage = _loc2_.levelsPerPage;
            _loc3_.name = _loc2_.name;
            _loc3_.menuImage = _loc2_.menuImage;
            _loc3_.§4+§ = _loc2_.leftCorner;
            _loc3_.§`k§ = _loc2_.rightCorner;
            _loc3_.§`$§ = _loc2_.pageColors;
            _loc3_.pageIndexes = _loc2_.pageIndexes;
            _loc3_.levelButtons = _loc2_.levelButtons;
            _loc3_.writtenName = _loc2_.writtenName;
            if(_loc2_.cutscenes)
            {
               for(_loc5_ in _loc2_.cutscenes)
               {
                  _loc3_.§?!f§(_loc5_,_loc2_.cutscenes[_loc5_]);
               }
            }
            §&!Q§.push(_loc3_);
            for each(_loc4_ in _loc3_.pageIndexes)
            {
               _loc6_ = 1;
               while(_loc6_ <= _loc3_.levelsPerPage)
               {
                  §?!"§[_loc4_ + "-" + _loc6_] = _loc3_.name;
                  _loc6_++;
               }
            }
         }
      }
      
      public static function §5w§() : void
      {
      }
      
      public static function §4!`§(param1:String) : §1!K§
      {
         var _loc2_:§1!K§ = null;
         for each(_loc2_ in §&!Q§)
         {
            if(_loc2_.§&!e§(param1))
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §<!%§(param1:String) : int
      {
         var _loc3_:§1!K§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < §&!Q§.length)
         {
            _loc3_ = §&!Q§[_loc2_];
            if(_loc3_.§&!e§(param1))
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public static function §default§(param1:int) : §1!K§
      {
         return §&!Q§[param1];
      }
      
      public static function §finally§(param1:String) : §1!K§
      {
         var _loc2_:§1!K§ = null;
         for each(_loc2_ in §&!Q§)
         {
            if(_loc2_.name == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §7!I§() : int
      {
         return §&!Q§.length;
      }
      
      public static function §6!M§(param1:String) : §!!K§
      {
         if(!§`!&§[param1])
         {
            if(§?!"§[param1] == null)
            {
               throw new Error("Error! Level \'" + param1 + "\' does not exist.");
            }
         }
         return §`!&§[param1];
      }
      
      public static function §8h§(param1:String, param2:§!!K§) : void
      {
         §`!&§[param1] = param2;
      }
      
      public static function §@T§(param1:String, param2:int) : int
      {
         var level:§!!K§ = null;
         var levelId:String = param1;
         var score:int = param2;
         try
         {
            level = §@;§.§6!M§(levelId);
         }
         catch(e:Error)
         {
         }
         if(score <= 0)
         {
            return 0;
         }
         if(score < level.§!!<§)
         {
            return 1;
         }
         if(score < level.§8Z§)
         {
            return 2;
         }
         return 3;
      }
      
      public static function § >§(param1:String) : String
      {
         if(!§?!"§[param1])
         {
            return §7%§;
         }
         return param1;
      }
      
      public static function §2Q§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:§1!K§ = null;
         if(param1 != §6!K§)
         {
            _loc2_ = §<!%§(param1);
            if(_loc2_ >= 0)
            {
               §5!K§ = _loc2_;
               §=C§ = §6!K§;
               §6!K§ = param1;
               _loc3_ = §+Q§();
               if(_loc3_)
               {
                  _loc3_.§ !X§ = _loc3_.§5g§(param1);
               }
            }
            else
            {
               §=C§ = §6!K§;
               §6!K§ = null;
            }
         }
      }
      
      public static function §%Z§() : String
      {
         return §6!K§.substring(5);
      }
      
      public static function §+Q§() : §1!K§
      {
         return §&!Q§[§5!K§];
      }
      
      public static function §@1§() : Boolean
      {
         return true;
      }
      
      public static function §6Q§() : Boolean
      {
         var _loc1_:String = §,!L§();
         var _loc2_:String = §+Q§().§]<§(§6!K§ + "-OUTRO");
         if(!_loc2_)
         {
            return false;
         }
         if(_loc1_ == null)
         {
            § !b§.§?Z§(_loc2_);
         }
         return true;
      }
      
      public static function §,!L§() : String
      {
         return §+Q§().§,!L§(§6!K§);
      }
   }
}
