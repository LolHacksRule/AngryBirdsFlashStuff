package §_-2m§
{
   public class §_-lr§
   {
      
      public static var §_-W7§:Array;
       
      
      public function §_-lr§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            super();
         }
      }
      
      public static function §_-X3§(param1:XMLList) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:XML = null;
         if(!_loc5_)
         {
            §_-W7§ = new Array();
         }
         var _loc3_:int = 0;
         for each(_loc2_ in param1.Background)
         {
            if(_loc6_ || _loc3_)
            {
               §_-9F§(_loc2_.@id,_loc2_.Layers,_loc2_.@sky,_loc2_.@ground,_loc2_.@sound,_loc2_.@texture,_loc2_.@textureStrokeColor,_loc2_.@icon,_loc2_.@cost,_loc2_.@objectId);
            }
         }
      }
      
      public static function §_-9F§(param1:String, param2:XMLList, param3:Number, param4:Number, param5:String, param6:String, param7:Number, param8:String, param9:Number, param10:String) : void
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         if(_loc12_ || §_-lr§)
         {
            §_-W7§[§_-W7§.length] = new §_-mI§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
         }
      }
      
      public static function §_-1U§(param1:String) : §_-mI§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= §_-W7§.length)
            {
               §§goto(addr78);
            }
            §§push(§_-W7§);
            if(!(_loc4_ || _loc3_))
            {
               addr48:
               break;
            }
            §§push(_loc2_);
            if(_loc3_)
            {
               return §§pop()[§§pop()] as §_-mI§;
            }
            if((§§pop()[§§pop()] as §_-mI§).mName.toLowerCase() == param1.toLowerCase())
            {
               if(_loc4_)
               {
                  §§push(§_-W7§);
                  break;
               }
            }
            _loc2_++;
            if(!(_loc4_ || §_-lr§))
            {
               addr78:
               return null;
            }
            continue;
         }
         §§goto(addr48);
         §§push(_loc2_);
      }
      
      public static function §_-O8§() : String
      {
         var _loc1_:int = Math.random() * §_-W7§.length;
         return (§_-W7§[_loc1_] as §_-mI§).mName;
      }
   }
}
