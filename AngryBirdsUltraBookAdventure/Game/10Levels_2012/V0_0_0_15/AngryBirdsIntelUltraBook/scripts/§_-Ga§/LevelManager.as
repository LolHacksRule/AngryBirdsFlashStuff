package §_-Ga§
{
   import §_-n§.§_-II§;
   
   public class LevelManager
   {
      
      public static const §_-1q§:String = "1-1";
      
      protected static var §_-Wg§:Array = null;
      
      protected static var §_-01N§:Array = [];
      
      protected static var §_-iI§:Array = [];
      
      public static var §_-HM§:String = null;
      
      public static var §_-4w§:String = null;
      
      public static var §_-PY§:Boolean;
      
      public static var §_-07s§:int = 0;
       
      
      public function LevelManager()
      {
         super();
      }
      
      public static function §_-Vk§(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:§_-0C5§ = null;
         var _loc4_:String = null;
         var _loc5_:* = null;
         var _loc6_:int = 0;
         §_-Wg§ = new Array();
         for each(_loc2_ in param1.chapters)
         {
            _loc3_ = new §_-0C5§();
            _loc3_.levelsPerPage = _loc2_.levelsPerPage;
            _loc3_.name = _loc2_.name;
            _loc3_.menuImage = _loc2_.menuImage;
            _loc3_.§_-Rx§ = _loc2_.leftCorner;
            _loc3_.§_-dx§ = _loc2_.rightCorner;
            _loc3_.§_-rc§ = _loc2_.pageColors;
            _loc3_.pageIndexes = _loc2_.pageIndexes;
            _loc3_.levelButtons = _loc2_.levelButtons;
            _loc3_.writtenName = _loc2_.writtenName;
            if(_loc2_.cutscenes)
            {
               for(_loc5_ in _loc2_.cutscenes)
               {
                  _loc3_.§_-0E8§(_loc5_,_loc2_.cutscenes[_loc5_]);
               }
            }
            §_-Wg§.push(_loc3_);
            for each(_loc4_ in _loc3_.pageIndexes)
            {
               _loc6_ = 1;
               while(_loc6_ <= _loc3_.levelsPerPage)
               {
                  §_-iI§[_loc4_ + "-" + _loc6_] = _loc3_.name;
                  _loc6_++;
               }
            }
         }
      }
      
      public static function §_-Ks§() : void
      {
      }
      
      public static function §_-N9§(param1:String) : §_-0C5§
      {
         var _loc2_:§_-0C5§ = null;
         for each(_loc2_ in §_-Wg§)
         {
            if(_loc2_.§_-PP§(param1))
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §_-p0§(param1:String) : int
      {
         var _loc3_:§_-0C5§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < §_-Wg§.length)
         {
            _loc3_ = §_-Wg§[_loc2_];
            if(_loc3_.§_-PP§(param1))
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public static function §_-h8§(param1:int) : §_-0C5§
      {
         return §_-Wg§[param1];
      }
      
      public static function §_-04H§(param1:String) : §_-0C5§
      {
         var _loc2_:§_-0C5§ = null;
         for each(_loc2_ in §_-Wg§)
         {
            if(_loc2_.name == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §_-td§() : int
      {
         return §_-Wg§.length;
      }
      
      public static function §_-U0§(param1:String) : §_-bm§
      {
         if(!§_-01N§[param1])
         {
            if(§_-iI§[param1] == null)
            {
               throw new Error("Error! Level \'" + param1 + "\' does not exist.");
            }
         }
         return §_-01N§[param1];
      }
      
      public static function §_-tc§(param1:String, param2:§_-bm§) : void
      {
         §_-01N§[param1] = param2;
      }
      
      public static function §_-g0§(param1:String, param2:int) : int
      {
         var level:§_-bm§ = null;
         var levelId:String = param1;
         var score:int = param2;
         try
         {
            level = LevelManager.§_-U0§(levelId);
         }
         catch(e:Error)
         {
         }
         if(score <= 0)
         {
            return 0;
         }
         if(score < level.§_-Td§)
         {
            return 1;
         }
         if(score < level.§_-iC§)
         {
            return 2;
         }
         return 3;
      }
      
      public static function §_-Hc§(param1:String) : String
      {
         if(!§_-iI§[param1])
         {
            return §_-1q§;
         }
         return param1;
      }
      
      public static function §_-s8§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:§_-0C5§ = null;
         if(param1 != §_-HM§)
         {
            _loc2_ = §_-p0§(param1);
            if(_loc2_ >= 0)
            {
               §_-07s§ = _loc2_;
               §_-4w§ = §_-HM§;
               §_-HM§ = param1;
               _loc3_ = §_-1a§();
               if(_loc3_)
               {
                  _loc3_.§_-h-§ = _loc3_.§_-tT§(param1);
               }
            }
            else
            {
               §_-4w§ = §_-HM§;
               §_-HM§ = null;
            }
         }
      }
      
      public static function §_-lR§() : String
      {
         return §_-HM§.substring(5);
      }
      
      public static function §_-1a§() : §_-0C5§
      {
         return §_-Wg§[§_-07s§];
      }
      
      public static function §_-vk§() : Boolean
      {
         return true;
      }
      
      public static function §_-z2§() : Boolean
      {
         var _loc1_:String = §_-xE§();
         var _loc2_:String = §_-1a§().§_-gy§(§_-HM§ + "-OUTRO");
         if(!_loc2_)
         {
            return false;
         }
         if(_loc1_ == null)
         {
            §_-II§.§_-VG§(_loc2_);
         }
         return true;
      }
      
      public static function §_-xE§() : String
      {
         return §_-1a§().§_-xE§(§_-HM§);
      }
   }
}
