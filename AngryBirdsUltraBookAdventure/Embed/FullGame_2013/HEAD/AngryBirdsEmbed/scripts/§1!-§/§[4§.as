package §1!-§
{
   import §&p§.§^!C§;
   
   public class §[4§
   {
      
      public static const §<=§:String = "1-1";
      
      protected static var §<-§:Array = null;
      
      protected static var §;0§:Array = [];
      
      protected static var §[!>§:Array = [];
      
      public static var §"!>§:String = null;
      
      public static var § !7§:String = null;
      
      public static var §<!L§:Boolean;
      
      public static var § m§:int = 0;
       
      
      public function §[4§()
      {
         super();
      }
      
      public static function §6!+§(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:§2n§ = null;
         var _loc4_:String = null;
         var _loc5_:* = null;
         var _loc6_:int = 0;
         §<-§ = new Array();
         for each(_loc2_ in param1.chapters)
         {
            _loc3_ = new §2n§();
            _loc3_.levelsPerPage = _loc2_.levelsPerPage;
            _loc3_.name = _loc2_.name;
            _loc3_.menuImage = _loc2_.menuImage;
            _loc3_.§-!'§ = _loc2_.leftCorner;
            _loc3_.§6!>§ = _loc2_.rightCorner;
            _loc3_.§ 9§ = _loc2_.pageColors;
            _loc3_.pageIndexes = _loc2_.pageIndexes;
            _loc3_.levelButtons = _loc2_.levelButtons;
            _loc3_.writtenName = _loc2_.writtenName;
            if(_loc2_.cutscenes)
            {
               for(_loc5_ in _loc2_.cutscenes)
               {
                  _loc3_.§2!E§(_loc5_,_loc2_.cutscenes[_loc5_]);
               }
            }
            §<-§.push(_loc3_);
            for each(_loc4_ in _loc3_.pageIndexes)
            {
               _loc6_ = 1;
               while(_loc6_ <= _loc3_.levelsPerPage)
               {
                  §[!>§[_loc4_ + "-" + _loc6_] = _loc3_.name;
                  _loc6_++;
               }
            }
         }
      }
      
      public static function §6y§() : void
      {
      }
      
      public static function §<%§(param1:String) : §2n§
      {
         var _loc2_:§2n§ = null;
         for each(_loc2_ in §<-§)
         {
            if(_loc2_.§=9§(param1))
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §4k§(param1:String) : int
      {
         var _loc3_:§2n§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < §<-§.length)
         {
            _loc3_ = §<-§[_loc2_];
            if(_loc3_.§=9§(param1))
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public static function §2A§(param1:int) : §2n§
      {
         return §<-§[param1];
      }
      
      public static function §,,§(param1:String) : §2n§
      {
         var _loc2_:§2n§ = null;
         for each(_loc2_ in §<-§)
         {
            if(_loc2_.name == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §99§() : int
      {
         return §<-§.length;
      }
      
      public static function §!_§(param1:String) : §@Z§
      {
         if(!§;0§[param1])
         {
            if(§[!>§[param1] == null)
            {
               throw new Error("Error! Level \'" + param1 + "\' does not exist.");
            }
         }
         return §;0§[param1];
      }
      
      public static function §8z§(param1:String, param2:§@Z§) : void
      {
         §;0§[param1] = param2;
      }
      
      public static function §"r§(param1:String, param2:int) : int
      {
         var level:§@Z§ = null;
         var levelId:String = param1;
         var score:int = param2;
         try
         {
            level = §[4§.§!_§(levelId);
         }
         catch(e:Error)
         {
         }
         if(score <= 0)
         {
            return 0;
         }
         if(score < level.§!x§)
         {
            return 1;
         }
         if(score < level.§4!6§)
         {
            return 2;
         }
         return 3;
      }
      
      public static function §![§(param1:String) : String
      {
         if(!§[!>§[param1])
         {
            return §<=§;
         }
         return param1;
      }
      
      public static function §]a§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:§2n§ = null;
         if(param1 != §"!>§)
         {
            _loc2_ = §4k§(param1);
            if(_loc2_ >= 0)
            {
               § m§ = _loc2_;
               § !7§ = §"!>§;
               §"!>§ = param1;
               _loc3_ = §5C§();
               if(_loc3_)
               {
                  _loc3_.§>!=§ = _loc3_.§;N§(param1);
               }
            }
            else
            {
               § !7§ = §"!>§;
               §"!>§ = null;
            }
         }
      }
      
      public static function §%t§() : String
      {
         return §"!>§.substring(5);
      }
      
      public static function §5C§() : §2n§
      {
         return §<-§[§ m§];
      }
      
      public static function §1!D§() : Boolean
      {
         return true;
      }
      
      public static function §`v§() : Boolean
      {
         var _loc1_:String = §4E§();
         var _loc2_:String = §5C§().§1w§(§"!>§ + "-OUTRO");
         if(!_loc2_)
         {
            return false;
         }
         if(_loc1_ == null)
         {
            §^!C§.§3b§(_loc2_);
         }
         return true;
      }
      
      public static function §4E§() : String
      {
         return §5C§().§4E§(§"!>§);
      }
   }
}
