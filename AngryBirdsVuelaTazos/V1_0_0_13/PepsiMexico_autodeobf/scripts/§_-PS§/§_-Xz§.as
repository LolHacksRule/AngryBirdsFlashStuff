package §_-PS§
{
   import §_-bs§.§_-3j§;
   import §_-bs§.§_-J5§;
   
   public class §_-Xz§
   {
      
      private static var §_-6G§:Array = null;
      
      private static var §_-lr§:Array = new Array();
      
      public static var §_-AP§:String = null;
      
      public static var §_-Px§:String = null;
      
      public static var §_-Og§:Boolean;
      
      public static var §_-y-§:int = 0;
       
      
      public function §_-Xz§()
      {
         super();
      }
      
      public static function §_-bW§(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:§_-LZ§ = null;
         var _loc4_:* = null;
         §_-6G§ = new Array();
         for each(_loc2_ in param1.chapters)
         {
            _loc3_ = new §_-LZ§();
            _loc3_.levelsPerPage = _loc2_.levelsPerPage;
            _loc3_.name = _loc2_.name;
            _loc3_.menuImage = _loc2_.menuImage;
            _loc3_.§_-QL§ = _loc2_.leftCorner;
            _loc3_.§_-GA§ = _loc2_.rightCorner;
            _loc3_.§_-yY§ = _loc2_.pageColors;
            _loc3_.pageIndexes = _loc2_.pageIndexes;
            _loc3_.levelButtons = _loc2_.levelButtons;
            if(_loc2_.cutscenes)
            {
               for(_loc4_ in _loc2_.cutscenes)
               {
                  _loc3_.§_-vz§(_loc4_,_loc2_.cutscenes[_loc4_]);
               }
            }
            §_-6G§.push(_loc3_);
         }
      }
      
      public static function §_-4s§() : void
      {
      }
      
      public static function §_-KM§(param1:String) : §_-LZ§
      {
         var _loc2_:§_-LZ§ = null;
         for each(_loc2_ in §_-6G§)
         {
            if(_loc2_.§_-lO§(param1))
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §_-xM§(param1:int) : §_-LZ§
      {
         return §_-6G§[param1];
      }
      
      public static function §_-aN§() : int
      {
         return §_-6G§.length;
      }
      
      public static function §_-BH§(param1:String) : §_-sq§
      {
         if(!§_-lr§[param1])
         {
            throw new Error("Error! Level \'" + param1 + "\' does not exist.");
         }
         return §_-lr§[param1];
      }
      
      public static function §_-JM§(param1:String, param2:§_-sq§) : void
      {
         §_-lr§[param1] = param2;
      }
      
      public static function §_-Kz§(param1:String, param2:int) : int
      {
         var _loc3_:§_-sq§ = §_-Xz§.§_-BH§(param1);
         if(param2 <= 0)
         {
            return 0;
         }
         if(param2 < _loc3_.§_-4l§)
         {
            return 1;
         }
         if(param2 < _loc3_.§_-N2§)
         {
            return 2;
         }
         return 3;
      }
      
      public static function §_-9v§(param1:String) : void
      {
         if(param1 != §_-AP§)
         {
            §_-Px§ = §_-AP§;
            §_-AP§ = param1;
         }
      }
      
      public static function §_-Vv§() : String
      {
         return §_-AP§.substring(5);
      }
      
      public static function §_-Vt§() : §_-LZ§
      {
         return §_-6G§[§_-y-§];
      }
      
      public static function §_-0T§() : Boolean
      {
         return true;
      }
      
      public static function §_-XY§() : Boolean
      {
         var _loc1_:String = §_-ly§();
         var _loc2_:String = §_-Vt§().§_-W5§(§_-AP§ + "-OUTRO");
         if(!_loc2_)
         {
            return false;
         }
         var _loc3_:§_-J5§ = §_-3j§.§_-W5§(_loc2_);
         if(_loc1_ != null)
         {
            if(_loc1_.charAt(0) != §_-AP§.charAt(0))
            {
               return true;
            }
            return false;
         }
         _loc3_.§_-QH§ = §_-J5§.§_-Ix§;
         return true;
      }
      
      public static function §_-ly§() : String
      {
         return §_-Vt§().§_-ly§(§_-AP§);
      }
   }
}
