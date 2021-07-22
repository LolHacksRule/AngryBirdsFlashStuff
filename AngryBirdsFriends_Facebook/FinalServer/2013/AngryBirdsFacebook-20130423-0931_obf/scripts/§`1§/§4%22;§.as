package §`1§
{
   public class §4";§
   {
      
      private static var §7"6§:Array;
       
      
      public function §4";§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
      }
      
      public static function get §["'§() : Array
      {
         return §7"6§;
      }
      
      public static function §=!T§(param1:XMLList) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:XML = null;
         if(!_loc6_)
         {
            §7"6§ = new Array();
         }
         for each(_loc2_ in param1.Background)
         {
            if(!_loc6_)
            {
               § E§(_loc2_.@id,_loc2_.Layers,_loc2_.@sky,_loc2_.@ground,_loc2_.@sound,_loc2_.@texture,_loc2_.@textureStrokeColor,_loc2_.@icon,_loc2_.@cost,_loc2_.@objectId,_loc2_.@clearGround);
            }
         }
      }
      
      public static function § E§(param1:String, param2:XMLList, param3:Number, param4:Number, param5:String, param6:String, param7:Number, param8:String, param9:Number, param10:String, param11:Number = 0) : void
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         if(_loc13_ || param2)
         {
            §7"6§[§7"6§.length] = new §0!"§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
         }
      }
      
      public static function §>"O§(param1:String) : §0!"§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ < §7"6§.length)
            {
               §§push(§7"6§);
               if(_loc3_)
               {
                  addr91:
                  break;
               }
               §§push(_loc2_);
               if(_loc3_)
               {
                  return §§pop()[§§pop()] as §0!"§;
               }
               if((§§pop()[§§pop()] as §0!"§).mName.toLowerCase() == param1.toLowerCase())
               {
                  if(!(_loc3_ && _loc3_))
                  {
                     §§push(§7"6§);
                     break;
                  }
                  §§goto(addr95);
               }
               addr53:
               _loc2_++;
               continue;
            }
            if(!(_loc4_ || _loc2_))
            {
               continue;
            }
            if(!(_loc3_ && param1))
            {
               return null;
            }
            addr95:
            §§goto(addr53);
         }
         §§goto(addr91);
         §§push(_loc2_);
      }
      
      public static function §9!j§() : String
      {
         var _loc1_:int = Math.random() * §7"6§.length;
         return (§7"6§[_loc1_] as §0!"§).mName;
      }
   }
}
