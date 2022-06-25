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
         if(_loc3_ || _loc3_)
         {
            super();
            while(true)
            {
               this.§'!H§ = param1;
               §§goto(addr56);
            }
         }
         addr56:
         while(true)
         {
            this.§+-§();
            if(!(_loc2_ && param1))
            {
               if(!_loc2_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      b2internal function §8"#§(param1:Function, param2:Function, param3:int, param4:int) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            this.§^m§[param3][param4].createFcn = param1;
            loop0:
            while(true)
            {
               this.§^m§[param3][param4].destroyFcn = param2;
               while(true)
               {
                  this.§^m§[param3][param4].primary = true;
                  loop3:
                  for(; _loc5_ || this; if(_loc6_ && this)
                  {
                     continue;
                  },§§goto(addr19))
                  {
                     if(_loc5_)
                     {
                        this.§^m§[param4][param3].createFcn = param1;
                        while(_loc5_ || param2)
                        {
                           this.§^m§[param4][param3].destroyFcn = param2;
                           while(_loc5_ || this)
                           {
                              this.§^m§[param4][param3].primary = false;
                              if(_loc5_)
                              {
                                 continue loop3;
                              }
                           }
                        }
                        while(param3 != param4)
                        {
                           continue loop3;
                           §§goto(addr90);
                        }
                        addr90:
                        addr19:
                        return;
                        addr117:
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr117);
      }
      
      b2internal function §+-§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = 0;
         if(_loc3_ || _loc2_)
         {
            this.§^m§ = new Vector.<Vector.<b2ContactRegister>>(b2Shape.§=!#§);
         }
         var _loc1_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc1_);
            if(_loc3_ || _loc2_)
            {
               §§push(b2Shape.§=!#§);
               if(_loc3_ || this)
               {
                  if(§§pop() >= §§pop())
                  {
                     loop1:
                     while(true)
                     {
                        this.§8"#§(b2CircleContact.§1!Y§,b2CircleContact.§=_§,b2Shape.§^!6§,b2Shape.§^!6§);
                        loop2:
                        while(true)
                        {
                           this.§8"#§(b2PolyAndCircleContact.§1!Y§,b2PolyAndCircleContact.§=_§,b2Shape.§=&§,b2Shape.§^!6§);
                           loop3:
                           while(true)
                           {
                              if(!_loc3_)
                              {
                                 continue loop2;
                              }
                              if(_loc4_)
                              {
                                 break;
                              }
                              this.§8"#§(b2PolygonContact.§1!Y§,b2PolygonContact.§=_§,b2Shape.§=&§,b2Shape.§=&§);
                              loop4:
                              while(true)
                              {
                                 this.§8"#§(b2EdgeAndCircleContact.§1!Y§,b2EdgeAndCircleContact.§=_§,b2Shape.§=n§,b2Shape.§^!6§);
                                 while(true)
                                 {
                                    if(!_loc4_)
                                    {
                                       continue loop1;
                                    }
                                    continue loop4;
                                    addr92:
                                    this.§8"#§(b2PolyAndEdgeContact.§1!Y§,b2PolyAndEdgeContact.§=_§,b2Shape.§=&§,b2Shape.§=n§);
                                    if(_loc3_ || _loc3_)
                                    {
                                       continue loop3;
                                    }
                                 }
                                 addr181:
                                 loop9:
                                 while(true)
                                 {
                                    §§push(_loc2_);
                                    addr163:
                                    while(true)
                                    {
                                       if(!_loc4_)
                                       {
                                          §§push(b2Shape.§=!#§);
                                          while(true)
                                          {
                                             if(§§pop() >= §§pop())
                                             {
                                                addr168:
                                                if(!(_loc4_ && _loc3_))
                                                {
                                                   if(!_loc4_)
                                                   {
                                                      break;
                                                   }
                                                }
                                                else
                                                {
                                                   addr203:
                                                   if(_loc3_)
                                                   {
                                                      _loc2_++;
                                                      continue loop9;
                                                   }
                                                   addr222:
                                                   while(true)
                                                   {
                                                      §§push(0);
                                                      addr208:
                                                      while(true)
                                                      {
                                                         _loc2_ = §§pop();
                                                      }
                                                   }
                                                }
                                                while(true)
                                                {
                                                   continue loop9;
                                                }
                                             }
                                             else
                                             {
                                                this.§^m§[_loc1_][_loc2_] = new b2ContactRegister();
                                             }
                                             §§goto(addr203);
                                          }
                                          _loc1_++;
                                          break loop3;
                                          addr167:
                                       }
                                       §§goto(addr208);
                                    }
                                 }
                              }
                           }
                           continue loop0;
                        }
                     }
                  }
                  else
                  {
                     this.§^m§[_loc1_] = new Vector.<b2ContactRegister>(b2Shape.§=!#§);
                  }
                  §§goto(addr222);
               }
               §§goto(addr167);
            }
            §§goto(addr163);
         }
      }
      
      public function §1!Y§(param1:b2Fixture, param2:b2Fixture) : b2Contact
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc6_:b2Contact = null;
         §§push(param1.§ 5§());
         if(_loc11_ || _loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(param2.§ 5§());
         if(!(_loc10_ && param2))
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         var _loc5_:b2ContactRegister;
         §§push((_loc5_ = this.§^m§[_loc3_][_loc4_]).§5!H§);
         if(_loc11_)
         {
            if(§§pop())
            {
               addr57:
               _loc6_ = _loc5_.§5!H§;
               if(_loc11_)
               {
                  _loc5_.§5!H§ = _loc6_.§=!8§;
                  if(_loc11_ || this)
                  {
                     addr72:
                     var _loc8_:*;
                     §§push((_loc8_ = _loc5_).§2!i§);
                     if(!(_loc10_ && param1))
                     {
                        §§push(§§pop() - 1);
                     }
                     var _loc9_:* = §§pop();
                     if(!_loc10_)
                     {
                        _loc8_.§2!i§ = _loc9_;
                     }
                     if(_loc11_)
                     {
                        _loc6_.§2I§(param1,param2);
                        if(_loc10_ && param2)
                        {
                           addr117:
                           var _loc7_:Function;
                           if((_loc7_ = _loc5_.createFcn) == null)
                           {
                              return null;
                           }
                           if(!(_loc10_ && _loc3_))
                           {
                              if(_loc5_.primary)
                              {
                                 (_loc6_ = _loc7_(this.§'!H§)).§2I§(param1,param2);
                                 addr134:
                                 if(_loc11_)
                                 {
                                    return _loc6_;
                                 }
                              }
                              (_loc6_ = _loc7_(this.§'!H§)).§2I§(param2,param1);
                              return _loc6_;
                           }
                           §§goto(addr134);
                        }
                     }
                  }
                  return _loc6_;
               }
               §§goto(addr72);
            }
            §§goto(addr117);
         }
         §§goto(addr57);
      }
      
      public function §=_§(param1:b2Contact) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(!_loc8_)
         {
            §§push(param1.§7!l§.§&!h§);
            if(_loc9_)
            {
               if(§§pop() > 0)
               {
                  if(!(_loc8_ && this))
                  {
                     §§push(param1.§]V§);
                     if(_loc9_)
                     {
                        §§push(§§pop().m_body);
                        if(!(_loc8_ && this))
                        {
                           §§push(true);
                           if(!_loc8_)
                           {
                              §§pop().SetAwake(§§pop());
                              addr61:
                              if(!(_loc8_ && _loc2_))
                              {
                                 addr59:
                                 §§push(param1.§!j§.m_body);
                                 §§push(true);
                              }
                              §§push(param1.§]V§.§ 5§());
                              if(!(_loc8_ && _loc2_))
                              {
                                 addr82:
                                 var _loc2_:int = §§pop();
                                 §§push(param1.§!j§.§ 5§());
                                 if(!_loc8_)
                                 {
                                    §§push(int(§§pop()));
                                 }
                                 var _loc3_:* = §§pop();
                                 var _loc6_:*;
                                 var _loc4_:b2ContactRegister;
                                 §§push((_loc6_ = _loc4_ = this.§^m§[_loc2_][_loc3_]).§2!i§);
                                 if(_loc9_ || this)
                                 {
                                    §§push(§§pop() + 1);
                                 }
                                 var _loc7_:* = §§pop();
                                 if(_loc9_ || _loc2_)
                                 {
                                    _loc6_.§2!i§ = _loc7_;
                                 }
                                 if(_loc9_)
                                 {
                                    param1.§=!8§ = _loc4_.§5!H§;
                                    if(!_loc8_)
                                    {
                                       addr141:
                                       _loc4_.§5!H§ = param1;
                                    }
                                    var _loc5_:Function;
                                    (_loc5_ = _loc4_.destroyFcn)(param1,this.§'!H§);
                                    return;
                                 }
                                 §§goto(addr141);
                              }
                              §§goto(addr82);
                           }
                           §§pop().SetAwake(§§pop());
                           §§goto(addr61);
                        }
                        §§goto(addr59);
                     }
                  }
               }
               §§goto(addr61);
            }
            §§goto(addr82);
         }
         §§goto(addr61);
      }
   }
}
