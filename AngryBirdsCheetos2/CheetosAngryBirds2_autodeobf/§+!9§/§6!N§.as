package §+!9§
{
   public class §6!N§
   {
      
      private static var §,!&§:Array;
       
      
      public function §6!N§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            super();
         }
      }
      
      public static function get §8-§() : Array
      {
         return §,!&§;
      }
      
      public static function §+1§(param1:XMLList) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:XML = null;
         if(_loc6_ || param1)
         {
            §,!&§ = new Array();
         }
         var _loc3_:int = 0;
         for each(_loc2_ in param1.Background)
         {
            if(_loc6_ || _loc3_)
            {
               §<w§(_loc2_.@id,_loc2_.Layers,_loc2_.@sky,_loc2_.@ground,_loc2_.@sound,_loc2_.@texture,_loc2_.@textureStrokeColor,_loc2_.@icon,_loc2_.@cost,_loc2_.@objectId,_loc2_.@clearGround);
            }
         }
      }
      
      public static function §<w§(param1:String, param2:XMLList, param3:Number, param4:Number, param5:String, param6:String, param7:Number, param8:String, param9:Number, param10:String, param11:Number = 0) : void
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         if(!_loc13_)
         {
            §,!&§[§,!&§.length] = new §1!3§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
         }
      }
      
      public static function §'!U§(param1:String) : §1!3§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ < §,!&§.length)
            {
               §§push(§,!&§);
               if(_loc3_)
               {
                  §§push(_loc2_);
                  if(_loc3_)
                  {
                     if((§§pop()[§§pop()] as §1!3§).mName.toLowerCase() != param1.toLowerCase())
                     {
                        addr54:
                        _loc2_++;
                        continue;
                     }
                     §§goto(addr83);
                  }
                  §§goto(addr85);
               }
               break;
            }
            if(!_loc3_)
            {
               continue;
            }
            if(_loc3_ || §6!N§)
            {
               if(!(_loc4_ && _loc3_))
               {
                  return null;
               }
               addr83:
               §§push(§,!&§);
               break;
            }
            §§goto(addr54);
         }
         addr85:
         _loc2_;
         return §§pop()[§§pop()] as §1!3§;
      }
      
      public static function §[t§() : String
      {
         var _loc1_:int = Math.random() * §,!&§.length;
         return (§,!&§[_loc1_] as §1!3§).mName;
      }
   }
}
