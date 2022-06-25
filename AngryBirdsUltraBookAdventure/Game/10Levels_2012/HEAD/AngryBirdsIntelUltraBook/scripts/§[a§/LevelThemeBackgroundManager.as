package §[a§
{
   public class LevelThemeBackgroundManager
   {
      
      private static var §+t§:Array;
       
      
      public function LevelThemeBackgroundManager()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            super();
         }
      }
      
      public static function get §2!B§() : Array
      {
         return §+t§;
      }
      
      public static function §@@§(param1:XMLList) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:XML = null;
         if(!_loc6_)
         {
            §+t§ = new Array();
         }
         for each(_loc2_ in param1.Background)
         {
            if(_loc5_)
            {
               §0!C§(_loc2_.@id,_loc2_.Layers,_loc2_.@sky,_loc2_.@ground,_loc2_.@sound,_loc2_.@texture,_loc2_.@textureStrokeColor,_loc2_.@icon,_loc2_.@cost,_loc2_.@objectId,_loc2_.@clearGround);
            }
         }
      }
      
      public static function §0!C§(param1:String, param2:XMLList, param3:Number, param4:Number, param5:String, param6:String, param7:Number, param8:String, param9:Number, param10:String, param11:Number = 0) : void
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         if(!(_loc12_ && param2))
         {
            §+t§[§+t§.length] = new LevelThemeBackground(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
         }
      }
      
      public static function §"!f§(param1:String) : LevelThemeBackground
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(0);
         if(_loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         while(true)
         {
            §§push(_loc2_);
            if(!(_loc4_ && param1))
            {
               if(!_loc4_)
               {
                  if(§§pop() < §+t§.length)
                  {
                     §§push(§+t§);
                     if(_loc3_)
                     {
                        §§push(_loc2_);
                        if(!_loc4_)
                        {
                           if((§§pop()[§§pop()] as LevelThemeBackground).mName.toLowerCase() != param1.toLowerCase())
                           {
                              while(true)
                              {
                                 §§push(_loc2_);
                                 if(_loc3_)
                                 {
                                    §§push(§§pop() + 1);
                                    while(true)
                                    {
                                       §§push(int(§§pop()));
                                       addr59:
                                       while(true)
                                       {
                                          _loc2_ = §§pop();
                                          §§goto(addr60);
                                       }
                                    }
                                    addr58:
                                 }
                                 §§goto(addr59);
                                 §§goto(addr111);
                              }
                              addr53:
                           }
                           §§goto(addr103);
                        }
                        §§goto(addr106);
                     }
                     break;
                  }
                  if(!_loc4_)
                  {
                     return null;
                  }
                  while(!(_loc3_ || _loc3_))
                  {
                  }
                  if(_loc3_ || LevelThemeBackgroundManager)
                  {
                     continue;
                  }
                  addr103:
                  §§push(§+t§);
                  break;
                  addr60:
                  §§goto(addr53);
               }
               §§goto(addr58);
            }
            §§goto(addr59);
         }
         addr106:
         _loc2_;
         return §§pop()[§§pop()] as LevelThemeBackground;
      }
      
      public static function §%!e§() : String
      {
         var _loc1_:int = Math.random() * §+t§.length;
         return (§+t§[_loc1_] as LevelThemeBackground).mName;
      }
   }
}
