package §]">§
{
   import §"!&§.§8X§;
   import §"!&§.§=C§;
   import §'!&§.b2World;
   import §4&§.§#r§;
   import §7!8§.Sprite;
   
   public class §5=§ extends §1!0§
   {
      
      public static const §<!p§:Number = 1000;
      
      public static const §%!d§:Number = 500;
      
      public static const §3P§:String = "yell";
      
      public static const §[_§:String = "blink";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §<!p§ = 1000;
         }
         loop0:
         while(true)
         {
            §%!d§ = 500;
            while(true)
            {
               §3P§ = "yell";
               while(!_loc2_)
               {
                  if(!_loc2_)
                  {
                     §[_§ = "blink";
                     if(_loc1_)
                     {
                        return;
                     }
                     continue;
                     continue;
                  }
                  continue loop0;
               }
            }
         }
      }
      
      protected var §]M§:Number = -1.0;
      
      protected var §!!T§:Number = -1.0;
      
      public function §5=§(param1:Sprite, param2:§#r§, param3:b2World, param4:§8X§, param5:Number, param6:Number, param7:Number, param8:Number)
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         if(_loc9_)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8);
         }
      }
      
      public function get §`u§() : Boolean
      {
         return this.§!!T§ >= 0;
      }
      
      public function get §">§() : Boolean
      {
         return this.§]M§ >= 0;
      }
      
      public function get isNormal() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §§push(this.§`u§);
            if(!(_loc1_ && _loc2_))
            {
               §§push(!§§pop());
               if(!_loc1_)
               {
                  if(§§pop())
                  {
                     if(_loc2_ || _loc1_)
                     {
                        addr65:
                        §§pop();
                        §§push(this.§">§);
                        if(_loc2_)
                        {
                           addr70:
                           return !§§pop();
                        }
                     }
                  }
               }
               §§goto(addr70);
            }
         }
         §§goto(addr65);
      }
      
      public function scream() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§]M§ = §<!p§;
            while(true)
            {
               this.§!!T§ = -1;
               while(_loc2_ || this)
               {
                  §'%§.setAnimation(§3P§);
                  if(!_loc2_)
                  {
                     continue;
                  }
                  return;
                  addr40:
               }
            }
         }
         §§goto(addr40);
      }
      
      public function blink() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§!!T§ = §%!d§;
            while(true)
            {
               this.§]M§ = -1;
               while(!(_loc2_ && _loc1_))
               {
                  §'%§.setAnimation(§[_§);
                  if(_loc2_)
                  {
                     continue;
                  }
                  return;
                  addr39:
               }
            }
         }
         §§goto(addr39);
      }
      
      protected function normalize() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §'%§.setAnimation(§,!Y§);
         }
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param2)
         {
            §§push(this.§">§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this);
                     §§push(this.§]M§);
                     if(!_loc4_)
                     {
                        §§push(§§pop() - param1);
                     }
                     §§pop().§]M§ = §§pop();
                     addr123:
                     while(true)
                     {
                     }
                     addr74:
                     if(!(_loc4_ && param3))
                     {
                        addr81:
                        loop9:
                        while(true)
                        {
                           super.render(param1,param2,param3);
                           if(!_loc4_)
                           {
                              addr37:
                              if(!(_loc4_ && this))
                              {
                                 break;
                              }
                              loop8:
                              while(true)
                              {
                                 if(_loc5_)
                                 {
                                    while(true)
                                    {
                                       this.normalize();
                                       addr72:
                                       while(true)
                                       {
                                          if(!_loc5_)
                                          {
                                             break loop8;
                                          }
                                          §§goto(addr74);
                                       }
                                    }
                                    addr70:
                                 }
                                 addr86:
                                 while(true)
                                 {
                                    §§push(this);
                                    §§push(this.§!!T§);
                                    if(_loc5_ || param2)
                                    {
                                       §§push(§§pop() - param1);
                                    }
                                    §§pop().§!!T§ = §§pop();
                                    break loop8;
                                 }
                                 §§goto(addr37);
                              }
                              while(_loc5_)
                              {
                                 while(true)
                                 {
                                    §§push(this.isNormal);
                                    if(_loc4_ && param1)
                                    {
                                       break;
                                    }
                                    if(!_loc5_)
                                    {
                                       continue loop0;
                                    }
                                    if(!§§pop())
                                    {
                                       continue loop9;
                                    }
                                    §§goto(addr68);
                                 }
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       continue;
                                    }
                                    §§goto(addr86);
                                 }
                                 addr45:
                              }
                              addr68:
                              §§goto(addr123);
                           }
                           §§goto(addr72);
                        }
                        return;
                     }
                  }
               }
               while(true)
               {
                  §§goto(addr85);
               }
            }
         }
         §§goto(addr70);
      }
      
      protected function playScreamingSoundEffect() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §'!p§(§=C§.§@z§);
         }
      }
   }
}
