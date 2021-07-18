package §'4§
{
   import §'!&§.b2DebugDraw;
   import §'!&§.b2World;
   import §,"&§.§9q§;
   import §9t§.b2Vec2;
   import flash.display.Sprite;
   import flash.utils.getTimer;
   
   public class §4q§
   {
      
      public static const §1""§:Number = 33.333333333333336;
      
      public static const §1J§:int = 10;
      
      public static const §default§:Boolean = false;
      
      public static const §;!n§:Boolean = true;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §1""§ = 1000 / 30;
         }
         loop0:
         do
         {
            §1J§ = 10;
            while(true)
            {
               §default§ = false;
               while(!(_loc2_ && _loc2_))
               {
                  §;!n§ = true;
                  if(!_loc2_)
                  {
                     continue loop0;
                  }
               }
            }
         }
         while(!_loc1_);
         
      }
      
      public var mWorld:b2World;
      
      private var §3V§:Boolean = true;
      
      public var §79§:§!W§;
      
      public var §9!_§:Sprite;
      
      private var §>7§:b2DebugDraw;
      
      public var §?>§:§^g§;
      
      public var §3!Q§:Number;
      
      private var §<!>§:Number;
      
      private var §"M§:int;
      
      public function §4q§(param1:§^g§, param2:Number = 20)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param2)
         {
            super();
            while(true)
            {
               this.§?>§ = param1;
               §§goto(addr67);
            }
         }
         addr67:
         while(true)
         {
            this.§0!;§(param2);
            if(!(_loc3_ && param2))
            {
               if(_loc4_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function get §`!8§() : int
      {
         return this.§"M§;
      }
      
      public function get §4z§() : Number
      {
         return this.§<!>§;
      }
      
      private function §0!;§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§79§ = new §!W§(this);
            do
            {
               this.mWorld = new b2World(new b2Vec2(0,param1),this.§3V§);
               do
               {
                  this.mWorld.§=!h§(this.§79§);
               }
               while(!_loc2_);
               
            }
            while(_loc3_);
            
         }
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.mWorld);
            loop0:
            while(true)
            {
               §§pop().§=!h§(null);
               loop1:
               while(true)
               {
                  this.§79§ = null;
                  loop2:
                  while(true)
                  {
                     if(§default§)
                     {
                        while(true)
                        {
                           this.§9!_§.graphics.clear();
                           addr85:
                           while(true)
                           {
                           }
                        }
                        addr81:
                     }
                     while(true)
                     {
                        this.§9!_§ = null;
                        addr71:
                        while(true)
                        {
                           if(_loc2_)
                           {
                              if(!_loc2_)
                              {
                                 break;
                              }
                              if(_loc2_)
                              {
                                 continue loop0;
                              }
                              continue loop1;
                           }
                        }
                        continue loop2;
                        §§goto(addr85);
                     }
                  }
               }
            }
         }
         §§goto(addr81);
      }
      
      public function §+0§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            if(!§default§)
            {
            }
         }
      }
      
      public function §2[§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            if(§default§)
            {
               do
               {
                  this.§9!_§.x = -param1;
                  do
                  {
                     this.§9!_§.y = -param2;
                  }
                  while(!(_loc4_ || this));
                  
               }
               while(_loc3_ && this);
               
               addr67:
            }
            return;
         }
         §§goto(addr67);
      }
      
      public function §9!4§(param1:Number) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§<!>§ = §1""§;
         }
         §§push(this.§]!-§(param1));
         if(!_loc4_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!_loc4_)
         {
            §§push(_loc2_);
            if(_loc3_)
            {
               if(§§pop() > §1J§)
               {
                  if(!(_loc4_ && this))
                  {
                     addr105:
                     §§push(§1J§);
                     if(!(_loc4_ && _loc3_))
                     {
                        addr124:
                        _loc2_ = int(§§pop());
                     }
                     §§goto(addr124);
                  }
                  while(true)
                  {
                  }
                  addr125:
               }
               while(true)
               {
                  this.§?X§(_loc2_);
                  if(_loc3_)
                  {
                     break;
                  }
                  §§goto(addr125);
               }
               while(true)
               {
                  §§push(param1);
                  if(!(_loc4_ && _loc2_))
                  {
                     if(_loc3_ || this)
                     {
                        §§push(0);
                        if(!_loc4_)
                        {
                           if(§§pop() <= §§pop())
                           {
                              if(!(_loc4_ && this))
                              {
                                 §§push(param1);
                                 break;
                              }
                              continue;
                           }
                           §§push(param1);
                           if(_loc3_)
                           {
                              addr80:
                              §§push(§§pop() - this.§<!>§);
                              if(!_loc3_)
                              {
                              }
                              addr84:
                              param1 = §§pop();
                              continue;
                           }
                           §§goto(addr84);
                           §§push(Number(§§pop()));
                        }
                     }
                     §§goto(addr80);
                  }
                  break;
               }
               return §§pop();
            }
            §§goto(addr124);
         }
         §§goto(addr105);
      }
      
      public function §?X§(param1:int) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc6_:* = NaN;
         if(!(_loc10_ && param1))
         {
            this.§3!Q§ = 0;
         }
         var _loc2_:int = 10;
         var _loc3_:int = 10;
         §§push(0);
         if(_loc9_ || _loc2_)
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:* = §§pop();
         var _loc5_:int = 0;
         while(true)
         {
            §§push(_loc5_);
            if(!_loc10_)
            {
               if(§§pop() >= param1)
               {
                  if(!_loc10_)
                  {
                     if(!_loc9_)
                     {
                        continue;
                     }
                     if(_loc9_)
                     {
                        if(!_loc10_)
                        {
                           if(_loc9_)
                           {
                              addr89:
                              §§push(§;!n§);
                              if(!_loc10_)
                              {
                                 if(!_loc10_)
                                 {
                                    if(§§pop())
                                    {
                                       if(!(_loc10_ && _loc2_))
                                       {
                                          if(!_loc10_)
                                          {
                                             §9q§.§2!x§.§&B§("Box2D",_loc4_);
                                             break;
                                          }
                                          while(true)
                                          {
                                             §§push(§;!n§);
                                             addr225:
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   loop2:
                                                   while(true)
                                                   {
                                                      §§push(Number(getTimer()));
                                                      addr239:
                                                      while(true)
                                                      {
                                                         _loc6_ = §§pop();
                                                         addr240:
                                                         while(true)
                                                         {
                                                         }
                                                         continue loop2;
                                                      }
                                                   }
                                                   addr236:
                                                }
                                                while(true)
                                                {
                                                   §§push(this.mWorld);
                                                   loop6:
                                                   while(true)
                                                   {
                                                      §§push(this.§<!>§);
                                                      if(_loc9_)
                                                      {
                                                         §§push(1000);
                                                         if(_loc9_ || param1)
                                                         {
                                                            addr217:
                                                            §§push(§§pop() / §§pop());
                                                            §§push(_loc2_);
                                                         }
                                                         §§pop().Step(§§pop(),§§pop(),_loc3_);
                                                         while(true)
                                                         {
                                                            if(_loc9_)
                                                            {
                                                               continue loop6;
                                                            }
                                                            §§goto(addr236);
                                                         }
                                                         continue;
                                                         addr220:
                                                      }
                                                      §§goto(addr217);
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       break;
                                    }
                                    §§goto(addr69);
                                 }
                                 §§goto(addr225);
                              }
                              §§goto(addr141);
                           }
                           §§goto(addr198);
                        }
                        §§goto(addr142);
                     }
                     §§goto(addr129);
                  }
                  break;
               }
               var _loc7_:*;
               §§push((_loc7_ = this).§"M§);
               if(_loc9_ || _loc2_)
               {
                  §§push(§§pop() + 1);
               }
               var _loc8_:* = §§pop();
               if(!_loc10_)
               {
                  _loc7_.§"M§ = _loc8_;
               }
               if(!_loc10_)
               {
                  addr242:
                  §§goto(addr243);
                  §§push(Number(0));
               }
               else
               {
                  §§goto(addr89);
               }
               §§goto(addr141);
               §§goto(addr89);
            }
            §§goto(addr242);
         }
         addr69:
      }
      
      private function §]!-§(param1:Number) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = 0;
         while(true)
         {
            §§push(param1);
            if(_loc4_ || _loc2_)
            {
               §§push(0);
               if(!_loc3_)
               {
                  if(§§pop() <= §§pop())
                  {
                     if(_loc4_ || _loc2_)
                     {
                        break;
                     }
                     loop1:
                     while(!(_loc4_ || this))
                     {
                        while(true)
                        {
                           param1 = §§pop();
                           continue loop1;
                        }
                     }
                     continue;
                  }
                  _loc2_++;
                  while(true)
                  {
                     §§push(param1);
                     if(!_loc3_)
                     {
                        §§push(this.§<!>§);
                     }
                     §§goto(addr64);
                  }
               }
               while(true)
               {
                  §§push(§§pop() - §§pop());
                  if(!_loc3_)
                  {
                     §§push(Number(§§pop()));
                  }
               }
            }
            §§goto(addr64);
         }
         return _loc2_;
      }
   }
}
