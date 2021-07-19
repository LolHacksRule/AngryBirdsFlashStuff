package §+3§
{
   public class § 7§
   {
      
      private static var §'7§:Array;
       
      
      public function § 7§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
      }
      
      public static function get §3v§() : Array
      {
         return §'7§;
      }
      
      public static function §][§(param1:XMLList) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:XML = null;
         if(_loc5_)
         {
            §'7§ = new Array();
         }
         for each(_loc2_ in param1.Background)
         {
            if(_loc5_)
            {
               §?@§(_loc2_.@id,_loc2_.Layers,_loc2_.@sky,_loc2_.@ground,_loc2_.@sound,_loc2_.@texture,_loc2_.@textureStrokeColor,_loc2_.@icon,_loc2_.@cost,_loc2_.@objectId,_loc2_.@clearGround);
            }
         }
      }
      
      public static function §?@§(param1:String, param2:XMLList, param3:Number, param4:Number, param5:String, param6:String, param7:Number, param8:String, param9:Number, param10:String, param11:Number = 0) : void
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         if(_loc12_ || § 7§)
         {
            §'7§[§'7§.length] = new §`#§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
         }
      }
      
      public static function §[!>§(param1:String) : §`#§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ < §'7§.length)
            {
               §§push(§'7§);
               if(!_loc3_)
               {
                  §§push(_loc2_);
                  if(!(_loc3_ && _loc2_))
                  {
                     if((§§pop()[§§pop()] as §`#§).mName.toLowerCase() != param1.toLowerCase())
                     {
                        addr55:
                        _loc2_++;
                        continue;
                     }
                     §§goto(addr89);
                  }
                  §§goto(addr91);
               }
               break;
            }
            if(_loc3_ && _loc2_)
            {
               continue;
            }
            if(!_loc3_)
            {
               if(!(_loc3_ && _loc2_))
               {
                  return null;
               }
               addr89:
               §§push(§'7§);
               break;
            }
            §§goto(addr55);
         }
         addr91:
         _loc2_;
         return §§pop()[§§pop()] as §`#§;
      }
      
      public static function §"<§() : String
      {
         var _loc1_:int = Math.random() * §'7§.length;
         return (§'7§[_loc1_] as §`#§).mName;
      }
   }
}
