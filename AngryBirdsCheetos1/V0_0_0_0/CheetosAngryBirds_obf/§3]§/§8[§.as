package §3]§
{
   public class §8[§
   {
      
      private static var §<"§:Array;
       
      
      public function §8[§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            super();
         }
      }
      
      public static function get §&!O§() : Array
      {
         return §<"§;
      }
      
      public static function §<F§(param1:XMLList) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:XML = null;
         if(_loc6_ || param1)
         {
            §<"§ = new Array();
         }
         for each(_loc2_ in param1.Background)
         {
            if(!(_loc5_ && §8[§))
            {
               §4!9§(_loc2_.@id,_loc2_.Layers,_loc2_.@sky,_loc2_.@ground,_loc2_.@sound,_loc2_.@texture,_loc2_.@textureStrokeColor,_loc2_.@icon,_loc2_.@cost,_loc2_.@objectId,_loc2_.@clearGround);
            }
         }
      }
      
      public static function §4!9§(param1:String, param2:XMLList, param3:Number, param4:Number, param5:String, param6:String, param7:Number, param8:String, param9:Number, param10:String, param11:Number = 0) : void
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         if(!(_loc13_ && param1))
         {
            §<"§[§<"§.length] = new §"§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
         }
      }
      
      public static function §8V§(param1:String) : §"§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ < §<"§.length)
            {
               §§push(§<"§);
               if(_loc3_)
               {
                  addr91:
                  break;
               }
               §§push(_loc2_);
               if(!(_loc4_ || _loc3_))
               {
                  return §§pop()[§§pop()] as §"§;
               }
               if((§§pop()[§§pop()] as §"§).mName.toLowerCase() == param1.toLowerCase())
               {
                  if(!(_loc3_ && param1))
                  {
                     §§push(§<"§);
                     break;
                  }
                  §§goto(addr95);
               }
               addr48:
               _loc2_++;
               continue;
            }
            if(_loc3_)
            {
               continue;
            }
            if(_loc4_ || §8[§)
            {
               return null;
            }
            addr95:
            §§goto(addr48);
         }
         §§goto(addr91);
         §§push(_loc2_);
      }
      
      public static function §75§() : String
      {
         var _loc1_:int = Math.random() * §<"§.length;
         return (§<"§[_loc1_] as §"§).mName;
      }
   }
}
