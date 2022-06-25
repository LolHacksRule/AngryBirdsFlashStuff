package §[m§
{
   public class LevelThemeBackgroundManager
   {
      
      private static var §0!G§:Array;
       
      
      public function LevelThemeBackgroundManager()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
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
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:XML = null;
         if(_loc5_)
         {
            §0!G§ = new Array();
         }
         for each(_loc2_ in param1.Background)
         {
            if(!(_loc6_ && _loc2_))
            {
               §2S§(_loc2_.@id,_loc2_.Layers,_loc2_.@sky,_loc2_.@ground,_loc2_.@sound,_loc2_.@texture,_loc2_.@textureStrokeColor,_loc2_.@icon,_loc2_.@cost,_loc2_.@objectId,_loc2_.@clearGround);
            }
         }
      }
      
      public static function §2S§(param1:String, param2:XMLList, param3:Number, param4:Number, param5:String, param6:String, param7:Number, param8:String, param9:Number, param10:String, param11:Number = 0) : void
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         if(!(_loc13_ && param3))
         {
            §0!G§[§0!G§.length] = new LevelThemeBackground(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
         }
      }
      
      public static function §]!0§(param1:String) : LevelThemeBackground
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
            if(!_loc3_)
            {
               if(_loc4_)
               {
                  if(!(_loc3_ && param1))
                  {
                     if(§§pop() < §0!G§.length)
                     {
                        §§push(§0!G§);
                        if(!_loc3_)
                        {
                           §§push(_loc2_);
                           if(_loc4_)
                           {
                              if((§§pop()[§§pop()] as LevelThemeBackground).mName.toLowerCase() != param1.toLowerCase())
                              {
                                 while(true)
                                 {
                                    §§push(_loc2_);
                                    addr58:
                                    while(true)
                                    {
                                       §§push(§§pop() + 1);
                                       addr59:
                                       while(true)
                                       {
                                          §§push(int(§§pop()));
                                          addr60:
                                          while(true)
                                          {
                                             _loc2_ = §§pop();
                                             §§goto(addr61);
                                          }
                                       }
                                    }
                                    §§goto(addr112);
                                 }
                                 addr56:
                              }
                              §§goto(addr104);
                           }
                           §§goto(addr107);
                        }
                        break;
                     }
                     if(!_loc3_)
                     {
                        return null;
                     }
                     while(!(_loc4_ || LevelThemeBackgroundManager))
                     {
                     }
                     if(!(_loc3_ && LevelThemeBackgroundManager))
                     {
                        continue;
                     }
                     addr104:
                     §§push(§0!G§);
                     break;
                     addr61:
                     §§goto(addr56);
                  }
                  §§goto(addr58);
               }
               §§goto(addr59);
            }
            §§goto(addr60);
         }
         addr107:
         _loc2_;
         return §§pop()[§§pop()] as LevelThemeBackground;
      }
      
      public static function §#!-§() : String
      {
         var _loc1_:int = Math.random() * §0!G§.length;
         return (§0!G§[_loc1_] as LevelThemeBackground).mName;
      }
   }
}
