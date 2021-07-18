package §#A§
{
   import § !t§.*;
   import §#b§.*;
   import §'!;§.*;
   import §<!B§.*;
   import §?s§.*;
   
   use namespace b2internal;
   
   public class b2ContactFactory
   {
       
      
      private var §&!H§:Vector.<Vector.<b2ContactRegister>>;
      
      private var §4!5§;
      
      public function b2ContactFactory(param1:*)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            super();
            if(!_loc3_)
            {
               this.§4!5§ = param1;
               if(_loc2_)
               {
                  this.§6!Z§();
               }
            }
         }
      }
      
      b2internal function §]!?§(param1:Function, param2:Function, param3:int, param4:int) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         this.§&!H§[param3][param4].createFcn = param1;
         if(!(_loc5_ && param3))
         {
            this.§&!H§[param3][param4].destroyFcn = param2;
            if(!_loc5_)
            {
               §§goto(addr52);
            }
            §§goto(addr88);
         }
         addr52:
         this.§&!H§[param3][param4].primary = true;
         if(param3 != param4)
         {
            this.§&!H§[param4][param3].createFcn = param1;
            if(!(_loc5_ && param1))
            {
               addr88:
               this.§&!H§[param4][param3].destroyFcn = param2;
               if(_loc6_)
               {
                  this.§&!H§[param4][param3].primary = false;
               }
            }
         }
      }
      
      b2internal function §6!Z§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = 0;
         if(_loc3_)
         {
            this.§&!H§ = new Vector.<Vector.<b2ContactRegister>>(b2Shape.§=D§);
         }
         var _loc1_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc1_);
            loop1:
            while(true)
            {
               §§push(b2Shape.§=D§);
               loop2:
               while(true)
               {
                  if(§§pop() >= §§pop())
                  {
                     if(_loc3_)
                     {
                        §§goto(addr129);
                     }
                     §§goto(addr156);
                  }
                  else
                  {
                     this.§&!H§[_loc1_] = new Vector.<b2ContactRegister>(b2Shape.§=D§);
                     if(_loc4_ && _loc2_)
                     {
                        break;
                     }
                     §§push(0);
                     if(_loc4_ && _loc1_)
                     {
                        continue loop1;
                     }
                     _loc2_ = §§pop();
                     if(!(_loc4_ && this))
                     {
                        while(true)
                        {
                           §§push(_loc2_);
                           if(_loc3_ || _loc3_)
                           {
                              §§push(b2Shape.§=D§);
                              if(_loc4_)
                              {
                                 continue loop2;
                              }
                              if(§§pop() < §§pop())
                              {
                                 this.§&!H§[_loc1_][_loc2_] = new b2ContactRegister();
                                 if(_loc4_ && this)
                                 {
                                    break;
                                 }
                                 continue;
                              }
                              if(_loc3_ || _loc1_)
                              {
                                 _loc1_++;
                                 if(_loc3_ || _loc2_)
                                 {
                                    break loop2;
                                 }
                                 addr129:
                                 this.§]!?§(b2CircleContact.§?J§,b2CircleContact.§;!#§,b2Shape.§@!>§,b2Shape.§@!>§);
                                 if(_loc3_ || _loc3_)
                                 {
                                    this.§]!?§(b2PolyAndCircleContact.§?J§,b2PolyAndCircleContact.§;!#§,b2Shape.§>>§,b2Shape.§@!>§);
                                    this.§]!?§(b2PolygonContact.§?J§,b2PolygonContact.§;!#§,b2Shape.§>>§,b2Shape.§>>§);
                                    this.§]!?§(b2EdgeAndCircleContact.§?J§,b2EdgeAndCircleContact.§;!#§,b2Shape.§<5§,b2Shape.§@!>§);
                                    addr156:
                                 }
                                 §§goto(addr186);
                              }
                           }
                           continue loop1;
                           addr186:
                           this.§]!?§(b2PolyAndEdgeContact.§?J§,b2PolyAndEdgeContact.§;!#§,b2Shape.§>>§,b2Shape.§<5§);
                           return;
                        }
                        §§goto(addr129);
                        addr95:
                     }
                     while(true)
                     {
                        _loc2_++;
                        §§goto(addr95);
                     }
                  }
                  §§goto(addr129);
               }
               continue loop0;
            }
         }
      }
      
      public function §?J§(param1:b2Fixture, param2:b2Fixture) : b2Contact
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc6_:b2Contact = null;
         §§push(param1.§"!j§());
         if(!(_loc10_ && this))
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(param2.§"!j§());
         if(_loc11_ || this)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         var _loc5_:b2ContactRegister;
         §§push((_loc5_ = this.§&!H§[_loc3_][_loc4_]).§"!e§);
         if(_loc11_)
         {
            if(§§pop())
            {
               addr57:
               _loc6_ = _loc5_.§"!e§;
               if(!_loc10_)
               {
                  _loc5_.§"!e§ = _loc6_.§ <§;
                  if(!_loc10_)
                  {
                     var _loc8_:*;
                     §§push((_loc8_ = _loc5_).§]!#§);
                     if(_loc11_ || _loc3_)
                     {
                        §§push(§§pop() - 1);
                     }
                     var _loc9_:* = §§pop();
                     if(!_loc10_)
                     {
                        _loc8_.§]!#§ = _loc9_;
                     }
                     if(!_loc10_)
                     {
                        _loc6_.§^!]§(param1,param2);
                        if(!_loc11_)
                        {
                           addr107:
                           var _loc7_:Function;
                           if((_loc7_ = _loc5_.createFcn) != null)
                           {
                              if(!(_loc10_ && param2))
                              {
                                 if(_loc5_.primary)
                                 {
                                    (_loc6_ = _loc7_(this.§4!5§)).§^!]§(param1,param2);
                                    addr124:
                                    if(!_loc10_)
                                    {
                                       return _loc6_;
                                    }
                                 }
                                 (_loc6_ = _loc7_(this.§4!5§)).§^!]§(param2,param1);
                                 return _loc6_;
                              }
                              §§goto(addr124);
                           }
                           else
                           {
                              return null;
                           }
                        }
                     }
                     return _loc6_;
                  }
               }
            }
            §§goto(addr107);
         }
         §§goto(addr57);
      }
      
      public function §;!#§(param1:b2Contact) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(!_loc9_)
         {
            §§push(param1.§@%§.§+!X§);
            if(!_loc9_)
            {
               if(§§pop() > 0)
               {
                  if(_loc8_)
                  {
                     §§push(param1.§4b§);
                     if(_loc8_ || _loc3_)
                     {
                        §§push(§§pop().m_body);
                        if(!(_loc9_ && _loc3_))
                        {
                           §§push(true);
                           if(_loc8_ || _loc3_)
                           {
                              §§pop().SetAwake(§§pop());
                              addr75:
                              if(_loc8_ || _loc2_)
                              {
                                 addr63:
                                 §§push(param1.§"'§.m_body);
                                 §§push(true);
                              }
                              §§push(param1.§4b§.§"!j§());
                              if(_loc8_)
                              {
                                 addr81:
                                 var _loc2_:int = §§pop();
                                 §§push(param1.§"'§.§"!j§());
                                 if(!(_loc9_ && param1))
                                 {
                                    §§push(int(§§pop()));
                                 }
                                 var _loc3_:* = §§pop();
                                 var _loc6_:*;
                                 var _loc4_:b2ContactRegister;
                                 §§push((_loc6_ = _loc4_ = this.§&!H§[_loc2_][_loc3_]).§]!#§);
                                 if(_loc8_ || param1)
                                 {
                                    §§push(§§pop() + 1);
                                 }
                                 var _loc7_:* = §§pop();
                                 if(_loc8_ || _loc3_)
                                 {
                                    _loc6_.§]!#§ = _loc7_;
                                 }
                                 if(_loc8_)
                                 {
                                    param1.§ <§ = _loc4_.§"!e§;
                                    if(_loc8_)
                                    {
                                       addr145:
                                       _loc4_.§"!e§ = param1;
                                    }
                                    var _loc5_:Function;
                                    (_loc5_ = _loc4_.destroyFcn)(param1,this.§4!5§);
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
         §§goto(addr75);
      }
   }
}
