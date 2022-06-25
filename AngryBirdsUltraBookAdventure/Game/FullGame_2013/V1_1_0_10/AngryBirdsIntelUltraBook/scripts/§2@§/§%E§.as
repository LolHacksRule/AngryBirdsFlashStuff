package §2@§
{
   public class §%E§
   {
      
      private static var §2L§:Array;
       
      
      public function §%E§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
      }
      
      public static function get §>!#§() : Array
      {
         return §2L§;
      }
      
      public static function §9I§(param1:XMLList) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:XML = null;
         if(_loc5_ || §%E§)
         {
            §2L§ = new Array();
         }
         for each(_loc2_ in param1.Background)
         {
            if(_loc5_)
            {
               §^!+§(_loc2_.@id,_loc2_.Layers,_loc2_.@sky,_loc2_.@ground,_loc2_.@sound,_loc2_.@texture,_loc2_.@textureStrokeColor,_loc2_.@icon,_loc2_.@cost,_loc2_.@objectId,_loc2_.@clearGround);
            }
         }
      }
      
      public static function §^!+§(param1:String, param2:XMLList, param3:Number, param4:Number, param5:String, param6:String, param7:Number, param8:String, param9:Number, param10:String, param11:Number = 0) : void
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         if(!_loc13_)
         {
            §2L§[§2L§.length] = new §+!Y§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
         }
      }
      
      public static function §8!G§(param1:String) : §+!Y§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= §2L§.length)
            {
               if(!_loc4_)
               {
                  if(_loc3_)
                  {
                     return null;
                  }
                  addr32:
                  _loc2_++;
               }
               if(_loc4_ && param1)
               {
                  addr88:
                  §§push(§2L§);
               }
               continue;
               break;
            }
            §§push(§2L§);
            if(_loc3_ || _loc3_)
            {
               §§push(_loc2_);
               if(!(_loc4_ && §%E§))
               {
                  if((§§pop()[§§pop()] as §+!Y§).mName.toLowerCase() != param1.toLowerCase())
                  {
                     §§goto(addr32);
                  }
                  §§goto(addr88);
               }
               §§goto(addr90);
            }
            break;
            §§goto(addr32);
         }
         addr90:
         _loc2_;
         return §§pop()[§§pop()] as §+!Y§;
      }
      
      public static function §`;§() : String
      {
         var _loc1_:int = Math.random() * §2L§.length;
         return (§2L§[_loc1_] as §+!Y§).mName;
      }
   }
}
