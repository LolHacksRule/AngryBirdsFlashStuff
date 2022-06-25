package §,!Q§
{
   public class § !P§
   {
      
      private static var §6!,§:Array;
       
      
      public function § !P§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
      }
      
      public static function get §-!4§() : Array
      {
         return §6!,§;
      }
      
      public static function §<!v§(param1:XMLList) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:XML = null;
         if(!_loc5_)
         {
            §6!,§ = new Array();
         }
         for each(_loc2_ in param1.Background)
         {
            if(_loc6_ || param1)
            {
               §5!%§(_loc2_.@id,_loc2_.Layers,_loc2_.@sky,_loc2_.@ground,_loc2_.@sound,_loc2_.@texture,_loc2_.@textureStrokeColor,_loc2_.@icon,_loc2_.@cost,_loc2_.@objectId,_loc2_.@clearGround);
            }
         }
      }
      
      public static function §5!%§(param1:String, param2:XMLList, param3:Number, param4:Number, param5:String, param6:String, param7:Number, param8:String, param9:Number, param10:String, param11:Number = 0) : void
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         if(_loc12_)
         {
            §6!,§[§6!,§.length] = new §0@§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
         }
      }
      
      public static function §^!'§(param1:String) : §0@§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= §6!,§.length)
            {
               if(_loc3_ || § !P§)
               {
                  if(_loc3_ || _loc2_)
                  {
                     return null;
                  }
                  addr52:
                  _loc2_++;
               }
               if(_loc4_)
               {
                  addr88:
                  §§push(§6!,§);
               }
               continue;
               break;
            }
            §§push(§6!,§);
            if(_loc3_)
            {
               §§push(_loc2_);
               if(!(_loc4_ && _loc2_))
               {
                  if((§§pop()[§§pop()] as §0@§).mName.toLowerCase() != param1.toLowerCase())
                  {
                     §§goto(addr52);
                  }
                  §§goto(addr88);
               }
               §§goto(addr90);
            }
            break;
            §§goto(addr52);
         }
         addr90:
         _loc2_;
         return §§pop()[§§pop()] as §0@§;
      }
      
      public static function §@9§() : String
      {
         var _loc1_:int = Math.random() * §6!,§.length;
         return (§6!,§[_loc1_] as §0@§).mName;
      }
   }
}
