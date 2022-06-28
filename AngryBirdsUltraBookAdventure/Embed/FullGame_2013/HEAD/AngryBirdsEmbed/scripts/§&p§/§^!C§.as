package §&p§
{
   import §+!B§.§8n§;
   import §3a§.§7!+§;
   import §9K§.§5!H§;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   
   public class §^!C§
   {
      
      private static var §>e§:Array = [];
      
      private static var §?!?§:§8n§ = new §8n§();
      
      private static var §,J§:Dictionary = new Dictionary();
       
      
      public function §^!C§()
      {
         super();
      }
      
      public static function §throw§(param1:String, param2:ByteArray) : void
      {
         §?!?§[param1] = param2;
      }
      
      public static function §;_§(param1:String) : ByteArray
      {
         return §?!?§[param1];
      }
      
      public static function §[!&§(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc3_:§-r§ = null;
         for(_loc2_ in param1)
         {
            if(!§,J§[_loc2_])
            {
               _loc3_ = new §-r§(param1[_loc2_],_loc2_);
               §7!+§.log("Initializing cutScene: " + _loc2_);
               §,J§[_loc2_] = _loc3_;
               if(§>e§.indexOf(_loc2_) >= 0)
               {
                  _loc3_.§"Z§ = §-r§.§>A§;
               }
            }
         }
      }
      
      public static function §`T§(param1:String, param2:§5!H§) : §-r§
      {
         var _loc3_:§-r§ = §,J§[param1];
         if(_loc3_)
         {
            _loc3_ = _loc3_.clone(param2);
         }
         return _loc3_;
      }
      
      public static function §1w§(param1:String) : §-r§
      {
         var _loc2_:§-r§ = §,J§[param1];
         if(_loc2_ && §>e§.indexOf(param1))
         {
            _loc2_.§"Z§ = §-r§.§>A§;
         }
         return _loc2_;
      }
      
      public static function §3b§(param1:String) : void
      {
         if(§>e§.indexOf(param1) < 0)
         {
            §>e§.push(param1);
         }
      }
   }
}
