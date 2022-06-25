package §>=§
{
   public class LevelThemeBackgroundManager
   {
      
      private static var §3!<§:Array;
       
      
      public function LevelThemeBackgroundManager()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
         }
      }
      
      public static function get §1a§() : Array
      {
         return §3!<§;
      }
      
      public static function §[B§(param1:XMLList) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:XML = null;
         if(_loc6_)
         {
            §3!<§ = new Array();
         }
         for each(_loc2_ in param1.Background)
         {
            if(_loc6_)
            {
               §[>§(_loc2_.@id,_loc2_.Layers,_loc2_.@sky,_loc2_.@ground,_loc2_.@sound,_loc2_.@texture,_loc2_.@textureStrokeColor,_loc2_.@icon,_loc2_.@cost,_loc2_.@objectId,_loc2_.@clearGround);
            }
         }
      }
      
      public static function §[>§(param1:String, param2:XMLList, param3:Number, param4:Number, param5:String, param6:String, param7:Number, param8:String, param9:Number, param10:String, param11:Number = 0) : void
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         if(!_loc13_)
         {
            §3!<§[§3!<§.length] = new LevelThemeBackground(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
         }
      }
      
      public static function §#!W§(param1:String) : LevelThemeBackground
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(0);
         if(_loc4_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         while(true)
         {
            §§push(_loc2_);
            if(_loc4_)
            {
               if(_loc4_ || param1)
               {
                  if(_loc4_ || _loc3_)
                  {
                     if(§§pop() < §3!<§.length)
                     {
                        §§push(§3!<§);
                        if(_loc3_)
                        {
                           addr122:
                           break;
                        }
                        §§push(_loc2_);
                        if(!(_loc4_ || param1))
                        {
                           return §§pop()[§§pop()] as LevelThemeBackground;
                        }
                        if((§§pop()[§§pop()] as LevelThemeBackground).mName.toLowerCase() == param1.toLowerCase())
                        {
                           if(!(_loc3_ && LevelThemeBackgroundManager))
                           {
                              §§push(§3!<§);
                              break;
                           }
                           §§goto(addr127);
                        }
                        addr77:
                        _loc2_++;
                        addr73:
                        continue;
                     }
                     if(!(_loc4_ || LevelThemeBackgroundManager))
                     {
                        continue;
                     }
                     if(!(_loc3_ && _loc2_))
                     {
                        return null;
                     }
                     addr127:
                  }
               }
               §§goto(addr73);
            }
            §§goto(addr77);
         }
         §§goto(addr122);
         §§push(_loc2_);
      }
      
      public static function §6g§() : String
      {
         var _loc1_:int = Math.random() * §3!<§.length;
         return (§3!<§[_loc1_] as LevelThemeBackground).mName;
      }
   }
}
