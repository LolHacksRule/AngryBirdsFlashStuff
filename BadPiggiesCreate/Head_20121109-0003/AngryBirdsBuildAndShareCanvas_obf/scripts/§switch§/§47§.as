package §switch§
{
   public class §47§
   {
      
      private static var §65§:Array;
       
      
      public function §47§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            super();
         }
      }
      
      public static function get §;!%§() : Array
      {
         return §65§;
      }
      
      public static function §!A§(param1:XMLList) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:XML = null;
         if(_loc5_)
         {
            §65§ = new Array();
         }
         for each(_loc2_ in param1.Background)
         {
            if(!(_loc6_ && param1))
            {
               §@"3§(_loc2_.@id,_loc2_.Layers,_loc2_.@sky,_loc2_.@ground,_loc2_.@sound,_loc2_.@texture,_loc2_.@textureStrokeColor,_loc2_.@icon,_loc2_.@cost,_loc2_.@objectId,_loc2_.@clearGround);
            }
         }
      }
      
      public static function §@"3§(param1:String, param2:XMLList, param3:Number, param4:Number, param5:String, param6:String, param7:Number, param8:String, param9:Number, param10:String, param11:Number = 0) : void
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         if(!_loc12_)
         {
            §65§[§65§.length] = new §4G§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
         }
      }
      
      public static function §," §(param1:String) : §4G§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ < §65§.length)
            {
               §§push(§65§);
               if(!_loc4_)
               {
                  §§push(_loc2_);
                  if(_loc3_ || _loc3_)
                  {
                     if((§§pop()[§§pop()] as §4G§).mName.toLowerCase() != param1.toLowerCase())
                     {
                        addr54:
                        _loc2_++;
                        continue;
                     }
                     §§goto(addr88);
                  }
                  §§goto(addr90);
               }
               break;
            }
            if(_loc4_)
            {
               continue;
            }
            if(!(_loc4_ && _loc2_))
            {
               if(!(_loc4_ && _loc3_))
               {
                  return null;
               }
               addr88:
               §§push(§65§);
               break;
            }
            §§goto(addr54);
         }
         addr90:
         _loc2_;
         return §§pop()[§§pop()] as §4G§;
      }
      
      public static function §#"9§() : String
      {
         var _loc1_:int = Math.random() * §65§.length;
         return (§65§[_loc1_] as §4G§).mName;
      }
   }
}
