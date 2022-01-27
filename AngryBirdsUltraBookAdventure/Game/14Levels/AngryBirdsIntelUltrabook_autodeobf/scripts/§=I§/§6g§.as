package §=I§
{
   import §1!B§.§<m§;
   import §<-§.§[!N§;
   import §=`§.§6!I§;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   
   public class §6g§
   {
      
      private static var §`E§:Array = [];
      
      private static var §3V§:§[!N§ = new §[!N§();
      
      private static var §>o§:Dictionary = new Dictionary();
       
      
      public function §6g§()
      {
         super();
      }
      
      public static function §7D§(param1:String, param2:ByteArray) : void
      {
         §3V§[param1] = param2;
      }
      
      public static function §;u§(param1:String) : ByteArray
      {
         return §3V§[param1];
      }
      
      public static function §!!_§(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc3_:§@x§ = null;
         for(_loc2_ in param1)
         {
            if(!§>o§[_loc2_])
            {
               _loc3_ = new §@x§(param1[_loc2_],_loc2_);
               §<m§.log("Initializing cutScene: " + _loc2_);
               §>o§[_loc2_] = _loc3_;
               if(§`E§.indexOf(_loc2_) >= 0)
               {
                  _loc3_.§+l§ = §@x§.§4!X§;
               }
            }
         }
      }
      
      public static function §#!u§(param1:String, param2:§6!I§) : §@x§
      {
         var _loc3_:§@x§ = §>o§[param1];
         if(_loc3_)
         {
            _loc3_ = _loc3_.clone(param2);
         }
         return _loc3_;
      }
      
      public static function §8!O§(param1:String) : §@x§
      {
         var _loc2_:§@x§ = §>o§[param1];
         if(_loc2_ && §`E§.indexOf(param1))
         {
            _loc2_.§+l§ = §@x§.§4!X§;
         }
         return _loc2_;
      }
      
      public static function §6!!§(param1:String) : void
      {
         if(§`E§.indexOf(param1) < 0)
         {
            §`E§.push(param1);
         }
      }
   }
}
