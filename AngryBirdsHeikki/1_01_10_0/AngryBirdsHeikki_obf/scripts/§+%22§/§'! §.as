package §+"§
{
   public class §'! §
   {
      
      private static var §<,§:Array;
       
      
      public function §'! §()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
      }
      
      public static function get §=a§() : Array
      {
         return §<,§;
      }
      
      public static function §0!T§(param1:XMLList) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:XML = null;
         if(!(_loc5_ && param1))
         {
            §<,§ = new Array();
         }
         for each(_loc2_ in param1.Background)
         {
            if(!_loc5_)
            {
               §%!Q§(_loc2_.@id,_loc2_.Layers,_loc2_.@sky,_loc2_.@ground,_loc2_.@sound,_loc2_.@texture,_loc2_.@textureStrokeColor,_loc2_.@icon,_loc2_.@cost,_loc2_.@objectId,_loc2_.@clearGround);
            }
         }
      }
      
      public static function §%!Q§(param1:String, param2:XMLList, param3:Number, param4:Number, param5:String, param6:String, param7:Number, param8:String, param9:Number, param10:String, param11:Number = 0) : void
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         if(!_loc13_)
         {
            §<,§[§<,§.length] = new §>w§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
         }
      }
      
      public static function §#n§(param1:String) : §>w§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ < §<,§.length)
            {
               §§push(§<,§);
               if(!_loc3_)
               {
                  §§push(_loc2_);
                  if(_loc4_ || param1)
                  {
                     if((§§pop()[§§pop()] as §>w§).mName.toLowerCase() != param1.toLowerCase())
                     {
                        addr50:
                        _loc2_++;
                        continue;
                     }
                     §§goto(addr84);
                  }
                  §§goto(addr86);
               }
               break;
            }
            if(!_loc4_)
            {
               continue;
            }
            if(_loc4_ || §'! §)
            {
               if(!_loc3_)
               {
                  return null;
               }
               addr84:
               §§push(§<,§);
               break;
            }
            §§goto(addr50);
         }
         addr86:
         _loc2_;
         return §§pop()[§§pop()] as §>w§;
      }
      
      public static function §'!A§() : String
      {
         var _loc1_:int = Math.random() * §<,§.length;
         return (§<,§[_loc1_] as §>w§).mName;
      }
   }
}
