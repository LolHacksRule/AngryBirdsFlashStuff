package §]Z§
{
   public class §7!n§
   {
      
      private static var §!Q§:Array;
       
      
      public function §7!n§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            super();
         }
      }
      
      public static function get §=!k§() : Array
      {
         return §!Q§;
      }
      
      public static function §0!Y§(param1:XMLList) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:XML = null;
         if(!(_loc5_ && param1))
         {
            §!Q§ = new Array();
         }
         for each(_loc2_ in param1.Background)
         {
            if(!_loc5_)
            {
               § !H§(_loc2_.@id,_loc2_.Layers,_loc2_.@sky,_loc2_.@ground,_loc2_.@sound,_loc2_.@texture,_loc2_.@textureStrokeColor,_loc2_.@icon,_loc2_.@cost,_loc2_.@objectId,_loc2_.@clearGround);
            }
         }
      }
      
      public static function § !H§(param1:String, param2:XMLList, param3:Number, param4:Number, param5:String, param6:String, param7:Number, param8:String, param9:Number, param10:String, param11:Number = 0) : void
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         if(_loc13_)
         {
            §!Q§[§!Q§.length] = new §,d§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
         }
      }
      
      public static function §&!c§(param1:String) : §,d§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = 0;
         for(; _loc2_ < §!Q§.length; _loc2_++,if(_loc4_ && _loc3_)
         {
            break;
         })
         {
            §§push(§!Q§);
            if(_loc3_ || §7!n§)
            {
               §§push(_loc2_);
               if(!_loc4_)
               {
                  if((§§pop()[§§pop()] as §,d§).mName.toLowerCase() != param1.toLowerCase())
                  {
                     continue;
                  }
                  if(!(_loc3_ || _loc3_))
                  {
                     break;
                  }
                  addr67:
                  §§push(§!Q§);
                  §§push(_loc2_);
               }
               return §§pop()[§§pop()] as §,d§;
            }
            §§goto(addr67);
         }
         return null;
      }
      
      public static function §<S§() : String
      {
         var _loc1_:int = Math.random() * §!Q§.length;
         return (§!Q§[_loc1_] as §,d§).mName;
      }
   }
}
