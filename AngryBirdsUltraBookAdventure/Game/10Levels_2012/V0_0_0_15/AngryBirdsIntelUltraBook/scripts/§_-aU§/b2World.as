package §_-aU§
{
   import §_-03n§.*;
   import §_-09-§.*;
   import §_-0DM§.*;
   import §_-5§.*;
   import §_-YZ§.b2Controller;
   import §_-YZ§.b2ControllerEdge;
   import §_-Yp§.*;
   import §_-gE§.*;
   
   use namespace b2internal;
   
   public class b2World
   {
      
      private static var s_timestep2:b2TimeStep;
      
      private static var §_-0AG§:b2Transform;
      
      private static var §_-095§:b2Sweep;
      
      private static var §_-2K§:b2Sweep;
      
      private static var §_-0A1§:b2TimeStep;
      
      private static var §_-OH§:Vector.<b2Body>;
      
      private static var §_-06w§:b2Color;
      
      private static var §_-KS§:Boolean;
      
      private static var §_-65§:Boolean;
      
      public static const §_-0DB§:int = 1;
      
      public static const §_-nF§:int = 2;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            s_timestep2 = new b2TimeStep();
            loop0:
            while(true)
            {
               §_-0AG§ = new b2Transform();
               while(true)
               {
                  §_-095§ = new b2Sweep();
                  while(!(_loc2_ && _loc2_))
                  {
                     §_-2K§ = new b2Sweep();
                     loop3:
                     while(!(_loc2_ && b2World))
                     {
                        while(true)
                        {
                           §_-0A1§ = new b2TimeStep();
                           addr87:
                           while(true)
                           {
                              §_-OH§ = new Vector.<b2Body>();
                              addr72:
                              while(!_loc2_)
                              {
                                 continue loop0;
                              }
                              continue loop3;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr110);
      }
      
      private var §_-rQ§:Vector.<b2Body>;
      
      b2internal var §_-7R§:int;
      
      b2internal var §_-Xl§:b2ContactManager;
      
      private var §_-ol§:b2ContactSolver;
      
      private var §_-s3§:b2Island;
      
      b2internal var §_-WS§:b2Body;
      
      private var §_-6c§:b2Joint;
      
      b2internal var §_-4p§:b2Contact;
      
      private var §_-F9§:int;
      
      b2internal var §_-09s§:int;
      
      private var §_-ug§:int;
      
      private var §_-DZ§:b2Controller;
      
      private var §_-04s§:int;
      
      private var §_-hu§:b2Vec2;
      
      private var §_-0DS§:Boolean;
      
      b2internal var m_groundBody:b2Body;
      
      private var §_-Nc§:b2DestructionListener;
      
      private var §_-nw§:b2DebugDraw;
      
      private var §_-qt§:Number;
      
      public function b2World(param1:b2Vec2, param2:Boolean)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            this.§_-rQ§ = new Vector.<b2Body>();
            loop0:
            while(true)
            {
               this.§_-Xl§ = new b2ContactManager();
               while(true)
               {
                  this.§_-ol§ = new b2ContactSolver();
                  loop2:
                  while(true)
                  {
                     this.§_-s3§ = new b2Island();
                     while(true)
                     {
                        super();
                        loop4:
                        while(true)
                        {
                           this.§_-Nc§ = null;
                           addr190:
                           while(true)
                           {
                              this.§_-nw§ = null;
                              addr185:
                              while(true)
                              {
                                 this.§_-WS§ = null;
                                 continue loop4;
                              }
                           }
                        }
                        addr125:
                        if(_loc5_ && this)
                        {
                           continue;
                        }
                        this.§_-04s§ = 0;
                        loop15:
                        while(!(_loc5_ && param2))
                        {
                           §_-KS§ = true;
                           loop16:
                           while(true)
                           {
                              §_-65§ = true;
                              continue loop0;
                              addr59:
                              loop18:
                              while(true)
                              {
                                 if(_loc5_ && this)
                                 {
                                    continue loop16;
                                 }
                                 if(!_loc5_)
                                 {
                                    if(_loc5_)
                                    {
                                       break;
                                    }
                                    this.§_-hu§ = param1;
                                    loop19:
                                    while(true)
                                    {
                                       if(!_loc4_)
                                       {
                                          continue loop18;
                                       }
                                       if(!(_loc4_ || param1))
                                       {
                                          break;
                                       }
                                       loop20:
                                       while(true)
                                       {
                                          this.§_-qt§ = 0;
                                          while(true)
                                          {
                                             if(!_loc5_)
                                             {
                                                if(_loc4_)
                                                {
                                                   if(!_loc4_)
                                                   {
                                                      break;
                                                   }
                                                   this.§_-Xl§.m_world = this;
                                                   if(!_loc5_)
                                                   {
                                                      continue loop20;
                                                   }
                                                   continue;
                                                }
                                                continue loop0;
                                             }
                                             continue loop19;
                                          }
                                          continue loop15;
                                       }
                                       §§goto(addr190);
                                    }
                                    loop9:
                                    while(true)
                                    {
                                       this.§_-DZ§ = null;
                                       addr149:
                                       addr161:
                                       while(!_loc5_)
                                       {
                                          while(true)
                                          {
                                             this.§_-F9§ = 0;
                                             break loop15;
                                          }
                                          if(!(_loc4_ || param1))
                                          {
                                             continue;
                                          }
                                          if(_loc4_)
                                          {
                                             §§goto(addr125);
                                          }
                                          else
                                          {
                                             §§goto(addr185);
                                          }
                                       }
                                       while(true)
                                       {
                                          this.§_-6c§ = null;
                                          continue loop9;
                                       }
                                    }
                                 }
                                 loop14:
                                 while(true)
                                 {
                                    if(_loc4_)
                                    {
                                       §§goto(addr116);
                                    }
                                    addr137:
                                    while(true)
                                    {
                                       this.§_-ug§ = 0;
                                       continue loop14;
                                    }
                                 }
                                 §§goto(addr149);
                              }
                              continue loop2;
                           }
                        }
                        while(true)
                        {
                           if(_loc4_)
                           {
                              this.§_-09s§ = 0;
                              §§goto(addr137);
                           }
                           break;
                           §§goto(addr92);
                        }
                        addr92:
                        §§goto(addr166);
                     }
                  }
                  if(!(_loc4_ || _loc3_))
                  {
                     continue;
                  }
                  this.§_-4p§ = null;
                  §§goto(addr161);
               }
            }
         }
         §§goto(addr151);
      }
      
      public function §_-Gp§(param1:b2DestructionListener) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§_-Nc§ = param1;
         }
      }
      
      public function §_-fe§(param1:b2ContactFilter) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§_-Xl§.§_-K4§ = param1;
         }
      }
      
      public function §_-06F§(param1:b2ContactListener) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§_-Xl§.§_-0DF§ = param1;
         }
      }
      
      public function §_-7l§(param1:b2DebugDraw) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§_-nw§ = param1;
         }
      }
      
      public function §_-pe§(param1:§_-We§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:b2Fixture = null;
         var _loc2_:§_-We§ = this.§_-Xl§.§_-Q-§;
         if(!_loc6_)
         {
            this.§_-Xl§.§_-Q-§ = param1;
         }
         var _loc3_:b2Body = this.§_-WS§;
         while(_loc3_)
         {
            _loc4_ = _loc3_.§_-7L§;
            if(_loc5_ || this)
            {
               while(_loc4_)
               {
                  _loc4_.§_-Xg§ = param1.§_-7Y§(_loc2_.§_-082§(_loc4_.§_-Xg§),_loc4_);
                  if(!_loc5_)
                  {
                     break;
                  }
                  _loc4_ = _loc4_.§_-oz§;
               }
            }
            _loc3_ = _loc3_.§_-oz§;
         }
      }
      
      public function §_-0DA§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§_-Xl§.§_-Q-§.§_-0DA§();
         }
      }
      
      public function §_-ps§() : int
      {
         return this.§_-Xl§.§_-Q-§.§_-ps§();
      }
      
      public function §_-S0§(param1:b2BodyDef) : b2Body
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            if(this.§_-ZM§() == true)
            {
               if(_loc6_ || this)
               {
                  return null;
               }
            }
         }
         var _loc2_:b2Body = new b2Body(param1,this);
         if(_loc6_ || _loc3_)
         {
            _loc2_.§_-021§ = null;
            loop0:
            while(true)
            {
               _loc2_.§_-oz§ = this.§_-WS§;
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     §§push(this.§_-WS§);
                     if(!(_loc5_ && this))
                     {
                        if(§§pop())
                        {
                           if(!(_loc5_ && this))
                           {
                              addr95:
                              this.§_-WS§.§_-021§ = _loc2_;
                              loop4:
                              while(true)
                              {
                                 addr46:
                                 while(true)
                                 {
                                    this.§_-WS§ = _loc2_;
                                    if(_loc6_)
                                    {
                                       if(!(_loc6_ || param1))
                                       {
                                          continue loop4;
                                       }
                                       if(!_loc6_)
                                       {
                                          break loop2;
                                       }
                                       if(_loc5_)
                                       {
                                          continue loop0;
                                       }
                                       if(false)
                                       {
                                          continue loop2;
                                       }
                                       var _loc3_:*;
                                       §§push((_loc3_ = this).§_-F9§);
                                       if(_loc6_ || this)
                                       {
                                          §§push(§§pop() + 1);
                                       }
                                       var _loc4_:* = §§pop();
                                       if(!_loc5_)
                                       {
                                          _loc3_.§_-F9§ = _loc4_;
                                       }
                                    }
                                    continue loop4;
                                 }
                              }
                              addr97:
                           }
                           return _loc2_;
                        }
                        §§goto(addr46);
                     }
                     §§goto(addr95);
                  }
               }
            }
         }
         §§goto(addr97);
      }
      
      public function §_-yl§(param1:b2Body) : void
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc6_:b2JointEdge = null;
         var _loc7_:b2ControllerEdge = null;
         var _loc8_:b2ContactEdge = null;
         var _loc9_:b2Fixture = null;
         if(!_loc12_)
         {
            if(this.§_-ZM§() == true)
            {
               if(!(_loc12_ && param1))
               {
                  §§goto(addr42);
               }
            }
            var _loc2_:b2JointEdge = param1.§_-6c§;
            while(_loc2_)
            {
               _loc6_ = _loc2_;
               _loc2_ = _loc2_.§_-Oh§;
               if(_loc13_ || _loc3_)
               {
                  §§push(this.§_-Nc§);
                  if(_loc13_)
                  {
                     if(§§pop())
                     {
                        addr77:
                        if(!_loc12_)
                        {
                           §§push(this.§_-Nc§);
                        }
                        this.§_-r5§(_loc6_.§_-q5§);
                        continue;
                     }
                     §§goto(addr77);
                  }
                  §§pop().§_-98§(_loc6_.§_-q5§);
                  if(_loc12_)
                  {
                     continue;
                  }
               }
               §§goto(addr77);
            }
            var _loc3_:b2ControllerEdge = param1.§_-DZ§;
            if(_loc13_)
            {
               while(_loc3_)
               {
                  _loc7_ = _loc3_;
                  _loc3_ = _loc3_.§_-0AE§;
                  if(!(_loc12_ && _loc3_))
                  {
                     _loc7_.§_-03s§.§_-kG§(param1);
                  }
               }
            }
            var _loc4_:b2ContactEdge = param1.§_-4p§;
            if(_loc13_ || _loc2_)
            {
               while(_loc4_)
               {
                  _loc8_ = _loc4_;
                  _loc4_ = _loc4_.§_-Oh§;
                  if(_loc13_ || _loc2_)
                  {
                     this.§_-Xl§.§_-01§(_loc8_.§_-20§);
                  }
               }
               if(!_loc12_)
               {
                  addr147:
                  param1.§_-4p§ = null;
               }
               var _loc5_:b2Fixture = param1.§_-7L§;
               if(_loc13_ || _loc2_)
               {
                  loop3:
                  while(_loc5_)
                  {
                     _loc9_ = _loc5_;
                     _loc5_ = _loc5_.§_-oz§;
                     if(_loc13_)
                     {
                        §§push(this.§_-Nc§);
                        if(_loc13_ || _loc3_)
                        {
                           if(§§pop())
                           {
                              if(_loc13_ || _loc3_)
                              {
                                 addr218:
                                 this.§_-Nc§.§_-nh§(_loc9_);
                              }
                              loop4:
                              while(true)
                              {
                                 addr198:
                                 loop6:
                                 while(true)
                                 {
                                    _loc9_.§_-01§();
                                    if(!_loc13_)
                                    {
                                       continue;
                                    }
                                    if(_loc12_)
                                    {
                                       continue loop4;
                                    }
                                    if(true)
                                    {
                                       break;
                                    }
                                    while(true)
                                    {
                                       _loc9_.§_-yw§(this.§_-Xl§.§_-Q-§);
                                       continue loop6;
                                    }
                                 }
                                 continue loop3;
                              }
                           }
                           §§goto(addr192);
                        }
                        §§goto(addr218);
                     }
                     §§goto(addr198);
                  }
                  if(_loc13_ || _loc2_)
                  {
                     param1.§_-7L§ = null;
                     if(_loc13_ || _loc3_)
                     {
                        param1.§_-jM§ = 0;
                        loop16:
                        while(true)
                        {
                           §§push(param1.§_-021§);
                           if(!(_loc12_ && this))
                           {
                              if(§§pop())
                              {
                                 if(_loc13_)
                                 {
                                    while(true)
                                    {
                                       §§push(param1.§_-021§);
                                       addr314:
                                       while(true)
                                       {
                                          §§pop().§_-oz§ = param1.§_-oz§;
                                       }
                                    }
                                    addr312:
                                 }
                                 while(!(_loc13_ || this))
                                 {
                                    continue loop16;
                                 }
                                 addr317:
                              }
                              loop8:
                              while(true)
                              {
                                 §§push(param1.§_-oz§);
                                 if(_loc13_ || this)
                                 {
                                    if(§§pop())
                                    {
                                       while(true)
                                       {
                                          §§push(param1.§_-oz§);
                                          addr295:
                                          while(true)
                                          {
                                             §§pop().§_-021§ = param1.§_-021§;
                                             addr298:
                                             while(true)
                                             {
                                             }
                                          }
                                          addr253:
                                          if(!(_loc13_ || _loc2_))
                                          {
                                             continue;
                                          }
                                          if(!(_loc12_ && this))
                                          {
                                             break loop8;
                                          }
                                          §§goto(addr317);
                                       }
                                    }
                                    while(true)
                                    {
                                       if(param1 == this.§_-WS§)
                                       {
                                          if(!(_loc12_ && _loc3_))
                                          {
                                             §§goto(addr253);
                                          }
                                          break;
                                       }
                                       addr339:
                                       var _loc10_:*;
                                       §§push((_loc10_ = this).§_-F9§);
                                       if(_loc13_)
                                       {
                                          §§push(§§pop() - 1);
                                       }
                                       var _loc11_:* = §§pop();
                                       if(!(_loc12_ && param1))
                                       {
                                          _loc10_.§_-F9§ = _loc11_;
                                       }
                                       break;
                                    }
                                    §§goto(addr359);
                                 }
                                 §§goto(addr295);
                              }
                              while(true)
                              {
                                 this.§_-WS§ = param1.§_-oz§;
                                 if(!(_loc12_ && _loc3_))
                                 {
                                    if(!_loc12_)
                                    {
                                       if(false)
                                       {
                                          §§goto(addr282);
                                       }
                                       §§goto(addr339);
                                    }
                                    §§goto(addr298);
                                 }
                                 addr359:
                                 return;
                                 §§goto(addr260);
                              }
                              addr282:
                              addr267:
                           }
                           §§goto(addr314);
                        }
                        addr240:
                     }
                     §§goto(addr267);
                  }
                  §§goto(addr312);
               }
               §§goto(addr240);
            }
            §§goto(addr147);
         }
         addr42:
      }
      
      public function §_-oW§(param1:b2JointDef) : b2Joint
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc5_:b2ContactEdge = null;
         var _loc2_:b2Joint = b2Joint.§_-xb§(param1,null);
         if(_loc8_ || param1)
         {
            _loc2_.§_-021§ = null;
            if(_loc8_)
            {
               _loc2_.§_-oz§ = this.§_-6c§;
               if(!_loc9_)
               {
                  loop0:
                  while(true)
                  {
                     §§push(this.§_-6c§);
                     if(!(_loc9_ && param1))
                     {
                        if(§§pop())
                        {
                           if(!_loc9_)
                           {
                              addr68:
                              this.§_-6c§.§_-021§ = _loc2_;
                              loop2:
                              while(true)
                              {
                                 addr33:
                                 loop1:
                                 while(true)
                                 {
                                    this.§_-6c§ = _loc2_;
                                    if(_loc8_ || param1)
                                    {
                                       if(_loc9_ && this)
                                       {
                                          continue loop2;
                                       }
                                       if(false)
                                       {
                                          continue loop0;
                                       }
                                       addr158:
                                       var _loc6_:*;
                                       §§push((_loc6_ = this).§_-ug§);
                                       if(!_loc9_)
                                       {
                                          §§push(§§pop() + 1);
                                       }
                                       var _loc7_:* = §§pop();
                                       if(_loc8_ || _loc3_)
                                       {
                                          _loc6_.§_-ug§ = _loc7_;
                                       }
                                       if(_loc8_ || _loc2_)
                                       {
                                          addr329:
                                          _loc2_.§_-b3§.§_-q5§ = _loc2_;
                                          _loc2_.§_-b3§.§_-TK§ = _loc2_.§_-c9§;
                                          break;
                                          addr331:
                                       }
                                       addr158:
                                       §§push(_loc2_.§_-c9§);
                                       loop18:
                                       while(true)
                                       {
                                          §§push(§§pop().§_-6c§);
                                          loop17:
                                          while(true)
                                          {
                                             if(!_loc9_)
                                             {
                                                if(_loc8_ || _loc3_)
                                                {
                                                   §§pop().§_-05Y§ = _loc2_.§_-0DP§;
                                                   loop15:
                                                   while(_loc8_ || this)
                                                   {
                                                      while(true)
                                                      {
                                                         addr113:
                                                         addr128:
                                                         while(true)
                                                         {
                                                            §§push(_loc2_.§_-c9§);
                                                            if(!(_loc9_ && param1))
                                                            {
                                                               §§pop().§_-6c§ = _loc2_.§_-0DP§;
                                                               if(_loc8_)
                                                               {
                                                                  break;
                                                               }
                                                               continue loop15;
                                                            }
                                                            continue loop18;
                                                         }
                                                         loop13:
                                                         for(; _loc8_ || _loc3_; §§goto(addr128))
                                                         {
                                                            if(!_loc9_)
                                                            {
                                                               §§goto(addr137);
                                                            }
                                                            else
                                                            {
                                                               loop9:
                                                               while(true)
                                                               {
                                                                  §§push(_loc2_.§_-0DP§);
                                                                  loop10:
                                                                  while(true)
                                                                  {
                                                                     §§pop().§_-05Y§ = null;
                                                                     break loop13;
                                                                     addr254:
                                                                     loop12:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc2_.§_-0DP§);
                                                                        if(_loc9_ && param1)
                                                                        {
                                                                           continue loop10;
                                                                        }
                                                                        if(!_loc9_)
                                                                        {
                                                                           if(_loc8_)
                                                                           {
                                                                              §§pop().§_-Oh§ = _loc2_.§_-c9§.§_-6c§;
                                                                              continue loop13;
                                                                           }
                                                                           loop6:
                                                                           while(true)
                                                                           {
                                                                              §§pop().§_-q5§ = _loc2_;
                                                                              addr267:
                                                                              while(_loc8_ || this)
                                                                              {
                                                                                 §§push(_loc2_.§_-0DP§);
                                                                              }
                                                                              addr319:
                                                                              §§push(_loc2_.§_-b3§);
                                                                              if(!_loc8_)
                                                                              {
                                                                                 addr313:
                                                                                 if(_loc8_)
                                                                                 {
                                                                                    if(_loc8_)
                                                                                    {
                                                                                       §§pop().§_-05Y§ = null;
                                                                                       §§goto(addr319);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr329);
                                                                              }
                                                                              addr309:
                                                                              §§pop().§_-Oh§ = _loc2_.§_-0FB§.§_-6c§;
                                                                              addr309:
                                                                              if(_loc2_.§_-0FB§.§_-6c§)
                                                                              {
                                                                                 addr299:
                                                                                 if(!_loc9_)
                                                                                 {
                                                                                    addr296:
                                                                                    _loc2_.§_-0FB§.§_-6c§.§_-05Y§ = _loc2_.§_-b3§;
                                                                                    addr295:
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                 }
                                                                                 addr299:
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc2_.§_-0FB§);
                                                                                 if(_loc8_)
                                                                                 {
                                                                                    if(!_loc9_)
                                                                                    {
                                                                                       §§pop().§_-6c§ = _loc2_.§_-b3§;
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc2_.§_-0DP§);
                                                                                          addr226:
                                                                                          continue loop6;
                                                                                          if(_loc9_ && param1)
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                          if(!(_loc9_ && _loc2_))
                                                                                          {
                                                                                             if(!(_loc9_ && this))
                                                                                             {
                                                                                                if(!(_loc9_ && this))
                                                                                                {
                                                                                                   continue loop12;
                                                                                                }
                                                                                                §§goto(addr331);
                                                                                             }
                                                                                             §§goto(addr309);
                                                                                          }
                                                                                          §§goto(addr299);
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr309);
                                                                                    }
                                                                                 }
                                                                                 break;
                                                                              }
                                                                              §§goto(addr295);
                                                                           }
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§pop().§_-TK§ = _loc2_.§_-0FB§;
                                                                           continue loop9;
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         if(_loc8_ || _loc2_)
                                                         {
                                                            addr135:
                                                            if(false)
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(_loc2_.§_-c9§);
                                                                  if(!(_loc8_ || this))
                                                                  {
                                                                     continue loop18;
                                                                  }
                                                                  §§push(§§pop().§_-6c§);
                                                                  if(_loc9_)
                                                                  {
                                                                     continue loop17;
                                                                  }
                                                                  if(§§pop())
                                                                  {
                                                                     if(!(_loc8_ || _loc3_))
                                                                     {
                                                                        continue loop15;
                                                                     }
                                                                     §§goto(addr158);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr113);
                                                                  }
                                                               }
                                                               addr137:
                                                            }
                                                            var _loc3_:b2Body = param1.§_-ZR§;
                                                            var _loc4_:b2Body = param1.§_-7b§;
                                                            if(!_loc9_)
                                                            {
                                                               if(param1.collideConnected == false)
                                                               {
                                                                  addr346:
                                                                  _loc5_ = _loc4_.§_-qw§();
                                                                  addr387:
                                                                  if(_loc5_)
                                                                  {
                                                                     if(_loc5_.§_-TK§ == _loc3_)
                                                                     {
                                                                        if(_loc8_ || _loc2_)
                                                                        {
                                                                           _loc5_.§_-20§.§_-FN§();
                                                                           if(_loc9_ && param1)
                                                                           {
                                                                           }
                                                                           §§goto(addr389);
                                                                        }
                                                                     }
                                                                     _loc5_ = _loc5_.§_-Oh§;
                                                                     §§goto(addr387);
                                                                  }
                                                               }
                                                               addr389:
                                                               return _loc2_;
                                                            }
                                                            §§goto(addr346);
                                                         }
                                                         while(true)
                                                         {
                                                            if(_loc8_)
                                                            {
                                                               §§goto(addr226);
                                                            }
                                                            §§goto(addr267);
                                                         }
                                                         §§goto(addr309);
                                                      }
                                                   }
                                                   break loop1;
                                                }
                                                §§goto(addr309);
                                             }
                                             §§goto(addr296);
                                          }
                                       }
                                    }
                                    break;
                                 }
                                 §§goto(addr313);
                              }
                           }
                           §§goto(addr158);
                        }
                        §§goto(addr33);
                     }
                     §§goto(addr68);
                  }
               }
               §§goto(addr299);
            }
            §§goto(addr254);
         }
         §§goto(addr190);
      }
      
      public function §_-r5§(param1:b2Joint) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc5_:b2ContactEdge = null;
         §§push(param1.§_-vY§);
         if(_loc8_)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!_loc9_)
         {
            §§push(param1.§_-021§);
            if(_loc8_ || _loc2_)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(param1.§_-021§);
                     addr88:
                     while(true)
                     {
                        §§pop().§_-oz§ = param1.§_-oz§;
                        addr91:
                        while(true)
                        {
                        }
                     }
                  }
                  addr86:
               }
               loop1:
               while(true)
               {
                  §§push(param1.§_-oz§);
                  if(_loc8_)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           if(!_loc9_)
                           {
                              while(true)
                              {
                                 §§push(param1.§_-oz§);
                                 addr72:
                                 while(true)
                                 {
                                    §§pop().§_-021§ = param1.§_-021§;
                                    addr75:
                                    while(true)
                                    {
                                    }
                                 }
                              }
                              addr70:
                           }
                           else
                           {
                              §§goto(addr86);
                           }
                           addr47:
                           if(_loc9_ && this)
                           {
                              continue;
                           }
                           this.§_-6c§ = param1.§_-oz§;
                           addr58:
                           if(_loc9_)
                           {
                              break;
                           }
                           if(false)
                           {
                              continue loop1;
                           }
                           addr92:
                           var _loc3_:b2Body = param1.§_-0FB§;
                           var _loc4_:b2Body = param1.§_-c9§;
                           if(!_loc9_)
                           {
                              _loc3_.SetAwake(true);
                              _loc4_.SetAwake(true);
                              addr409:
                              if(_loc8_)
                              {
                                 addr396:
                                 addr395:
                                 if(param1.§_-b3§.§_-05Y§)
                                 {
                                    addr403:
                                    param1.§_-b3§.§_-05Y§.§_-Oh§ = param1.§_-b3§.§_-Oh§;
                                    addr400:
                                    addr399:
                                    addr397:
                                 }
                                 §§push(param1.§_-b3§.§_-Oh§);
                                 if(_loc8_)
                                 {
                                    if(§§pop())
                                    {
                                       addr390:
                                       param1.§_-b3§.§_-Oh§.§_-05Y§ = param1.§_-b3§.§_-05Y§;
                                       addr391:
                                       addr387:
                                       addr384:
                                       addr386:
                                    }
                                    addr350:
                                    §§push(param1.§_-b3§);
                                    if(_loc8_)
                                    {
                                       if(_loc8_ || _loc3_)
                                       {
                                          if(§§pop() == _loc3_.§_-6c§)
                                          {
                                             addr362:
                                             _loc3_.§_-6c§ = param1.§_-b3§.§_-Oh§;
                                             if(!(_loc9_ && param1))
                                             {
                                                if(!_loc9_)
                                                {
                                                   addr326:
                                                   §§push(param1.§_-b3§);
                                                   if(_loc8_ || this)
                                                   {
                                                      if(_loc8_ || this)
                                                      {
                                                         addr341:
                                                         §§pop().§_-05Y§ = null;
                                                         if(_loc8_)
                                                         {
                                                            if(!_loc9_)
                                                            {
                                                               §§push(param1.§_-b3§);
                                                               if(_loc8_ || _loc3_)
                                                               {
                                                                  if(!(_loc9_ && this))
                                                                  {
                                                                     §§push(null);
                                                                     if(_loc8_)
                                                                     {
                                                                        §§pop().§_-Oh§ = §§pop();
                                                                        addr261:
                                                                        addr322:
                                                                        §§push(param1.§_-0DP§.§_-05Y§);
                                                                        if(_loc8_ || param1)
                                                                        {
                                                                           if(!_loc9_)
                                                                           {
                                                                              if(_loc8_ || this)
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    addr279:
                                                                                    if(!(_loc9_ && _loc3_))
                                                                                    {
                                                                                       addr288:
                                                                                       §§push(param1.§_-0DP§.§_-05Y§);
                                                                                       §§push(param1.§_-0DP§.§_-Oh§);
                                                                                       if(_loc8_ || _loc3_)
                                                                                       {
                                                                                          §§pop().§_-Oh§ = §§pop();
                                                                                          addr300:
                                                                                          §§push(param1.§_-0DP§);
                                                                                          if(_loc8_)
                                                                                          {
                                                                                             §§push(§§pop().§_-Oh§);
                                                                                             if(!_loc9_)
                                                                                             {
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   if(!_loc9_)
                                                                                                   {
                                                                                                      if(_loc8_)
                                                                                                      {
                                                                                                         if(!(_loc9_ && param1))
                                                                                                         {
                                                                                                            if(_loc8_ || _loc2_)
                                                                                                            {
                                                                                                               addr224:
                                                                                                               §§push(param1.§_-0DP§);
                                                                                                               if(_loc8_)
                                                                                                               {
                                                                                                                  addr227:
                                                                                                                  §§push(§§pop().§_-Oh§);
                                                                                                                  if(!_loc9_)
                                                                                                                  {
                                                                                                                     §§push(param1.§_-0DP§.§_-05Y§);
                                                                                                                     if(_loc8_ || this)
                                                                                                                     {
                                                                                                                        §§pop().§_-05Y§ = §§pop();
                                                                                                                        if(_loc8_ || this)
                                                                                                                        {
                                                                                                                           addr173:
                                                                                                                           §§push(param1.§_-0DP§);
                                                                                                                           if(_loc8_)
                                                                                                                           {
                                                                                                                              if(§§pop() == _loc4_.§_-6c§)
                                                                                                                              {
                                                                                                                                 if(!(_loc9_ && this))
                                                                                                                                 {
                                                                                                                                    if(!_loc9_)
                                                                                                                                    {
                                                                                                                                       _loc4_.§_-6c§ = param1.§_-0DP§.§_-Oh§;
                                                                                                                                       addr192:
                                                                                                                                       if(!_loc9_)
                                                                                                                                       {
                                                                                                                                          addr144:
                                                                                                                                          §§push(param1.§_-0DP§);
                                                                                                                                          if(_loc8_ || _loc2_)
                                                                                                                                          {
                                                                                                                                             if(_loc8_ || _loc2_)
                                                                                                                                             {
                                                                                                                                                addr159:
                                                                                                                                                §§pop().§_-05Y§ = null;
                                                                                                                                                if(!_loc9_)
                                                                                                                                                {
                                                                                                                                                   if(!(_loc9_ && param1))
                                                                                                                                                   {
                                                                                                                                                      addr117:
                                                                                                                                                      §§push(param1.§_-0DP§);
                                                                                                                                                      if(!_loc9_)
                                                                                                                                                      {
                                                                                                                                                         §§push(null);
                                                                                                                                                         if(_loc8_)
                                                                                                                                                         {
                                                                                                                                                            §§pop().§_-Oh§ = §§pop();
                                                                                                                                                            if(_loc8_ || _loc2_)
                                                                                                                                                            {
                                                                                                                                                               if(!(_loc9_ && _loc2_))
                                                                                                                                                               {
                                                                                                                                                                  b2Joint.§_-01§(param1,null);
                                                                                                                                                                  if(!(_loc9_ && _loc2_))
                                                                                                                                                                  {
                                                                                                                                                                     if(false)
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr117);
                                                                                                                                                                     }
                                                                                                                                                                     var _loc6_:*;
                                                                                                                                                                     §§push((_loc6_ = this).§_-ug§);
                                                                                                                                                                     if(!_loc9_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() - 1);
                                                                                                                                                                     }
                                                                                                                                                                     var _loc7_:* = §§pop();
                                                                                                                                                                     if(_loc8_ || _loc3_)
                                                                                                                                                                     {
                                                                                                                                                                        _loc6_.§_-ug§ = _loc7_;
                                                                                                                                                                     }
                                                                                                                                                                     if(!_loc9_)
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr438);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr441);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr391);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr441);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr159);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr144);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr192);
                                                                                                                                                }
                                                                                                                                                §§goto(addr441);
                                                                                                                                             }
                                                                                                                                             §§goto(addr261);
                                                                                                                                          }
                                                                                                                                          §§goto(addr173);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr362);
                                                                                                                                 }
                                                                                                                                 §§goto(addr441);
                                                                                                                              }
                                                                                                                              §§goto(addr144);
                                                                                                                           }
                                                                                                                           §§goto(addr224);
                                                                                                                        }
                                                                                                                        §§goto(addr438);
                                                                                                                     }
                                                                                                                     §§goto(addr390);
                                                                                                                  }
                                                                                                                  §§goto(addr387);
                                                                                                               }
                                                                                                               §§goto(addr288);
                                                                                                            }
                                                                                                            §§goto(addr384);
                                                                                                         }
                                                                                                         §§goto(addr279);
                                                                                                      }
                                                                                                      §§goto(addr300);
                                                                                                   }
                                                                                                   addr438:
                                                                                                   if(_loc2_ == false)
                                                                                                   {
                                                                                                      addr441:
                                                                                                      _loc5_ = _loc4_.§_-qw§();
                                                                                                      addr482:
                                                                                                      if(_loc5_)
                                                                                                      {
                                                                                                         if(_loc5_.§_-TK§ == _loc3_)
                                                                                                         {
                                                                                                            if(_loc8_ || _loc2_)
                                                                                                            {
                                                                                                               _loc5_.§_-20§.§_-FN§();
                                                                                                               if(_loc8_ || _loc3_)
                                                                                                               {
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr484);
                                                                                                         }
                                                                                                         _loc5_ = _loc5_.§_-Oh§;
                                                                                                         §§goto(addr482);
                                                                                                      }
                                                                                                   }
                                                                                                   addr484:
                                                                                                   return;
                                                                                                }
                                                                                                §§goto(addr173);
                                                                                             }
                                                                                             §§goto(addr227);
                                                                                          }
                                                                                          §§goto(addr224);
                                                                                       }
                                                                                       §§goto(addr403);
                                                                                    }
                                                                                    §§goto(addr322);
                                                                                 }
                                                                                 §§goto(addr300);
                                                                              }
                                                                              §§goto(addr396);
                                                                           }
                                                                           §§goto(addr400);
                                                                        }
                                                                        §§goto(addr288);
                                                                     }
                                                                     §§goto(addr341);
                                                                  }
                                                                  §§goto(addr350);
                                                               }
                                                               §§goto(addr326);
                                                            }
                                                            §§goto(addr409);
                                                         }
                                                         §§goto(addr441);
                                                      }
                                                      §§goto(addr399);
                                                   }
                                                   §§goto(addr386);
                                                }
                                                §§goto(addr397);
                                             }
                                             §§goto(addr403);
                                          }
                                          §§goto(addr326);
                                       }
                                       §§goto(addr395);
                                    }
                                    §§goto(addr396);
                                 }
                                 §§goto(addr390);
                              }
                              addr415:
                              §§goto(addr415);
                           }
                           §§goto(addr224);
                        }
                        §§goto(addr91);
                     }
                     for(; param1 == this.§_-6c§; §§goto(addr75))
                     {
                        if(!(_loc9_ && this))
                        {
                           if(!(_loc8_ || _loc3_))
                           {
                              continue;
                           }
                           §§goto(addr47);
                        }
                        §§goto(addr58);
                     }
                     §§goto(addr92);
                  }
                  §§goto(addr72);
               }
            }
            §§goto(addr88);
         }
         §§goto(addr70);
      }
      
      public function §_-cY§(param1:b2Controller) : b2Controller
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || _loc3_)
         {
            param1.§_-oz§ = this.§_-DZ§;
            while(true)
            {
               param1.§_-021§ = null;
               loop1:
               for(; !_loc4_; while(true)
               {
                  if(_loc5_ || param1)
                  {
                     param1.m_world = this;
                     if(!_loc4_)
                     {
                        if(_loc5_ || _loc3_)
                        {
                           addr38:
                           if(true)
                           {
                              var _loc2_:*;
                              §§push((_loc2_ = this).§_-04s§);
                              if(_loc5_)
                              {
                                 §§push(§§pop() + 1);
                              }
                              var _loc3_:* = §§pop();
                           }
                           else
                           {
                              addr104:
                           }
                           continue loop3;
                        }
                        continue;
                        if(!(_loc4_ && _loc2_))
                        {
                           _loc2_.§_-04s§ = _loc3_;
                        }
                        return param1;
                     }
                     break;
                  }
                  continue loop1;
               },§§goto(addr104))
               {
                  while(true)
                  {
                     while(true)
                     {
                        this.§_-DZ§ = param1;
                        continue loop1;
                        §§goto(addr38);
                     }
                  }
               }
            }
         }
         §§goto(addr78);
      }
      
      public function §_-Bz§(param1:b2Controller) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            §§push(param1.§_-021§);
            if(!(_loc4_ && this))
            {
               if(§§pop())
               {
                  if(!_loc4_)
                  {
                     addr75:
                     param1.§_-021§.§_-oz§ = param1.§_-oz§;
                     if(!(_loc4_ && _loc3_))
                     {
                        while(true)
                        {
                           §§push(param1.§_-oz§);
                           if(_loc5_)
                           {
                              if(§§pop())
                              {
                                 if(_loc5_)
                                 {
                                    addr55:
                                    param1.§_-oz§.§_-021§ = param1.§_-021§;
                                    if(!_loc5_)
                                    {
                                    }
                                    break;
                                 }
                              }
                              if(this.§_-DZ§ == param1)
                              {
                                 if(!_loc4_)
                                 {
                                    this.§_-DZ§ = param1.§_-oz§;
                                    if(_loc4_)
                                    {
                                    }
                                    break;
                                 }
                                 if(false)
                                 {
                                    continue;
                                 }
                              }
                              var _loc2_:*;
                              §§push((_loc2_ = this).§_-04s§);
                              if(_loc5_ || param1)
                              {
                                 §§push(§§pop() - 1);
                              }
                              var _loc3_:* = §§pop();
                              if(_loc5_)
                              {
                                 _loc2_.§_-04s§ = _loc3_;
                              }
                              break;
                           }
                           §§goto(addr55);
                        }
                        addr35:
                     }
                     addr73:
                  }
                  return;
               }
               §§goto(addr35);
            }
            §§goto(addr75);
         }
         §§goto(addr73);
      }
      
      public function §_-dL§(param1:b2Controller) : b2Controller
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            if(param1.m_world != this)
            {
               if(!_loc4_)
               {
                  throw new Error("Controller can only be a member of one world");
               }
               addr105:
               while(true)
               {
               }
               addr105:
            }
            loop0:
            while(true)
            {
               param1.§_-oz§ = this.§_-DZ§;
               if(_loc5_ || _loc3_)
               {
                  param1.§_-021§ = null;
                  loop1:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(this.§_-DZ§);
                        if(_loc5_ || _loc3_)
                        {
                           if(!§§pop())
                           {
                              addr20:
                              this.§_-DZ§ = param1;
                              if(!(_loc4_ && this))
                              {
                                 if(true)
                                 {
                                    var _loc2_:*;
                                    §§push((_loc2_ = this).§_-04s§);
                                    if(!(_loc4_ && param1))
                                    {
                                       §§push(§§pop() + 1);
                                    }
                                    var _loc3_:* = §§pop();
                                    if(_loc5_ || _loc2_)
                                    {
                                       _loc2_.§_-04s§ = _loc3_;
                                    }
                                 }
                                 continue;
                                 if(_loc5_ || param1)
                                 {
                                    break loop0;
                                 }
                                 break;
                              }
                              break;
                           }
                           if(!_loc5_)
                           {
                              continue loop1;
                           }
                           §§push(this.§_-DZ§);
                        }
                        §§pop().§_-021§ = param1;
                        if(_loc4_)
                        {
                           break;
                        }
                        continue loop1;
                     }
                     §§goto(addr151);
                  }
               }
               break;
               §§goto(addr105);
            }
            param1.m_world = this;
            addr151:
            return param1;
         }
         §§goto(addr105);
      }
      
      public function §_-00S§(param1:b2Controller) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            param1.§_-p7§();
            loop0:
            while(true)
            {
               §§push(param1.§_-oz§);
               if(!(_loc4_ && _loc2_))
               {
                  if(§§pop())
                  {
                     loop1:
                     while(true)
                     {
                        §§push(param1.§_-oz§);
                        addr103:
                        while(true)
                        {
                           §§pop().§_-021§ = param1.§_-021§;
                           if(_loc5_)
                           {
                              loop2:
                              while(true)
                              {
                                 §§push(param1.§_-021§);
                                 if(_loc5_)
                                 {
                                    if(§§pop())
                                    {
                                       while(true)
                                       {
                                          §§push(param1.§_-021§);
                                          addr76:
                                          while(true)
                                          {
                                             §§pop().§_-oz§ = param1.§_-oz§;
                                             addr79:
                                             while(true)
                                             {
                                             }
                                          }
                                          addr34:
                                          if(!(_loc5_ || param1))
                                          {
                                             continue;
                                          }
                                          while(true)
                                          {
                                             this.§_-DZ§ = param1.§_-oz§;
                                             if(_loc5_ || param1)
                                             {
                                                if(!_loc5_)
                                                {
                                                   continue loop1;
                                                }
                                                if(!_loc5_)
                                                {
                                                   continue loop0;
                                                }
                                                if(false)
                                                {
                                                   continue loop2;
                                                }
                                                addr112:
                                                var _loc2_:*;
                                                §§push((_loc2_ = this).§_-04s§);
                                                if(!_loc4_)
                                                {
                                                   §§push(§§pop() - 1);
                                                }
                                                var _loc3_:* = §§pop();
                                                if(_loc5_)
                                                {
                                                   _loc2_.§_-04s§ = _loc3_;
                                                }
                                             }
                                             §§goto(addr127);
                                          }
                                       }
                                    }
                                    for(; param1 == this.§_-DZ§; §§goto(addr79))
                                    {
                                       if(!(_loc4_ && _loc3_))
                                       {
                                          if(_loc4_)
                                          {
                                             continue;
                                          }
                                          §§goto(addr34);
                                       }
                                       §§goto(addr127);
                                    }
                                    §§goto(addr112);
                                 }
                                 §§goto(addr76);
                              }
                              addr68:
                           }
                           addr127:
                           return;
                        }
                     }
                  }
                  §§goto(addr68);
               }
               §§goto(addr103);
            }
         }
         §§goto(addr41);
      }
      
      public function §_-06U§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §_-KS§ = param1;
         }
      }
      
      public function §_-xp§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            §_-65§ = param1;
         }
      }
      
      public function §_-LB§() : int
      {
         return this.§_-F9§;
      }
      
      public function §_-SX§() : int
      {
         return this.§_-ug§;
      }
      
      public function §_-Kb§() : int
      {
         return this.§_-09s§;
      }
      
      public function §_-06x§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§_-hu§ = param1;
         }
      }
      
      public function §_-aX§() : b2Vec2
      {
         return this.§_-hu§;
      }
      
      public function §_-0Df§() : b2Body
      {
         return this.m_groundBody;
      }
      
      public function §_-wu§(param1:Number, param2:int, param3:int) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && this))
         {
            §§push(this.§_-7R§);
            if(_loc5_ || param2)
            {
               §§push(§§pop() & §_-0DB§);
            }
            if(§§pop())
            {
               loop26:
               while(true)
               {
                  this.§_-Xl§.§_-Wx§();
                  loop27:
                  while(true)
                  {
                     addr42:
                     while(true)
                     {
                        §§push(this);
                        §§push(this.§_-7R§);
                        if(_loc5_ || param2)
                        {
                           §§push(§_-0DB§);
                           if(_loc5_)
                           {
                              §§push(~§§pop());
                           }
                           §§push(§§pop() & §§pop());
                        }
                        §§pop().§_-7R§ = §§pop();
                        addr59:
                        addr68:
                        while(true)
                        {
                           if(!_loc6_)
                           {
                              if(_loc5_ || param3)
                              {
                                 break;
                              }
                              continue loop26;
                           }
                           continue loop27;
                        }
                        continue loop27;
                     }
                  }
               }
               addr81:
            }
            while(true)
            {
               §§push(this);
               §§push(this.§_-7R§);
               if(_loc5_)
               {
                  §§push(§§pop() | §_-nF§);
               }
               §§pop().§_-7R§ = §§pop();
               if(!(_loc6_ && param1))
               {
                  if(true)
                  {
                     break;
                  }
                  §§goto(addr42);
               }
               §§goto(addr59);
               §§goto(addr68);
            }
            var _loc4_:b2TimeStep;
            (_loc4_ = s_timestep2).§_-pn§ = param1;
            if(!(_loc6_ && param2))
            {
               _loc4_.§_-lE§ = param2;
               loop3:
               while(true)
               {
                  _loc4_.§_-u5§ = param3;
                  loop4:
                  while(true)
                  {
                     §§push(param1);
                     loop5:
                     while(true)
                     {
                        §§push(0);
                        loop6:
                        while(true)
                        {
                           if(§§pop() > §§pop())
                           {
                              if(_loc5_ || param2)
                              {
                                 _loc4_.§_-00-§ = 1 / param1;
                              }
                              continue loop4;
                           }
                           _loc4_.§_-00-§ = 0;
                           loop11:
                           while(true)
                           {
                              addr270:
                              while(true)
                              {
                                 §§push(_loc4_);
                                 §§push(this.§_-qt§);
                                 if(!_loc6_)
                                 {
                                    §§push(§§pop() * param1);
                                 }
                                 §§pop().§_-b8§ = §§pop();
                                 while(true)
                                 {
                                    if(_loc6_)
                                    {
                                       continue loop11;
                                    }
                                    _loc4_.§_-0F7§ = §_-KS§;
                                    while(true)
                                    {
                                       this.§_-Xl§.§_-4P§();
                                    }
                                    addr193:
                                    if(!(_loc5_ || this))
                                    {
                                       continue;
                                    }
                                    loop22:
                                    while(true)
                                    {
                                       §§push(this);
                                       §§push(this.§_-7R§);
                                       if(!(_loc6_ && param3))
                                       {
                                          §§push(§_-nF§);
                                          if(_loc5_ || param2)
                                          {
                                             §§push(~§§pop());
                                          }
                                          §§push(§§pop() & §§pop());
                                       }
                                       §§pop().§_-7R§ = §§pop();
                                       if(!_loc6_)
                                       {
                                          continue loop3;
                                       }
                                       loop21:
                                       while(true)
                                       {
                                          if(!(_loc6_ && param1))
                                          {
                                             if(!(_loc6_ && this))
                                             {
                                                §§goto(addr193);
                                             }
                                             else
                                             {
                                                loop25:
                                                while(true)
                                                {
                                                   if(!_loc5_)
                                                   {
                                                      break loop21;
                                                   }
                                                   §§push(_loc4_.§_-pn§);
                                                   loop23:
                                                   while(true)
                                                   {
                                                      if(_loc5_)
                                                      {
                                                         if(!_loc5_)
                                                         {
                                                            break;
                                                         }
                                                         addr209:
                                                         §§push(0);
                                                         if(_loc6_)
                                                         {
                                                            continue loop6;
                                                         }
                                                         §§push(§§pop() > §§pop());
                                                         if(_loc5_)
                                                         {
                                                            loop17:
                                                            while(true)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  loop18:
                                                                  while(true)
                                                                  {
                                                                     if(!(_loc6_ && this))
                                                                     {
                                                                        this.§_-Fk§(_loc4_);
                                                                        while(true)
                                                                        {
                                                                           addr135:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc4_.§_-pn§);
                                                                              if(_loc6_ && param1)
                                                                              {
                                                                                 continue loop23;
                                                                              }
                                                                              §§push(0);
                                                                              if(!(_loc6_ && param3))
                                                                              {
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    if(§§pop() > §§pop())
                                                                                    {
                                                                                       if(!_loc6_)
                                                                                       {
                                                                                          if(!(_loc6_ && param2))
                                                                                          {
                                                                                             this.§_-qt§ = _loc4_.§_-00-§;
                                                                                             continue loop21;
                                                                                          }
                                                                                          continue loop18;
                                                                                       }
                                                                                       continue loop21;
                                                                                    }
                                                                                    continue loop22;
                                                                                 }
                                                                                 loop14:
                                                                                 while(true)
                                                                                 {
                                                                                    if(§§pop() > §§pop())
                                                                                    {
                                                                                       if(!(_loc6_ && param2))
                                                                                       {
                                                                                          this.§_-NQ§(_loc4_);
                                                                                          addr255:
                                                                                          while(true)
                                                                                          {
                                                                                             if(!_loc6_)
                                                                                             {
                                                                                                if(_loc6_)
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§_-65§);
                                                                                                   if(!_loc6_)
                                                                                                   {
                                                                                                      §§push(Boolean(§§pop()));
                                                                                                      if(_loc5_)
                                                                                                      {
                                                                                                         if(!§§pop())
                                                                                                         {
                                                                                                            continue loop17;
                                                                                                         }
                                                                                                         addr236:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§pop();
                                                                                                            continue loop25;
                                                                                                         }
                                                                                                         addr236:
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr236);
                                                                                                }
                                                                                             }
                                                                                             addr264:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc4_.§_-pn§);
                                                                                                addr243:
                                                                                                while(true)
                                                                                                {
                                                                                                   continue loop14;
                                                                                                }
                                                                                             }
                                                                                             continue loop18;
                                                                                          }
                                                                                          §§goto(addr269);
                                                                                          addr255:
                                                                                       }
                                                                                       §§goto(addr255);
                                                                                    }
                                                                                    §§goto(addr227);
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr209);
                                                                              }
                                                                              §§goto(addr236);
                                                                           }
                                                                           continue loop23;
                                                                        }
                                                                        addr226:
                                                                     }
                                                                     §§goto(addr255);
                                                                  }
                                                               }
                                                               §§goto(addr135);
                                                            }
                                                         }
                                                         §§goto(addr236);
                                                      }
                                                      §§goto(addr243);
                                                   }
                                                   addr239:
                                                   continue loop5;
                                                }
                                             }
                                          }
                                          §§goto(addr226);
                                       }
                                       continue loop4;
                                    }
                                 }
                                 continue loop11;
                              }
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr264);
         }
         §§goto(addr81);
      }
      
      public function §_-RE§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:b2Body = this.§_-WS§;
         while(_loc1_)
         {
            _loc1_.§_-wp§.§_-el§();
            if(_loc3_ || _loc3_)
            {
               _loc1_.§_-cH§ = 0;
               if(!(_loc3_ || _loc3_))
               {
                  break;
               }
            }
            _loc1_ = _loc1_.§_-oz§;
         }
      }
      
      public function §_-jZ§() : void
      {
         var _loc23_:Boolean = false;
         var _loc24_:Boolean = true;
         var _loc2_:int = 0;
         var _loc3_:b2Body = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Shape = null;
         var _loc6_:b2Joint = null;
         var _loc7_:§_-We§ = null;
         var _loc11_:b2Transform = null;
         var _loc16_:b2Controller = null;
         var _loc17_:b2Contact = null;
         var _loc18_:b2Fixture = null;
         var _loc19_:b2Fixture = null;
         var _loc20_:b2Vec2 = null;
         var _loc21_:b2Vec2 = null;
         var _loc22_:b2AABB = null;
         if(!_loc23_)
         {
            §§push(this.§_-nw§);
            if(!(_loc23_ && _loc1_))
            {
               if(§§pop() == null)
               {
                  if(_loc24_ || _loc1_)
                  {
                     return;
                  }
               }
               §§push(this.§_-nw§);
               if(_loc24_ || _loc2_)
               {
                  addr95:
                  §§pop().§_-f9§.graphics.clear();
                  §§push(this.§_-nw§);
               }
               §§push(§§pop().§_-0p§());
               if(!_loc23_)
               {
                  §§push(uint(§§pop()));
               }
               var _loc1_:* = §§pop();
               var _loc8_:b2Vec2 = new b2Vec2();
               var _loc9_:b2Vec2 = new b2Vec2();
               var _loc10_:b2Vec2 = new b2Vec2();
               var _loc12_:b2AABB = new b2AABB();
               var _loc13_:b2AABB = new b2AABB();
               var _loc14_:Array = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
               var _loc15_:b2Color = new b2Color(0,0,0);
               if(_loc24_ || _loc1_)
               {
                  if(_loc1_ & b2DebugDraw.§_-vn§)
                  {
                     addr155:
                     _loc3_ = this.§_-WS§;
                     while(_loc3_)
                     {
                        _loc11_ = _loc3_.m_xf;
                        _loc4_ = _loc3_.§_-0DJ§();
                        if(_loc24_)
                        {
                           loop17:
                           for(; _loc4_; _loc4_ = _loc4_.§_-oz§)
                           {
                              _loc5_ = _loc4_.GetShape();
                              if(_loc24_ || _loc2_)
                              {
                                 §§push(_loc3_.§_-04Z§());
                                 while(true)
                                 {
                                    §§push(false);
                                    addr348:
                                    while(§§pop() != §§pop())
                                    {
                                       §§push(_loc3_.§_-oF§());
                                       loop20:
                                       while(true)
                                       {
                                          §§push(b2Body.b2_staticBody);
                                          addr324:
                                          while(true)
                                          {
                                             if(§§pop() == §§pop())
                                             {
                                                if(_loc24_ || this)
                                                {
                                                   _loc15_.Set(0.5,0.9,0.5);
                                                }
                                                this.§_-Si§(_loc5_,_loc11_,_loc15_);
                                                break;
                                                addr316:
                                                addr337:
                                             }
                                             continue loop20;
                                          }
                                          continue loop17;
                                       }
                                    }
                                    _loc15_.Set(0.5,0.5,0.3);
                                    §§goto(addr354);
                                    §§push(_loc3_.IsAwake());
                                    if(_loc23_ && _loc3_)
                                    {
                                       continue;
                                    }
                                    §§push(false);
                                    if(_loc23_ && this)
                                    {
                                       §§goto(addr348);
                                    }
                                    if(§§pop() != §§pop())
                                    {
                                       _loc15_.Set(0.9,0.7,0.7);
                                       addr208:
                                       if(!_loc23_)
                                       {
                                          this.§_-Si§(_loc5_,_loc11_,_loc15_);
                                          if(!(_loc24_ || _loc3_))
                                          {
                                             §§goto(addr208);
                                          }
                                          if(false)
                                          {
                                             addr200:
                                          }
                                          continue loop17;
                                       }
                                       addr217:
                                       if(!_loc23_)
                                       {
                                          if(_loc23_)
                                          {
                                             addr252:
                                             if(!(_loc23_ && _loc1_))
                                             {
                                                if(!_loc23_)
                                                {
                                                   _loc15_.Set(0.6,0.6,0.6);
                                                   addr266:
                                                   if(_loc24_ || this)
                                                   {
                                                      this.§_-Si§(_loc5_,_loc11_,_loc15_);
                                                      §§goto(addr217);
                                                   }
                                                   §§goto(addr300);
                                                }
                                                §§goto(addr344);
                                             }
                                             §§goto(addr316);
                                          }
                                          if(!_loc23_)
                                          {
                                             if(!(_loc23_ && this))
                                             {
                                                §§goto(addr200);
                                             }
                                             else
                                             {
                                                §§goto(addr337);
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr280);
                                          }
                                       }
                                       §§goto(addr266);
                                    }
                                    §§goto(addr252);
                                 }
                              }
                              §§goto(addr304);
                           }
                        }
                        _loc3_ = _loc3_.§_-oz§;
                     }
                  }
                  §§push(_loc1_);
                  if(!(_loc23_ && _loc1_))
                  {
                     §§push(b2DebugDraw.§_-x1§);
                     if(_loc24_ || _loc3_)
                     {
                        §§push(§§pop() & §§pop());
                        if(_loc24_ || _loc1_)
                        {
                           if(§§pop())
                           {
                              if(!(_loc23_ && _loc2_))
                              {
                                 _loc6_ = this.§_-6c§;
                                 if(!_loc23_)
                                 {
                                    loop0:
                                    while(_loc6_)
                                    {
                                       this.§_-YP§(_loc6_);
                                       if(!(_loc24_ || _loc2_))
                                       {
                                          break;
                                       }
                                       while(true)
                                       {
                                          _loc6_ = _loc6_.§_-oz§;
                                          continue loop0;
                                       }
                                    }
                                    addr434:
                                    §§push(_loc1_);
                                    if(!(_loc23_ && this))
                                    {
                                       addr442:
                                       §§push(b2DebugDraw.§_-Mo§);
                                       if(_loc24_ || this)
                                       {
                                          §§push(§§pop() & §§pop());
                                          if(!_loc23_)
                                          {
                                             if(§§pop())
                                             {
                                                if(!_loc23_)
                                                {
                                                   _loc16_ = this.§_-DZ§;
                                                   if(!(_loc23_ && this))
                                                   {
                                                      loop14:
                                                      while(_loc16_)
                                                      {
                                                         _loc16_.§_-xw§(this.§_-nw§);
                                                         if(_loc23_)
                                                         {
                                                            break;
                                                         }
                                                         while(true)
                                                         {
                                                            _loc16_ = _loc16_.§_-oz§;
                                                            continue loop14;
                                                         }
                                                      }
                                                      addr482:
                                                      §§push(_loc1_);
                                                      if(_loc24_)
                                                      {
                                                         §§push(b2DebugDraw.§_-0E1§);
                                                         if(_loc24_ || this)
                                                         {
                                                            addr494:
                                                            §§push(§§pop() & §§pop());
                                                            if(!(_loc23_ && _loc2_))
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  if(!(_loc23_ && _loc3_))
                                                                  {
                                                                     addr510:
                                                                     _loc15_.Set(0.3,0.9,0.9);
                                                                     if(!(_loc23_ && this))
                                                                     {
                                                                        §§push(this.§_-Xl§);
                                                                        if(!(_loc23_ && _loc1_))
                                                                        {
                                                                           _loc17_ = §§pop().§_-4p§;
                                                                           if(_loc24_ || _loc2_)
                                                                           {
                                                                              while(_loc17_)
                                                                              {
                                                                                 _loc18_ = _loc17_.§_-k-§();
                                                                                 _loc19_ = _loc17_.§_-7G§();
                                                                                 _loc20_ = _loc18_.override().§_-sF§();
                                                                                 _loc21_ = _loc19_.override().§_-sF§();
                                                                                 if(!(_loc23_ && _loc1_))
                                                                                 {
                                                                                    this.§_-nw§.§_-T4§(_loc20_,_loc21_,_loc15_);
                                                                                 }
                                                                                 _loc17_ = _loc17_.§_-02g§();
                                                                              }
                                                                           }
                                                                           §§goto(addr580);
                                                                        }
                                                                        §§goto(addr605);
                                                                     }
                                                                  }
                                                                  §§goto(addr762);
                                                               }
                                                               addr580:
                                                               §§push(_loc1_);
                                                               if(!_loc23_)
                                                               {
                                                                  addr583:
                                                                  §§push(b2DebugDraw.§_-Wa§);
                                                                  if(_loc24_ || _loc3_)
                                                                  {
                                                                     addr592:
                                                                     §§push(§§pop() & §§pop());
                                                                     if(!_loc23_)
                                                                     {
                                                                        addr595:
                                                                        if(§§pop())
                                                                        {
                                                                           if(!(_loc23_ && this))
                                                                           {
                                                                              addr605:
                                                                              _loc7_ = this.§_-Xl§.§_-Q-§;
                                                                              _loc14_ = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
                                                                              _loc3_ = this.§_-WS§;
                                                                              if(_loc24_ || _loc2_)
                                                                              {
                                                                                 loop3:
                                                                                 for(; _loc3_; while(true)
                                                                                 {
                                                                                    _loc3_ = _loc3_.§_-02g§();
                                                                                    continue loop3;
                                                                                 })
                                                                                 {
                                                                                    if(_loc3_.§_-04Z§() != false)
                                                                                    {
                                                                                       _loc4_ = _loc3_.§_-0DJ§();
                                                                                       if(_loc24_)
                                                                                       {
                                                                                          while(_loc4_)
                                                                                          {
                                                                                             _loc22_ = _loc7_.§_-082§(_loc4_.§_-Xg§);
                                                                                             if(_loc24_ || _loc2_)
                                                                                             {
                                                                                                _loc14_[0].Set(_loc22_.§_-Bv§.x,_loc22_.§_-Bv§.y);
                                                                                                loop5:
                                                                                                while(true)
                                                                                                {
                                                                                                   _loc14_[1].Set(_loc22_.§_-MB§.x,_loc22_.§_-Bv§.y);
                                                                                                   loop6:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      _loc14_[2].Set(_loc22_.§_-MB§.x,_loc22_.§_-MB§.y);
                                                                                                      while(true)
                                                                                                      {
                                                                                                         addr691:
                                                                                                         addr675:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            _loc14_[3].Set(_loc22_.§_-Bv§.x,_loc22_.§_-MB§.y);
                                                                                                            continue loop5;
                                                                                                         }
                                                                                                         if(_loc24_ || _loc3_)
                                                                                                         {
                                                                                                            continue loop6;
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                this.§_-nw§.§default§(_loc14_,4,_loc15_);
                                                                                                if(_loc24_)
                                                                                                {
                                                                                                   §§goto(addr675);
                                                                                                }
                                                                                                §§goto(addr702);
                                                                                             }
                                                                                             _loc4_ = _loc4_.§_-02g§();
                                                                                          }
                                                                                       }
                                                                                       continue;
                                                                                    }
                                                                                    if(_loc23_ && _loc3_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr757);
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§goto(addr751);
                                                                              }
                                                                           }
                                                                           §§goto(addr762);
                                                                        }
                                                                        addr757:
                                                                        §§goto(addr761);
                                                                     }
                                                                     addr761:
                                                                     §§goto(addr760);
                                                                  }
                                                                  addr760:
                                                                  §§goto(addr758);
                                                               }
                                                               addr758:
                                                               if(_loc1_ & b2DebugDraw.§_-d6§)
                                                               {
                                                                  addr762:
                                                                  _loc3_ = this.§_-WS§;
                                                                  if(!_loc23_)
                                                                  {
                                                                     while(_loc3_)
                                                                     {
                                                                        (_loc11_ = §_-0AG§).R = _loc3_.m_xf.R;
                                                                        if(_loc24_ || _loc2_)
                                                                        {
                                                                           _loc11_.position = _loc3_.§_-Hi§();
                                                                           if(_loc24_)
                                                                           {
                                                                              this.§_-nw§.§_-As§(_loc11_);
                                                                           }
                                                                        }
                                                                        _loc3_ = _loc3_.§_-oz§;
                                                                     }
                                                                  }
                                                               }
                                                               return;
                                                            }
                                                            §§goto(addr595);
                                                         }
                                                         §§goto(addr592);
                                                      }
                                                      §§goto(addr583);
                                                   }
                                                   §§goto(addr476);
                                                }
                                                §§goto(addr605);
                                             }
                                             §§goto(addr482);
                                          }
                                          §§goto(addr757);
                                       }
                                       §§goto(addr592);
                                    }
                                    §§goto(addr583);
                                 }
                                 §§goto(addr428);
                              }
                              §§goto(addr510);
                           }
                           §§goto(addr434);
                        }
                        §§goto(addr757);
                     }
                     §§goto(addr494);
                  }
                  §§goto(addr442);
               }
               §§goto(addr155);
            }
         }
         §§goto(addr95);
      }
      
      public function §_-02p§(param1:Function, param2:b2AABB) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§push(null);
            loop1:
            while(true)
            {
               §§pop().§§slot[3] = §§pop();
               while(true)
               {
                  §§push(§§newactivation());
                  loop3:
                  while(true)
                  {
                     §§push(null);
                     if(_loc5_ && param2)
                     {
                        break;
                     }
                     §§pop().§§slot[4] = §§pop();
                     loop4:
                     while(true)
                     {
                        §§push(§§newactivation());
                        loop5:
                        while(!_loc5_)
                        {
                           §§pop().§§slot[1] = param1;
                           loop6:
                           do
                           {
                              §§push(§§newactivation());
                              addr120:
                              while(_loc4_)
                              {
                                 §§pop().§§slot[2] = param2;
                                 do
                                 {
                                    §§push(§§newactivation());
                                    while(!(_loc5_ && param2))
                                    {
                                       §§pop().§§slot[4] = function(param1:*):Boolean
                                       {
                                          return callback(broadPhase.GetUserData(param1));
                                       };
                                       continue loop4;
                                    }
                                    continue loop5;
                                 }
                                 while(!_loc4_);
                                 
                                 continue loop6;
                              }
                              continue loop0;
                           }
                           while(!_loc4_);
                           
                           return;
                        }
                        continue loop3;
                     }
                  }
                  continue loop1;
               }
            }
         }
      }
      
      public function §_-4K§(param1:Function, param2:b2Shape, param3:b2Transform = null) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(§§newactivation());
         while(true)
         {
            §§push(null);
            loop1:
            while(true)
            {
               §§pop().§§slot[4] = §§pop();
               loop2:
               while(true)
               {
                  §§push(§§newactivation());
                  loop3:
                  while(true)
                  {
                     §§push(null);
                     if(!(_loc5_ || param2))
                     {
                        break;
                     }
                     §§pop().§§slot[5] = §§pop();
                     while(true)
                     {
                        §§push(§§newactivation());
                        loop5:
                        while(true)
                        {
                           §§pop().§§slot[1] = param1;
                           loop6:
                           while(true)
                           {
                              §§push(§§newactivation());
                              loop7:
                              while(true)
                              {
                                 §§pop().§§slot[2] = param2;
                                 addr234:
                                 while(true)
                                 {
                                    §§push(§§newactivation());
                                    while(true)
                                    {
                                       §§pop().§§slot[3] = param3;
                                       addr229:
                                       while(true)
                                       {
                                          §§push(§§newactivation());
                                          loop11:
                                          while(true)
                                          {
                                             §§pop().§§slot[5] = function(param1:*):Boolean
                                             {
                                                var _loc2_:b2Fixture = broadPhase.GetUserData(param1) as b2Fixture;
                                                if(b2Shape.§_-Rd§(shape,transform,_loc2_.GetShape(),_loc2_.GetBody().§_-tg§()))
                                                {
                                                   return callback(_loc2_);
                                                }
                                                return true;
                                             };
                                             addr205:
                                             while(true)
                                             {
                                                if(_loc6_ && param2)
                                                {
                                                   continue loop6;
                                                }
                                                if(_loc6_)
                                                {
                                                   break;
                                                }
                                                §§push(§§newactivation());
                                                if(!(_loc5_ || this))
                                                {
                                                   continue loop3;
                                                }
                                                if(_loc6_)
                                                {
                                                   continue loop5;
                                                }
                                                §§push(§§pop().§§slot[3]);
                                                loop13:
                                                while(true)
                                                {
                                                   if(§§pop() != null)
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(§§newactivation());
                                                         addr109:
                                                         while(!_loc6_)
                                                         {
                                                            if(_loc5_)
                                                            {
                                                               continue loop11;
                                                            }
                                                            continue loop3;
                                                         }
                                                         continue loop13;
                                                      }
                                                      continue;
                                                      addr107:
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(§§newactivation());
                                                      continue loop3;
                                                   }
                                                }
                                             }
                                             continue loop2;
                                          }
                                       }
                                       if(!(_loc6_ && param2))
                                       {
                                          continue loop7;
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
                  continue loop1;
               }
            }
            if(_loc6_ && this)
            {
               continue;
            }
            §§pop().§§slot[6] = new b2AABB();
            §§goto(addr104);
         }
      }
      
      public function §_-73§(param1:Function, param2:b2Vec2) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§push(null);
            loop1:
            while(true)
            {
               §§pop().§§slot[3] = §§pop();
               loop2:
               while(true)
               {
                  §§push(§§newactivation());
                  loop3:
                  while(true)
                  {
                     §§push(null);
                     if(!_loc4_)
                     {
                        break;
                     }
                     §§pop().§§slot[4] = §§pop();
                     loop4:
                     while(true)
                     {
                        §§push(§§newactivation());
                        while(true)
                        {
                           §§pop().§§slot[1] = param1;
                           continue loop4;
                           loop9:
                           while(!(_loc5_ && _loc3_))
                           {
                              §§pop().§§slot[4] = function(param1:*):Boolean
                              {
                                 var _loc2_:b2Fixture = broadPhase.GetUserData(param1) as b2Fixture;
                                 if(_loc2_.TestPoint(p))
                                 {
                                    return callback(_loc2_);
                                 }
                                 return true;
                              };
                              loop10:
                              while(!_loc5_)
                              {
                                 §§push(§§newactivation());
                                 continue loop3;
                                 addr117:
                                 if(!(_loc4_ || param1))
                                 {
                                    continue;
                                 }
                                 addr124:
                                 §§push(§§newactivation());
                                 if(!_loc5_)
                                 {
                                    addr29:
                                    if(!(_loc4_ || param1))
                                    {
                                       continue loop0;
                                    }
                                    if(_loc4_)
                                    {
                                       addr38:
                                       §§pop().§§slot[3].§_-CP§(WorldQueryWrapper,aabb);
                                       if(!(_loc4_ || _loc3_))
                                       {
                                          loop19:
                                          while(true)
                                          {
                                             if(_loc4_)
                                             {
                                                addr100:
                                                if(!(_loc4_ || this))
                                                {
                                                   while(_loc4_ || _loc3_)
                                                   {
                                                      §§push(§§newactivation());
                                                      while(!_loc5_)
                                                      {
                                                         §§pop().§§slot[5] = new b2AABB();
                                                         while(true)
                                                         {
                                                            §§push(§§newactivation());
                                                            continue loop0;
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         §§pop().§§slot[2] = param2;
                                                         break loop10;
                                                      }
                                                      §§goto(addr100);
                                                   }
                                                   continue loop4;
                                                   addr181:
                                                }
                                                §§goto(addr117);
                                                §§goto(addr160);
                                             }
                                             loop17:
                                             while(!_loc5_)
                                             {
                                                §§push(§§newactivation());
                                                while(true)
                                                {
                                                   if(!_loc4_)
                                                   {
                                                      continue loop3;
                                                   }
                                                   if(!_loc4_)
                                                   {
                                                      break;
                                                   }
                                                   addr60:
                                                   §§push(§§pop().§§slot[5]);
                                                   if(_loc4_ || param1)
                                                   {
                                                      §§push(§§pop().§_-MB§);
                                                      §§push(p.x);
                                                      if(!(_loc5_ && param1))
                                                      {
                                                         §§push(b2Settings.b2_linearSlop);
                                                         if(_loc4_ || this)
                                                         {
                                                            addr89:
                                                            §§push(§§pop() + §§pop());
                                                            §§push(p.y);
                                                            if(_loc4_)
                                                            {
                                                               addr94:
                                                               §§push(§§pop() + b2Settings.b2_linearSlop);
                                                            }
                                                            §§pop().Set(§§pop(),§§pop());
                                                            continue loop19;
                                                         }
                                                         §§goto(addr94);
                                                      }
                                                      §§goto(addr89);
                                                   }
                                                   else
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(§§pop().§_-Bv§);
                                                         §§push(p.x);
                                                         if(_loc4_)
                                                         {
                                                            §§push(b2Settings.b2_linearSlop);
                                                            if(_loc4_)
                                                            {
                                                               addr146:
                                                               §§push(§§pop() - §§pop());
                                                               §§push(p.y);
                                                               if(!_loc5_)
                                                               {
                                                                  addr151:
                                                                  §§push(§§pop() - b2Settings.b2_linearSlop);
                                                               }
                                                               §§pop().Set(§§pop(),§§pop());
                                                               continue loop17;
                                                            }
                                                            §§goto(addr151);
                                                         }
                                                         §§goto(addr146);
                                                         §§goto(addr60);
                                                      }
                                                      addr135:
                                                   }
                                                   §§goto(addr124);
                                                }
                                                continue loop9;
                                             }
                                             §§goto(addr166);
                                          }
                                          continue;
                                       }
                                       if(_loc4_)
                                       {
                                          return;
                                       }
                                       continue loop2;
                                    }
                                    §§goto(addr160);
                                 }
                                 §§goto(addr56);
                              }
                              while(true)
                              {
                                 continue loop9;
                              }
                           }
                        }
                     }
                  }
                  continue loop1;
               }
            }
         }
      }
      
      public function RayCast(param1:Function, param2:b2Vec2, param3:b2Vec2) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§push(null);
            addr214:
            while(true)
            {
               §§pop().§§slot[4] = §§pop();
               addr216:
               while(true)
               {
                  §§push(§§newactivation());
                  continue loop0;
               }
            }
         }
      }
      
      public function §_-V2§(param1:b2Vec2, param2:b2Vec2) : b2Fixture
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§push(null);
            loop1:
            while(true)
            {
               §§pop().§§slot[3] = §§pop();
               loop2:
               while(true)
               {
                  §§push(§§newactivation());
                  loop3:
                  while(true)
                  {
                     §§push(null);
                     if(_loc5_)
                     {
                        break;
                     }
                     §§pop().§§slot[4] = §§pop();
                     loop4:
                     while(true)
                     {
                        §§push(§§newactivation());
                        loop5:
                        while(_loc4_)
                        {
                           §§pop().§§slot[1] = param1;
                           while(true)
                           {
                              if(_loc5_)
                              {
                                 break;
                                 addr80:
                              }
                              §§push(§§newactivation());
                              while(true)
                              {
                                 if(_loc4_)
                                 {
                                    continue loop3;
                                 }
                                 continue loop5;
                              }
                              continue loop3;
                              loop10:
                              while(!(_loc5_ && param1))
                              {
                                 this.RayCast(RayCastOneWrapper,point1,point2);
                                 if(!(_loc4_ || this))
                                 {
                                    continue;
                                 }
                                 addr45:
                                 if(_loc5_ && this)
                                 {
                                    while(!(_loc5_ && _loc3_))
                                    {
                                       §§push(§§newactivation());
                                       §§goto(addr45);
                                    }
                                    continue loop2;
                                    addr101:
                                 }
                                 §§push(§§newactivation());
                                 if(_loc4_)
                                 {
                                    return §§pop().§§slot[3];
                                 }
                                 addr62:
                                 while(!_loc5_)
                                 {
                                    §§pop().§§slot[4] = function(param1:b2Fixture, param2:b2Vec2, param3:b2Vec2, param4:Number):Number
                                    {
                                       result = param1;
                                       return param4;
                                    };
                                    continue loop10;
                                    §§goto(addr62);
                                 }
                                 §§goto(addr80);
                              }
                           }
                           continue loop4;
                        }
                        continue loop0;
                     }
                  }
                  continue loop1;
               }
            }
         }
      }
      
      public function §_-06a§(param1:b2Vec2, param2:b2Vec2) : Vector.<b2Fixture>
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§§newactivation());
         while(true)
         {
            §§push(null);
            loop1:
            while(true)
            {
               §§pop().§§slot[3] = §§pop();
               addr143:
               while(true)
               {
                  §§push(§§newactivation());
                  loop3:
                  while(true)
                  {
                     §§push(null);
                     if(_loc5_)
                     {
                        break;
                     }
                     §§pop().§§slot[4] = §§pop();
                     while(true)
                     {
                        §§push(§§newactivation());
                        continue loop3;
                     }
                  }
                  continue loop1;
               }
            }
            if(_loc5_ && _loc3_)
            {
               continue;
            }
            §§pop().§§slot[1] = param1;
            loop6:
            while(true)
            {
               §§push(§§newactivation());
               loop7:
               while(true)
               {
                  §§pop().§§slot[2] = param2;
                  addr99:
                  while(!_loc5_)
                  {
                     §§push(§§newactivation());
                     continue loop7;
                  }
                  continue loop6;
               }
            }
         }
      }
      
      public function §_-JW§() : b2Body
      {
         return this.§_-WS§;
      }
      
      public function §_-ip§() : b2Joint
      {
         return this.§_-6c§;
      }
      
      public function §_-qw§() : b2Contact
      {
         return this.§_-4p§;
      }
      
      public function §_-ZM§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§_-7R§);
         if(_loc1_ || this)
         {
            §§push(§_-nF§);
            if(!_loc2_)
            {
               addr29:
               §§push(§§pop() & §§pop());
               §§push(0);
            }
            return §§pop() > §§pop();
         }
         §§goto(addr29);
      }
      
      b2internal function §_-NQ§(param1:b2TimeStep) : void
      {
         var _loc17_:Boolean = true;
         var _loc18_:Boolean = false;
         var _loc2_:b2Body = null;
         var _loc10_:int = 0;
         var _loc11_:* = 0;
         var _loc12_:b2Body = null;
         var _loc13_:b2ContactEdge = null;
         var _loc14_:b2JointEdge = null;
         var _loc3_:b2Controller = this.§_-DZ§;
         while(_loc3_)
         {
            _loc3_.§_-wu§(param1);
            if(_loc18_ && _loc3_)
            {
               break;
            }
            _loc3_ = _loc3_.§_-oz§;
         }
         var _loc4_:b2Island;
         (_loc4_ = this.§_-s3§).§_-bL§(this.§_-F9§,this.§_-09s§,this.§_-ug§,null,this.§_-Xl§.§_-0DF§,this.§_-ol§);
         _loc2_ = this.§_-WS§;
         if(!_loc18_)
         {
            loop1:
            while(_loc2_)
            {
               _loc2_.§_-7R§ &= ~b2Body.§_-0AI§;
               if(!_loc17_)
               {
                  break;
               }
               while(true)
               {
                  _loc2_ = _loc2_.§_-oz§;
                  continue loop1;
               }
            }
            var _loc5_:b2Contact = this.§_-4p§;
            if(!_loc18_)
            {
               loop2:
               while(_loc5_)
               {
                  _loc5_.§_-7R§ &= ~b2Contact.§_-0AI§;
                  if(!(_loc17_ || param1))
                  {
                     break;
                  }
                  while(true)
                  {
                     _loc5_ = _loc5_.§_-oz§;
                     continue loop2;
                  }
               }
               var _loc6_:b2Joint = this.§_-6c§;
               if(_loc17_ || _loc3_)
               {
                  while(_loc6_)
                  {
                     _loc6_.§_-GX§ = false;
                     if(_loc18_ && this)
                     {
                        break;
                     }
                     _loc6_ = _loc6_.§_-oz§;
                  }
               }
               §§push(this.§_-F9§);
               if(!_loc18_)
               {
                  §§push(int(§§pop()));
               }
               var _loc7_:* = §§pop();
               var _loc8_:Vector.<b2Body> = this.§_-rQ§;
               var _loc9_:b2Body = this.§_-WS§;
               if(!_loc18_)
               {
                  loop4:
                  while(true)
                  {
                     if(!_loc9_)
                     {
                        if(_loc17_ || param1)
                        {
                           addr735:
                           §§push(0);
                           if(!_loc18_)
                           {
                              addr738:
                              _loc11_ = §§pop();
                              addr769:
                              if(_loc17_)
                              {
                                 addr741:
                              }
                              while(true)
                              {
                              }
                              addr769:
                           }
                           if(§§pop() < _loc8_.length)
                           {
                              if(!_loc8_[_loc11_])
                              {
                                 if(_loc18_)
                                 {
                                    §§goto(addr769);
                                 }
                                 addr773:
                                 _loc2_ = this.§_-WS§;
                                 if(_loc17_)
                                 {
                                    addr866:
                                    if(_loc2_)
                                    {
                                       §§push(_loc2_.IsAwake());
                                       if(_loc17_ || _loc3_)
                                       {
                                          §§push(false);
                                          if(!(_loc18_ && _loc2_))
                                          {
                                             §§push(§§pop() == §§pop());
                                             if(_loc17_ || param1)
                                             {
                                                §§push(§§pop());
                                                if(_loc17_)
                                                {
                                                   if(!§§pop())
                                                   {
                                                      if(_loc18_)
                                                      {
                                                      }
                                                   }
                                                   §§goto(addr831);
                                                }
                                                addr830:
                                                addr831:
                                                if(§§pop())
                                                {
                                                   if(!_loc18_)
                                                   {
                                                      addr862:
                                                      _loc2_ = _loc2_.§_-oz§;
                                                      §§goto(addr866);
                                                   }
                                                   addr857:
                                                   §§goto(addr862);
                                                }
                                                if(_loc2_.§_-oF§() == b2Body.b2_staticBody)
                                                {
                                                   if(!(_loc18_ && _loc2_))
                                                   {
                                                      §§goto(addr857);
                                                   }
                                                   §§goto(addr875);
                                                }
                                                _loc2_.§_-QG§();
                                                if(_loc17_)
                                                {
                                                   §§goto(addr862);
                                                }
                                                addr875:
                                                this.§_-Xl§.§_-Wx§();
                                                return;
                                                §§push(§§pop() == §§pop());
                                             }
                                             §§pop();
                                             if(_loc17_ || _loc3_)
                                             {
                                                §§push(_loc2_.§_-04Z§());
                                                if(_loc17_ || param1)
                                                {
                                                   §§goto(addr830);
                                                   §§push(false);
                                                }
                                                §§goto(addr831);
                                             }
                                             §§goto(addr875);
                                          }
                                          §§goto(addr830);
                                       }
                                       §§goto(addr831);
                                    }
                                    if(_loc17_ || param1)
                                    {
                                    }
                                    §§goto(addr875);
                                 }
                                 §§goto(addr862);
                              }
                              addr750:
                              _loc8_[_loc11_] = null;
                              if(_loc17_ || _loc2_)
                              {
                                 addr761:
                                 while(true)
                                 {
                                    _loc11_++;
                                    if(!(_loc18_ && this))
                                    {
                                       §§goto(addr769);
                                    }
                                    §§goto(addr750);
                                 }
                                 addr761:
                              }
                           }
                        }
                        §§goto(addr773);
                     }
                     else
                     {
                        §§push(_loc9_.§_-7R§);
                        loop5:
                        while(true)
                        {
                           §§push(b2Body.§_-0AI§);
                           addr260:
                           while(true)
                           {
                              §§push(§§pop() & §§pop());
                              addr261:
                              loop7:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    if(!_loc18_)
                                    {
                                       break;
                                    }
                                    break;
                                 }
                                 §§push(_loc9_.IsAwake());
                                 loop8:
                                 while(true)
                                 {
                                    §§push(false);
                                    if(!_loc18_)
                                    {
                                       §§push(§§pop() == §§pop());
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          addr208:
                                          if(_loc18_ && this)
                                          {
                                             continue;
                                          }
                                          if(_loc18_)
                                          {
                                             continue loop8;
                                          }
                                          while(true)
                                          {
                                             if(!§§pop())
                                             {
                                                continue loop5;
                                             }
                                             if(_loc17_)
                                             {
                                                break loop7;
                                             }
                                             §§goto(addr735);
                                          }
                                          §§goto(addr741);
                                          addr217:
                                       }
                                       addr271:
                                    }
                                    loop10:
                                    while(true)
                                    {
                                       if(!§§pop())
                                       {
                                          loop11:
                                          while(true)
                                          {
                                             §§pop();
                                             if(_loc17_ || _loc3_)
                                             {
                                                while(true)
                                                {
                                                   §§push(_loc9_.§_-04Z§());
                                                   if(_loc17_)
                                                   {
                                                      §§push(false);
                                                      if(_loc18_)
                                                      {
                                                         continue loop10;
                                                      }
                                                      §§push(§§pop() == §§pop());
                                                   }
                                                   if(_loc18_)
                                                   {
                                                      continue loop11;
                                                   }
                                                   §§goto(addr208);
                                                }
                                                §§goto(addr271);
                                                addr197:
                                             }
                                             break;
                                          }
                                          §§goto(addr773);
                                       }
                                       §§goto(addr217);
                                    }
                                 }
                              }
                              continue loop4;
                           }
                        }
                     }
                     §§goto(addr741);
                  }
               }
               §§goto(addr761);
            }
            §§goto(addr119);
         }
         §§goto(addr90);
      }
      
      b2internal function §_-Fk§(param1:b2TimeStep) : void
      {
         var _loc23_:Boolean = false;
         var _loc24_:Boolean = true;
         var _loc2_:b2Body = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Body = null;
         var _loc6_:b2Body = null;
         var _loc7_:b2ContactEdge = null;
         var _loc8_:b2Joint = null;
         var _loc11_:b2Contact = null;
         var _loc12_:b2Contact = null;
         var _loc13_:* = NaN;
         var _loc14_:b2Body = null;
         var _loc15_:int = 0;
         var _loc16_:* = 0;
         var _loc17_:b2TimeStep = null;
         var _loc18_:* = 0;
         var _loc19_:* = NaN;
         var _loc20_:Number = NaN;
         var _loc21_:b2JointEdge = null;
         var _loc22_:b2Body = null;
         var _loc9_:b2Island;
         (_loc9_ = this.§_-s3§).§_-bL§(this.§_-F9§,b2Settings.b2_maxTOIContactsPerIsland,b2Settings.b2_maxTOIJointsPerIsland,null,this.§_-Xl§.§_-0DF§,this.§_-ol§);
         var _loc10_:Vector.<b2Body> = §_-OH§;
         _loc2_ = this.§_-WS§;
         while(_loc2_)
         {
            _loc2_.§_-7R§ &= ~b2Body.§_-0AI§;
            if(_loc23_)
            {
               break;
            }
            _loc2_.m_sweep.§_-RN§ = 0;
            if(_loc23_ && _loc3_)
            {
               break;
            }
            _loc2_ = _loc2_.§_-oz§;
         }
         _loc11_ = this.§_-4p§;
         if(!(_loc23_ && _loc2_))
         {
            loop1:
            while(_loc11_)
            {
               §§push(_loc11_);
               §§push(_loc11_.§_-7R§);
               §§push(b2Contact.§_-P1§ | b2Contact.§_-0AI§);
               if(!(_loc23_ && param1))
               {
                  §§push(~§§pop());
               }
               §§pop().§_-7R§ = §§pop() & §§pop();
               if(_loc23_)
               {
                  break;
               }
               while(true)
               {
                  _loc11_ = _loc11_.§_-oz§;
                  continue loop1;
               }
            }
            _loc8_ = this.§_-6c§;
            if(_loc24_ || _loc2_)
            {
               loop2:
               while(_loc8_)
               {
                  _loc8_.§_-GX§ = false;
                  if(!(_loc24_ || _loc3_))
                  {
                     break;
                  }
                  while(true)
                  {
                     _loc8_ = _loc8_.§_-oz§;
                     continue loop2;
                  }
               }
               loop3:
               while(true)
               {
                  _loc12_ = null;
                  if(!(_loc23_ && _loc3_))
                  {
                     _loc13_ = Number(1);
                  }
                  _loc11_ = this.§_-4p§;
                  if(!_loc23_)
                  {
                     loop4:
                     while(true)
                     {
                        if(!_loc11_)
                        {
                           if(_loc24_ || this)
                           {
                              §§push(_loc12_ == null);
                              if(!(_loc23_ && _loc2_))
                              {
                                 addr960:
                                 addr961:
                                 if(!§§pop())
                                 {
                                    if(_loc24_ || param1)
                                    {
                                       addr969:
                                       §§pop();
                                       §§goto(addr986);
                                    }
                                 }
                                 addr985:
                                 if(§§pop())
                                 {
                                    addr986:
                                    if(_loc24_ || this)
                                    {
                                       addr984:
                                       §§push(1 - 100 * Number.MIN_VALUE < _loc13_);
                                    }
                                    return;
                                 }
                                 addr989:
                                 _loc3_ = _loc12_.§_-f-§;
                                 _loc4_ = _loc12_.§_-N-§;
                                 _loc5_ = _loc3_.m_body;
                                 _loc6_ = _loc4_.m_body;
                                 if(_loc24_)
                                 {
                                    §_-095§.Set(_loc5_.m_sweep);
                                    §_-2K§.Set(_loc6_.m_sweep);
                                    _loc5_.§_-nE§(_loc13_);
                                    addr1201:
                                    addr1196:
                                    if(_loc24_)
                                    {
                                       _loc6_.§_-nE§(_loc13_);
                                       _loc12_.§_-Gb§(this.§_-Xl§.§_-0DF§);
                                       _loc12_.§_-7R§ &= ~b2Contact.§_-P1§;
                                       addr1183:
                                       addr1171:
                                       addr1178:
                                       §§push(_loc12_.§_-07V§() == true);
                                       §§push(_loc12_.§_-07V§() == true);
                                       if(_loc24_ || _loc2_)
                                       {
                                          if(!§§pop())
                                          {
                                             addr1153:
                                             §§pop();
                                             if(_loc24_ || _loc2_)
                                             {
                                                §§push(_loc12_.§_-0Dw§());
                                                if(!(_loc23_ && param1))
                                                {
                                                   if(_loc24_ || _loc2_)
                                                   {
                                                      if(_loc24_ || _loc3_)
                                                      {
                                                         §§push(false);
                                                         if(!(_loc23_ && param1))
                                                         {
                                                            if(_loc24_)
                                                            {
                                                               §§push(§§pop() == §§pop());
                                                               if(!(_loc23_ && this))
                                                               {
                                                                  if(_loc24_ || _loc3_)
                                                                  {
                                                                     addr1116:
                                                                     if(§§pop())
                                                                     {
                                                                        addr1118:
                                                                        if(!(_loc23_ && param1))
                                                                        {
                                                                           if(!_loc23_)
                                                                           {
                                                                              if(!(_loc23_ && param1))
                                                                              {
                                                                                 addr1136:
                                                                                 _loc5_.m_sweep.Set(§_-095§);
                                                                                 addr1138:
                                                                                 §§push(_loc6_.m_sweep);
                                                                                 if(!_loc23_)
                                                                                 {
                                                                                    §§pop().Set(§_-2K§);
                                                                                    if(_loc24_ || param1)
                                                                                    {
                                                                                       if(!(_loc23_ && _loc3_))
                                                                                       {
                                                                                          if(_loc24_ || _loc2_)
                                                                                          {
                                                                                             addr1020:
                                                                                             _loc5_.§_-da§();
                                                                                             if(!_loc23_)
                                                                                             {
                                                                                                if(!_loc23_)
                                                                                                {
                                                                                                   _loc6_.§_-da§();
                                                                                                   if(_loc24_ || param1)
                                                                                                   {
                                                                                                      if(_loc24_)
                                                                                                      {
                                                                                                         addr1018:
                                                                                                         if(false)
                                                                                                         {
                                                                                                            §§goto(addr1020);
                                                                                                         }
                                                                                                         continue loop3;
                                                                                                      }
                                                                                                      §§goto(addr1020);
                                                                                                   }
                                                                                                   addr1207:
                                                                                                   continue loop3;
                                                                                                }
                                                                                                §§goto(addr1183);
                                                                                             }
                                                                                             §§goto(addr1118);
                                                                                          }
                                                                                          §§goto(addr1171);
                                                                                       }
                                                                                       §§goto(addr1138);
                                                                                    }
                                                                                    §§goto(addr1207);
                                                                                 }
                                                                                 §§goto(addr1136);
                                                                              }
                                                                              §§goto(addr1201);
                                                                           }
                                                                           §§goto(addr1196);
                                                                        }
                                                                        §§goto(addr1178);
                                                                     }
                                                                     addr1205:
                                                                     if(_loc12_.§_-bU§() == false)
                                                                     {
                                                                        §§goto(addr1207);
                                                                     }
                                                                     else
                                                                     {
                                                                        if((_loc14_ = _loc5_).§_-oF§() != b2Body.b2_dynamicBody)
                                                                        {
                                                                           if(!(_loc23_ && _loc2_))
                                                                           {
                                                                              _loc14_ = _loc6_;
                                                                              addr1226:
                                                                              _loc9_.§_-p7§();
                                                                              if(!(_loc23_ && param1))
                                                                              {
                                                                                 addr1289:
                                                                                 _loc15_ = 0;
                                                                                 addr1290:
                                                                                 §§push(0);
                                                                                 if(!(_loc23_ && this))
                                                                                 {
                                                                                    if(!_loc23_)
                                                                                    {
                                                                                       _loc16_ = §§pop();
                                                                                       addr1285:
                                                                                       if(_loc24_)
                                                                                       {
                                                                                          addr1255:
                                                                                          _loc10_[_loc15_ + _loc16_++] = _loc14_;
                                                                                          if(!(_loc23_ && _loc2_))
                                                                                          {
                                                                                             _loc14_.§_-7R§ |= b2Body.§_-0AI§;
                                                                                             if(!(_loc23_ && _loc3_))
                                                                                             {
                                                                                                if(!_loc23_)
                                                                                                {
                                                                                                   addr1253:
                                                                                                   if(false)
                                                                                                   {
                                                                                                      §§goto(addr1255);
                                                                                                   }
                                                                                                   addr1770:
                                                                                                   if(_loc16_ > 0)
                                                                                                   {
                                                                                                      _loc2_ = _loc10_[_loc15_++];
                                                                                                      if(_loc24_)
                                                                                                      {
                                                                                                         §§push(_loc16_);
                                                                                                         if(!_loc23_)
                                                                                                         {
                                                                                                            §§push(§§pop() - 1);
                                                                                                         }
                                                                                                         _loc16_ = §§pop();
                                                                                                         addr1318:
                                                                                                         _loc9_.§_-gW§(_loc2_);
                                                                                                         addr1337:
                                                                                                         if(!_loc23_)
                                                                                                         {
                                                                                                            if(_loc24_ || _loc3_)
                                                                                                            {
                                                                                                               if(_loc2_.IsAwake() == false)
                                                                                                               {
                                                                                                                  if(_loc24_)
                                                                                                                  {
                                                                                                                     addr1311:
                                                                                                                     _loc2_.SetAwake(true);
                                                                                                                     if(_loc24_)
                                                                                                                     {
                                                                                                                        if(false)
                                                                                                                        {
                                                                                                                           §§goto(addr1318);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     addr1343:
                                                                                                                     §§goto(addr1770);
                                                                                                                  }
                                                                                                                  §§goto(addr1343);
                                                                                                               }
                                                                                                               if(_loc2_.§_-oF§() != b2Body.b2_dynamicBody)
                                                                                                               {
                                                                                                                  §§goto(addr1343);
                                                                                                               }
                                                                                                               _loc7_ = _loc2_.§_-4p§;
                                                                                                               if(!(_loc23_ && _loc2_))
                                                                                                               {
                                                                                                                  addr1619:
                                                                                                                  if(!_loc7_)
                                                                                                                  {
                                                                                                                     addr1621:
                                                                                                                     _loc21_ = _loc2_.§_-6c§;
                                                                                                                     if(!(_loc23_ && param1))
                                                                                                                     {
                                                                                                                        addr1768:
                                                                                                                        if(!_loc21_)
                                                                                                                        {
                                                                                                                           §§goto(addr1770);
                                                                                                                        }
                                                                                                                        if(_loc9_.§_-ug§ == _loc9_.§_-068§)
                                                                                                                        {
                                                                                                                           if(!_loc23_)
                                                                                                                           {
                                                                                                                              addr1764:
                                                                                                                              _loc21_ = _loc21_.§_-Oh§;
                                                                                                                              §§goto(addr1768);
                                                                                                                              addr1641:
                                                                                                                           }
                                                                                                                           §§goto(addr1770);
                                                                                                                        }
                                                                                                                        if(_loc21_.§_-q5§.§_-GX§ == true)
                                                                                                                        {
                                                                                                                           if(!_loc23_)
                                                                                                                           {
                                                                                                                              §§goto(addr1764);
                                                                                                                           }
                                                                                                                           §§goto(addr1770);
                                                                                                                        }
                                                                                                                        if((_loc22_ = _loc21_.§_-TK§).§_-04Z§() == false)
                                                                                                                        {
                                                                                                                           if(!(_loc23_ && param1))
                                                                                                                           {
                                                                                                                              §§goto(addr1764);
                                                                                                                           }
                                                                                                                           _loc22_.SetAwake(true);
                                                                                                                           addr1709:
                                                                                                                           _loc10_[_loc15_ + _loc16_] = _loc22_;
                                                                                                                           addr1758:
                                                                                                                           addr1732:
                                                                                                                           if(_loc24_ || _loc2_)
                                                                                                                           {
                                                                                                                              if(_loc24_)
                                                                                                                              {
                                                                                                                                 if(!_loc23_)
                                                                                                                                 {
                                                                                                                                    addr1704:
                                                                                                                                    _loc16_++;
                                                                                                                                    if(!_loc23_)
                                                                                                                                    {
                                                                                                                                       _loc22_.§_-7R§ |= b2Body.§_-0AI§;
                                                                                                                                       if(!(_loc23_ && param1))
                                                                                                                                       {
                                                                                                                                          if(!(_loc23_ && _loc3_))
                                                                                                                                          {
                                                                                                                                             if(!_loc23_)
                                                                                                                                             {
                                                                                                                                                if(false)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr1704);
                                                                                                                                                }
                                                                                                                                                §§goto(addr1764);
                                                                                                                                             }
                                                                                                                                             §§goto(addr1758);
                                                                                                                                          }
                                                                                                                                          §§goto(addr1732);
                                                                                                                                       }
                                                                                                                                       §§goto(addr1704);
                                                                                                                                    }
                                                                                                                                    §§goto(addr1758);
                                                                                                                                 }
                                                                                                                                 §§push(_loc22_.§_-7R§);
                                                                                                                                 if(_loc24_ || _loc3_)
                                                                                                                                 {
                                                                                                                                    §§push(b2Body.§_-0AI§);
                                                                                                                                    if(_loc24_)
                                                                                                                                    {
                                                                                                                                       if(§§pop() & §§pop())
                                                                                                                                       {
                                                                                                                                          addr1749:
                                                                                                                                          §§goto(addr1764);
                                                                                                                                       }
                                                                                                                                       addr1752:
                                                                                                                                       §§push(_loc22_.§_-oF§());
                                                                                                                                       §§push(b2Body.b2_staticBody);
                                                                                                                                    }
                                                                                                                                    if(§§pop() != §§pop())
                                                                                                                                    {
                                                                                                                                       addr1755:
                                                                                                                                       _loc22_.§_-nE§(_loc13_);
                                                                                                                                       §§goto(addr1758);
                                                                                                                                    }
                                                                                                                                    §§goto(addr1709);
                                                                                                                                 }
                                                                                                                                 §§goto(addr1752);
                                                                                                                                 addr1763:
                                                                                                                              }
                                                                                                                              §§goto(addr1749);
                                                                                                                           }
                                                                                                                           §§goto(addr1755);
                                                                                                                        }
                                                                                                                        _loc9_.§_-9S§(_loc21_.§_-q5§);
                                                                                                                        if(_loc24_ || _loc3_)
                                                                                                                        {
                                                                                                                           _loc21_.§_-q5§.§_-GX§ = true;
                                                                                                                           §§goto(addr1763);
                                                                                                                        }
                                                                                                                        §§goto(addr1749);
                                                                                                                     }
                                                                                                                     §§goto(addr1641);
                                                                                                                  }
                                                                                                                  §§push(_loc9_.§_-09s§);
                                                                                                                  if(_loc24_ || _loc3_)
                                                                                                                  {
                                                                                                                     if(§§pop() == _loc9_.§_-Fy§)
                                                                                                                     {
                                                                                                                        addr1504:
                                                                                                                        §§goto(addr1621);
                                                                                                                     }
                                                                                                                     addr1507:
                                                                                                                     §§push(_loc7_.§_-20§.§_-7R§ & b2Contact.§_-0AI§);
                                                                                                                  }
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     addr1615:
                                                                                                                     _loc7_ = _loc7_.§_-Oh§;
                                                                                                                     §§goto(addr1619);
                                                                                                                     addr1512:
                                                                                                                  }
                                                                                                                  addr1515:
                                                                                                                  §§push(_loc7_.§_-20§.§_-07V§());
                                                                                                                  §§push(true);
                                                                                                                  if(!_loc23_)
                                                                                                                  {
                                                                                                                     addr1520:
                                                                                                                     §§push(§§pop() == §§pop());
                                                                                                                     §§push(§§pop() == §§pop());
                                                                                                                  }
                                                                                                                  if(!§§pop())
                                                                                                                  {
                                                                                                                     addr1522:
                                                                                                                     §§pop();
                                                                                                                     addr1523:
                                                                                                                     §§push(_loc7_.§_-20§.§_-0Dw§());
                                                                                                                     if(!_loc23_)
                                                                                                                     {
                                                                                                                        §§push(false);
                                                                                                                        if(!_loc23_)
                                                                                                                        {
                                                                                                                           addr1469:
                                                                                                                           §§push(§§pop() == §§pop());
                                                                                                                           if(!(_loc23_ && _loc3_))
                                                                                                                           {
                                                                                                                              addr1478:
                                                                                                                              §§push(§§pop());
                                                                                                                              if(_loc24_ || param1)
                                                                                                                              {
                                                                                                                                 if(!§§pop())
                                                                                                                                 {
                                                                                                                                    addr1486:
                                                                                                                                    if(!_loc23_)
                                                                                                                                    {
                                                                                                                                       §§pop();
                                                                                                                                       addr1489:
                                                                                                                                       §§push(_loc7_.§_-20§);
                                                                                                                                       if(_loc24_ || _loc3_)
                                                                                                                                       {
                                                                                                                                          if(!_loc23_)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop().§_-bU§());
                                                                                                                                             if(!(_loc23_ && _loc2_))
                                                                                                                                             {
                                                                                                                                                §§push(false);
                                                                                                                                                if(_loc24_)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() == §§pop());
                                                                                                                                                }
                                                                                                                                                §§goto(addr1478);
                                                                                                                                             }
                                                                                                                                             if(!_loc23_)
                                                                                                                                             {
                                                                                                                                                if(!(_loc23_ && _loc2_))
                                                                                                                                                {
                                                                                                                                                   if(!_loc23_)
                                                                                                                                                   {
                                                                                                                                                      addr1433:
                                                                                                                                                      if(§§pop())
                                                                                                                                                      {
                                                                                                                                                         addr1435:
                                                                                                                                                         if(!(_loc23_ && this))
                                                                                                                                                         {
                                                                                                                                                            if(_loc24_)
                                                                                                                                                            {
                                                                                                                                                               if(!(_loc23_ && param1))
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr1615);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1512);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1523);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1489);
                                                                                                                                                      }
                                                                                                                                                      _loc9_.§_-ms§(_loc7_.§_-20§);
                                                                                                                                                      addr1456:
                                                                                                                                                      if(_loc24_)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc7_.§_-20§);
                                                                                                                                                         if(!(_loc23_ && this))
                                                                                                                                                         {
                                                                                                                                                            if(!(_loc23_ && _loc3_))
                                                                                                                                                            {
                                                                                                                                                               §§pop().§_-7R§ = _loc7_.§_-20§.§_-7R§ | b2Contact.§_-0AI§;
                                                                                                                                                               if(_loc24_ || param1)
                                                                                                                                                               {
                                                                                                                                                                  if(!(_loc23_ && _loc3_))
                                                                                                                                                                  {
                                                                                                                                                                     if(!_loc23_)
                                                                                                                                                                     {
                                                                                                                                                                        if(false)
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr1489);
                                                                                                                                                                        }
                                                                                                                                                                        §§push((_loc22_ = _loc7_.§_-TK§).§_-7R§);
                                                                                                                                                                        if(!(_loc23_ && _loc3_))
                                                                                                                                                                        {
                                                                                                                                                                           §§push(b2Body.§_-0AI§);
                                                                                                                                                                           if(!(_loc23_ && _loc2_))
                                                                                                                                                                           {
                                                                                                                                                                              if(§§pop() & §§pop())
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc24_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§goto(addr1615);
                                                                                                                                                                                 }
                                                                                                                                                                                 addr1558:
                                                                                                                                                                                 _loc22_.§_-nE§(_loc13_);
                                                                                                                                                                                 if(!(_loc23_ && param1))
                                                                                                                                                                                 {
                                                                                                                                                                                    _loc22_.SetAwake(true);
                                                                                                                                                                                    addr1597:
                                                                                                                                                                                    _loc10_[_loc15_ + _loc16_] = _loc22_;
                                                                                                                                                                                    addr1603:
                                                                                                                                                                                    if(_loc24_ || _loc3_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr1586:
                                                                                                                                                                                       _loc16_++;
                                                                                                                                                                                       if(!(_loc23_ && _loc3_))
                                                                                                                                                                                       {
                                                                                                                                                                                          _loc22_.§_-7R§ |= b2Body.§_-0AI§;
                                                                                                                                                                                          if(!(_loc23_ && param1))
                                                                                                                                                                                          {
                                                                                                                                                                                             if(false)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§goto(addr1586);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1615);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1586);
                                                                                                                                                                                          addr1595:
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1603);
                                                                                                                                                                                       addr1610:
                                                                                                                                                                                    }
                                                                                                                                                                                    addr1614:
                                                                                                                                                                                    §§goto(addr1614);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1595);
                                                                                                                                                                              }
                                                                                                                                                                              addr1553:
                                                                                                                                                                              §§push(_loc22_.§_-oF§());
                                                                                                                                                                              §§push(b2Body.b2_staticBody);
                                                                                                                                                                           }
                                                                                                                                                                           if(§§pop() != §§pop())
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc24_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr1558);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1610);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1597);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1553);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1435);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1456);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1621);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1507);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1489);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1504);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1520);
                                                                                                                                                }
                                                                                                                                                §§goto(addr1469);
                                                                                                                                             }
                                                                                                                                             §§goto(addr1486);
                                                                                                                                          }
                                                                                                                                          §§goto(addr1515);
                                                                                                                                       }
                                                                                                                                       §§goto(addr1523);
                                                                                                                                    }
                                                                                                                                    §§goto(addr1522);
                                                                                                                                 }
                                                                                                                                 §§goto(addr1433);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr1515);
                                                                                                                        }
                                                                                                                        §§goto(addr1478);
                                                                                                                     }
                                                                                                                     §§goto(addr1469);
                                                                                                                  }
                                                                                                                  §§goto(addr1478);
                                                                                                               }
                                                                                                               §§goto(addr1522);
                                                                                                            }
                                                                                                            §§goto(addr1337);
                                                                                                         }
                                                                                                         §§goto(addr1343);
                                                                                                      }
                                                                                                      §§goto(addr1311);
                                                                                                   }
                                                                                                   addr1773:
                                                                                                   (_loc17_ = §_-0A1§).§_-0F7§ = false;
                                                                                                   if(_loc23_ && param1)
                                                                                                   {
                                                                                                      continue loop3;
                                                                                                   }
                                                                                                   §§push(_loc17_);
                                                                                                   §§push(1 - _loc13_);
                                                                                                   if(!_loc23_)
                                                                                                   {
                                                                                                      §§push(§§pop() * param1.§_-pn§);
                                                                                                   }
                                                                                                   §§pop().§_-pn§ = §§pop();
                                                                                                   _loc17_.§_-00-§ = 1 / _loc17_.§_-pn§;
                                                                                                   addr1873:
                                                                                                   if(!(_loc24_ || _loc3_))
                                                                                                   {
                                                                                                      continue loop3;
                                                                                                   }
                                                                                                   _loc17_.§_-b8§ = 0;
                                                                                                   _loc17_.§_-lE§ = param1.§_-lE§;
                                                                                                   addr1847:
                                                                                                   if(_loc24_ || _loc3_)
                                                                                                   {
                                                                                                      _loc17_.§_-u5§ = param1.§_-u5§;
                                                                                                      if(!(_loc24_ || param1))
                                                                                                      {
                                                                                                         continue loop3;
                                                                                                      }
                                                                                                      if(!(_loc23_ && param1))
                                                                                                      {
                                                                                                         addr1796:
                                                                                                         _loc9_.§_-Fk§(_loc17_);
                                                                                                         if(!(_loc23_ && param1))
                                                                                                         {
                                                                                                            if(!_loc23_)
                                                                                                            {
                                                                                                               §§push(0);
                                                                                                               if(!_loc23_)
                                                                                                               {
                                                                                                                  _loc18_ = §§pop();
                                                                                                                  if(!_loc23_)
                                                                                                                  {
                                                                                                                     if(false)
                                                                                                                     {
                                                                                                                        §§goto(addr1796);
                                                                                                                     }
                                                                                                                     addr1960:
                                                                                                                     §§push(_loc18_);
                                                                                                                     if(_loc24_ || _loc2_)
                                                                                                                     {
                                                                                                                        §§push(_loc9_.§_-F9§);
                                                                                                                        if(_loc24_ || _loc3_)
                                                                                                                        {
                                                                                                                           if(§§pop() < §§pop())
                                                                                                                           {
                                                                                                                              _loc2_ = _loc9_.§_-oa§[_loc18_];
                                                                                                                              if(_loc24_)
                                                                                                                              {
                                                                                                                                 _loc2_.§_-7R§ &= ~b2Body.§_-0AI§;
                                                                                                                                 if(_loc24_ || param1)
                                                                                                                                 {
                                                                                                                                    if(_loc2_.IsAwake() == false)
                                                                                                                                    {
                                                                                                                                       if(!_loc23_)
                                                                                                                                       {
                                                                                                                                          addr1959:
                                                                                                                                          _loc18_++;
                                                                                                                                          §§goto(addr1960);
                                                                                                                                       }
                                                                                                                                       addr1928:
                                                                                                                                       _loc7_ = _loc2_.§_-4p§;
                                                                                                                                       if(_loc24_ || this)
                                                                                                                                       {
                                                                                                                                          addr1957:
                                                                                                                                          if(!_loc7_)
                                                                                                                                          {
                                                                                                                                             §§goto(addr1959);
                                                                                                                                          }
                                                                                                                                          _loc7_.§_-20§.§_-7R§ &= ~b2Contact.§_-P1§;
                                                                                                                                          if(_loc24_)
                                                                                                                                          {
                                                                                                                                             _loc7_ = _loc7_.§_-Oh§;
                                                                                                                                             §§goto(addr1957);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr1959);
                                                                                                                                    }
                                                                                                                                    if(_loc2_.§_-oF§() != b2Body.b2_dynamicBody)
                                                                                                                                    {
                                                                                                                                       if(_loc24_ || _loc2_)
                                                                                                                                       {
                                                                                                                                          addr1918:
                                                                                                                                          §§goto(addr1959);
                                                                                                                                       }
                                                                                                                                       §§goto(addr1928);
                                                                                                                                    }
                                                                                                                                    _loc2_.§_-QG§();
                                                                                                                                    if(!(_loc23_ && this))
                                                                                                                                    {
                                                                                                                                       §§goto(addr1928);
                                                                                                                                    }
                                                                                                                                    §§goto(addr1960);
                                                                                                                                 }
                                                                                                                                 §§goto(addr1918);
                                                                                                                              }
                                                                                                                              §§goto(addr1960);
                                                                                                                           }
                                                                                                                           if(!(_loc23_ && _loc3_))
                                                                                                                           {
                                                                                                                              §§push(0);
                                                                                                                              if(_loc24_)
                                                                                                                              {
                                                                                                                                 _loc18_ = §§pop();
                                                                                                                                 if(_loc24_ || param1)
                                                                                                                                 {
                                                                                                                                    addr2025:
                                                                                                                                    §§push(_loc18_);
                                                                                                                                    if(!_loc23_)
                                                                                                                                    {
                                                                                                                                       addr2028:
                                                                                                                                       §§push(_loc9_.§_-09s§);
                                                                                                                                       if(_loc24_ || _loc2_)
                                                                                                                                       {
                                                                                                                                          addr2037:
                                                                                                                                          if(§§pop() < §§pop())
                                                                                                                                          {
                                                                                                                                             _loc11_ = _loc9_.§_-03H§[_loc18_];
                                                                                                                                             §§push(_loc11_);
                                                                                                                                             §§push(_loc11_.§_-7R§);
                                                                                                                                             §§push(b2Contact.§_-P1§ | b2Contact.§_-0AI§);
                                                                                                                                             if(!_loc23_)
                                                                                                                                             {
                                                                                                                                                §§push(~§§pop());
                                                                                                                                             }
                                                                                                                                             §§pop().§_-7R§ = §§pop() & §§pop();
                                                                                                                                             if(!(_loc23_ && _loc3_))
                                                                                                                                             {
                                                                                                                                                _loc18_++;
                                                                                                                                             }
                                                                                                                                             §§goto(addr2025);
                                                                                                                                          }
                                                                                                                                          if(!_loc23_)
                                                                                                                                          {
                                                                                                                                             addr2040:
                                                                                                                                             §§push(0);
                                                                                                                                             if(_loc24_ || this)
                                                                                                                                             {
                                                                                                                                                addr2048:
                                                                                                                                                _loc18_ = §§pop();
                                                                                                                                                addr2091:
                                                                                                                                                if(!(_loc23_ && _loc2_))
                                                                                                                                                {
                                                                                                                                                   addr2081:
                                                                                                                                                   §§push(_loc18_);
                                                                                                                                                   §§push(_loc9_.§_-ug§);
                                                                                                                                                   addr2056:
                                                                                                                                                }
                                                                                                                                                this.§_-Xl§.§_-Wx§();
                                                                                                                                                continue loop3;
                                                                                                                                             }
                                                                                                                                             §§goto(addr2081);
                                                                                                                                          }
                                                                                                                                          §§goto(addr2091);
                                                                                                                                       }
                                                                                                                                       if(§§pop() < §§pop())
                                                                                                                                       {
                                                                                                                                          (_loc8_ = _loc9_.§_-tI§[_loc18_]).§_-GX§ = false;
                                                                                                                                          if(!_loc23_)
                                                                                                                                          {
                                                                                                                                             _loc18_++;
                                                                                                                                          }
                                                                                                                                          §§goto(addr2081);
                                                                                                                                       }
                                                                                                                                       if(!(_loc24_ || this))
                                                                                                                                       {
                                                                                                                                          continue loop3;
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr2081);
                                                                                                                                    addr1996:
                                                                                                                                 }
                                                                                                                                 §§goto(addr2091);
                                                                                                                              }
                                                                                                                              §§goto(addr2028);
                                                                                                                           }
                                                                                                                           §§goto(addr1996);
                                                                                                                        }
                                                                                                                        §§goto(addr2037);
                                                                                                                     }
                                                                                                                     §§goto(addr2081);
                                                                                                                  }
                                                                                                                  §§goto(addr2056);
                                                                                                               }
                                                                                                               §§goto(addr2048);
                                                                                                            }
                                                                                                            §§goto(addr1873);
                                                                                                         }
                                                                                                         §§goto(addr2081);
                                                                                                      }
                                                                                                      §§goto(addr1847);
                                                                                                   }
                                                                                                   §§goto(addr2040);
                                                                                                }
                                                                                                §§goto(addr1255);
                                                                                             }
                                                                                             §§goto(addr1773);
                                                                                          }
                                                                                          §§goto(addr1285);
                                                                                       }
                                                                                       §§goto(addr1290);
                                                                                    }
                                                                                    §§goto(addr1289);
                                                                                 }
                                                                                 §§goto(addr1770);
                                                                              }
                                                                              §§goto(addr1773);
                                                                           }
                                                                           §§goto(addr1253);
                                                                        }
                                                                        §§goto(addr1226);
                                                                     }
                                                                  }
                                                                  §§goto(addr1183);
                                                               }
                                                               §§goto(addr1205);
                                                            }
                                                            §§goto(addr1183);
                                                         }
                                                         §§goto(addr1205);
                                                      }
                                                      §§goto(addr1183);
                                                   }
                                                   §§goto(addr1153);
                                                }
                                                §§goto(addr1205);
                                             }
                                             §§goto(addr1207);
                                          }
                                       }
                                       §§goto(addr1116);
                                    }
                                    §§goto(addr1207);
                                 }
                                 §§goto(addr1018);
                              }
                           }
                           §§goto(addr969);
                        }
                        else
                        {
                           §§push(_loc11_.§_-07V§());
                           loop5:
                           while(true)
                           {
                              §§push(true);
                              loop6:
                              while(true)
                              {
                                 §§push(§§pop() == §§pop());
                                 if(_loc24_ || _loc3_)
                                 {
                                    §§push(§§pop());
                                    loop7:
                                    while(true)
                                    {
                                       if(!§§pop())
                                       {
                                          if(_loc24_)
                                          {
                                             while(true)
                                             {
                                                §§pop();
                                                if(!(_loc23_ && param1))
                                                {
                                                   §§push(_loc11_.§_-0Dw§());
                                                   if(!_loc23_)
                                                   {
                                                      §§push(false);
                                                      if(_loc24_ || _loc2_)
                                                      {
                                                         §§push(§§pop() == §§pop());
                                                         while(true)
                                                         {
                                                            if(!_loc24_)
                                                            {
                                                               continue loop5;
                                                            }
                                                            loop8:
                                                            while(true)
                                                            {
                                                               §§push(§§pop());
                                                               if(!_loc23_)
                                                               {
                                                                  if(_loc23_ && _loc2_)
                                                                  {
                                                                     continue loop6;
                                                                  }
                                                                  if(!§§pop())
                                                                  {
                                                                     if(_loc24_)
                                                                     {
                                                                        §§pop();
                                                                        while(true)
                                                                        {
                                                                           addr264:
                                                                           loop10:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc11_.§_-05O§());
                                                                              if(!(_loc24_ || param1))
                                                                              {
                                                                                 break;
                                                                              }
                                                                              §§push(false);
                                                                              if(!_loc24_)
                                                                              {
                                                                                 while(§§pop())
                                                                                 {
                                                                                    if(!(_loc24_ || param1))
                                                                                    {
                                                                                       break loop10;
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§pop();
                                                                                       if(!_loc23_)
                                                                                       {
                                                                                          §§push(_loc19_);
                                                                                          if(_loc24_)
                                                                                          {
                                                                                             §§push(_loc13_);
                                                                                             if(!_loc23_)
                                                                                             {
                                                                                                §§push(§§pop() < §§pop());
                                                                                                if(!_loc23_)
                                                                                                {
                                                                                                   break loop7;
                                                                                                }
                                                                                                §§goto(addr985);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr984);
                                                                                    }
                                                                                 }
                                                                                 break loop7;
                                                                              }
                                                                              addr894:
                                                                              addr894:
                                                                              continue loop7;
                                                                           }
                                                                           §§goto(addr969);
                                                                        }
                                                                        addr343:
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr960);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     loop11:
                                                                     while(true)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           if(_loc24_ || _loc2_)
                                                                           {
                                                                              continue loop4;
                                                                           }
                                                                           loop12:
                                                                           while(true)
                                                                           {
                                                                              if(!_loc23_)
                                                                              {
                                                                                 §§push(_loc11_.§_-7R§ & b2Contact.§_-P1§);
                                                                                 if(!(_loc23_ && param1))
                                                                                 {
                                                                                    if(_loc24_ || this)
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          if(_loc24_)
                                                                                          {
                                                                                             §§push(_loc11_.§_-07y§);
                                                                                             if(!_loc23_)
                                                                                             {
                                                                                                if(_loc23_ && _loc2_)
                                                                                                {
                                                                                                   continue;
                                                                                                }
                                                                                                §§push(Number(§§pop()));
                                                                                                if(_loc24_ || param1)
                                                                                                {
                                                                                                   _loc19_ = §§pop();
                                                                                                   if(_loc24_ || param1)
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(false)
                                                                                                         {
                                                                                                            break loop12;
                                                                                                         }
                                                                                                         addr880:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(Number.MIN_VALUE < _loc19_);
                                                                                                            if(_loc24_)
                                                                                                            {
                                                                                                               §§push(§§pop());
                                                                                                               if(!(_loc24_ || _loc2_))
                                                                                                               {
                                                                                                                  break loop8;
                                                                                                               }
                                                                                                               §§goto(addr894);
                                                                                                            }
                                                                                                            §§goto(addr902);
                                                                                                         }
                                                                                                      }
                                                                                                      addr262:
                                                                                                   }
                                                                                                   §§goto(addr984);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr984);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§push(_loc11_.§_-f-§);
                                                                                          if(_loc24_ || _loc3_)
                                                                                          {
                                                                                             _loc3_ = §§pop();
                                                                                             _loc4_ = _loc11_.§_-N-§;
                                                                                             _loc5_ = _loc3_.m_body;
                                                                                             _loc6_ = _loc4_.m_body;
                                                                                             if(!(_loc23_ && param1))
                                                                                             {
                                                                                                addr876:
                                                                                                §§push(_loc5_.§_-oF§() != b2Body.b2_dynamicBody);
                                                                                                if(!(_loc5_.§_-oF§() != b2Body.b2_dynamicBody))
                                                                                                {
                                                                                                   addr878:
                                                                                                   §§pop();
                                                                                                   addr864:
                                                                                                   §§push(_loc5_.IsAwake());
                                                                                                   if(_loc24_ || _loc2_)
                                                                                                   {
                                                                                                      addr862:
                                                                                                      §§push(§§pop() == false);
                                                                                                   }
                                                                                                   addr879:
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      addr866:
                                                                                                      if(_loc24_)
                                                                                                      {
                                                                                                         §§pop();
                                                                                                         addr869:
                                                                                                         §§push(_loc6_.§_-oF§());
                                                                                                         if(!_loc23_)
                                                                                                         {
                                                                                                            §§push(b2Body.b2_dynamicBody);
                                                                                                            if(!(_loc23_ && this))
                                                                                                            {
                                                                                                               §§push(§§pop() == §§pop());
                                                                                                               if(!_loc23_)
                                                                                                               {
                                                                                                                  if(!_loc23_)
                                                                                                                  {
                                                                                                                     addr841:
                                                                                                                     §§push(!§§pop());
                                                                                                                     §§push(!§§pop());
                                                                                                                     if(_loc24_ || _loc2_)
                                                                                                                     {
                                                                                                                        if(!§§pop())
                                                                                                                        {
                                                                                                                           addr849:
                                                                                                                           §§pop();
                                                                                                                           addr850:
                                                                                                                           §§push(_loc6_.IsAwake());
                                                                                                                           if(!(_loc23_ && this))
                                                                                                                           {
                                                                                                                              addr806:
                                                                                                                              §§push(false);
                                                                                                                              if(!_loc23_)
                                                                                                                              {
                                                                                                                                 addr810:
                                                                                                                                 addr809:
                                                                                                                                 if(§§pop() == §§pop())
                                                                                                                                 {
                                                                                                                                    addr811:
                                                                                                                                    if(!_loc24_)
                                                                                                                                    {
                                                                                                                                       §§goto(addr869);
                                                                                                                                    }
                                                                                                                                    continue loop4;
                                                                                                                                 }
                                                                                                                                 addr818:
                                                                                                                                 _loc20_ = _loc5_.m_sweep.§_-RN§;
                                                                                                                                 addr819:
                                                                                                                                 addr816:
                                                                                                                                 §§push(_loc5_.m_sweep.§_-RN§);
                                                                                                                                 if(!(_loc23_ && _loc2_))
                                                                                                                                 {
                                                                                                                                    addr787:
                                                                                                                                    if(§§pop() < _loc6_.m_sweep.§_-RN§)
                                                                                                                                    {
                                                                                                                                       addr793:
                                                                                                                                       _loc20_ = _loc6_.m_sweep.§_-RN§;
                                                                                                                                       addr765:
                                                                                                                                       _loc5_.m_sweep.§_-nE§(_loc20_);
                                                                                                                                       addr766:
                                                                                                                                       addr791:
                                                                                                                                       addr764:
                                                                                                                                       addr792:
                                                                                                                                       addr789:
                                                                                                                                       addr794:
                                                                                                                                       if(!(_loc23_ && _loc2_))
                                                                                                                                       {
                                                                                                                                          addr678:
                                                                                                                                          §§push(_loc11_.§_-gV§(_loc5_.m_sweep,_loc6_.m_sweep));
                                                                                                                                          if(!_loc23_)
                                                                                                                                          {
                                                                                                                                             if(_loc24_)
                                                                                                                                             {
                                                                                                                                                addr690:
                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                                if(!(_loc23_ && _loc3_))
                                                                                                                                                {
                                                                                                                                                   _loc19_ = §§pop();
                                                                                                                                                   addr698:
                                                                                                                                                   if(!_loc23_)
                                                                                                                                                   {
                                                                                                                                                      §§push(b2Settings);
                                                                                                                                                      if(_loc24_)
                                                                                                                                                      {
                                                                                                                                                         §§push(0);
                                                                                                                                                         if(_loc24_)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() <= _loc19_);
                                                                                                                                                            if(!(_loc23_ && _loc2_))
                                                                                                                                                            {
                                                                                                                                                               if(§§pop())
                                                                                                                                                               {
                                                                                                                                                                  if(_loc24_ || param1)
                                                                                                                                                                  {
                                                                                                                                                                     addr665:
                                                                                                                                                                     §§pop();
                                                                                                                                                                     §§push(_loc19_ <= 1);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§pop().b2Assert(§§pop());
                                                                                                                                                               addr670:
                                                                                                                                                               if(_loc24_ || _loc3_)
                                                                                                                                                               {
                                                                                                                                                                  addr580:
                                                                                                                                                                  §§push(_loc19_ > 0);
                                                                                                                                                                  if(!(_loc23_ && _loc2_))
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc24_ || this)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc24_ || _loc3_)
                                                                                                                                                                        {
                                                                                                                                                                           if(!(_loc23_ && param1))
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop());
                                                                                                                                                                              if(!(_loc23_ && param1))
                                                                                                                                                                              {
                                                                                                                                                                                 if(!_loc23_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc24_ || this)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(§§pop())
                                                                                                                                                                                       {
                                                                                                                                                                                          addr627:
                                                                                                                                                                                          if(_loc24_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§pop();
                                                                                                                                                                                             addr630:
                                                                                                                                                                                             if(!(_loc23_ && this))
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc24_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc19_);
                                                                                                                                                                                                   if(_loc24_ || this)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc24_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc24_ || _loc2_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(1);
                                                                                                                                                                                                            if(!_loc23_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop() < §§pop());
                                                                                                                                                                                                               if(_loc24_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!_loc23_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!_loc23_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr473:
                                                                                                                                                                                                                        if(§§pop())
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!_loc23_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(1);
                                                                                                                                                                                                                              if(_loc24_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(§§pop() - _loc19_);
                                                                                                                                                                                                                                 if(_loc24_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(_loc20_);
                                                                                                                                                                                                                                    if(!(_loc23_ && param1))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(!(_loc23_ && _loc3_))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                          if(!(_loc23_ && _loc2_))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(_loc24_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(_loc19_);
                                                                                                                                                                                                                                                if(!_loc23_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(!(_loc23_ && param1))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                      if(!_loc23_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(!(_loc23_ && _loc3_))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(_loc24_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                                                                                                                               if(_loc24_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  addr535:
                                                                                                                                                                                                                                                                  §§push(§§pop());
                                                                                                                                                                                                                                                                  if(_loc24_ || param1)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     _loc19_ = §§pop();
                                                                                                                                                                                                                                                                     if(!_loc23_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        addr545:
                                                                                                                                                                                                                                                                        if(_loc24_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           addr548:
                                                                                                                                                                                                                                                                           if(§§pop() > 1)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              addr549:
                                                                                                                                                                                                                                                                              if(!_loc23_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(_loc24_ || _loc2_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(!_loc23_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(!_loc23_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          addr564:
                                                                                                                                                                                                                                                                                          §§push(Number(1));
                                                                                                                                                                                                                                                                                          if(!_loc23_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             _loc19_ = §§pop();
                                                                                                                                                                                                                                                                                             addr567:
                                                                                                                                                                                                                                                                                             if(_loc24_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(!(_loc23_ && param1))
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   addr426:
                                                                                                                                                                                                                                                                                                   _loc11_.§_-07y§ = _loc19_;
                                                                                                                                                                                                                                                                                                   if(_loc24_ || _loc2_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(_loc24_ || _loc2_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         _loc11_.§_-7R§ |= b2Contact.§_-P1§;
                                                                                                                                                                                                                                                                                                         if(!(_loc23_ && _loc3_))
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            if(!(_loc23_ && _loc2_))
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               if(false)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  §§goto(addr426);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr880);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr850);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr426);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr549);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr567);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr766);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             addr760:
                                                                                                                                                                                                                                                                                             §§push(_loc6_.m_sweep);
                                                                                                                                                                                                                                                                                             if(_loc24_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(_loc24_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(!(_loc23_ && this))
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(!(_loc23_ && param1))
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         if(_loc24_ || this)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§push(_loc20_);
                                                                                                                                                                                                                                                                                                            if(!_loc23_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§pop().§_-nE§(§§pop());
                                                                                                                                                                                                                                                                                                               addr733:
                                                                                                                                                                                                                                                                                                               if(_loc24_ || _loc2_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  §§goto(addr678);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr819);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr765);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr816);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr819);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr791);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                addr746:
                                                                                                                                                                                                                                                                                                if(_loc24_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   addr749:
                                                                                                                                                                                                                                                                                                   §§push(§§pop().§_-RN§);
                                                                                                                                                                                                                                                                                                   §§push(_loc5_.m_sweep);
                                                                                                                                                                                                                                                                                                   if(!_loc23_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      addr754:
                                                                                                                                                                                                                                                                                                      if(§§pop() < §§pop().§_-RN§)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         addr759:
                                                                                                                                                                                                                                                                                                         _loc20_ = _loc5_.m_sweep.§_-RN§;
                                                                                                                                                                                                                                                                                                         addr757:
                                                                                                                                                                                                                                                                                                         §§goto(addr760);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr678);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr787);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr764);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr757);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr749);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr879);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr698);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr670);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr630);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr426);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr759);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr564);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr787);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr545);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr792);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr690);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr545);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr754);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr535);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr759);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr535);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr580);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr535);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr564);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr567);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr426);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr864);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr850);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr627);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr548);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr793);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr580);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr564);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr789);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr794);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr810);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr473);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr864);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr841);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr806);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr876);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr841);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr849);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr627);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr759);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr665);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr733);
                                                                                                                                                }
                                                                                                                                                §§goto(addr818);
                                                                                                                                             }
                                                                                                                                             §§goto(addr810);
                                                                                                                                          }
                                                                                                                                          §§goto(addr690);
                                                                                                                                       }
                                                                                                                                       §§goto(addr811);
                                                                                                                                    }
                                                                                                                                    §§goto(addr746);
                                                                                                                                    §§push(_loc6_.m_sweep);
                                                                                                                                 }
                                                                                                                                 addr817:
                                                                                                                                 §§goto(addr817);
                                                                                                                              }
                                                                                                                              §§goto(addr876);
                                                                                                                           }
                                                                                                                           §§goto(addr878);
                                                                                                                        }
                                                                                                                        §§goto(addr809);
                                                                                                                     }
                                                                                                                     §§goto(addr862);
                                                                                                                  }
                                                                                                                  §§goto(addr866);
                                                                                                               }
                                                                                                               §§goto(addr849);
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr876);
                                                                                                   }
                                                                                                   §§goto(addr810);
                                                                                                }
                                                                                                §§goto(addr862);
                                                                                             }
                                                                                             §§goto(addr793);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr989);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(Number(§§pop()));
                                                                                          continue loop12;
                                                                                       }
                                                                                       addr300:
                                                                                    }
                                                                                 }
                                                                                 break loop11;
                                                                              }
                                                                              §§goto(addr343);
                                                                           }
                                                                           §§goto(addr264);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push(1);
                                                                        }
                                                                        §§goto(addr300);
                                                                     }
                                                                     §§goto(addr984);
                                                                     addr289:
                                                                  }
                                                                  §§goto(addr984);
                                                               }
                                                               break;
                                                            }
                                                            §§goto(addr961);
                                                         }
                                                         addr326:
                                                      }
                                                      §§goto(addr894);
                                                   }
                                                   §§goto(addr902);
                                                }
                                                §§goto(addr984);
                                             }
                                             addr361:
                                          }
                                          break;
                                       }
                                       §§goto(addr328);
                                    }
                                    while(true)
                                    {
                                       if(!§§pop())
                                       {
                                          continue loop4;
                                       }
                                       if(_loc24_ || param1)
                                       {
                                          _loc12_ = _loc11_;
                                          if(!(_loc23_ && param1))
                                          {
                                             §§push(_loc19_);
                                             if(!_loc23_)
                                             {
                                                §§push(Number(§§pop()));
                                             }
                                             _loc13_ = §§pop();
                                          }
                                          continue loop4;
                                       }
                                       §§goto(addr984);
                                    }
                                 }
                                 §§goto(addr361);
                              }
                           }
                        }
                        §§goto(addr984);
                     }
                  }
                  §§goto(addr262);
               }
            }
            §§goto(addr184);
         }
         §§goto(addr155);
      }
      
      b2internal function §_-YP§(param1:b2Joint) : void
      {
         var _loc15_:Boolean = false;
         var _loc16_:Boolean = true;
         var _loc11_:b2PulleyJoint = null;
         var _loc12_:b2Vec2 = null;
         var _loc13_:b2Vec2 = null;
         var _loc2_:b2Body = param1.§_-00L§();
         var _loc3_:b2Body = param1.§_-03D§();
         var _loc4_:b2Transform = _loc2_.m_xf;
         var _loc5_:b2Transform = _loc3_.m_xf;
         var _loc6_:b2Vec2 = _loc4_.position;
         var _loc7_:b2Vec2 = _loc5_.position;
         var _loc8_:b2Vec2 = param1.GetAnchorA();
         var _loc9_:b2Vec2 = param1.GetAnchorB();
         var _loc10_:b2Color = §_-06w§;
         §§push(param1.§_-1c§);
         if(_loc16_)
         {
            var _loc14_:* = §§pop();
            if(!_loc15_)
            {
               §§push(b2Joint.§_-Mk§);
               if(!(_loc15_ && this))
               {
                  §§push(_loc14_);
                  if(_loc16_ || _loc2_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc16_ || this)
                        {
                           §§push(0);
                           if(_loc16_)
                           {
                              addr266:
                           }
                        }
                        else
                        {
                           addr317:
                           §§push(2);
                           if(!_loc15_)
                           {
                              addr320:
                           }
                        }
                     }
                     else
                     {
                        §§push(b2Joint.§_-kH§);
                        if(!(_loc15_ && this))
                        {
                           §§push(_loc14_);
                           if(!(_loc15_ && _loc2_))
                           {
                              addr284:
                              if(§§pop() === §§pop())
                              {
                                 if(!(_loc15_ && _loc3_))
                                 {
                                    addr302:
                                    §§push(1);
                                    if(!_loc15_)
                                    {
                                       addr326:
                                       loop11:
                                       switch(§§pop())
                                       {
                                          case 0:
                                             this.§_-nw§.§_-T4§(_loc8_,_loc9_,_loc10_);
                                             if(_loc16_)
                                             {
                                                break;
                                             }
                                             break;
                                          case 1:
                                             _loc12_ = (_loc11_ = param1 as b2PulleyJoint).§_-qK§();
                                             _loc13_ = _loc11_.§_-zV§();
                                             if(!(_loc15_ && param1))
                                             {
                                                §§push(this.§_-nw§);
                                                loop10:
                                                while(true)
                                                {
                                                   §§pop().§_-T4§(_loc12_,_loc8_,_loc10_);
                                                   loop8:
                                                   while(true)
                                                   {
                                                      §§push(this.§_-nw§);
                                                      addr214:
                                                      addr216:
                                                      addr220:
                                                      while(_loc15_)
                                                      {
                                                         continue loop10;
                                                      }
                                                      §§pop().§_-T4§(_loc13_,_loc9_,_loc10_);
                                                      loop6:
                                                      while(true)
                                                      {
                                                         if(_loc15_)
                                                         {
                                                            continue loop8;
                                                         }
                                                         §§push(this.§_-nw§);
                                                         while(true)
                                                         {
                                                            if(_loc16_)
                                                            {
                                                               break loop6;
                                                            }
                                                            §§goto(addr214);
                                                         }
                                                         §§goto(addr216);
                                                      }
                                                      §§pop().§_-T4§(_loc12_,_loc13_,_loc10_);
                                                   }
                                                }
                                             }
                                             else
                                             {
                                                loop2:
                                                while(true)
                                                {
                                                   addr158:
                                                   while(true)
                                                   {
                                                      §§push(this.§_-nw§);
                                                      loop4:
                                                      while(!_loc15_)
                                                      {
                                                         §§pop().§_-T4§(_loc8_,_loc9_,_loc10_);
                                                         while(true)
                                                         {
                                                            if(_loc16_ || param1)
                                                            {
                                                               if(_loc16_)
                                                               {
                                                                  if(_loc3_ == this.m_groundBody)
                                                                  {
                                                                     addr230:
                                                                     break loop11;
                                                                  }
                                                                  if(_loc15_)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  if(_loc15_ && _loc3_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  §§push(this.§_-nw§);
                                                                  if(_loc15_ && _loc2_)
                                                                  {
                                                                     continue loop4;
                                                                  }
                                                                  if(!_loc16_)
                                                                  {
                                                                     addr196:
                                                                     §§pop().§_-T4§(_loc8_,_loc9_,_loc10_);
                                                                     break loop11;
                                                                     addr200:
                                                                  }
                                                                  if(!(_loc15_ && this))
                                                                  {
                                                                     §§pop().§_-T4§(_loc7_,_loc9_,_loc10_);
                                                                     continue;
                                                                  }
                                                                  §§goto(addr204);
                                                               }
                                                               break loop11;
                                                               addr210:
                                                            }
                                                            else
                                                            {
                                                               addr184:
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(this.§_-nw§);
                                                               break loop4;
                                                            }
                                                         }
                                                         continue loop2;
                                                      }
                                                      while(true)
                                                      {
                                                         §§pop().§_-T4§(_loc6_,_loc8_,_loc10_);
                                                         continue loop2;
                                                      }
                                                   }
                                                }
                                             }
                                             §§goto(addr210);
                                          case 2:
                                             §§goto(addr196);
                                          default:
                                             §§push(this.§_-nw§);
                                             if(_loc2_ != this.m_groundBody)
                                             {
                                                §§goto(addr184);
                                             }
                                             §§goto(addr158);
                                       }
                                       return;
                                       addr325:
                                       addr305:
                                    }
                                    else
                                    {
                                       §§goto(addr320);
                                    }
                                    §§goto(addr325);
                                 }
                                 else
                                 {
                                    §§goto(addr317);
                                 }
                              }
                              else
                              {
                                 §§push(b2Joint.§_-w§);
                                 if(_loc16_ || this)
                                 {
                                    §§push(_loc14_);
                                 }
                                 §§goto(addr325);
                              }
                              §§goto(addr325);
                           }
                           if(§§pop() === §§pop())
                           {
                              §§goto(addr317);
                           }
                           else
                           {
                              §§goto(addr325);
                              §§push(3);
                           }
                           §§goto(addr325);
                        }
                        §§goto(addr305);
                     }
                     §§goto(addr325);
                  }
                  §§goto(addr284);
               }
               §§goto(addr266);
            }
            §§goto(addr302);
         }
         §§goto(addr326);
      }
      
      b2internal function §_-Si§(param1:b2Shape, param2:b2Transform, param3:b2Color) : void
      {
         var _loc15_:Boolean = true;
         var _loc16_:Boolean = false;
         var _loc4_:b2CircleShape = null;
         var _loc5_:b2Vec2 = null;
         var _loc6_:Number = NaN;
         var _loc7_:b2Vec2 = null;
         var _loc8_:* = 0;
         var _loc9_:b2PolygonShape = null;
         var _loc10_:* = 0;
         var _loc11_:Vector.<b2Vec2> = null;
         var _loc12_:Vector.<b2Vec2> = null;
         var _loc13_:b2EdgeShape = null;
         §§push(param1.§_-1c§);
         if(_loc15_)
         {
            var _loc14_:* = §§pop();
            if(!(_loc16_ && param1))
            {
               §§push(b2Shape.§_-rv§);
               if(!_loc16_)
               {
                  §§push(_loc14_);
                  if(!(_loc16_ && param2))
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc15_ || this)
                        {
                           §§push(0);
                           if(_loc16_)
                           {
                              addr275:
                           }
                        }
                        else
                        {
                           addr267:
                           §§push(1);
                           if(!(_loc16_ && param1))
                           {
                              §§goto(addr275);
                           }
                        }
                     }
                     else
                     {
                        §§push(b2Shape.§_-04L§);
                        if(!_loc16_)
                        {
                           §§push(_loc14_);
                           if(!(_loc16_ && param1))
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(_loc15_ || param3)
                                 {
                                    §§goto(addr267);
                                 }
                                 else
                                 {
                                    addr282:
                                    §§push(2);
                                    if(!_loc15_)
                                    {
                                    }
                                    addr291:
                                    loop6:
                                    switch(§§pop())
                                    {
                                       case 0:
                                          _loc4_ = param1 as b2CircleShape;
                                          _loc5_ = b2Math.§_-yP§(param2,_loc4_.§_-bq§);
                                          if(_loc15_)
                                          {
                                             _loc6_ = _loc4_.§_-0CZ§;
                                          }
                                          _loc7_ = param2.R.col1;
                                          if(!(_loc16_ && param3))
                                          {
                                             this.§_-nw§.§_-7J§(_loc5_,_loc6_,_loc7_,param3);
                                          }
                                          break;
                                       case 1:
                                          §§push((_loc9_ = param1 as b2PolygonShape).§_-y3§());
                                          if(_loc15_)
                                          {
                                             §§push(int(§§pop()));
                                          }
                                          _loc10_ = §§pop();
                                          _loc11_ = _loc9_.§_-Y2§();
                                          _loc12_ = new Vector.<b2Vec2>(_loc10_);
                                          if(_loc15_ || param3)
                                          {
                                             §§push(0);
                                             loop0:
                                             while(true)
                                             {
                                                _loc8_ = §§pop();
                                                loop1:
                                                while(true)
                                                {
                                                   loop2:
                                                   while(true)
                                                   {
                                                      §§push(_loc8_);
                                                      if(_loc16_)
                                                      {
                                                         break;
                                                      }
                                                      if(§§pop() >= _loc10_)
                                                      {
                                                         if(!(_loc16_ && param3))
                                                         {
                                                            if(!(_loc16_ && param2))
                                                            {
                                                               if(_loc15_)
                                                               {
                                                                  this.§_-nw§.§_-Oc§(_loc12_,_loc10_,param3);
                                                                  addr152:
                                                                  if(_loc15_)
                                                                  {
                                                                     while(false)
                                                                     {
                                                                     }
                                                                     break loop6;
                                                                     addr154:
                                                                  }
                                                                  continue;
                                                               }
                                                               continue loop1;
                                                            }
                                                            addr171:
                                                            while(true)
                                                            {
                                                               _loc8_++;
                                                               continue loop2;
                                                            }
                                                         }
                                                         §§goto(addr152);
                                                      }
                                                      else
                                                      {
                                                         _loc12_[_loc8_] = b2Math.§_-yP§(param2,_loc11_[_loc8_]);
                                                      }
                                                      §§goto(addr171);
                                                   }
                                                   continue loop0;
                                                }
                                             }
                                          }
                                          §§goto(addr154);
                                       case 2:
                                          _loc13_ = param1 as b2EdgeShape;
                                          if(!_loc16_)
                                          {
                                             this.§_-nw§.§_-T4§(b2Math.§_-yP§(param2,_loc13_.GetVertex1()),b2Math.§_-yP§(param2,_loc13_.GetVertex2()),param3);
                                          }
                                    }
                                    return;
                                    addr290:
                                 }
                                 §§goto(addr290);
                              }
                              else
                              {
                                 §§push(b2Shape.§_-Ee§);
                                 if(_loc15_)
                                 {
                                    addr281:
                                    if(§§pop() === _loc14_)
                                    {
                                       §§goto(addr282);
                                    }
                                    else
                                    {
                                       §§goto(addr282);
                                       §§push(3);
                                    }
                                    §§goto(addr282);
                                 }
                              }
                           }
                           §§goto(addr281);
                        }
                     }
                     §§goto(addr282);
                  }
                  §§goto(addr281);
               }
               §§goto(addr275);
            }
            §§goto(addr267);
         }
         §§goto(addr291);
      }
   }
}
