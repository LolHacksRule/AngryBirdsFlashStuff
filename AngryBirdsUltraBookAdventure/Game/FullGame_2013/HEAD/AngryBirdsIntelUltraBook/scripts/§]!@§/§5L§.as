package §]!@§
{
   import §>!8§.b2Vec2;
   import §>!L§.b2DebugDraw;
   import §>!L§.b2World;
   import §?!Y§.§`S§;
   import flash.display.Sprite;
   import flash.utils.getTimer;
   
   public class §5L§
   {
      
      public static const §#H§:Number = 0.03333333333333333;
      
      public static const §]! §:int = 10;
      
      public static const §8[§:Boolean = false;
      
      public static const §+!S§:Boolean = true;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || §5L§)
         {
            §#H§ = 1 / 30;
            while(true)
            {
               §]! § = 10;
               while(true)
               {
                  §8[§ = false;
                  §§goto(addr73);
               }
            }
         }
         addr73:
         while(true)
         {
            §+!S§ = true;
            if(_loc1_ || _loc2_)
            {
               if(_loc1_)
               {
                  continue loop0;
               }
               continue loop1;
            }
         }
         addr68:
      }
      
      public var mWorld:b2World;
      
      private var §2#§:Boolean = true;
      
      public var §#!h§:§`!=§;
      
      public var §4>§:Sprite;
      
      private var §5P§:b2DebugDraw;
      
      public var §`s§:LevelMain;
      
      public var §0L§:Number;
      
      private var §8j§:Number;
      
      private var §`!D§:int;
      
      public function §5L§(param1:LevelMain)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            super();
            while(true)
            {
               this.§`s§ = param1;
               §§goto(addr57);
            }
         }
         addr57:
         while(true)
         {
            this.§'!!§();
            if(_loc3_)
            {
               if(!(_loc2_ && this))
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function get §8!?§() : int
      {
         return this.§`!D§;
      }
      
      public function get §7!9§() : Number
      {
         return this.§8j§;
      }
      
      private function §'!!§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§#!h§ = new §`!=§(this);
            loop0:
            while(true)
            {
               this.mWorld = new b2World(new b2Vec2(0,20),this.§2#§);
               while(true)
               {
                  §§push(this.mWorld);
                  while(true)
                  {
                     §§pop().§;!M§(this.§#!h§);
                     loop3:
                     while(§8[§)
                     {
                        if(_loc2_)
                        {
                           while(true)
                           {
                              §§push(this.mWorld);
                              addr258:
                              while(true)
                              {
                                 §§pop().§6'§(true);
                              }
                           }
                           addr246:
                        }
                        while(true)
                        {
                           this.§4>§ = new Sprite();
                           while(true)
                           {
                              this.§5P§ = new b2DebugDraw();
                              while(true)
                              {
                                 §§push(this.§5P§);
                                 loop7:
                                 while(true)
                                 {
                                    §§push(b2DebugDraw.§,x§);
                                    addr216:
                                    while(true)
                                    {
                                       §§pop().§#l§(§§pop());
                                       addr218:
                                       while(!(_loc1_ && this))
                                       {
                                          if(!_loc2_)
                                          {
                                             continue loop0;
                                          }
                                          §§push(this.§5P§);
                                          while(true)
                                          {
                                             §§push(b2DebugDraw.§^!a§);
                                             addr207:
                                             while(true)
                                             {
                                                §§pop().§#l§(§§pop());
                                                addr209:
                                                while(true)
                                                {
                                                   §§push(this.§5P§);
                                                   continue loop7;
                                                }
                                             }
                                          }
                                       }
                                       continue loop3;
                                    }
                                 }
                                 if(!(_loc1_ && this))
                                 {
                                    break loop3;
                                 }
                              }
                              while(!(_loc1_ && this))
                              {
                                 §§goto(addr108);
                                 §§push(this.§5P§);
                              }
                           }
                        }
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr246);
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.mWorld);
            loop0:
            while(true)
            {
               §§pop().§;!M§(null);
               loop1:
               while(true)
               {
                  this.§#!h§ = null;
                  while(true)
                  {
                     if(§8[§)
                     {
                        continue;
                     }
                     loop4:
                     while(true)
                     {
                        this.§4>§ = null;
                        addr71:
                        addr107:
                        while(!_loc2_)
                        {
                           if(_loc1_ || this)
                           {
                              continue loop0;
                           }
                           continue loop1;
                        }
                        while(true)
                        {
                           continue loop4;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr107);
      }
      
      public function §0!^§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            if(§8[§)
            {
               loop0:
               while(true)
               {
                  this.mWorld.§!!9§();
                  addr80:
                  while(true)
                  {
                     this.§4>§.parent.setChildIndex(this.§4>§,this.§4>§.parent.numChildren - 1);
                     if(_loc2_ || _loc2_)
                     {
                        if(!_loc1_)
                        {
                           break;
                        }
                        continue loop0;
                     }
                  }
                  §§goto(addr35);
               }
            }
            addr35:
            return;
         }
         §§goto(addr80);
      }
      
      public function §6!H§(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            if(§8[§)
            {
               if(!(_loc4_ && this))
               {
                  addr53:
                  this.§4>§.x = -param1;
               }
               do
               {
                  this.§4>§.y = -param2;
               }
               while(!_loc5_);
               
            }
            return;
         }
         §§goto(addr53);
      }
      
      public function §&!D§(param1:Number) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc2_))
         {
            this.§8j§ = §#H§;
         }
         §§push(this.§7!-§(param1));
         if(!_loc4_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc4_ && _loc2_))
         {
            §§push(_loc2_);
            if(!_loc4_)
            {
               if(§§pop() > §]! §)
               {
                  if(_loc3_ || this)
                  {
                     addr132:
                     §§push(§]! §);
                     if(!_loc4_)
                     {
                        addr136:
                        §§push(int(§§pop()));
                     }
                     _loc2_ = §§pop();
                  }
                  while(true)
                  {
                  }
                  addr138:
               }
               while(true)
               {
                  this.§'6§(_loc2_);
                  if(_loc3_)
                  {
                     break;
                  }
                  §§goto(addr138);
               }
               while(true)
               {
                  §§push(param1);
                  if(_loc3_)
                  {
                     if(_loc3_)
                     {
                        if(!_loc4_)
                        {
                           §§push(0);
                           if(_loc3_ || _loc3_)
                           {
                              if(§§pop() <= §§pop())
                              {
                                 if(_loc3_ || this)
                                 {
                                    §§push(param1);
                                    break;
                                 }
                                 continue;
                              }
                              addr84:
                              §§push(param1);
                              §§push(this.§8j§);
                              if(!(_loc4_ && this))
                              {
                                 §§push(§§pop() * 1000);
                              }
                           }
                           §§push(§§pop() - §§pop());
                           if(!_loc4_)
                           {
                              addr109:
                              param1 = §§pop();
                              continue;
                           }
                           §§goto(addr109);
                        }
                        §§goto(addr84);
                     }
                     §§goto(addr109);
                  }
                  break;
               }
               return §§pop();
            }
            §§goto(addr136);
         }
         §§goto(addr132);
      }
      
      public function §'6§(param1:int) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc5_:* = NaN;
         if(_loc9_ || param1)
         {
            this.§0L§ = 0;
         }
         §§push(10);
         if(!_loc8_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(10);
         if(_loc9_ || _loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(0);
         if(_loc9_)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         loop0:
         while(true)
         {
            §§push(_loc4_);
            if(!_loc8_)
            {
               if(§§pop() >= param1)
               {
                  if(_loc9_ || _loc3_)
                  {
                     if(_loc9_ || param1)
                     {
                        break;
                     }
                     loop13:
                     while(true)
                     {
                        §§push(_loc4_);
                        if(!_loc8_)
                        {
                           addr132:
                           §§push(§§pop() + 1);
                           if(!_loc9_)
                           {
                           }
                           while(true)
                           {
                              _loc4_ = §§pop();
                              addr133:
                              while(true)
                              {
                                 if(!_loc8_)
                                 {
                                    if(_loc9_ || this)
                                    {
                                       if(!_loc8_)
                                       {
                                          if(!_loc8_)
                                          {
                                             break;
                                          }
                                          addr276:
                                          loop5:
                                          while(true)
                                          {
                                             §§push(Number(getTimer()));
                                             if(!(_loc9_ || this))
                                             {
                                                break;
                                             }
                                             _loc5_ = §§pop();
                                             loop6:
                                             while(true)
                                             {
                                                loop7:
                                                while(true)
                                                {
                                                   §§push(this.mWorld);
                                                   while(true)
                                                   {
                                                      §§pop().§<!;§(this.§8j§,_loc2_,_loc3_);
                                                      loop9:
                                                      while(true)
                                                      {
                                                         §§push(this.mWorld);
                                                         if(_loc8_ && param1)
                                                         {
                                                            break;
                                                         }
                                                         §§pop().§^z§();
                                                         while(_loc9_ || this)
                                                         {
                                                            §§push(this);
                                                            §§push(this.§0L§);
                                                            if(!(_loc8_ && param1))
                                                            {
                                                               §§push(this.§8j§);
                                                               if(_loc9_ || param1)
                                                               {
                                                                  §§push(§§pop() * 1000);
                                                               }
                                                               §§push(§§pop() + §§pop());
                                                            }
                                                            §§pop().§0L§ = §§pop();
                                                            while(_loc9_ || param1)
                                                            {
                                                               addr217:
                                                               §§push(§+!S§);
                                                               if(!(_loc8_ && _loc3_))
                                                               {
                                                                  if(!§§pop())
                                                                  {
                                                                     continue loop13;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §`S§.§5I§.§=<§("Box2D",getTimer() - _loc5_);
                                                                     addr176:
                                                                     while(true)
                                                                     {
                                                                        if(!(_loc8_ && _loc2_))
                                                                        {
                                                                           if(_loc9_)
                                                                           {
                                                                              addr185:
                                                                              continue loop13;
                                                                           }
                                                                           continue loop6;
                                                                        }
                                                                        continue loop9;
                                                                     }
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  while(true)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        continue loop5;
                                                                     }
                                                                     continue loop7;
                                                                     §§goto(addr217);
                                                                  }
                                                                  addr261:
                                                               }
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            §§goto(addr261);
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          while(true)
                                          {
                                             _loc5_ = §§pop();
                                             §§goto(addr277);
                                          }
                                       }
                                       §§goto(addr210);
                                    }
                                    §§goto(addr166);
                                 }
                                 §§goto(addr176);
                              }
                              continue loop0;
                           }
                           addr132:
                        }
                        addr114:
                        if(_loc9_ || this)
                        {
                           §§goto(addr132);
                           §§push(int(§§pop()));
                        }
                        else
                        {
                           addr275:
                           while(true)
                           {
                              §§goto(addr114);
                           }
                           addr275:
                        }
                        §§goto(addr276);
                     }
                  }
                  §§goto(addr133);
               }
               else
               {
                  var _loc6_:*;
                  §§push((_loc6_ = this).§`!D§);
                  if(!(_loc8_ && param1))
                  {
                     §§push(§§pop() + 1);
                  }
                  var _loc7_:* = §§pop();
                  if(_loc9_ || _loc2_)
                  {
                     _loc6_.§`!D§ = _loc7_;
                  }
                  if(!(_loc8_ && _loc3_))
                  {
                     §§goto(addr275);
                     §§push(0);
                  }
               }
               §§goto(addr166);
            }
            §§goto(addr132);
         }
      }
      
      private function §7!-§(param1:Number) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(0);
         if(!(_loc3_ && this))
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         while(true)
         {
            §§push(param1);
            if(!(_loc3_ && _loc2_))
            {
               if(!(_loc3_ && _loc2_))
               {
                  §§push(0);
                  if(!(_loc3_ && _loc3_))
                  {
                     if(§§pop() <= §§pop())
                     {
                        if(_loc3_ && _loc3_)
                        {
                           continue;
                        }
                        if(!_loc3_)
                        {
                           §§push(_loc2_);
                           if(_loc4_)
                           {
                              if(_loc4_)
                              {
                                 break;
                              }
                              addr112:
                              §§push(§§pop() + 1);
                              if(_loc4_)
                              {
                                 §§push(int(§§pop()));
                              }
                           }
                           _loc2_ = §§pop();
                        }
                        §§push(param1);
                        if(_loc4_ || this)
                        {
                           §§push(this.§8j§);
                           if(!_loc3_)
                           {
                              addr107:
                              param1 = §§pop() - §§pop() * 1000;
                              addr105:
                              continue;
                           }
                        }
                        §§goto(addr105);
                     }
                     else
                     {
                        §§push(_loc2_);
                     }
                     §§goto(addr112);
                  }
               }
               §§goto(addr105);
            }
            §§goto(addr107);
         }
         return §§pop();
      }
   }
}
