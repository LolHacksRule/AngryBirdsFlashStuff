package §[m§
{
   public class LevelThemeBackgroundManager
   {
      
      private static var §0!G§:Array;
       
      
      public function LevelThemeBackgroundManager()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
      }
      
      public static function get §<q§() : Array
      {
         return §0!G§;
      }
      
      public static function §null§(param1:XMLList) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:XML = null;
         if(_loc6_)
         {
            §0!G§ = new Array();
         }
         for each(_loc2_ in param1.Background)
         {
            if(!_loc5_)
            {
               §2S§(_loc2_.@id,_loc2_.Layers,_loc2_.@sky,_loc2_.@ground,_loc2_.@sound,_loc2_.@texture,_loc2_.@textureStrokeColor,_loc2_.@icon,_loc2_.@cost,_loc2_.@objectId,_loc2_.@clearGround);
            }
         }
      }
      
      public static function §2S§(param1:String, param2:XMLList, param3:Number, param4:Number, param5:String, param6:String, param7:Number, param8:String, param9:Number, param10:String, param11:Number = 0) : void
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         if(_loc12_ || param2)
         {
            §0!G§[§0!G§.length] = new LevelThemeBackground(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
         }
      }
      
      public static function §]!0§(param1:String) : LevelThemeBackground
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(0);
         if(!_loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         do
         {
            §§push(_loc2_);
            if(!_loc3_)
            {
               if(_loc4_ || _loc2_)
               {
                  if(§§pop() >= §0!G§.length)
                  {
                     if(_loc3_)
                     {
                        continue;
                     }
                     if(!(_loc3_ && LevelThemeBackgroundManager))
                     {
                        return null;
                     }
                  }
                  else
                  {
                     §§push(§0!G§);
                     if(_loc4_ || param1)
                     {
                        §§push(_loc2_);
                        if(_loc4_ || param1)
                        {
                           if((§§pop()[§§pop()] as LevelThemeBackground).mName.toLowerCase() == param1.toLowerCase())
                           {
                              break;
                           }
                           addr61:
                           §§push(_loc2_);
                           if(_loc4_)
                           {
                              addr67:
                              _loc2_ = int(§§pop() + 1);
                              continue;
                           }
                           §§goto(addr67);
                        }
                        §§goto(addr117);
                     }
                     addr116:
                     addr117:
                     return §§pop()[§§pop()] as LevelThemeBackground;
                     §§push(_loc2_);
                  }
                  §§goto(addr61);
               }
            }
            §§goto(addr67);
         }
         while(!(_loc3_ && LevelThemeBackgroundManager));
         
         §§goto(addr116);
         §§push(§0!G§);
      }
      
      public static function §#!-§() : String
      {
         var _loc1_:int = Math.random() * §0!G§.length;
         return (§0!G§[_loc1_] as LevelThemeBackground).mName;
      }
   }
}
