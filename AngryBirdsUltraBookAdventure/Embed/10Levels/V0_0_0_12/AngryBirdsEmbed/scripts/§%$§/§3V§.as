package §%$§
{
   public class §3V§
   {
      
      private static var §'!#§:Array;
       
      
      public function §3V§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            super();
         }
      }
      
      public static function get §3d§() : Array
      {
         return §'!#§;
      }
      
      public static function §2=§(param1:XMLList) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:XML = null;
         if(!_loc5_)
         {
            §'!#§ = new Array();
         }
         for each(_loc2_ in param1.Background)
         {
            if(!(_loc5_ && _loc2_))
            {
               §+!F§(_loc2_.@id,_loc2_.Layers,_loc2_.@sky,_loc2_.@ground,_loc2_.@sound,_loc2_.@texture,_loc2_.@textureStrokeColor,_loc2_.@icon,_loc2_.@cost,_loc2_.@objectId,_loc2_.@clearGround);
            }
         }
      }
      
      public static function §+!F§(param1:String, param2:XMLList, param3:Number, param4:Number, param5:String, param6:String, param7:Number, param8:String, param9:Number, param10:String, param11:Number = 0) : void
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         if(!_loc13_)
         {
            §'!#§[§'!#§.length] = new §<]§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
         }
      }
      
      public static function §9S§(param1:String) : §<]§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ < §'!#§.length)
            {
               §§push(§'!#§);
               if(_loc3_ || param1)
               {
                  §§push(_loc2_);
                  if(!_loc4_)
                  {
                     if((§§pop()[§§pop()] as §<]§).mName.toLowerCase() == param1.toLowerCase())
                     {
                        if(!(_loc4_ && _loc2_))
                        {
                           §§push(§'!#§);
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
         return §§pop()[§§pop()] as §<]§;
      }
      
      public static function §=!&§() : String
      {
         var _loc1_:int = Math.random() * §'!#§.length;
         return (§'!#§[_loc1_] as §<]§).mName;
      }
   }
}
