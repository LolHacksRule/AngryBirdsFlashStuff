package §=C§
{
   import §6!!§.§[!T§;
   import §]!@§.§ ?§;
   
   public class §6!`§ extends §[!T§
   {
      
      public static const TYPE_BOMB_POWERUP:int = 5;
      
      private static var BOMB_POWERUP:§[!T§;
      
      {
         var TYPE_BOMB_POWERUP:Boolean = true;
         var BOMB_POWERUP:Boolean = false;
         if(BOMB_POWERUP && §6!`§)
         {
         }
         loop0:
         while(true)
         {
            TYPE_BOMB_POWERUP = 5;
            do
            {
               continue loop0;
            }
            while(!(TYPE_BOMB_POWERUP || §6!`§));
            
            return;
         }
      }
      
      public function §6!`§(x:Number, y:Number, pushRadius:Number, push:Number, damageRadius:Number, damage:Number, explosionType:int = 0)
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(_loc8_)
         {
         }
         if(!(_loc8_ && x))
         {
            while(true)
            {
               loop1:
               while(true)
               {
                  addr122:
                  while(true)
                  {
                     continue loop1;
                  }
               }
            }
         }
         while(true)
         {
            do
            {
               super(x,y,pushRadius,push,damageRadius,damage,explosionType);
               while(_loc8_)
               {
               }
            }
            while(!(_loc9_ || x));
            
            if(!(_loc8_ && pushRadius))
            {
               break;
            }
            §§goto(addr78);
         }
      }
      
      public static function createExplosion(type:int, x:Number, y:Number) : §[!T§
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_ || §6!`§)
         {
         }
         var base:§[!T§ = null;
         if(!_loc6_)
         {
         }
         loop0:
         while(true)
         {
            while(true)
            {
               while(_loc6_ || y)
               {
                  continue loop0;
                  loop3:
                  while(_loc6_ || x)
                  {
                     loop4:
                     while(true)
                     {
                        §§push(type);
                        if(_loc6_)
                        {
                           var _loc5_:* = §§pop();
                           if(_loc6_ || y)
                           {
                              if(_loc6_ || type)
                              {
                                 addr133:
                                 §§push(TYPE_BOMB_POWERUP);
                                 if(_loc6_ || x)
                                 {
                                    if(§§pop() === _loc5_)
                                    {
                                       if(!(_loc7_ && x))
                                       {
                                          addr161:
                                          §§push(0);
                                          if(!_loc7_)
                                          {
                                             addr164:
                                          }
                                          else
                                          {
                                             addr170:
                                          }
                                       }
                                       else
                                       {
                                          addr167:
                                          §§push(1);
                                          if(_loc6_)
                                          {
                                             §§goto(addr170);
                                          }
                                       }
                                       addr173:
                                       switch(§§pop())
                                       {
                                          case 0:
                                             if(true)
                                             {
                                                base = BOMB_POWERUP;
                                                if(_loc6_)
                                                {
                                                   break loop4;
                                                }
                                                if(false)
                                                {
                                                   break;
                                                }
                                             }
                                             continue loop3;
                                          default:
                                             if(_loc6_)
                                             {
                                                return §[!T§.createExplosion(type,x,y);
                                             }
                                             break loop4;
                                       }
                                       return new §[!T§(x,y,base.pushRadius,base.push,base.damageRadius,base.damage,type);
                                       addr172:
                                       addr103:
                                    }
                                    else
                                    {
                                       if(false)
                                       {
                                          §§goto(addr167);
                                       }
                                       else
                                       {
                                          §§push(1);
                                       }
                                       §§goto(addr172);
                                    }
                                    §§goto(addr167);
                                 }
                                 §§goto(addr164);
                              }
                              §§goto(addr161);
                           }
                           §§goto(addr133);
                        }
                        §§goto(addr173);
                     }
                     §§goto(addr103);
                  }
               }
            }
         }
      }
   }
}
