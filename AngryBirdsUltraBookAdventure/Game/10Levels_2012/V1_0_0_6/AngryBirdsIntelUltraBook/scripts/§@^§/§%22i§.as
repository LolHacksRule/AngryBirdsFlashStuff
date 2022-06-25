package §@^§
{
   public class §"i§
   {
      
      private static var §?!&§:Array;
       
      
      public function §"i§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            super();
         }
      }
      
      public static function get §'H§() : Array
      {
         return §?!&§;
      }
      
      public static function §0!4§(param1:XMLList) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:XML = null;
         if(_loc5_ || §"i§)
         {
            §?!&§ = new Array();
         }
         var _loc3_:int = 0;
         for each(_loc2_ in param1.Background)
         {
            if(!(_loc6_ && _loc3_))
            {
               §0!h§(_loc2_.@id,_loc2_.Layers,_loc2_.@sky,_loc2_.@ground,_loc2_.@sound,_loc2_.@texture,_loc2_.@textureStrokeColor,_loc2_.@icon,_loc2_.@cost,_loc2_.@objectId,_loc2_.@clearGround);
            }
         }
      }
      
      public static function §0!h§(param1:String, param2:XMLList, param3:Number, param4:Number, param5:String, param6:String, param7:Number, param8:String, param9:Number, param10:String, param11:Number = 0) : void
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         if(_loc12_)
         {
            §?!&§[§?!&§.length] = new §#<§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
         }
      }
      
      public static function §<!F§(param1:String) : §#<§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = 0;
         loop0:
         while(true)
         {
            if(_loc2_ < §?!&§.length)
            {
               §§push(§?!&§);
               if(!_loc3_)
               {
                  §§push(_loc2_);
                  if(_loc4_)
                  {
                     if((§§pop()[§§pop()] as §#<§).mName.toLowerCase() != param1.toLowerCase())
                     {
                        §§goto(addr51);
                     }
                     §§goto(addr74);
                  }
                  §§goto(addr76);
               }
               break;
            }
            if(!_loc3_)
            {
               return null;
            }
            loop2:
            while(true)
            {
               if(_loc4_)
               {
                  addr55:
                  if(!_loc4_)
                  {
                     §§push(§?!&§);
                     break loop0;
                  }
                  addr74:
                  continue loop0;
               }
               addr51:
               while(true)
               {
                  _loc2_++;
                  continue loop2;
               }
               §§goto(addr55);
            }
            §§goto(addr51);
         }
         addr76:
         _loc2_;
         return §§pop()[§§pop()] as §#<§;
      }
      
      public static function §3!7§() : String
      {
         var _loc1_:int = Math.random() * §?!&§.length;
         return (§?!&§[_loc1_] as §#<§).mName;
      }
   }
}
