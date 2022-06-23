package §5!%§
{
   public class §%p§
   {
      
      private static var §<u§:Array;
       
      
      public function §%p§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            super();
         }
      }
      
      public static function get §2w§() : Array
      {
         return §<u§;
      }
      
      public static function § use§(param1:XMLList) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:XML = null;
         if(!_loc5_)
         {
            §<u§ = new Array();
         }
         for each(_loc2_ in param1.Background)
         {
            if(!(_loc5_ && _loc2_))
            {
               §#6§(_loc2_.@id,_loc2_.Layers,_loc2_.@sky,_loc2_.@ground,_loc2_.@sound,_loc2_.@texture,_loc2_.@textureStrokeColor,_loc2_.@icon,_loc2_.@cost,_loc2_.@objectId,_loc2_.@clearGround);
            }
         }
      }
      
      public static function §#6§(param1:String, param2:XMLList, param3:Number, param4:Number, param5:String, param6:String, param7:Number, param8:String, param9:Number, param10:String, param11:Number = 0) : void
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         if(!_loc13_)
         {
            §<u§[§<u§.length] = new §`Z§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
         }
      }
      
      public static function §9F§(param1:String) : §`Z§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ < §<u§.length)
            {
               §§push(§<u§);
               if(_loc3_ || param1)
               {
                  §§push(_loc2_);
                  if(!_loc4_)
                  {
                     if((§§pop()[§§pop()] as §`Z§).mName.toLowerCase() == param1.toLowerCase())
                     {
                        if(!(_loc4_ && _loc2_))
                        {
                           §§push(§<u§);
                           break;
                        }
                     }
                     _loc2_++;
                     if(!_loc3_)
                     {
                        §§goto(addr81);
                     }
                     continue;
                  }
                  §§goto(addr68);
               }
               break;
            }
            addr81:
            return null;
         }
         addr68:
         _loc2_;
         return §§pop()[§§pop()] as §`Z§;
      }
      
      public static function §>J§() : String
      {
         var _loc1_:int = Math.random() * §<u§.length;
         return (§<u§[_loc1_] as §`Z§).mName;
      }
   }
}
