package §!!a§
{
   import §<c§.§4!9§;
   
   public class §9G§
   {
      
      public static const §%5§:String = "1-1";
      
      protected static var §`r§:Array = null;
      
      protected static var §5$§:Array = [];
      
      protected static var §`x§:Array = [];
      
      public static var §>>§:String = null;
      
      public static var §7T§:String = null;
      
      public static var §3v§:Boolean;
      
      public static var §=!1§:int = 0;
       
      
      public function §9G§()
      {
         super();
      }
      
      public static function §[Y§(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:§^!>§ = null;
         var _loc4_:String = null;
         var _loc5_:* = null;
         var _loc6_:int = 0;
         §`r§ = new Array();
         for each(_loc2_ in param1.chapters)
         {
            _loc3_ = new §^!>§();
            _loc3_.levelsPerPage = _loc2_.levelsPerPage;
            _loc3_.name = _loc2_.name;
            _loc3_.menuImage = _loc2_.menuImage;
            _loc3_.§%"§ = _loc2_.leftCorner;
            _loc3_.§,s§ = _loc2_.rightCorner;
            _loc3_.§[v§ = _loc2_.pageColors;
            _loc3_.pageIndexes = _loc2_.pageIndexes;
            _loc3_.levelButtons = _loc2_.levelButtons;
            _loc3_.writtenName = _loc2_.writtenName;
            if(_loc2_.cutscenes)
            {
               for(_loc5_ in _loc2_.cutscenes)
               {
                  _loc3_.§5_§(_loc5_,_loc2_.cutscenes[_loc5_]);
               }
            }
            §`r§.push(_loc3_);
            for each(_loc4_ in _loc3_.pageIndexes)
            {
               _loc6_ = 1;
               while(_loc6_ <= _loc3_.levelsPerPage)
               {
                  §`x§[_loc4_ + "-" + _loc6_] = _loc3_.name;
                  _loc6_++;
               }
            }
         }
      }
      
      public static function §`!P§() : void
      {
      }
      
      public static function §5!>§(param1:String) : §^!>§
      {
         var _loc2_:§^!>§ = null;
         for each(_loc2_ in §`r§)
         {
            if(_loc2_.§<!@§(param1))
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §&!J§(param1:String) : int
      {
         var _loc3_:§^!>§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < §`r§.length)
         {
            _loc3_ = §`r§[_loc2_];
            if(_loc3_.§<!@§(param1))
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public static function §68§(param1:int) : §^!>§
      {
         return §`r§[param1];
      }
      
      public static function §;-§() : int
      {
         return §`r§.length;
      }
      
      public static function §6t§(param1:String) : §8=§
      {
         if(!§5$§[param1])
         {
            if(§`x§[param1] == null)
            {
               throw new Error("Error! Level \'" + param1 + "\' does not exist.");
            }
         }
         return §5$§[param1];
      }
      
      public static function §3!P§(param1:String, param2:§8=§) : void
      {
         §5$§[param1] = param2;
      }
      
      public static function §@!Z§(param1:String, param2:int) : int
      {
         var level:§8=§ = null;
         var levelId:String = param1;
         var score:int = param2;
         try
         {
            level = §9G§.§6t§(levelId);
         }
         catch(e:Error)
         {
         }
         if(score <= 0)
         {
            return 0;
         }
         if(score < level.§8!E§)
         {
            return 1;
         }
         if(score < level.§7H§)
         {
            return 2;
         }
         return 3;
      }
      
      public static function §,! §(param1:String) : String
      {
         if(!§`x§[param1])
         {
            return §%5§;
         }
         return param1;
      }
      
      public static function §%^§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:§^!>§ = null;
         if(param1 != §>>§)
         {
            _loc2_ = §&!J§(param1);
            if(_loc2_ >= 0)
            {
               §=!1§ = _loc2_;
               §7T§ = §>>§;
               §>>§ = param1;
               _loc3_ = §8o§();
               if(_loc3_)
               {
                  _loc3_.§`=§ = _loc3_.§^!"§(param1);
               }
            }
            else
            {
               §7T§ = §>>§;
               §>>§ = null;
            }
         }
      }
      
      public static function §4!V§() : String
      {
         return §>>§.substring(5);
      }
      
      public static function §8o§() : §^!>§
      {
         return §`r§[§=!1§];
      }
      
      public static function §]7§() : Boolean
      {
         return true;
      }
      
      public static function §8V§() : Boolean
      {
         var _loc1_:String = §7!X§();
         var _loc2_:String = §8o§().§#!>§(§>>§ + "-OUTRO");
         if(!_loc2_)
         {
            return false;
         }
         if(_loc1_ == null)
         {
            §4!9§.§@!a§(_loc2_);
         }
         return true;
      }
      
      public static function §7!X§() : String
      {
         return §8o§().§7!X§(§>>§);
      }
   }
}
