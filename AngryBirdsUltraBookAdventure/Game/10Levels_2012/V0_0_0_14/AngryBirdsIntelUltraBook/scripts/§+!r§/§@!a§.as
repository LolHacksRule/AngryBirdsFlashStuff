package §+!r§
{
   public class §@!a§
   {
      
      private static var §#!r§:Array;
       
      
      public function §@!a§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
      }
      
      public static function get §[9§() : Array
      {
         return §#!r§;
      }
      
      public static function §+T§(param1:XMLList) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:XML = null;
         if(!_loc5_)
         {
            §#!r§ = new Array();
         }
         for each(_loc2_ in param1.Background)
         {
            if(_loc6_ || param1)
            {
               §;!m§(_loc2_.@id,_loc2_.Layers,_loc2_.@sky,_loc2_.@ground,_loc2_.@sound,_loc2_.@texture,_loc2_.@textureStrokeColor,_loc2_.@icon,_loc2_.@cost,_loc2_.@objectId,_loc2_.@clearGround);
            }
         }
      }
      
      public static function §;!m§(param1:String, param2:XMLList, param3:Number, param4:Number, param5:String, param6:String, param7:Number, param8:String, param9:Number, param10:String, param11:Number = 0) : void
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         if(_loc12_)
         {
            §#!r§[§#!r§.length] = new §%l§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
         }
      }
      
      public static function §^!o§(param1:String) : §%l§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= §#!r§.length)
            {
               if(_loc3_ || §@!a§)
               {
                  if(_loc3_ || _loc2_)
                  {
                     return null;
                  }
                  addr52:
                  _loc2_++;
               }
               if(_loc4_)
               {
                  addr88:
                  §§push(§#!r§);
               }
               continue;
               break;
            }
            §§push(§#!r§);
            if(_loc3_)
            {
               §§push(_loc2_);
               if(!(_loc4_ && _loc2_))
               {
                  if((§§pop()[§§pop()] as §%l§).mName.toLowerCase() != param1.toLowerCase())
                  {
                     §§goto(addr52);
                  }
                  §§goto(addr88);
               }
               §§goto(addr90);
            }
            break;
            §§goto(addr52);
         }
         addr90:
         _loc2_;
         return §§pop()[§§pop()] as §%l§;
      }
      
      public static function §?v§() : String
      {
         var _loc1_:int = Math.random() * §#!r§.length;
         return (§#!r§[_loc1_] as §%l§).mName;
      }
   }
}
