package §5!G§
{
   public class §>X§
   {
      
      private static var §6!+§:Array;
       
      
      public function §>X§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
      }
      
      public static function get §&Z§() : Array
      {
         return §6!+§;
      }
      
      public static function §=M§(param1:XMLList) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:XML = null;
         if(_loc6_ || §>X§)
         {
            §6!+§ = new Array();
         }
         for each(_loc2_ in param1.Background)
         {
            if(_loc6_ || param1)
            {
               §^[§(_loc2_.@id,_loc2_.Layers,_loc2_.@sky,_loc2_.@ground,_loc2_.@sound,_loc2_.@texture,_loc2_.@textureStrokeColor,_loc2_.@icon,_loc2_.@cost,_loc2_.@objectId,_loc2_.@clearGround);
            }
         }
      }
      
      public static function §^[§(param1:String, param2:XMLList, param3:Number, param4:Number, param5:String, param6:String, param7:Number, param8:String, param9:Number, param10:String, param11:Number = 0) : void
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         if(!(_loc13_ && param2))
         {
            §6!+§[§6!+§.length] = new §2! §(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
         }
      }
      
      public static function §2H§(param1:String) : §2! §
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= §6!+§.length)
            {
               if(_loc4_)
               {
                  if(_loc4_)
                  {
                     return null;
                  }
                  addr43:
                  _loc2_++;
               }
               if(_loc3_)
               {
                  addr84:
                  §§push(§6!+§);
               }
               continue;
               break;
            }
            §§push(§6!+§);
            if(_loc4_ || param1)
            {
               §§push(_loc2_);
               if(_loc4_ || §>X§)
               {
                  if((§§pop()[§§pop()] as §2! §).mName.toLowerCase() != param1.toLowerCase())
                  {
                     §§goto(addr43);
                  }
                  §§goto(addr84);
               }
               §§goto(addr86);
            }
            break;
            §§goto(addr43);
         }
         addr86:
         _loc2_;
         return §§pop()[§§pop()] as §2! §;
      }
      
      public static function §%@§() : String
      {
         var _loc1_:int = Math.random() * §6!+§.length;
         return (§6!+§[_loc1_] as §2! §).mName;
      }
   }
}
