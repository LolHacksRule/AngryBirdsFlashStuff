package §4]§
{
   import §#I§.*;
   import §&H§.*;
   import §3b§.*;
   import §>!Z§.*;
   import §@!3§.*;
   
   use namespace b2internal;
   
   public class b2ContactFactory
   {
       
      
      private var §^m§:Vector.<Vector.<b2ContactRegister>>;
      
      private var §'!H§;
      
      public function b2ContactFactory(param1:*)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            super();
            while(true)
            {
               this.§'!H§ = param1;
               loop1:
               while(!_loc2_)
               {
                  while(true)
                  {
                     this.§+-§();
                     if(_loc3_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr51);
      }
      
      b2internal function §8"#§(param1:Function, param2:Function, param3:int, param4:int) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && this))
         {
            this.§^m§[param3][param4].createFcn = param1;
            while(true)
            {
               this.§^m§[param3][param4].destroyFcn = param2;
               loop1:
               while(!(_loc6_ && param1))
               {
                  this.§^m§[param3][param4].primary = true;
                  loop2:
                  for(; param3 != param4; if(_loc5_ || param2)
                  {
                     break;
                  })
                  {
                     loop3:
                     while(true)
                     {
                        this.§^m§[param4][param3].createFcn = param1;
                        while(true)
                        {
                           this.§^m§[param4][param3].destroyFcn = param2;
                           loop5:
                           while(!(_loc6_ && param3))
                           {
                              continue loop1;
                              if(_loc6_ && param2)
                              {
                                 continue loop1;
                              }
                              §§goto(addr87);
                              while(true)
                              {
                                 this.§^m§[param4][param3].primary = false;
                                 if(!(_loc6_ && param2))
                                 {
                                    if(!_loc6_)
                                    {
                                       continue loop2;
                                    }
                                    continue loop3;
                                 }
                                 continue loop5;
                              }
                           }
                        }
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr87);
      }
      
      b2internal function §+-§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = 0;
         if(!(_loc4_ && _loc2_))
         {
            this.§^m§ = new Vector.<Vector.<b2ContactRegister>>(b2Shape.§=!#§);
         }
         var _loc1_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc1_);
            if(_loc3_ || _loc3_)
            {
               §§push(b2Shape.§=!#§);
               if(!(_loc4_ && this))
               {
                  if(§§pop() >= §§pop())
                  {
                     loop1:
                     while(true)
                     {
                        this.§8"#§(b2CircleContact.§1!Y§,b2CircleContact.§=_§,b2Shape.§^!6§,b2Shape.§^!6§);
                        addr155:
                        while(true)
                        {
                           this.§8"#§(b2PolyAndCircleContact.§1!Y§,b2PolyAndCircleContact.§=_§,b2Shape.§=&§,b2Shape.§^!6§);
                           addr121:
                           loop3:
                           while(!_loc4_)
                           {
                              if(_loc3_)
                              {
                                 this.§8"#§(b2PolygonContact.§1!Y§,b2PolygonContact.§=_§,b2Shape.§=&§,b2Shape.§=&§);
                                 continue loop1;
                              }
                              addr217:
                              §§push(0);
                              loop6:
                              while(true)
                              {
                                 _loc2_ = §§pop();
                                 addr204:
                                 while(true)
                                 {
                                    loop8:
                                    while(true)
                                    {
                                       §§push(_loc2_);
                                       addr158:
                                       while(true)
                                       {
                                          if(!_loc4_)
                                          {
                                             §§push(b2Shape.§=!#§);
                                             while(true)
                                             {
                                                if(§§pop() >= §§pop())
                                                {
                                                   break loop3;
                                                }
                                                addr200:
                                                this.§^m§[_loc1_][_loc2_] = new b2ContactRegister();
                                                _loc2_++;
                                                continue loop8;
                                             }
                                             addr174:
                                             _loc1_++;
                                             continue loop0;
                                             addr162:
                                          }
                                          continue loop6;
                                       }
                                    }
                                 }
                              }
                           }
                           if(_loc3_)
                           {
                              if(_loc3_ || _loc3_)
                              {
                                 if(!_loc3_)
                                 {
                                    §§goto(addr204);
                                 }
                                 §§goto(addr174);
                              }
                              §§goto(addr200);
                           }
                           §§goto(addr188);
                        }
                     }
                  }
                  else
                  {
                     this.§^m§[_loc1_] = new Vector.<b2ContactRegister>(b2Shape.§=!#§);
                  }
                  §§goto(addr217);
               }
               §§goto(addr162);
            }
            §§goto(addr158);
         }
      }
      
      public function §1!Y§(param1:b2Fixture, param2:b2Fixture) : b2Contact
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc6_:b2Contact = null;
         §§push(param1.§ 5§());
         if(!_loc11_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(param2.§ 5§());
         if(_loc10_)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         var _loc5_:b2ContactRegister;
         §§push((_loc5_ = this.§^m§[_loc3_][_loc4_]).§5!H§);
         if(!_loc11_)
         {
            if(§§pop())
            {
               addr46:
               _loc6_ = _loc5_.§5!H§;
               if(!_loc11_)
               {
                  _loc5_.§5!H§ = _loc6_.§=!8§;
                  if(_loc10_)
                  {
                     var _loc8_:*;
                     §§push((_loc8_ = _loc5_).§2!i§);
                     if(_loc10_ || this)
                     {
                        §§push(§§pop() - 1);
                     }
                     var _loc9_:* = §§pop();
                     if(_loc10_ || param2)
                     {
                        _loc8_.§2!i§ = _loc9_;
                     }
                     if(!(_loc11_ && param2))
                     {
                        _loc6_.§2I§(param1,param2);
                        if(!(_loc10_ || param2))
                        {
                           addr111:
                           var _loc7_:Function;
                           if((_loc7_ = _loc5_.createFcn) == null)
                           {
                              return null;
                           }
                           if(!(_loc11_ && this))
                           {
                              if(_loc5_.primary)
                              {
                                 (_loc6_ = _loc7_(this.§'!H§)).§2I§(param1,param2);
                                 addr128:
                                 if(!_loc11_)
                                 {
                                    return _loc6_;
                                 }
                              }
                              (_loc6_ = _loc7_(this.§'!H§)).§2I§(param2,param1);
                              return _loc6_;
                           }
                           §§goto(addr128);
                        }
                     }
                  }
                  return _loc6_;
               }
            }
            §§goto(addr111);
         }
         §§goto(addr46);
      }
      
      public function §=_§(param1:b2Contact) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(_loc8_)
         {
            §§push(param1.§7!l§.§&!h§);
            if(_loc8_ || param1)
            {
               if(§§pop() > 0)
               {
                  if(!_loc9_)
                  {
                     addr32:
                     §§push(param1.§]V§);
                     if(_loc8_ || _loc3_)
                     {
                        §§push(§§pop().m_body);
                        if(!_loc9_)
                        {
                           §§push(true);
                           if(!(_loc9_ && _loc2_))
                           {
                              §§pop().SetAwake(§§pop());
                              addr75:
                              if(_loc8_ || _loc2_)
                              {
                                 addr63:
                                 §§push(param1.§!j§.m_body);
                                 §§push(true);
                              }
                              §§push(param1.§]V§.§ 5§());
                              if(_loc8_)
                              {
                                 addr81:
                                 var _loc2_:int = §§pop();
                                 §§push(param1.§!j§.§ 5§());
                                 if(!(_loc9_ && _loc2_))
                                 {
                                    §§push(int(§§pop()));
                                 }
                                 var _loc3_:* = §§pop();
                                 var _loc6_:*;
                                 var _loc4_:b2ContactRegister;
                                 §§push((_loc6_ = _loc4_ = this.§^m§[_loc2_][_loc3_]).§2!i§);
                                 if(_loc8_ || param1)
                                 {
                                    §§push(§§pop() + 1);
                                 }
                                 var _loc7_:* = §§pop();
                                 if(_loc8_)
                                 {
                                    _loc6_.§2!i§ = _loc7_;
                                 }
                                 if(_loc8_ || this)
                                 {
                                    param1.§=!8§ = _loc4_.§5!H§;
                                    if(_loc8_)
                                    {
                                       addr145:
                                       _loc4_.§5!H§ = param1;
                                    }
                                    var _loc5_:Function;
                                    (_loc5_ = _loc4_.destroyFcn)(param1,this.§'!H§);
                                    return;
                                 }
                                 §§goto(addr145);
                              }
                              §§goto(addr81);
                           }
                           §§pop().SetAwake(§§pop());
                           §§goto(addr75);
                        }
                        §§goto(addr63);
                     }
                     §§goto(addr75);
                  }
                  §§goto(addr63);
               }
               §§goto(addr75);
            }
            §§goto(addr81);
         }
         §§goto(addr32);
      }
   }
}
