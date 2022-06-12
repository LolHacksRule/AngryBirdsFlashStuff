package §<u§
{
   public class §8,§
   {
      
      private static var §",§:Array;
       
      
      public function §8,§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
      }
      
      public static function get §@b§() : Array
      {
         return §",§;
      }
      
      public static function §4n§(param1:XMLList) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:XML = null;
         if(_loc6_)
         {
            §",§ = new Array();
         }
         for each(_loc2_ in param1.Background)
         {
            if(!(_loc5_ && param1))
            {
               §9^§(_loc2_.@id,_loc2_.Layers,_loc2_.@sky,_loc2_.@ground,_loc2_.@sound,_loc2_.@texture,_loc2_.@textureStrokeColor,_loc2_.@icon,_loc2_.@cost,_loc2_.@objectId,_loc2_.@clearGround);
            }
         }
      }
      
      public static function §9^§(param1:String, param2:XMLList, param3:Number, param4:Number, param5:String, param6:String, param7:Number, param8:String, param9:Number, param10:String, param11:Number = 0) : void
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         if(_loc13_ || §8,§)
         {
            §",§[§",§.length] = new §6U§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
         }
      }
      
      public static function §0>§(param1:String) : §6U§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ < §",§.length)
            {
               §§push(§",§);
               if(!_loc4_)
               {
                  §§push(_loc2_);
                  if(!(_loc4_ && _loc3_))
                  {
                     if((§§pop()[§§pop()] as §6U§).mName.toLowerCase() == param1.toLowerCase())
                     {
                        if(_loc3_ || §8,§)
                        {
                           §§push(§",§);
                           break;
                        }
                        §§goto(addr94);
                     }
                     while(true)
                     {
                        _loc2_++;
                        §§goto(addr47);
                     }
                     addr45:
                  }
                  §§goto(addr90);
               }
               break;
            }
            if(_loc3_ || param1)
            {
               return null;
            }
            while(_loc4_)
            {
               while(true)
               {
               }
            }
            continue;
            addr47:
            §§goto(addr45);
         }
         addr90:
         _loc2_;
         return §§pop()[§§pop()] as §6U§;
      }
      
      public static function §0w§() : String
      {
         var _loc1_:int = Math.random() * §",§.length;
         return (§",§[_loc1_] as §6U§).mName;
      }
   }
}
