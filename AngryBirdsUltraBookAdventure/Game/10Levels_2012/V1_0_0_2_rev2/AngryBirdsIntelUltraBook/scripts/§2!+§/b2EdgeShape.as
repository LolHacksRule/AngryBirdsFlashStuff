package §2!+§
{
   import §7!u§.b2Settings;
   import §7!u§.b2internal;
   import §72§.b2AABB;
   import §72§.b2RayCastInput;
   import §72§.b2RayCastOutput;
   import §>H§.b2Mat22;
   import §>H§.b2Math;
   import §>H§.b2Transform;
   import §>H§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2EdgeShape extends b2Shape
   {
       
      
      private var §^!R§:b2Vec2;
      
      b2internal var m_v1:b2Vec2;
      
      b2internal var m_v2:b2Vec2;
      
      b2internal var m_coreV1:b2Vec2;
      
      b2internal var m_coreV2:b2Vec2;
      
      b2internal var §?!D§:Number;
      
      b2internal var §'!L§:b2Vec2;
      
      b2internal var §6!%§:b2Vec2;
      
      b2internal var m_cornerDir1:b2Vec2;
      
      b2internal var m_cornerDir2:b2Vec2;
      
      b2internal var m_cornerConvex1:Boolean;
      
      b2internal var m_cornerConvex2:Boolean;
      
      b2internal var §1!N§:b2EdgeShape;
      
      b2internal var §<!@§:b2EdgeShape;
      
      public function b2EdgeShape(param1:b2Vec2, param2:b2Vec2)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§^!R§ = new b2Vec2();
            loop0:
            while(true)
            {
               this.m_v1 = new b2Vec2();
               addr483:
               while(true)
               {
                  this.m_v2 = new b2Vec2();
                  continue loop0;
               }
            }
         }
         while(true)
         {
            §§push(this.§6!%§);
            §§push(this.m_v2.x);
            if(_loc3_ || param2)
            {
               §§push(this.m_v1.x);
               if(!(_loc4_ && param2))
               {
                  addr357:
                  §§push(§§pop() - §§pop());
                  §§push(this.m_v2.y);
                  if(_loc3_ || _loc3_)
                  {
                     addr367:
                     §§push(§§pop() - this.m_v1.y);
                  }
                  §§pop().Set(§§pop(),§§pop());
                  §§goto(addr372);
               }
               §§goto(addr367);
            }
            §§goto(addr357);
         }
      }
      
      override public function TestPoint(param1:b2Transform, param2:b2Vec2) : Boolean
      {
         return false;
      }
      
      override public function RayCast(param1:b2RayCastOutput, param2:b2RayCastInput, param3:b2Transform) : Boolean
      {
         var _loc18_:Boolean = true;
         var _loc19_:Boolean = false;
         var _loc4_:b2Mat22 = null;
         var _loc13_:* = NaN;
         var _loc14_:* = NaN;
         var _loc15_:* = NaN;
         var _loc16_:* = NaN;
         var _loc17_:Number = NaN;
         §§push(param2.p2.x);
         if(_loc18_)
         {
            §§push(§§pop() - param2.p1.x);
            if(!(_loc19_ && param1))
            {
               addr45:
               §§push(Number(§§pop()));
            }
            var _loc5_:* = §§pop();
            §§push(param2.p2.y);
            if(_loc18_)
            {
               §§push(§§pop() - param2.p1.y);
               if(!_loc19_)
               {
                  addr58:
                  §§push(Number(§§pop()));
               }
               var _loc6_:* = §§pop();
               _loc4_ = param3.R;
               §§push(param3.position.x);
               if(!(_loc19_ && param1))
               {
                  §§push(_loc4_.col1.x);
                  if(!_loc19_)
                  {
                     §§push(this.m_v1.x);
                     if(_loc18_ || param2)
                     {
                        addr107:
                        §§push(§§pop() * §§pop());
                        if(_loc18_ || param3)
                        {
                           §§push(_loc4_.col2.x);
                           if(_loc18_)
                           {
                              §§push(§§pop() * this.m_v1.y);
                           }
                        }
                        §§push(§§pop() + §§pop());
                        if(!(_loc19_ && this))
                        {
                           addr115:
                           §§push(Number(§§pop()));
                        }
                        var _loc7_:* = §§pop();
                        §§push(param3.position.y);
                        if(_loc18_ || param1)
                        {
                           §§push(_loc4_.col1.y);
                           if(!(_loc19_ && param1))
                           {
                              §§push(this.m_v1.x);
                              if(_loc18_)
                              {
                                 §§push(§§pop() * §§pop());
                                 if(_loc18_ || param1)
                                 {
                                    addr150:
                                    §§push(_loc4_.col2.y);
                                    if(_loc18_ || param1)
                                    {
                                       addr160:
                                       §§push(§§pop() * this.m_v1.y);
                                    }
                                    §§push(§§pop() + §§pop());
                                 }
                                 §§push(§§pop() + §§pop());
                                 if(_loc18_ || param1)
                                 {
                                    addr174:
                                    var _loc8_:Number = §§pop();
                                    §§push(param3.position.y);
                                    if(!_loc19_)
                                    {
                                       §§push(_loc4_.col1.y);
                                       if(_loc18_ || param3)
                                       {
                                          §§push(this.m_v2.x);
                                          if(!_loc19_)
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(!_loc19_)
                                             {
                                                §§push(_loc4_.col2.y);
                                                if(_loc18_)
                                                {
                                                   addr207:
                                                   §§push(§§pop() + §§pop() * this.m_v2.y);
                                                   if(_loc18_)
                                                   {
                                                      addr210:
                                                      §§push(§§pop() + §§pop());
                                                      if(!_loc19_)
                                                      {
                                                         addr214:
                                                         §§push(§§pop() - _loc8_);
                                                         if(!(_loc19_ && param1))
                                                         {
                                                            addr222:
                                                            §§push(Number(§§pop()));
                                                         }
                                                         var _loc9_:* = §§pop();
                                                         §§push(param3.position.x);
                                                         if(!_loc19_)
                                                         {
                                                            §§push(_loc4_.col1.x);
                                                            if(_loc18_ || param3)
                                                            {
                                                               §§push(this.m_v2.x);
                                                               if(!_loc19_)
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  if(_loc18_ || this)
                                                                  {
                                                                     addr252:
                                                                     §§push(_loc4_.col2.x);
                                                                     if(!_loc19_)
                                                                     {
                                                                        addr257:
                                                                        §§push(§§pop() * this.m_v2.y);
                                                                     }
                                                                     §§push(§§pop() + §§pop());
                                                                     if(!(_loc19_ && param3))
                                                                     {
                                                                        §§push(§§pop() + §§pop());
                                                                        if(_loc18_)
                                                                        {
                                                                           addr273:
                                                                           §§push(§§pop() - _loc7_);
                                                                           if(_loc19_ && this)
                                                                           {
                                                                           }
                                                                           addr285:
                                                                           var _loc10_:Number = §§pop();
                                                                           addr284:
                                                                           §§push(100 * Number.MIN_VALUE);
                                                                           if(_loc18_)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                           }
                                                                           var _loc11_:* = §§pop();
                                                                           §§push(_loc5_);
                                                                           if(!(_loc19_ && this))
                                                                           {
                                                                              §§push(_loc9_);
                                                                              if(!_loc19_)
                                                                              {
                                                                                 §§push(§§pop() * §§pop());
                                                                                 if(_loc18_)
                                                                                 {
                                                                                    addr308:
                                                                                    §§push(_loc6_);
                                                                                    if(_loc18_ || param1)
                                                                                    {
                                                                                       §§push(§§pop() * _loc10_);
                                                                                       if(_loc18_)
                                                                                       {
                                                                                          addr320:
                                                                                          §§push(§§pop() + §§pop());
                                                                                          if(!_loc19_)
                                                                                          {
                                                                                             addr333:
                                                                                             §§push(-§§pop());
                                                                                             if(!(_loc19_ && this))
                                                                                             {
                                                                                                addr331:
                                                                                                §§push(Number(§§pop()));
                                                                                             }
                                                                                             var _loc12_:*;
                                                                                             §§push(_loc12_ = §§pop());
                                                                                             if(!(_loc19_ && param1))
                                                                                             {
                                                                                                §§push(_loc11_);
                                                                                                if(!(_loc19_ && param2))
                                                                                                {
                                                                                                   if(§§pop() > §§pop())
                                                                                                   {
                                                                                                      if(!_loc19_)
                                                                                                      {
                                                                                                         §§push(param2.p1);
                                                                                                         if(_loc18_)
                                                                                                         {
                                                                                                            §§push(§§pop().x);
                                                                                                            if(_loc18_ || param2)
                                                                                                            {
                                                                                                               §§push(_loc7_);
                                                                                                               if(_loc18_ || param3)
                                                                                                               {
                                                                                                                  addr372:
                                                                                                                  §§push(§§pop() - §§pop());
                                                                                                                  if(_loc18_ || param1)
                                                                                                                  {
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                     if(!_loc19_)
                                                                                                                     {
                                                                                                                        _loc13_ = §§pop();
                                                                                                                        if(!_loc19_)
                                                                                                                        {
                                                                                                                           addr824:
                                                                                                                           §§push(param2.p1.y);
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(_loc8_);
                                                                                                                              addr826:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() - §§pop());
                                                                                                                                 addr827:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                    addr828:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       _loc14_ = §§pop();
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           addr825:
                                                                                                                        }
                                                                                                                        loop56:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(_loc13_);
                                                                                                                           addr809:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(_loc9_);
                                                                                                                              addr810:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                              }
                                                                                                                              continue loop56;
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     loop7:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc14_);
                                                                                                                        loop8:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(_loc10_);
                                                                                                                           loop9:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                              loop10:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                 if(!_loc19_)
                                                                                                                                 {
                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                 }
                                                                                                                                 loop39:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(!_loc19_)
                                                                                                                                    {
                                                                                                                                       _loc15_ = §§pop();
                                                                                                                                       loop40:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(0);
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(_loc15_);
                                                                                                                                             loop12:
                                                                                                                                             while(!(_loc19_ && this))
                                                                                                                                             {
                                                                                                                                                if(!(_loc18_ || param1))
                                                                                                                                                {
                                                                                                                                                   continue loop8;
                                                                                                                                                }
                                                                                                                                                if(_loc18_)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() <= §§pop());
                                                                                                                                                   loop13:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop());
                                                                                                                                                      loop14:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(§§pop())
                                                                                                                                                         {
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§pop();
                                                                                                                                                               addr806:
                                                                                                                                                               addr727:
                                                                                                                                                               §§push(_loc15_);
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(param2.§&y§);
                                                                                                                                                                  addr729:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc12_);
                                                                                                                                                                     addr730:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc19_ && param3)
                                                                                                                                                                        {
                                                                                                                                                                           continue loop9;
                                                                                                                                                                        }
                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() <= §§pop());
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            addr805:
                                                                                                                                                         }
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            loop18:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(§§pop())
                                                                                                                                                               {
                                                                                                                                                                  addr741:
                                                                                                                                                                  §§push(_loc5_);
                                                                                                                                                                  loop19:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc19_ && param1)
                                                                                                                                                                     {
                                                                                                                                                                        continue loop7;
                                                                                                                                                                     }
                                                                                                                                                                     §§push(-§§pop());
                                                                                                                                                                     if(_loc18_ || this)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc14_);
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc19_ && this)
                                                                                                                                                                           {
                                                                                                                                                                              continue loop12;
                                                                                                                                                                           }
                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc6_);
                                                                                                                                                                              addr767:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc13_);
                                                                                                                                                                                 addr768:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                    addr769:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        addr758:
                                                                                                                                                                     }
                                                                                                                                                                     loop21:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(Number(§§pop()));
                                                                                                                                                                        addr771:
                                                                                                                                                                        loop44:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           _loc16_ = §§pop();
                                                                                                                                                                           loop32:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc11_);
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc18_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(-§§pop());
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc12_);
                                                                                                                                                                                       if(!_loc19_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc18_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                                                                             while(_loc18_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc16_);
                                                                                                                                                                                                loop25:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop() <= §§pop());
                                                                                                                                                                                                   if(_loc19_ && param2)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      break;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   if(_loc18_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop());
                                                                                                                                                                                                      if(_loc18_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!§§pop())
                                                                                                                                                                                                         {
                                                                                                                                                                                                            loop3:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(§§pop())
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(_loc15_);
                                                                                                                                                                                                                  if(!_loc19_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     loop4:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(!_loc18_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           continue loop44;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        if(_loc19_ && param2)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           continue loop19;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        if(_loc18_ || this)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(_loc12_);
                                                                                                                                                                                                                              loop38:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(_loc18_ || param2)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                    if(!_loc19_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(_loc18_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(!_loc18_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             continue loop39;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                                                                                                                          loop20:
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(!(_loc18_ || this))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                continue loop21;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             _loc15_ = §§pop();
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                param1.fraction = _loc15_;
                                                                                                                                                                                                                                                addr534:
                                                                                                                                                                                                                                                addr717:
                                                                                                                                                                                                                                                while(_loc18_ || this)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(!(_loc19_ && param3))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      continue loop20;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   continue loop40;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(!(_loc19_ && param1))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      continue loop4;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   continue loop32;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                loop1:
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(!_loc19_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(!(_loc19_ && param2))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(!(_loc19_ && param2))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(_loc18_ || param2)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(§§pop() <= §§pop());
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(_loc19_ && param1)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     break loop25;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  continue loop3;
                                                                                                                                                                                                                                                                  addr391:
                                                                                                                                                                                                                                                                  if(!(_loc19_ && param3))
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     continue loop18;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            else
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§goto(addr729);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr738);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§goto(addr758);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   addr576:
                                                                                                                                                                                                                                                   §§push(_loc12_);
                                                                                                                                                                                                                                                   if(!(_loc18_ || this))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      continue;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   addr584:
                                                                                                                                                                                                                                                   if(!(_loc18_ || param2))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      continue loop25;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(1 + _loc11_);
                                                                                                                                                                                                                                                      if(!(_loc19_ && this))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(_loc18_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                            if(_loc18_ || param2)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               continue loop1;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            continue loop38;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr730);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§goto(addr768);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                addr481:
                                                                                                                                                                                                                                                if(_loc18_ || param2)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(true);
                                                                                                                                                                                                                                                   while(_loc19_ && param1)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§goto(addr805);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   return §§pop();
                                                                                                                                                                                                                                                   addr420:
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          addr679:
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§goto(addr766);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr767);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr679);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr769);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           addr663:
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        else
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§goto(addr809);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr679);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               else
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§goto(addr388);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr387:
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr420);
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         break;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      continue loop14;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   continue loop13;
                                                                                                                                                                                                }
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§pop();
                                                                                                                                                                                                   §§goto(addr717);
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             break loop18;
                                                                                                                                                                                          }
                                                                                                                                                                                          break loop10;
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr702);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr827);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr387);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr727);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr810);
                                                                                                                                             }
                                                                                                                                             continue loop10;
                                                                                                                                             if(_loc19_ && this)
                                                                                                                                             {
                                                                                                                                                continue;
                                                                                                                                             }
                                                                                                                                             if(_loc18_ || param3)
                                                                                                                                             {
                                                                                                                                                §§goto(addr576);
                                                                                                                                             }
                                                                                                                                             §§goto(addr828);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       §§goto(addr825);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr826);
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr517);
                                                                                                               }
                                                                                                               §§goto(addr591);
                                                                                                            }
                                                                                                            §§goto(addr771);
                                                                                                         }
                                                                                                         §§goto(addr824);
                                                                                                      }
                                                                                                      §§goto(addr687);
                                                                                                   }
                                                                                                   addr388:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(false);
                                                                                                      if(!_loc19_)
                                                                                                      {
                                                                                                         §§goto(addr391);
                                                                                                      }
                                                                                                   }
                                                                                                   addr415:
                                                                                                   return §§pop();
                                                                                                }
                                                                                                §§goto(addr372);
                                                                                             }
                                                                                             §§goto(addr663);
                                                                                          }
                                                                                          §§goto(addr331);
                                                                                       }
                                                                                       §§goto(addr333);
                                                                                    }
                                                                                    §§goto(addr320);
                                                                                 }
                                                                                 §§goto(addr333);
                                                                              }
                                                                              §§goto(addr320);
                                                                           }
                                                                           §§goto(addr308);
                                                                        }
                                                                        §§push(-§§pop());
                                                                        if(_loc18_)
                                                                        {
                                                                           §§goto(addr284);
                                                                        }
                                                                        §§goto(addr285);
                                                                     }
                                                                  }
                                                                  §§goto(addr273);
                                                               }
                                                               §§goto(addr257);
                                                            }
                                                            §§goto(addr252);
                                                         }
                                                         §§goto(addr273);
                                                      }
                                                      §§goto(addr222);
                                                   }
                                                }
                                                §§goto(addr207);
                                             }
                                             §§goto(addr214);
                                          }
                                          §§goto(addr207);
                                       }
                                       §§goto(addr210);
                                    }
                                    §§goto(addr214);
                                 }
                                 §§goto(addr174);
                              }
                              §§goto(addr160);
                           }
                           §§goto(addr150);
                        }
                        §§goto(addr174);
                     }
                     §§push(§§pop() + §§pop());
                  }
                  §§goto(addr107);
               }
               §§goto(addr115);
            }
            §§goto(addr58);
         }
         §§goto(addr45);
      }
      
      override public function ComputeAABB(param1:b2AABB, param2:b2Transform) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:* = NaN;
         var _loc3_:b2Mat22 = param2.R;
         if(!(_loc9_ && this))
         {
            §§push(param2.position);
            loop0:
            while(true)
            {
               §§push(§§pop().x);
               if(_loc8_)
               {
                  §§push(_loc3_.col1);
                  while(true)
                  {
                     §§push(§§pop().x);
                     if(!_loc9_)
                     {
                        §§push(this.m_v1);
                        while(true)
                        {
                           §§push(§§pop().x);
                           addr540:
                           while(true)
                           {
                              §§push(§§pop() * §§pop());
                           }
                        }
                        addr539:
                     }
                     addr541:
                     while(true)
                     {
                        §§push(_loc3_.col2);
                        addr543:
                        while(true)
                        {
                           §§push(§§pop().x);
                           addr544:
                           while(true)
                           {
                              §§push(this.m_v1);
                              addr546:
                              while(true)
                              {
                                 §§push(§§pop().y);
                                 addr547:
                                 while(true)
                                 {
                                    §§push(§§pop() * §§pop());
                                    addr548:
                                    while(true)
                                    {
                                       §§push(§§pop() + §§pop());
                                       addr549:
                                       while(true)
                                       {
                                          §§push(§§pop() + §§pop());
                                          if(_loc8_)
                                          {
                                             §§push(Number(§§pop()));
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
                  addr534:
               }
               while(true)
               {
                  _loc4_ = §§pop();
                  loop12:
                  while(true)
                  {
                     §§push(param2.position);
                     loop13:
                     while(_loc8_)
                     {
                        §§push(§§pop().y);
                        loop14:
                        while(true)
                        {
                           §§push(_loc3_.col1);
                           loop15:
                           while(true)
                           {
                              §§push(§§pop().y);
                              addr479:
                              while(true)
                              {
                                 §§push(this.m_v1);
                                 if(!_loc9_)
                                 {
                                    §§push(§§pop().x);
                                    loop17:
                                    while(true)
                                    {
                                       §§push(§§pop() * §§pop());
                                       loop18:
                                       while(true)
                                       {
                                          §§push(_loc3_.col2);
                                          loop19:
                                          while(!_loc9_)
                                          {
                                             §§push(§§pop().y);
                                             while(_loc8_)
                                             {
                                                §§push(this.m_v1);
                                                if(!_loc9_)
                                                {
                                                   §§push(§§pop().y);
                                                   loop21:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      loop22:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                         loop23:
                                                         while(_loc8_ || param2)
                                                         {
                                                            if(!(_loc9_ && param1))
                                                            {
                                                               §§push(§§pop() + §§pop());
                                                               loop24:
                                                               while(true)
                                                               {
                                                                  §§push(Number(§§pop()));
                                                                  loop25:
                                                                  while(true)
                                                                  {
                                                                     _loc5_ = §§pop();
                                                                     loop26:
                                                                     while(true)
                                                                     {
                                                                        §§push(param2.position);
                                                                        loop27:
                                                                        for(; _loc8_; while(true)
                                                                        {
                                                                           §§push(param2.position);
                                                                           if(!_loc8_)
                                                                           {
                                                                              continue loop27;
                                                                           }
                                                                           §§push(§§pop().y);
                                                                           if(_loc8_)
                                                                           {
                                                                              continue loop14;
                                                                           }
                                                                           §§goto(addr361);
                                                                           §§goto(addr193);
                                                                        })
                                                                        {
                                                                           §§push(§§pop().x);
                                                                           loop28:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc3_.col1);
                                                                              addr385:
                                                                              while(true)
                                                                              {
                                                                                 if(!_loc8_)
                                                                                 {
                                                                                    continue loop15;
                                                                                 }
                                                                                 if(!_loc9_)
                                                                                 {
                                                                                    §§push(§§pop().x);
                                                                                    if(!(_loc9_ && _loc3_))
                                                                                    {
                                                                                       if(_loc9_ && _loc3_)
                                                                                       {
                                                                                          continue loop18;
                                                                                       }
                                                                                       §§push(this.m_v2);
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop().x);
                                                                                          if(!(_loc9_ && param1))
                                                                                          {
                                                                                             §§push(§§pop() * §§pop());
                                                                                             while(!(_loc9_ && param1))
                                                                                             {
                                                                                                §§push(_loc3_.col2);
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop().x);
                                                                                                }
                                                                                                addr161:
                                                                                                if(!(_loc8_ || param1))
                                                                                                {
                                                                                                   continue;
                                                                                                }
                                                                                                if(§§pop() < §§pop())
                                                                                                {
                                                                                                   addr169:
                                                                                                   if(!(_loc9_ && _loc3_))
                                                                                                   {
                                                                                                      addr179:
                                                                                                      §§push(param1.§>!6§);
                                                                                                      §§push(_loc5_);
                                                                                                      if(_loc8_ || _loc3_)
                                                                                                      {
                                                                                                         §§pop().y = §§pop();
                                                                                                         addr120:
                                                                                                         §§push(param1.§8!X§);
                                                                                                         if(!_loc9_)
                                                                                                         {
                                                                                                            addr123:
                                                                                                            §§pop().y = _loc7_;
                                                                                                            if(_loc8_)
                                                                                                            {
                                                                                                               addr126:
                                                                                                               if(!_loc9_)
                                                                                                               {
                                                                                                                  §§goto(addr36);
                                                                                                               }
                                                                                                               loop46:
                                                                                                               while(!(_loc9_ && param1))
                                                                                                               {
                                                                                                                  §§push(_loc4_);
                                                                                                                  loop47:
                                                                                                                  for(; _loc8_; while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc5_);
                                                                                                                     if(_loc8_ || _loc3_)
                                                                                                                     {
                                                                                                                        addr361:
                                                                                                                        if(_loc8_)
                                                                                                                        {
                                                                                                                           if(_loc9_)
                                                                                                                           {
                                                                                                                              continue loop28;
                                                                                                                           }
                                                                                                                           if(_loc9_ && this)
                                                                                                                           {
                                                                                                                              continue loop25;
                                                                                                                           }
                                                                                                                           §§goto(addr149);
                                                                                                                        }
                                                                                                                        while(_loc8_ || param2)
                                                                                                                        {
                                                                                                                           _loc7_ = §§pop();
                                                                                                                           continue loop46;
                                                                                                                        }
                                                                                                                        continue loop24;
                                                                                                                        addr361:
                                                                                                                     }
                                                                                                                     continue loop47;
                                                                                                                     §§goto(addr200);
                                                                                                                  },§§goto(addr126))
                                                                                                                  {
                                                                                                                     §§push(_loc6_);
                                                                                                                     loop48:
                                                                                                                     while(_loc8_ || _loc3_)
                                                                                                                     {
                                                                                                                        if(§§pop() < §§pop())
                                                                                                                        {
                                                                                                                           if(!_loc9_)
                                                                                                                           {
                                                                                                                              §§push(param1.§>!6§);
                                                                                                                              loop49:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc4_);
                                                                                                                                 addr249:
                                                                                                                                 addr206:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§pop().x = §§pop();
                                                                                                                                 }
                                                                                                                                 addr206:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(!(_loc8_ || this))
                                                                                                                                    {
                                                                                                                                       continue loop49;
                                                                                                                                    }
                                                                                                                                    §§push(_loc6_);
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§pop().x = §§pop();
                                                                                                                                       addr215:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(!(_loc9_ && _loc3_))
                                                                                                                                          {
                                                                                                                                             if(_loc9_)
                                                                                                                                             {
                                                                                                                                                continue loop12;
                                                                                                                                             }
                                                                                                                                             §§push(param1.§8!X§);
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(_loc4_);
                                                                                                                                                addr192:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§pop().x = §§pop();
                                                                                                                                                   addr193:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(_loc8_ || param1)
                                                                                                                                                      {
                                                                                                                                                         addr200:
                                                                                                                                                         continue loop47;
                                                                                                                                                      }
                                                                                                                                                      continue loop27;
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                continue loop47;
                                                                                                                                             }
                                                                                                                                             addr230:
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              addr248:
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(param1.§8!X§);
                                                                                                                              addr228:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc6_);
                                                                                                                                 addr229:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§pop().x = §§pop();
                                                                                                                                    §§goto(addr230);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           addr250:
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§goto(addr206);
                                                                                                                           §§push(param1.§>!6§);
                                                                                                                        }
                                                                                                                        §§goto(addr248);
                                                                                                                        §§push(_loc7_);
                                                                                                                        if(_loc9_ && param2)
                                                                                                                        {
                                                                                                                           continue;
                                                                                                                        }
                                                                                                                        if(!_loc9_)
                                                                                                                        {
                                                                                                                           if(!_loc9_)
                                                                                                                           {
                                                                                                                              §§goto(addr161);
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              addr310:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc3_.col2);
                                                                                                                                 if(_loc9_)
                                                                                                                                 {
                                                                                                                                    break;
                                                                                                                                 }
                                                                                                                                 if(_loc9_ && _loc3_)
                                                                                                                                 {
                                                                                                                                    continue loop19;
                                                                                                                                 }
                                                                                                                                 addr321:
                                                                                                                                 §§push(§§pop().y);
                                                                                                                                 if(!(_loc9_ && this))
                                                                                                                                 {
                                                                                                                                    while(!_loc9_)
                                                                                                                                    {
                                                                                                                                       addr331:
                                                                                                                                       §§push(this.m_v2);
                                                                                                                                       if(!(_loc9_ && _loc3_))
                                                                                                                                       {
                                                                                                                                          §§push(§§pop().y);
                                                                                                                                          if(_loc8_ || param1)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                             loop41:
                                                                                                                                             while(_loc8_)
                                                                                                                                             {
                                                                                                                                                if(_loc8_ || param1)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                      break loop47;
                                                                                                                                                   }
                                                                                                                                                   addr359:
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(_loc8_)
                                                                                                                                                      {
                                                                                                                                                         §§push(this.m_v2);
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop().y);
                                                                                                                                                            addr430:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(!_loc9_)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc8_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                     break loop41;
                                                                                                                                                                  }
                                                                                                                                                                  break;
                                                                                                                                                               }
                                                                                                                                                               continue loop21;
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr547);
                                                                                                                                                            §§goto(addr331);
                                                                                                                                                         }
                                                                                                                                                         addr429:
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr540);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   addr425:
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(_loc8_)
                                                                                                                                                {
                                                                                                                                                   if(!(_loc9_ && param2))
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                      break loop48;
                                                                                                                                                   }
                                                                                                                                                   break;
                                                                                                                                                }
                                                                                                                                                continue loop22;
                                                                                                                                             }
                                                                                                                                             §§goto(addr544);
                                                                                                                                             addr349:
                                                                                                                                          }
                                                                                                                                          §§goto(addr430);
                                                                                                                                       }
                                                                                                                                       §§goto(addr429);
                                                                                                                                       §§goto(addr321);
                                                                                                                                    }
                                                                                                                                    continue loop17;
                                                                                                                                    addr329:
                                                                                                                                 }
                                                                                                                                 §§goto(addr349);
                                                                                                                              }
                                                                                                                              §§goto(addr424);
                                                                                                                              addr310:
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr359);
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                        if(!(_loc9_ && param1))
                                                                                                                        {
                                                                                                                           §§push(Number(§§pop()));
                                                                                                                        }
                                                                                                                        continue loop24;
                                                                                                                        §§goto(addr236);
                                                                                                                     }
                                                                                                                     addr236:
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§goto(addr361);
                                                                                                                  }
                                                                                                               }
                                                                                                               continue loop26;
                                                                                                            }
                                                                                                            §§goto(addr215);
                                                                                                         }
                                                                                                         §§goto(addr228);
                                                                                                         addr187:
                                                                                                      }
                                                                                                      §§goto(addr249);
                                                                                                   }
                                                                                                   §§goto(addr193);
                                                                                                }
                                                                                                §§push(param1.§>!6§);
                                                                                                if(_loc8_ || this)
                                                                                                {
                                                                                                   if(_loc8_)
                                                                                                   {
                                                                                                      §§push(_loc7_);
                                                                                                      if(!_loc9_)
                                                                                                      {
                                                                                                         if(_loc8_ || _loc3_)
                                                                                                         {
                                                                                                            §§pop().y = §§pop();
                                                                                                            while(_loc8_ || _loc3_)
                                                                                                            {
                                                                                                               if(!_loc9_)
                                                                                                               {
                                                                                                                  §§push(param1.§8!X§);
                                                                                                                  if(!_loc9_)
                                                                                                                  {
                                                                                                                     if(_loc8_ || this)
                                                                                                                     {
                                                                                                                        §§push(_loc5_);
                                                                                                                        if(!_loc9_)
                                                                                                                        {
                                                                                                                           if(!_loc9_)
                                                                                                                           {
                                                                                                                              if(!(_loc9_ && _loc3_))
                                                                                                                              {
                                                                                                                                 §§pop().y = §§pop();
                                                                                                                                 if(!_loc8_)
                                                                                                                                 {
                                                                                                                                    continue;
                                                                                                                                 }
                                                                                                                                 if(_loc8_ || param2)
                                                                                                                                 {
                                                                                                                                    if(_loc9_ && param1)
                                                                                                                                    {
                                                                                                                                       §§goto(addr250);
                                                                                                                                    }
                                                                                                                                    addr36:
                                                                                                                                    return;
                                                                                                                                 }
                                                                                                                                 §§goto(addr169);
                                                                                                                              }
                                                                                                                              §§goto(addr229);
                                                                                                                           }
                                                                                                                           §§goto(addr192);
                                                                                                                        }
                                                                                                                        §§goto(addr123);
                                                                                                                     }
                                                                                                                     §§goto(addr191);
                                                                                                                  }
                                                                                                                  §§goto(addr120);
                                                                                                               }
                                                                                                               §§goto(addr187);
                                                                                                            }
                                                                                                            §§goto(addr123);
                                                                                                         }
                                                                                                         §§goto(addr214);
                                                                                                      }
                                                                                                      §§goto(addr179);
                                                                                                   }
                                                                                                   §§goto(addr206);
                                                                                                }
                                                                                                §§goto(addr179);
                                                                                             }
                                                                                             continue loop23;
                                                                                          }
                                                                                          §§goto(addr425);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr445);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr534);
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        continue loop13;
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr541);
                                                         }
                                                         §§goto(addr549);
                                                      }
                                                   }
                                                }
                                                §§goto(addr546);
                                             }
                                             §§goto(addr548);
                                          }
                                          §§goto(addr543);
                                       }
                                    }
                                 }
                                 break;
                              }
                              §§goto(addr539);
                           }
                           if(!(_loc8_ || this))
                           {
                              continue;
                           }
                           §§push(_loc3_.col1);
                           if(_loc8_)
                           {
                              §§push(§§pop().y);
                              if(!(_loc9_ && this))
                              {
                                 if(_loc8_ || param1)
                                 {
                                    §§push(this.m_v2);
                                    if(!_loc9_)
                                    {
                                       §§push(§§pop().x);
                                       if(_loc8_ || this)
                                       {
                                          if(!_loc9_)
                                          {
                                             §§goto(addr310);
                                             §§push(§§pop() * §§pop());
                                          }
                                          §§goto(addr490);
                                       }
                                       §§goto(addr329);
                                    }
                                    §§goto(addr406);
                                 }
                                 §§goto(addr479);
                              }
                              §§goto(addr310);
                           }
                           §§goto(addr385);
                        }
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr469);
      }
      
      override public function ComputeMass(param1:b2MassData, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param2)
         {
            param1.§@K§ = 0;
            while(true)
            {
               param1.center.SetV(this.m_v1);
               loop1:
               while(!(_loc4_ && param1))
               {
                  while(true)
                  {
                     param1.§8`§ = 0;
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
         §§goto(addr68);
      }
      
      override public function ComputeSubmergedArea(param1:b2Vec2, param2:Number, param3:b2Transform, param4:b2Vec2) : Number
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param1.x);
         if(!(_loc11_ && param2))
         {
            §§push(param2);
            if(!(_loc11_ && param1))
            {
               addr35:
               §§push(§§pop() * §§pop());
               §§push(param1.y);
               if(_loc10_)
               {
                  §§push(§§pop() * param2);
               }
            }
            var _loc5_:b2Vec2 = new §§pop().b2Vec2(§§pop(),§§pop());
            var _loc6_:b2Vec2 = b2Math.§'!6§(param3,this.m_v1);
            var _loc7_:b2Vec2 = b2Math.§'!6§(param3,this.m_v2);
            §§push(b2Math.§'l§(param1,_loc6_));
            if(!_loc11_)
            {
               §§push(§§pop() - param2);
               if(_loc10_)
               {
                  addr68:
                  §§push(Number(§§pop()));
               }
               var _loc8_:* = §§pop();
               §§push(b2Math.§'l§(param1,_loc7_));
               if(_loc10_ || param3)
               {
                  §§push(§§pop() - param2);
                  if(_loc10_ || param1)
                  {
                     addr90:
                     §§push(Number(§§pop()));
                  }
                  var _loc9_:* = §§pop();
                  if(!(_loc11_ && this))
                  {
                     §§push(_loc8_);
                     loop0:
                     while(true)
                     {
                        §§push(0);
                        if(!(_loc11_ && this))
                        {
                           if(§§pop() <= §§pop())
                           {
                              §§push(_loc9_);
                              loop1:
                              while(true)
                              {
                                 §§push(0);
                                 if(!(_loc11_ && param1))
                                 {
                                    if(§§pop() > §§pop())
                                    {
                                       loop2:
                                       while(true)
                                       {
                                          if(!_loc11_)
                                          {
                                             §§push(_loc7_);
                                             §§push(_loc9_);
                                             if(_loc10_)
                                             {
                                                §§push(-§§pop());
                                                if(_loc10_)
                                                {
                                                   addr427:
                                                   §§push(_loc8_);
                                                   if(_loc10_ || this)
                                                   {
                                                      §§push(_loc9_);
                                                      if(!(_loc11_ && param2))
                                                      {
                                                         §§push(§§pop() - §§pop());
                                                         if(!(_loc11_ && this))
                                                         {
                                                            §§push(§§pop() / §§pop());
                                                            if(_loc10_ || param1)
                                                            {
                                                               addr459:
                                                               §§push(_loc6_.x);
                                                               if(_loc10_)
                                                               {
                                                                  addr463:
                                                                  §§push(§§pop() * §§pop());
                                                                  if(!(_loc11_ && this))
                                                                  {
                                                                     addr471:
                                                                     §§push(_loc8_);
                                                                     if(!(_loc11_ && param3))
                                                                     {
                                                                        addr479:
                                                                        §§push(_loc8_);
                                                                        if(!(_loc11_ && param2))
                                                                        {
                                                                           §§push(§§pop() - _loc9_);
                                                                           if(_loc10_)
                                                                           {
                                                                              addr491:
                                                                              §§push(§§pop() / §§pop());
                                                                              if(!(_loc11_ && param2))
                                                                              {
                                                                                 §§push(_loc7_.x);
                                                                              }
                                                                              §§pop().x = §§pop() + §§pop();
                                                                              loop3:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc7_);
                                                                                 §§push(_loc9_);
                                                                                 if(_loc10_)
                                                                                 {
                                                                                    §§push(-§§pop());
                                                                                    if(!(_loc11_ && this))
                                                                                    {
                                                                                       §§push(_loc8_);
                                                                                       if(!(_loc11_ && param2))
                                                                                       {
                                                                                          §§push(_loc9_);
                                                                                          if(!_loc11_)
                                                                                          {
                                                                                             §§push(§§pop() - §§pop());
                                                                                             if(!_loc11_)
                                                                                             {
                                                                                                addr344:
                                                                                                §§push(§§pop() / §§pop());
                                                                                                if(!(_loc11_ && this))
                                                                                                {
                                                                                                   §§push(_loc6_.y);
                                                                                                   if(_loc10_ || this)
                                                                                                   {
                                                                                                      §§push(§§pop() * §§pop());
                                                                                                      if(!_loc11_)
                                                                                                      {
                                                                                                         addr364:
                                                                                                         §§push(_loc8_);
                                                                                                         if(_loc10_ || param1)
                                                                                                         {
                                                                                                            §§push(_loc8_);
                                                                                                            if(_loc10_ || param2)
                                                                                                            {
                                                                                                               §§push(§§pop() - _loc9_);
                                                                                                               if(!(_loc11_ && param3))
                                                                                                               {
                                                                                                                  addr395:
                                                                                                                  §§push(§§pop() / §§pop());
                                                                                                                  if(!_loc11_)
                                                                                                                  {
                                                                                                                     addr392:
                                                                                                                     §§push(_loc7_.y);
                                                                                                                  }
                                                                                                                  §§pop().y = §§pop() + §§pop();
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc10_ || param3)
                                                                                                                     {
                                                                                                                        addr266:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(param4);
                                                                                                                           §§push(_loc5_.x);
                                                                                                                           if(_loc10_ || this)
                                                                                                                           {
                                                                                                                              §§push(_loc6_.x);
                                                                                                                              if(!_loc11_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                 if(!(_loc11_ && param2))
                                                                                                                                 {
                                                                                                                                    addr291:
                                                                                                                                    §§push(§§pop() + _loc7_.x);
                                                                                                                                    if(!_loc11_)
                                                                                                                                    {
                                                                                                                                       addr294:
                                                                                                                                       §§push(§§pop() / 3);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§pop().x = §§pop();
                                                                                                                                 continue loop2;
                                                                                                                              }
                                                                                                                              §§goto(addr291);
                                                                                                                           }
                                                                                                                           §§goto(addr294);
                                                                                                                        }
                                                                                                                        continue loop0;
                                                                                                                        addr266:
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(_loc9_);
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(0);
                                                                                                                              addr669:
                                                                                                                              addr111:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(§§pop() > §§pop())
                                                                                                                                 {
                                                                                                                                    addr670:
                                                                                                                                    return 0;
                                                                                                                                 }
                                                                                                                                 addr561:
                                                                                                                                 addr561:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(_loc6_);
                                                                                                                                    §§push(_loc9_);
                                                                                                                                    if(!(_loc11_ && param1))
                                                                                                                                    {
                                                                                                                                       §§push(-§§pop());
                                                                                                                                       if(!(_loc11_ && param3))
                                                                                                                                       {
                                                                                                                                          §§push(_loc8_);
                                                                                                                                          if(_loc10_ || this)
                                                                                                                                          {
                                                                                                                                             §§push(_loc9_);
                                                                                                                                             if(!(_loc11_ && param3))
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() - §§pop());
                                                                                                                                                if(_loc10_)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() / §§pop());
                                                                                                                                                   if(_loc10_ || param1)
                                                                                                                                                   {
                                                                                                                                                      addr606:
                                                                                                                                                      §§push(_loc6_.x);
                                                                                                                                                      if(!(_loc11_ && param3))
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                         if(!(_loc11_ && param1))
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc8_);
                                                                                                                                                            if(_loc10_ || param1)
                                                                                                                                                            {
                                                                                                                                                               addr631:
                                                                                                                                                               §§push(_loc8_);
                                                                                                                                                               if(!_loc11_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() - _loc9_);
                                                                                                                                                                  if(_loc10_)
                                                                                                                                                                  {
                                                                                                                                                                     addr654:
                                                                                                                                                                     §§push(§§pop() / §§pop());
                                                                                                                                                                     if(!_loc11_)
                                                                                                                                                                     {
                                                                                                                                                                        addr651:
                                                                                                                                                                        §§push(_loc7_.x);
                                                                                                                                                                     }
                                                                                                                                                                     §§pop().x = §§pop() + §§pop();
                                                                                                                                                                     loop7:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc6_);
                                                                                                                                                                        §§push(_loc9_);
                                                                                                                                                                        if(!_loc11_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(-§§pop());
                                                                                                                                                                           if(_loc10_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc8_);
                                                                                                                                                                              if(!_loc11_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc9_);
                                                                                                                                                                                 if(!_loc11_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() - §§pop());
                                                                                                                                                                                    if(!_loc11_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr522:
                                                                                                                                                                                       §§push(§§pop() / §§pop());
                                                                                                                                                                                       if(_loc10_)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr525:
                                                                                                                                                                                          §§push(_loc6_.y);
                                                                                                                                                                                          if(_loc10_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                                                                             if(_loc10_)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr532:
                                                                                                                                                                                                §§push(_loc8_);
                                                                                                                                                                                                if(!_loc11_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc8_);
                                                                                                                                                                                                   if(!_loc11_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr538:
                                                                                                                                                                                                      §§push(§§pop() - _loc9_);
                                                                                                                                                                                                      if(!(_loc11_ && param2))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr558:
                                                                                                                                                                                                         §§push(§§pop() / §§pop());
                                                                                                                                                                                                         if(_loc10_ || param1)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(_loc7_.y);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§pop().y = §§pop() + §§pop();
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§goto(addr266);
                                                                                                                                                                                                            addr256:
                                                                                                                                                                                                            if(_loc10_ || param1)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc10_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(0.5);
                                                                                                                                                                                                                  if(!_loc11_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     continue loop1;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  continue loop0;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               continue loop7;
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr558);
                                                                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr558);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr532);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr558);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr538);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr522);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr525);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr654);
                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr651);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr654);
                                                                                                                                                }
                                                                                                                                                §§goto(addr631);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr654);
                                                                                                                                       }
                                                                                                                                       §§goto(addr606);
                                                                                                                                    }
                                                                                                                                    §§goto(addr654);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              if(!(_loc10_ || param1))
                                                                                                                              {
                                                                                                                                 continue;
                                                                                                                              }
                                                                                                                              §§push(_loc6_.x);
                                                                                                                              if(!_loc11_)
                                                                                                                              {
                                                                                                                                 §§push(_loc5_.x);
                                                                                                                                 if(_loc10_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() - §§pop());
                                                                                                                                    if(!(_loc11_ && this))
                                                                                                                                    {
                                                                                                                                       addr134:
                                                                                                                                       §§push(_loc7_.y);
                                                                                                                                       if(!(_loc11_ && param1))
                                                                                                                                       {
                                                                                                                                          §§push(_loc5_.y);
                                                                                                                                          if(_loc10_ || this)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() - §§pop());
                                                                                                                                             if(_loc10_ || this)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                if(!_loc11_)
                                                                                                                                                {
                                                                                                                                                   addr163:
                                                                                                                                                   §§push(_loc6_.y);
                                                                                                                                                   if(!(_loc11_ && param1))
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc5_.y);
                                                                                                                                                      if(_loc10_)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() - §§pop());
                                                                                                                                                         if(!(_loc11_ && param3))
                                                                                                                                                         {
                                                                                                                                                            addr184:
                                                                                                                                                            §§push(_loc7_.x);
                                                                                                                                                            if(!_loc11_)
                                                                                                                                                            {
                                                                                                                                                               addr188:
                                                                                                                                                               §§push(§§pop() - _loc5_.x);
                                                                                                                                                            }
                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr188);
                                                                                                                                                   }
                                                                                                                                                   §§push(§§pop() - §§pop());
                                                                                                                                                }
                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                continue loop0;
                                                                                                                                             }
                                                                                                                                             §§goto(addr184);
                                                                                                                                          }
                                                                                                                                          §§goto(addr188);
                                                                                                                                       }
                                                                                                                                       §§goto(addr184);
                                                                                                                                    }
                                                                                                                                    §§goto(addr163);
                                                                                                                                 }
                                                                                                                                 §§goto(addr184);
                                                                                                                              }
                                                                                                                              §§goto(addr134);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        addr667:
                                                                                                                     }
                                                                                                                     §§goto(addr266);
                                                                                                                     addr247:
                                                                                                                     if(!(_loc10_ || param2))
                                                                                                                     {
                                                                                                                        continue;
                                                                                                                     }
                                                                                                                     if(_loc11_)
                                                                                                                     {
                                                                                                                        continue loop3;
                                                                                                                     }
                                                                                                                     §§goto(addr256);
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr395);
                                                                                                            §§push(§§pop() * §§pop());
                                                                                                         }
                                                                                                         §§goto(addr392);
                                                                                                      }
                                                                                                      §§goto(addr395);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr364);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr395);
                                                                                       }
                                                                                       §§goto(addr344);
                                                                                    }
                                                                                    §§goto(addr364);
                                                                                 }
                                                                                 §§goto(addr395);
                                                                              }
                                                                           }
                                                                           §§push(§§pop() * §§pop());
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr491);
                                                               }
                                                               §§goto(addr479);
                                                            }
                                                            §§goto(addr471);
                                                         }
                                                         §§goto(addr479);
                                                      }
                                                      §§goto(addr491);
                                                   }
                                                   §§goto(addr463);
                                                }
                                                §§goto(addr459);
                                             }
                                             §§goto(addr427);
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                             }
                                             addr672:
                                          }
                                          §§goto(addr561);
                                       }
                                    }
                                    §§goto(addr266);
                                 }
                                 §§goto(addr669);
                              }
                           }
                           §§goto(addr667);
                        }
                        §§goto(addr669);
                     }
                  }
                  §§goto(addr672);
               }
               §§goto(addr90);
            }
            §§goto(addr68);
         }
         §§goto(addr35);
      }
      
      public function §!!T§() : Number
      {
         return this.§?!D§;
      }
      
      public function GetVertex1() : b2Vec2
      {
         return this.m_v1;
      }
      
      public function GetVertex2() : b2Vec2
      {
         return this.m_v2;
      }
      
      public function GetCoreVertex1() : b2Vec2
      {
         return this.m_coreV1;
      }
      
      public function GetCoreVertex2() : b2Vec2
      {
         return this.m_coreV2;
      }
      
      public function §77§() : b2Vec2
      {
         return this.§'!L§;
      }
      
      public function §'!!§() : b2Vec2
      {
         return this.§6!%§;
      }
      
      public function GetCorner1Vector() : b2Vec2
      {
         return this.m_cornerDir1;
      }
      
      public function GetCorner2Vector() : b2Vec2
      {
         return this.m_cornerDir2;
      }
      
      public function Corner1IsConvex() : Boolean
      {
         return this.m_cornerConvex1;
      }
      
      public function Corner2IsConvex() : Boolean
      {
         return this.m_cornerConvex2;
      }
      
      public function §@]§(param1:b2Transform) : b2Vec2
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:b2Mat22 = param1.R;
         §§push(§§findproperty(b2Vec2));
         §§push(param1.position.x);
         if(!_loc4_)
         {
            §§push(_loc2_.col1.x);
            if(_loc3_ || param1)
            {
               §§push(this.m_coreV1.x);
               if(_loc3_ || _loc3_)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc3_ || param1)
                  {
                     addr54:
                     §§push(_loc2_.col2.x);
                     if(_loc3_ || this)
                     {
                        §§push(this.m_coreV1);
                        if(!(_loc4_ && param1))
                        {
                           §§push(§§pop().y);
                           if(_loc3_ || this)
                           {
                              §§push(§§pop() * §§pop());
                              if(_loc3_)
                              {
                                 §§push(§§pop() + §§pop());
                                 if(!_loc4_)
                                 {
                                    addr97:
                                    §§push(§§pop() + §§pop());
                                    §§push(param1.position.y);
                                    if(!_loc4_)
                                    {
                                       addr103:
                                       §§push(_loc2_.col1.y);
                                       if(_loc3_)
                                       {
                                          addr118:
                                          addr120:
                                          §§push(this.m_coreV1.x);
                                          if(_loc3_ || _loc2_)
                                          {
                                             §§goto(addr141);
                                          }
                                          addr141:
                                          §§push(§§pop() * §§pop());
                                          if(_loc3_)
                                          {
                                             addr131:
                                             §§push(_loc2_.col2.y);
                                             if(_loc3_)
                                             {
                                                addr136:
                                                §§push(§§pop() * this.m_coreV1.y);
                                             }
                                          }
                                          return new §§pop().b2Vec2(§§pop(),§§pop() + §§pop());
                                          §§push(§§pop() + §§pop());
                                       }
                                       §§goto(addr131);
                                    }
                                    §§goto(addr141);
                                 }
                                 §§goto(addr103);
                              }
                              §§goto(addr118);
                           }
                           §§goto(addr136);
                        }
                        §§goto(addr120);
                     }
                     §§goto(addr141);
                  }
                  §§goto(addr97);
               }
               §§goto(addr141);
            }
            §§goto(addr54);
         }
         §§goto(addr97);
      }
      
      public function §'b§() : b2EdgeShape
      {
         return this.§1!N§;
      }
      
      public function §&l§() : b2EdgeShape
      {
         return this.§<!@§;
      }
      
      public function §'!s§(param1:b2Transform, param2:Number, param3:Number) : b2Vec2
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc4_:b2Mat22 = param1.R;
         §§push(param1.position.x);
         if(!(_loc10_ && this))
         {
            §§push(_loc4_.col1.x);
            if(_loc9_)
            {
               §§push(this.m_coreV1.x);
               if(!_loc10_)
               {
                  addr53:
                  §§push(§§pop() * §§pop());
                  if(!_loc10_)
                  {
                     §§push(_loc4_.col2.x);
                     if(_loc9_)
                     {
                        §§push(§§pop() * this.m_coreV1.y);
                     }
                  }
                  §§push(§§pop() + §§pop());
                  if(_loc9_ || param1)
                  {
                     addr62:
                     var _loc5_:Number = §§pop();
                     §§push(param1.position.y);
                     if(!(_loc10_ && this))
                     {
                        §§push(_loc4_.col1.y);
                        if(!_loc10_)
                        {
                           §§push(this.m_coreV1.x);
                           if(_loc9_ || param3)
                           {
                              §§push(§§pop() * §§pop());
                              if(_loc9_ || this)
                              {
                                 addr96:
                                 §§push(_loc4_.col2.y);
                                 if(!_loc10_)
                                 {
                                    addr101:
                                    §§push(§§pop() * this.m_coreV1.y);
                                 }
                                 §§push(§§pop() + §§pop());
                              }
                              §§push(§§pop() + §§pop());
                              if(!_loc10_)
                              {
                                 addr109:
                                 §§push(Number(§§pop()));
                              }
                              var _loc6_:* = §§pop();
                              §§push(param1.position.x);
                              if(_loc9_)
                              {
                                 §§push(_loc4_.col1.x);
                                 if(_loc9_)
                                 {
                                    §§push(this.m_coreV2.x);
                                    if(!(_loc10_ && param3))
                                    {
                                       addr149:
                                       §§push(§§pop() * §§pop());
                                       if(!(_loc10_ && param2))
                                       {
                                          §§push(_loc4_.col2.x);
                                          if(_loc9_)
                                          {
                                             §§push(§§pop() * this.m_coreV2.y);
                                          }
                                       }
                                       §§push(§§pop() + §§pop());
                                       if(_loc9_)
                                       {
                                          addr153:
                                          var _loc7_:Number = §§pop();
                                          §§push(param1.position.y);
                                          if(_loc9_ || this)
                                          {
                                             §§push(_loc4_.col1.y);
                                             if(_loc9_)
                                             {
                                                §§push(this.m_coreV2.x);
                                                if(_loc9_ || param2)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(!_loc10_)
                                                   {
                                                      addr192:
                                                      §§push(_loc4_.col2.y);
                                                      if(_loc9_ || param2)
                                                      {
                                                         addr206:
                                                         §§push(§§pop() + §§pop() * this.m_coreV2.y);
                                                      }
                                                      §§goto(addr206);
                                                   }
                                                   §§push(§§pop() + §§pop());
                                                   if(!_loc10_)
                                                   {
                                                      addr211:
                                                      var _loc8_:Number = §§pop();
                                                      if(!_loc10_)
                                                      {
                                                         §§push(_loc5_);
                                                         if(!_loc10_)
                                                         {
                                                            §§push(param2);
                                                            if(_loc9_)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               if(!_loc10_)
                                                               {
                                                                  §§push(_loc6_);
                                                                  if(!(_loc10_ && param1))
                                                                  {
                                                                     §§push(param3);
                                                                     if(!(_loc10_ && param3))
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                        if(!_loc10_)
                                                                        {
                                                                           addr317:
                                                                           §§push(§§pop() + §§pop());
                                                                           §§push(_loc7_);
                                                                           if(!(_loc10_ && param2))
                                                                           {
                                                                              addr335:
                                                                              §§push(param2);
                                                                              if(_loc9_ || this)
                                                                              {
                                                                                 addr357:
                                                                                 §§push(§§pop() * §§pop());
                                                                                 if(_loc9_ || param2)
                                                                                 {
                                                                                    §§push(_loc8_);
                                                                                    if(_loc9_)
                                                                                    {
                                                                                       §§push(§§pop() * param3);
                                                                                    }
                                                                                 }
                                                                                 if(§§pop() <= §§pop())
                                                                                 {
                                                                                    §§push(this.§^!R§);
                                                                                    loop0:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc7_);
                                                                                       loop1:
                                                                                       while(true)
                                                                                       {
                                                                                          §§pop().x = §§pop();
                                                                                          loop2:
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc9_)
                                                                                             {
                                                                                                if(_loc9_ || param3)
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(this.§^!R§);
                                                                                                      loop12:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!_loc10_)
                                                                                                         {
                                                                                                            addr240:
                                                                                                            if(!(_loc10_ && param3))
                                                                                                            {
                                                                                                               §§push(_loc8_);
                                                                                                               if(_loc10_)
                                                                                                               {
                                                                                                                  continue loop1;
                                                                                                               }
                                                                                                               if(!(_loc10_ && param2))
                                                                                                               {
                                                                                                                  §§pop().y = §§pop();
                                                                                                                  if(!_loc9_)
                                                                                                                  {
                                                                                                                     continue loop2;
                                                                                                                  }
                                                                                                                  if(_loc9_)
                                                                                                                  {
                                                                                                                     addr262:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(this.§^!R§);
                                                                                                                        if(!(_loc10_ && param2))
                                                                                                                        {
                                                                                                                           continue loop0;
                                                                                                                        }
                                                                                                                        continue loop12;
                                                                                                                        §§goto(addr262);
                                                                                                                     }
                                                                                                                     loop6:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc6_);
                                                                                                                        addr284:
                                                                                                                        addr361:
                                                                                                                        while(_loc9_)
                                                                                                                        {
                                                                                                                           §§pop().y = §§pop();
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                           }
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§pop().x = §§pop();
                                                                                                                           addr362:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              continue loop6;
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     addr215:
                                                                                                                     addr283:
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§goto(addr287);
                                                                                                                  }
                                                                                                                  §§goto(addr215);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  §§goto(addr284);
                                                                                                               }
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§goto(addr240);
                                                                                                               }
                                                                                                               addr360:
                                                                                                            }
                                                                                                            §§goto(addr361);
                                                                                                         }
                                                                                                         §§goto(addr283);
                                                                                                      }
                                                                                                   }
                                                                                                   addr279:
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                   }
                                                                                                   addr358:
                                                                                                }
                                                                                                §§goto(addr360);
                                                                                             }
                                                                                             §§goto(addr362);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr358);
                                                                              }
                                                                           }
                                                                           §§goto(addr357);
                                                                        }
                                                                        §§goto(addr335);
                                                                     }
                                                                     §§push(§§pop() + §§pop());
                                                                  }
                                                                  §§goto(addr357);
                                                               }
                                                               §§goto(addr317);
                                                            }
                                                            §§goto(addr335);
                                                         }
                                                         §§goto(addr317);
                                                      }
                                                      §§goto(addr279);
                                                   }
                                                   §§goto(addr211);
                                                }
                                                §§goto(addr206);
                                             }
                                             §§goto(addr192);
                                          }
                                          §§goto(addr211);
                                       }
                                       §§goto(addr153);
                                    }
                                    §§push(§§pop() + §§pop());
                                 }
                                 §§goto(addr149);
                              }
                              §§goto(addr153);
                           }
                           §§goto(addr101);
                        }
                        §§goto(addr96);
                     }
                     §§goto(addr109);
                  }
                  §§goto(addr62);
               }
               §§push(§§pop() + §§pop());
            }
            §§goto(addr53);
         }
         §§goto(addr62);
      }
      
      b2internal function §?d§(param1:b2EdgeShape, param2:b2Vec2, param3:b2Vec2, param4:Boolean) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || param2)
         {
            this.§<!@§ = param1;
            while(true)
            {
               this.m_coreV1 = param2;
               addr62:
               if(_loc6_ || param3)
               {
                  this.m_cornerConvex1 = param4;
                  addr69:
                  if(_loc5_)
                  {
                     while(!_loc5_)
                     {
                        §§goto(addr62);
                        §§goto(addr69);
                     }
                     while(true)
                     {
                        this.m_cornerDir1 = param3;
                        §§goto(addr60);
                     }
                     addr60:
                     addr74:
                  }
                  return;
               }
            }
         }
         §§goto(addr74);
      }
      
      b2internal function §-!g§(param1:b2EdgeShape, param2:b2Vec2, param3:b2Vec2, param4:Boolean) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            this.§1!N§ = param1;
            while(true)
            {
               this.m_coreV2 = param2;
               loop1:
               while(!(_loc5_ && param3))
               {
                  while(true)
                  {
                     this.m_cornerDir2 = param3;
                     do
                     {
                        this.m_cornerConvex2 = param4;
                     }
                     while(_loc5_ && this);
                     
                     if(!_loc5_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr74);
      }
   }
}
