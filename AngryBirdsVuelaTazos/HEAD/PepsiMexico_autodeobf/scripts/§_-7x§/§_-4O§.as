package §_-7x§
{
   import §_-wG§.§_-et§;
   
   public class §_-4O§
   {
      
      public static const §_-Jw§:String = "1-1";
      
      protected static var §_-gj§:Array = null;
      
      protected static var §_-lG§:Array = new Array();
      
      public static var §_-FH§:String = null;
      
      public static var §_-ol§:String = null;
      
      public static var §_-XE§:Boolean;
      
      public static var §_-R3§:int = 0;
       
      
      public function §_-4O§()
      {
         super();
      }
      
      public static function §_-FW§(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:§_-MT§ = null;
         var _loc4_:* = null;
         §_-gj§ = new Array();
         for each(_loc2_ in param1.chapters)
         {
            _loc3_ = new §_-MT§();
            _loc3_.levelsPerPage = _loc2_.levelsPerPage;
            _loc3_.name = _loc2_.name;
            _loc3_.menuImage = _loc2_.menuImage;
            _loc3_.§_-Qt§ = _loc2_.leftCorner;
            _loc3_.§_-JD§ = _loc2_.rightCorner;
            _loc3_.§_-1p§ = _loc2_.pageColors;
            _loc3_.pageIndexes = _loc2_.pageIndexes;
            _loc3_.levelButtons = _loc2_.levelButtons;
            _loc3_.writtenName = _loc2_.writtenName;
            if(_loc2_.cutscenes)
            {
               for(_loc4_ in _loc2_.cutscenes)
               {
                  _loc3_.§_-rg§(_loc4_,_loc2_.cutscenes[_loc4_]);
               }
            }
            §_-gj§.push(_loc3_);
         }
      }
      
      public static function §_-ie§() : void
      {
      }
      
      public static function §_-ED§(param1:String) : §_-MT§
      {
         var _loc2_:§_-MT§ = null;
         for each(_loc2_ in §_-gj§)
         {
            if(_loc2_.§_-rc§(param1))
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §_-od§(param1:String) : int
      {
         var _loc3_:§_-MT§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < §_-gj§.length)
         {
            _loc3_ = §_-gj§[_loc2_];
            if(_loc3_.§_-rc§(param1))
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public static function §_-yd§(param1:int) : §_-MT§
      {
         return §_-gj§[param1];
      }
      
      public static function §_-P3§() : int
      {
         return §_-gj§.length;
      }
      
      public static function §_-Eo§(param1:String) : §_-yE§
      {
         if(!§_-lG§[param1])
         {
            throw new Error("Error! Level \'" + param1 + "\' does not exist.");
         }
         return §_-lG§[param1];
      }
      
      public static function §_-9z§(param1:String, param2:§_-yE§) : void
      {
         §_-lG§[param1] = param2;
      }
      
      public static function §_-4w§(param1:String, param2:int) : int
      {
         var level:§_-yE§ = null;
         var levelId:String = param1;
         var score:int = param2;
         try
         {
            level = §_-4O§.§_-Eo§(levelId);
         }
         catch(e:Error)
         {
         }
         if(score <= 0)
         {
            return 0;
         }
         if(score < level.§_-9§)
         {
            return 1;
         }
         if(score < level.§_-pR§)
         {
            return 2;
         }
         return 3;
      }
      
      public static function §_-yV§(param1:String) : String
      {
         if(!§_-lG§[param1])
         {
            return §_-Jw§;
         }
         return param1;
      }
      
      public static function §_-bf§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:§_-MT§ = null;
         if(param1 != §_-FH§)
         {
            _loc2_ = §_-od§(param1);
            if(_loc2_ >= 0)
            {
               §_-R3§ = _loc2_;
               §_-ol§ = §_-FH§;
               §_-FH§ = param1;
               _loc3_ = §_-aZ§();
               if(_loc3_)
               {
                  _loc3_.currentPage = _loc3_.§_-Ap§(param1);
               }
            }
            else
            {
               §_-ol§ = §_-FH§;
               §_-FH§ = null;
            }
         }
      }
      
      public static function §_-Bx§() : String
      {
         return §_-FH§.substring(5);
      }
      
      public static function §_-aZ§() : §_-MT§
      {
         return §_-gj§[§_-R3§];
      }
      
      public static function §_-DT§() : Boolean
      {
         return true;
      }
      
      public static function §_-KX§() : Boolean
      {
         var _loc1_:String = §_-Dt§();
         var _loc2_:String = §_-aZ§().§_-3l§(§_-FH§ + "-OUTRO");
         if(!_loc2_)
         {
            return false;
         }
         if(_loc1_ != null)
         {
            if(_loc1_.charAt(0) != §_-FH§.charAt(0))
            {
               return true;
            }
            return false;
         }
         §_-et§.§_-cj§(_loc2_);
         return true;
      }
      
      public static function §_-Dt§() : String
      {
         return §_-aZ§().§_-Dt§(§_-FH§);
      }
   }
}
