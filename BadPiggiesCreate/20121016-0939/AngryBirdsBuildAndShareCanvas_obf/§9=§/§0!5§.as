package §9=§
{
   public class §0!5§
   {
      
      private static var §+"§:Array;
       
      
      public function §0!5§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            super();
         }
      }
      
      public static function get §]`§() : Array
      {
         return §+"§;
      }
      
      public static function §4f§(param1:XMLList) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:XML = null;
         if(_loc5_ || _loc2_)
         {
            §+"§ = new Array();
         }
         for each(_loc2_ in param1.Background)
         {
            if(!(_loc6_ && param1))
            {
               §7H§(_loc2_.@id,_loc2_.Layers,_loc2_.@sky,_loc2_.@ground,_loc2_.@sound,_loc2_.@texture,_loc2_.@textureStrokeColor,_loc2_.@icon,_loc2_.@cost,_loc2_.@objectId,_loc2_.@clearGround);
            }
         }
      }
      
      public static function §7H§(param1:String, param2:XMLList, param3:Number, param4:Number, param5:String, param6:String, param7:Number, param8:String, param9:Number, param10:String, param11:Number = 0) : void
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         if(_loc13_)
         {
            §+"§[§+"§.length] = new §=!k§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
         }
      }
      
      public static function §;l§(param1:String) : §=!k§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ < §+"§.length)
            {
               §§push(§+"§);
               if(!(_loc4_ && §0!5§))
               {
                  §§push(_loc2_);
                  if(_loc3_ || _loc3_)
                  {
                     if((§§pop()[§§pop()] as §=!k§).mName.toLowerCase() == param1.toLowerCase())
                     {
                        if(_loc3_)
                        {
                           §§push(§+"§);
                           break;
                        }
                        §§goto(addr99);
                     }
                     while(true)
                     {
                        _loc2_++;
                        §§goto(addr37);
                     }
                     addr35:
                  }
                  §§goto(addr95);
               }
               break;
            }
            if(_loc3_ || _loc2_)
            {
               return null;
            }
            loop2:
            while(!(_loc3_ || §0!5§))
            {
               while(true)
               {
                  continue loop2;
               }
            }
            continue;
            addr37:
            §§goto(addr35);
         }
         addr95:
         _loc2_;
         return §§pop()[§§pop()] as §=!k§;
      }
      
      public static function §<p§() : String
      {
         var _loc1_:int = Math.random() * §+"§.length;
         return (§+"§[_loc1_] as §=!k§).mName;
      }
   }
}
