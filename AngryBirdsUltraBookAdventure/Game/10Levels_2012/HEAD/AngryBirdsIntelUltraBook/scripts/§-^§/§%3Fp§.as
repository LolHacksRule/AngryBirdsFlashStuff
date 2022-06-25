package §-^§
{
   import §3Y§.§^!6§;
   import §?A§.§5a§;
   
   public class §?p§ extends §^!6§
   {
      
      public static const TYPE_BOMB_POWERUP:int = 5;
      
      private static var BOMB_POWERUP:§^!6§;
      
      {
         var TYPE_BOMB_POWERUP:Boolean = false;
         var BOMB_POWERUP:Boolean = true;
         if(!(TYPE_BOMB_POWERUP && BOMB_POWERUP))
         {
            while(true)
            {
               TYPE_BOMB_POWERUP = 5;
               while(true)
               {
                  §§goto(addr84);
               }
            }
         }
         addr84:
         while(true)
         {
            BOMB_POWERUP = new §?p§(0,0,§5a§.§-f§,§5a§.§1F§,§5a§.§,B§,§5a§.§!O§,TYPE_BOMB_POWERUP);
            if(!TYPE_BOMB_POWERUP)
            {
               if(BOMB_POWERUP || TYPE_BOMB_POWERUP)
               {
                  if(!TYPE_BOMB_POWERUP)
                  {
                     break;
                  }
                  continue loop0;
               }
               continue loop1;
            }
         }
      }
      
      public function §?p§(x:Number, y:Number, pushRadius:Number, push:Number, damageRadius:Number, damage:Number, explosionType:int = 0)
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(_loc9_)
         {
         }
         if(!_loc8_)
         {
         }
         loop0:
         while(true)
         {
            while(true)
            {
               while(!(_loc9_ && pushRadius))
               {
                  loop3:
                  while(true)
                  {
                     addr94:
                     while(true)
                     {
                        if(_loc8_)
                        {
                           continue loop0;
                        }
                        continue loop3;
                     }
                     continue loop0;
                  }
                  if(!(_loc9_ && pushRadius))
                  {
                     return;
                  }
               }
            }
         }
      }
      
      public static function createExplosion(type:int, x:Number, y:Number) : §^!6§
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc6_ && x)
         {
         }
         var base:§^!6§ = null;
         if(_loc7_ || §?p§)
         {
         }
         while(true)
         {
            while(!(_loc6_ && §?p§))
            {
               loop2:
               while(_loc7_)
               {
                  loop3:
                  while(true)
                  {
                     if(_loc6_)
                     {
                        continue loop2;
                     }
                     §§push(type);
                     if(_loc7_)
                     {
                        var _loc5_:* = §§pop();
                        if(_loc7_ || type)
                        {
                           if(!(_loc6_ && x))
                           {
                              addr129:
                              §§push(TYPE_BOMB_POWERUP);
                              if(!(_loc6_ && §?p§))
                              {
                                 if(§§pop() === _loc5_)
                                 {
                                    if(_loc7_ || type)
                                    {
                                       §§push(0);
                                       if(_loc7_)
                                       {
                                          addr150:
                                       }
                                    }
                                    else
                                    {
                                       addr163:
                                       §§push(1);
                                       if(_loc7_ || §?p§)
                                       {
                                       }
                                    }
                                    addr174:
                                    switch(§§pop())
                                    {
                                       case 0:
                                          if(true)
                                          {
                                             base = BOMB_POWERUP;
                                             if(_loc7_)
                                             {
                                                break;
                                             }
                                             break loop3;
                                          }
                                          continue;
                                       default:
                                          if(!_loc6_)
                                          {
                                             break loop3;
                                          }
                                          break;
                                    }
                                    return new §^!6§(x,y,base.pushRadius,base.push,base.damageRadius,base.damage,type);
                                    addr173:
                                 }
                                 else
                                 {
                                    if(false)
                                    {
                                       §§goto(addr163);
                                    }
                                    else
                                    {
                                       §§push(1);
                                    }
                                    §§goto(addr173);
                                 }
                                 §§goto(addr163);
                              }
                              §§goto(addr150);
                           }
                           §§goto(addr163);
                        }
                        §§goto(addr129);
                     }
                     §§goto(addr174);
                  }
                  return §^!6§.createExplosion(type,x,y);
               }
            }
         }
      }
   }
}
