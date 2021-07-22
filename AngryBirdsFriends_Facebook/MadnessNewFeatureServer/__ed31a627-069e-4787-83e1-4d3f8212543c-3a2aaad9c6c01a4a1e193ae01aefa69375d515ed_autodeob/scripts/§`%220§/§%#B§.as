package §`"0§
{
   import §&!_§.§[!j§;
   import §'G§.§3$§;
   import §1#v§.§;!Y§;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   
   public class §%#B§
   {
      
      private static var §4,§:Array = [];
      
      private static var §;#2§:§[!j§ = new §[!j§();
      
      private static var §6#E§:Dictionary = new Dictionary();
       
      
      public function §%#B§()
      {
         super();
      }
      
      public static function §@#4§(param1:String, param2:ByteArray) : void
      {
         §;#2§[param1] = param2;
      }
      
      public static function §[$-§(param1:String) : ByteArray
      {
         return §;#2§[param1];
      }
      
      public static function §>!S§(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc3_:§'! § = null;
         for(_loc2_ in param1)
         {
            if(!§6#E§[_loc2_])
            {
               _loc3_ = new §'! §(param1[_loc2_],_loc2_);
               §;!Y§.log("Initializing cutScene: " + _loc2_);
               §6#E§[_loc2_] = _loc3_;
               if(§4,§.indexOf(_loc2_) >= 0)
               {
                  _loc3_.cutSceneType = §'! §.§>#<§;
               }
            }
         }
      }
      
      public static function §#h§(param1:String, param2:§3$§) : §'! §
      {
         var _loc3_:§'! § = §6#E§[param1];
         if(_loc3_)
         {
            _loc3_ = _loc3_.clone(param2);
         }
         return _loc3_;
      }
      
      public static function getCutScene(param1:String) : §'! §
      {
         var _loc2_:§'! § = §6#E§[param1];
         if(_loc2_ && §4,§.indexOf(param1))
         {
            _loc2_.cutSceneType = §'! §.§>#<§;
         }
         return _loc2_;
      }
      
      public static function §[!w§(param1:String) : Boolean
      {
         return §4,§.indexOf(param1) >= 0;
      }
      
      public static function §]#v§(param1:String) : void
      {
         if(§4,§.indexOf(param1) < 0)
         {
            §4,§.push(param1);
         }
      }
   }
}
