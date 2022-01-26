package §_-Y-§
{
   import §_-Sc§.§_-eF§;
   import §_-Sc§.§_-iB§;
   
   public class §_-A5§
   {
      
      private static var §_-tQ§:Array = null;
      
      private static var §_-c8§:Array = new Array();
      
      public static var §_-KH§:String = null;
      
      public static var § try§:String = null;
      
      public static var §_-9-§:Boolean;
      
      public static var §_-fd§:int = 0;
       
      
      public function §_-A5§()
      {
         super();
      }
      
      public static function §_-ZT§(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:§_-2D§ = null;
         var _loc4_:* = null;
         §_-tQ§ = new Array();
         for each(_loc2_ in param1.chapters)
         {
            _loc3_ = new §_-2D§();
            _loc3_.levelsPerPage = _loc2_.levelsPerPage;
            _loc3_.name = _loc2_.name;
            _loc3_.menuImage = _loc2_.menuImage;
            _loc3_.§_-Om§ = _loc2_.leftCorner;
            _loc3_.§_-qx§ = _loc2_.rightCorner;
            _loc3_.§_-i6§ = _loc2_.pageColors;
            _loc3_.pageIndexes = _loc2_.pageIndexes;
            _loc3_.levelButtons = _loc2_.levelButtons;
            if(_loc2_.cutscenes)
            {
               for(_loc4_ in _loc2_.cutscenes)
               {
                  _loc3_.§_-v-§(_loc4_,_loc2_.cutscenes[_loc4_]);
               }
            }
            §_-tQ§.push(_loc3_);
         }
      }
      
      public static function §_-GV§() : void
      {
      }
      
      public static function §_-Ji§(param1:String) : §_-2D§
      {
         var _loc2_:§_-2D§ = null;
         for each(_loc2_ in §_-tQ§)
         {
            if(_loc2_.§_-CY§(param1))
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §_-N6§(param1:int) : §_-2D§
      {
         return §_-tQ§[param1];
      }
      
      public static function §_-U3§() : int
      {
         return §_-tQ§.length;
      }
      
      public static function §_-6O§(param1:String) : §_-Wl§
      {
         if(!§_-c8§[param1])
         {
            throw new Error("Error! Level \'" + param1 + "\' does not exist.");
         }
         return §_-c8§[param1];
      }
      
      public static function §_-Yx§(param1:String, param2:§_-Wl§) : void
      {
         §_-c8§[param1] = param2;
      }
      
      public static function §_-ww§(param1:String, param2:int) : int
      {
         var _loc3_:§_-Wl§ = §_-A5§.§_-6O§(param1);
         if(param2 <= 0)
         {
            return 0;
         }
         if(param2 < _loc3_.§_-JZ§)
         {
            return 1;
         }
         if(param2 < _loc3_.§_-5l§)
         {
            return 2;
         }
         return 3;
      }
      
      public static function §_-51§(param1:String) : void
      {
         if(param1 != §_-KH§)
         {
            § try§ = §_-KH§;
            §_-KH§ = param1;
         }
      }
      
      public static function §_-n1§() : String
      {
         return §_-KH§.substring(5);
      }
      
      public static function §_-bX§() : §_-2D§
      {
         return §_-tQ§[§_-fd§];
      }
      
      public static function §_-S1§() : Boolean
      {
         return true;
      }
      
      public static function §_-kh§() : Boolean
      {
         var _loc1_:String = §_-Jo§();
         var _loc2_:String = §_-bX§().§_-EI§(§_-KH§ + "-OUTRO");
         if(!_loc2_)
         {
            return false;
         }
         var _loc3_:§_-eF§ = §_-iB§.§_-EI§(_loc2_);
         if(_loc1_ != null)
         {
            if(_loc1_.charAt(0) != §_-KH§.charAt(0))
            {
               return true;
            }
            return false;
         }
         _loc3_.§_-GY§ = §_-eF§.§_-Hx§;
         return true;
      }
      
      public static function §_-Jo§() : String
      {
         return §_-bX§().§_-Jo§(§_-KH§);
      }
   }
}
