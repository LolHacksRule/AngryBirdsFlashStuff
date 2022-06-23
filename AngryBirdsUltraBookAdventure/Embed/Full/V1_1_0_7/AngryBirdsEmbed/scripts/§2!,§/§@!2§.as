package §2!,§
{
   public class §@!2§
   {
      
      private static var §-f§:Array;
       
      
      public function §@!2§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            super();
         }
      }
      
      public static function get §<!%§() : Array
      {
         return §-f§;
      }
      
      public static function §'y§(param1:XMLList) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:XML = null;
         if(!_loc5_)
         {
            §-f§ = new Array();
         }
         for each(_loc2_ in param1.Background)
         {
            if(!_loc5_)
            {
               §1a§(_loc2_.@id,_loc2_.Layers,_loc2_.@sky,_loc2_.@ground,_loc2_.@sound,_loc2_.@texture,_loc2_.@textureStrokeColor,_loc2_.@icon,_loc2_.@cost,_loc2_.@objectId,_loc2_.@clearGround);
            }
         }
      }
      
      public static function §1a§(param1:String, param2:XMLList, param3:Number, param4:Number, param5:String, param6:String, param7:Number, param8:String, param9:Number, param10:String, param11:Number = 0) : void
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         if(!_loc12_)
         {
            §-f§[§-f§.length] = new §8E§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
         }
      }
      
      public static function §"@§(param1:String) : §8E§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = 0;
         for(; _loc2_ < §-f§.length; _loc2_++,if(_loc4_)
         {
            break;
         })
         {
            §§push(§-f§);
            if(!_loc4_)
            {
               §§push(_loc2_);
               if(!_loc4_)
               {
                  if((§§pop()[§§pop()] as §8E§).mName.toLowerCase() != param1.toLowerCase())
                  {
                     continue;
                  }
                  if(_loc4_)
                  {
                     break;
                  }
                  addr57:
                  §§push(§-f§);
                  §§push(_loc2_);
               }
               return §§pop()[§§pop()] as §8E§;
            }
            §§goto(addr57);
         }
         return null;
      }
      
      public static function §0k§() : String
      {
         var _loc1_:int = Math.random() * §-f§.length;
         return (§-f§[_loc1_] as §8E§).mName;
      }
   }
}
