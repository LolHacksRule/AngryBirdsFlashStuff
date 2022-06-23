package §8!>§
{
   public class § !4§
   {
      
      private static var §;!@§:Array;
       
      
      public function § !4§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
         }
      }
      
      public static function get §2o§() : Array
      {
         return §;!@§;
      }
      
      public static function §2!0§(param1:XMLList) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:XML = null;
         if(_loc6_)
         {
            §;!@§ = new Array();
         }
         for each(_loc2_ in param1.Background)
         {
            if(_loc6_)
            {
               §%6§(_loc2_.@id,_loc2_.Layers,_loc2_.@sky,_loc2_.@ground,_loc2_.@sound,_loc2_.@texture,_loc2_.@textureStrokeColor,_loc2_.@icon,_loc2_.@cost,_loc2_.@objectId,_loc2_.@clearGround);
            }
         }
      }
      
      public static function §%6§(param1:String, param2:XMLList, param3:Number, param4:Number, param5:String, param6:String, param7:Number, param8:String, param9:Number, param10:String, param11:Number = 0) : void
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         if(_loc13_)
         {
            §;!@§[§;!@§.length] = new §@;§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
         }
      }
      
      public static function §;h§(param1:String) : §@;§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = 0;
         for(; _loc2_ < §;!@§.length; _loc2_++,if(!(_loc4_ || _loc3_))
         {
            break;
         })
         {
            §§push(§;!@§);
            if(!_loc3_)
            {
               §§push(_loc2_);
               if(_loc4_ || _loc2_)
               {
                  if((§§pop()[§§pop()] as §@;§).mName.toLowerCase() != param1.toLowerCase())
                  {
                     continue;
                  }
                  if(!(_loc4_ || § !4§))
                  {
                     break;
                  }
                  addr68:
                  §§push(§;!@§);
                  §§push(_loc2_);
               }
               return §§pop()[§§pop()] as §@;§;
            }
            §§goto(addr68);
         }
         return null;
      }
      
      public static function §!>§() : String
      {
         var _loc1_:int = Math.random() * §;!@§.length;
         return (§;!@§[_loc1_] as §@;§).mName;
      }
   }
}
