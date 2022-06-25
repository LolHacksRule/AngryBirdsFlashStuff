package §=;§
{
   import §+!g§.b2internal;
   import §>!8§.b2Mat22;
   import §>!8§.b2Math;
   import §>!8§.b2Vec2;
   import §>!L§.b2Body;
   import §>!L§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2FrictionJoint extends b2Joint
   {
       
      
      private var §<t§:b2Vec2;
      
      private var § G§:b2Vec2;
      
      public var §,,§:b2Mat22;
      
      public var §,@§:Number;
      
      private var §4!H§:b2Vec2;
      
      private var § Y§:Number;
      
      private var §,&§:Number;
      
      private var §;j§:Number;
      
      public function b2FrictionJoint(param1:b2FrictionJointDef)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§<t§ = new b2Vec2();
            loop0:
            while(true)
            {
               this.§ G§ = new b2Vec2();
               while(true)
               {
                  this.§,,§ = new b2Mat22();
                  loop4:
                  for(; _loc2_ || _loc3_; while(!(_loc3_ && param1))
                  {
                     this.§ Y§ = 0;
                     §§goto(addr64);
                     §§goto(addr35);
                  })
                  {
                     this.§<t§.SetV(param1.§>!g§);
                     loop5:
                     while(true)
                     {
                        this.§ G§.SetV(param1.§&1§);
                        addr129:
                        loop6:
                        while(!(_loc3_ && _loc3_))
                        {
                           this.§,,§.§@!;§();
                           while(!(_loc3_ && param1))
                           {
                              this.§,@§ = 0;
                              while(_loc2_)
                              {
                                 this.§4!H§.§@!;§();
                                 continue loop4;
                              }
                              while(true)
                              {
                                 this.§4!H§ = new b2Vec2();
                                 break loop6;
                              }
                              loop10:
                              while(_loc2_ || _loc2_)
                              {
                                 continue loop0;
                                 while(true)
                                 {
                                    if(!(_loc2_ || _loc3_))
                                    {
                                       continue loop10;
                                    }
                                    if(!_loc3_)
                                    {
                                       if(_loc3_)
                                       {
                                          break;
                                       }
                                       continue;
                                    }
                                    §§goto(addr106);
                                 }
                                 continue loop5;
                              }
                           }
                        }
                        while(true)
                        {
                           super(param1);
                           continue loop4;
                           §§goto(addr129);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr178);
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return §-;§.GetWorldPoint(this.§<t§);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return §`x§.GetWorldPoint(this.§ G§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(_loc2_ || _loc2_)
         {
            §§push(this.§4!H§.x);
            if(!(_loc3_ && this))
            {
               addr56:
               §§push(§§pop() * §§pop());
               §§push(param1);
               if(!(_loc3_ && _loc2_))
               {
                  §§push(§§pop() * this.§4!H§.y);
               }
            }
            return new §§pop().b2Vec2(§§pop(),§§pop());
         }
         §§goto(addr56);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(param1);
         if(_loc2_)
         {
            return §§pop() * this.§ Y§;
         }
      }
      
      public function §>n§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§,&§ = param1;
         }
      }
      
      public function §1D§() : Number
      {
         return this.§,&§;
      }
      
      public function §9!h§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§;j§ = param1;
         }
      }
      
      public function §&C§() : Number
      {
         return this.§;j§;
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc16_:Boolean = false;
         var _loc17_:Boolean = true;
         var _loc2_:b2Mat22 = null;
         var _loc3_:* = NaN;
         var _loc4_:b2Body = null;
         var _loc5_:b2Body = null;
         var _loc6_:* = NaN;
         var _loc8_:* = NaN;
         var _loc10_:* = NaN;
         var _loc12_:* = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:b2Mat22 = null;
         var _loc15_:b2Vec2 = null;
         _loc4_ = §-;§;
         _loc5_ = §`x§;
         _loc2_ = _loc4_.m_xf.R;
         if(_loc17_)
         {
            §§push(this.§<t§);
            if(!(_loc16_ && this))
            {
               §§push(§§pop().x);
               if(_loc17_)
               {
                  §§push(_loc4_.m_sweep);
                  if(!_loc16_)
                  {
                     §§push(§§pop().localCenter);
                     if(_loc17_)
                     {
                        §§push(§§pop().x);
                        if(!(_loc16_ && _loc3_))
                        {
                           §§push(§§pop() - §§pop());
                           if(_loc17_)
                           {
                              §§push(Number(§§pop()));
                              if(_loc17_)
                              {
                                 _loc6_ = §§pop();
                                 addr95:
                                 §§push(this.§<t§.y);
                                 if(!(_loc16_ && _loc2_))
                                 {
                                    addr103:
                                    §§push(§§pop() - _loc4_.m_sweep.localCenter.y);
                                    if(_loc17_)
                                    {
                                       §§push(Number(§§pop()));
                                    }
                                 }
                                 var _loc7_:* = §§pop();
                                 if(!_loc16_)
                                 {
                                    §§push(_loc2_.col1);
                                    loop0:
                                    while(true)
                                    {
                                       §§push(§§pop().x);
                                       loop1:
                                       while(true)
                                       {
                                          §§push(_loc6_);
                                          loop2:
                                          while(true)
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(!_loc16_)
                                             {
                                                §§push(_loc2_.col2);
                                                while(true)
                                                {
                                                   §§push(§§pop().x);
                                                   if(_loc17_)
                                                   {
                                                      §§push(_loc7_);
                                                      while(true)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                      }
                                                      addr218:
                                                   }
                                                   addr219:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                      addr220:
                                                      while(true)
                                                      {
                                                         §§push(Number(§§pop()));
                                                      }
                                                   }
                                                }
                                                addr214:
                                             }
                                             loop7:
                                             while(true)
                                             {
                                                _loc3_ = §§pop();
                                                while(true)
                                                {
                                                   while(true)
                                                   {
                                                      §§push(_loc2_.col1);
                                                      if(!_loc17_)
                                                      {
                                                         break;
                                                      }
                                                      §§push(§§pop().y);
                                                      if(!(_loc16_ && _loc3_))
                                                      {
                                                         §§push(_loc6_);
                                                         if(_loc17_)
                                                         {
                                                            if(!(_loc16_ && _loc3_))
                                                            {
                                                               if(!_loc17_)
                                                               {
                                                                  continue loop2;
                                                               }
                                                               §§push(§§pop() * §§pop());
                                                               loop10:
                                                               while(true)
                                                               {
                                                                  §§push(_loc2_.col2);
                                                                  if(_loc17_)
                                                                  {
                                                                     §§push(§§pop().y);
                                                                     if(_loc17_)
                                                                     {
                                                                        §§push(_loc7_);
                                                                        if(_loc17_)
                                                                        {
                                                                           addr187:
                                                                           §§push(§§pop() * §§pop());
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop() + §§pop());
                                                                              if(!(_loc16_ && _loc2_))
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(Number(§§pop()));
                                                                                 }
                                                                                 addr195:
                                                                              }
                                                                              loop12:
                                                                              for(; _loc17_ || _loc3_; if(!(_loc17_ || _loc2_))
                                                                              {
                                                                                 continue;
                                                                              },if(_loc16_)
                                                                              {
                                                                                 continue loop1;
                                                                              },§§goto(addr129),§§push(Number(§§pop())))
                                                                              {
                                                                                 _loc7_ = §§pop();
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc3_);
                                                                                    if(!_loc16_)
                                                                                    {
                                                                                       continue loop12;
                                                                                    }
                                                                                    addr129:
                                                                                    if(!_loc17_)
                                                                                    {
                                                                                       continue loop10;
                                                                                    }
                                                                                    if(_loc17_ || this)
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                    §§goto(addr220);
                                                                                 }
                                                                                 _loc2_ = _loc5_.m_xf.R;
                                                                                 if(_loc17_ || _loc3_)
                                                                                 {
                                                                                    §§push(this.§ G§);
                                                                                    if(!(_loc16_ && this))
                                                                                    {
                                                                                       §§push(§§pop().x);
                                                                                       if(_loc17_ || _loc3_)
                                                                                       {
                                                                                          §§push(_loc5_.m_sweep);
                                                                                          if(_loc17_ || this)
                                                                                          {
                                                                                             §§push(§§pop().localCenter);
                                                                                             if(!_loc16_)
                                                                                             {
                                                                                                §§push(§§pop().x);
                                                                                                if(!(_loc16_ && this))
                                                                                                {
                                                                                                   §§push(§§pop() - §§pop());
                                                                                                   if(_loc17_)
                                                                                                   {
                                                                                                      §§push(Number(§§pop()));
                                                                                                      if(_loc17_)
                                                                                                      {
                                                                                                         _loc8_ = §§pop();
                                                                                                         addr281:
                                                                                                         §§push(this.§ G§.y);
                                                                                                         if(!(_loc16_ && this))
                                                                                                         {
                                                                                                            addr293:
                                                                                                            §§push(§§pop() - _loc5_.m_sweep.localCenter.y);
                                                                                                            if(!_loc16_)
                                                                                                            {
                                                                                                               addr296:
                                                                                                               §§push(Number(§§pop()));
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr296);
                                                                                                   }
                                                                                                   var _loc9_:* = §§pop();
                                                                                                   if(!(_loc16_ && param1))
                                                                                                   {
                                                                                                      §§push(_loc2_.col1);
                                                                                                      loop15:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop().x);
                                                                                                         if(_loc17_)
                                                                                                         {
                                                                                                            §§push(_loc8_);
                                                                                                            loop16:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop() * §§pop());
                                                                                                               if(!_loc17_)
                                                                                                               {
                                                                                                                  break;
                                                                                                               }
                                                                                                               §§push(_loc2_.col2);
                                                                                                               loop17:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop().x);
                                                                                                                  addr432:
                                                                                                                  addr384:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc9_);
                                                                                                                     addr433:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                        addr434:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  loop24:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc2_.col2);
                                                                                                                     if(_loc16_ && _loc3_)
                                                                                                                     {
                                                                                                                        continue loop17;
                                                                                                                     }
                                                                                                                     §§push(§§pop().y);
                                                                                                                     if(_loc17_)
                                                                                                                     {
                                                                                                                        while(!_loc16_)
                                                                                                                        {
                                                                                                                           if(!_loc17_)
                                                                                                                           {
                                                                                                                              break loop24;
                                                                                                                           }
                                                                                                                           §§push(_loc9_);
                                                                                                                           if(!(_loc16_ && _loc2_))
                                                                                                                           {
                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                 loop25:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                    loop26:
                                                                                                                                    while(!(_loc16_ && _loc2_))
                                                                                                                                    {
                                                                                                                                       _loc9_ = §§pop();
                                                                                                                                       loop27:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          loop28:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(_loc3_);
                                                                                                                                             loop29:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                                if(!(_loc16_ && _loc2_))
                                                                                                                                                {
                                                                                                                                                   if(_loc16_)
                                                                                                                                                   {
                                                                                                                                                      break;
                                                                                                                                                   }
                                                                                                                                                   _loc8_ = §§pop();
                                                                                                                                                   loop30:
                                                                                                                                                   while(_loc17_)
                                                                                                                                                   {
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc4_.§=n§);
                                                                                                                                                         if(_loc17_)
                                                                                                                                                         {
                                                                                                                                                            if(_loc17_ || _loc2_)
                                                                                                                                                            {
                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                               if(!(_loc16_ && param1))
                                                                                                                                                               {
                                                                                                                                                                  addr326:
                                                                                                                                                                  if(!_loc17_)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop26;
                                                                                                                                                                  }
                                                                                                                                                                  if(!_loc17_)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop25;
                                                                                                                                                                  }
                                                                                                                                                                  if(!_loc17_)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop24;
                                                                                                                                                                  }
                                                                                                                                                                  _loc10_ = §§pop();
                                                                                                                                                                  if(!_loc17_)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop30;
                                                                                                                                                                  }
                                                                                                                                                                  if(!_loc17_)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop27;
                                                                                                                                                                  }
                                                                                                                                                                  if(false)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop28;
                                                                                                                                                                  }
                                                                                                                                                                  addr443:
                                                                                                                                                                  addr443:
                                                                                                                                                                  addr443:
                                                                                                                                                                  §§push(_loc5_.§=n§);
                                                                                                                                                                  if(_loc17_)
                                                                                                                                                                  {
                                                                                                                                                                     break loop16;
                                                                                                                                                                  }
                                                                                                                                                                  var _loc11_:* = §§pop();
                                                                                                                                                                  if(!(_loc16_ && _loc2_))
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc4_.§1&§);
                                                                                                                                                                     if(_loc17_ || _loc3_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(Number(§§pop()));
                                                                                                                                                                        if(!(_loc16_ && param1))
                                                                                                                                                                        {
                                                                                                                                                                           _loc12_ = §§pop();
                                                                                                                                                                           if(_loc17_)
                                                                                                                                                                           {
                                                                                                                                                                              addr471:
                                                                                                                                                                              §§push(_loc5_.§1&§);
                                                                                                                                                                              if(!(_loc16_ && this))
                                                                                                                                                                              {
                                                                                                                                                                                 addr481:
                                                                                                                                                                                 _loc13_ = §§pop();
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr481);
                                                                                                                                                                           }
                                                                                                                                                                           _loc14_ = new b2Mat22();
                                                                                                                                                                           if(!(_loc16_ && param1))
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc14_.col1);
                                                                                                                                                                              loop34:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc10_);
                                                                                                                                                                                 loop35:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc11_);
                                                                                                                                                                                    loop36:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                                                                       loop37:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§pop().x = §§pop();
                                                                                                                                                                                          loop38:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc14_.col2);
                                                                                                                                                                                             loop39:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(0);
                                                                                                                                                                                                loop40:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§pop().x = §§pop();
                                                                                                                                                                                                   loop41:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(_loc14_.col1);
                                                                                                                                                                                                      loop42:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(0);
                                                                                                                                                                                                         loop43:
                                                                                                                                                                                                         while(_loc17_ || _loc3_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§pop().y = §§pop();
                                                                                                                                                                                                            loop44:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(_loc14_.col2);
                                                                                                                                                                                                               loop45:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(_loc10_);
                                                                                                                                                                                                                  loop46:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(_loc11_);
                                                                                                                                                                                                                     loop47:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                                                                                                                        loop48:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§pop().y = §§pop();
                                                                                                                                                                                                                           loop49:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(_loc14_.col1);
                                                                                                                                                                                                                              loop50:
                                                                                                                                                                                                                              for(; _loc17_; loop70:
                                                                                                                                                                                                                              for(; _loc17_ || param1; if(!(_loc17_ || _loc3_))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 continue;
                                                                                                                                                                                                                              },§§goto(addr747))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(_loc14_.col1);
                                                                                                                                                                                                                                 loop71:
                                                                                                                                                                                                                                 for(; _loc17_; while(!(_loc16_ && _loc3_))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§goto(addr994);
                                                                                                                                                                                                                                    §§push(§§pop().x);
                                                                                                                                                                                                                                    §§push(_loc14_.col1);
                                                                                                                                                                                                                                    if(_loc16_ && this)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       continue;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§push(§§pop().y);
                                                                                                                                                                                                                                    if(!(_loc16_ && _loc3_))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§goto(addr774);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr863);
                                                                                                                                                                                                                                 })
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(§§pop().y);
                                                                                                                                                                                                                                    loop72:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(_loc12_);
                                                                                                                                                                                                                                       if(_loc17_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(-§§pop());
                                                                                                                                                                                                                                          loop73:
                                                                                                                                                                                                                                          while(!(_loc16_ && _loc2_))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(_loc6_);
                                                                                                                                                                                                                                             loop74:
                                                                                                                                                                                                                                             for(; _loc17_ || param1; if(_loc16_ && param1)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                continue;
                                                                                                                                                                                                                                             },§§goto(addr855),§§push(§§pop() * §§pop()))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                loop75:
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(_loc7_);
                                                                                                                                                                                                                                                   loop76:
                                                                                                                                                                                                                                                   while(_loc17_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                         addr1110:
                                                                                                                                                                                                                                                         while(_loc17_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§pop().y = §§pop();
                                                                                                                                                                                                                                                            while(!_loc16_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(_loc14_.col2);
                                                                                                                                                                                                                                                               continue loop39;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            continue loop44;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         addr800:
                                                                                                                                                                                                                                                         continue loop37;
                                                                                                                                                                                                                                                         if(!(_loc17_ || this))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            continue;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         if(_loc16_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            continue loop73;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§push(-§§pop());
                                                                                                                                                                                                                                                         if(!(_loc16_ && _loc2_))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(!(_loc17_ || this))
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               continue loop36;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§push(_loc8_);
                                                                                                                                                                                                                                                            if(_loc17_ || this)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(_loc17_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                  if(_loc17_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     addr837:
                                                                                                                                                                                                                                                                     if(_loc17_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        addr840:
                                                                                                                                                                                                                                                                        §§push(_loc9_);
                                                                                                                                                                                                                                                                        if(_loc17_ || param1)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           continue loop74;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        continue loop76;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr1148);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  else
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     addr855:
                                                                                                                                                                                                                                                                     if(!(_loc17_ || _loc3_))
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        continue loop75;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                     if(!_loc16_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(_loc17_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(_loc16_ && _loc2_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              continue loop43;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§pop().y = §§pop();
                                                                                                                                                                                                                                                                           addr1021:
                                                                                                                                                                                                                                                                           loop107:
                                                                                                                                                                                                                                                                           while(!_loc16_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(_loc14_.col2);
                                                                                                                                                                                                                                                                              if(_loc17_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 addr664:
                                                                                                                                                                                                                                                                                 §§push(_loc14_.col2);
                                                                                                                                                                                                                                                                                 if(!(_loc16_ && _loc2_))
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(§§pop().y);
                                                                                                                                                                                                                                                                                    if(!_loc16_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(_loc17_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(!(_loc17_ || this))
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             continue loop40;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§push(_loc13_);
                                                                                                                                                                                                                                                                                          if(_loc17_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(!_loc16_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§push(_loc8_);
                                                                                                                                                                                                                                                                                                if(_loc17_ || _loc2_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(_loc17_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(!_loc16_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                         if(_loc17_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            addr706:
                                                                                                                                                                                                                                                                                                            §§push(_loc8_);
                                                                                                                                                                                                                                                                                                            if(!_loc16_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               addr709:
                                                                                                                                                                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                               if(!(_loc16_ && this))
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  if(_loc16_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     continue loop47;
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  addr719:
                                                                                                                                                                                                                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                  if(!(_loc16_ && this))
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     if(_loc17_ || _loc3_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        §§pop().y = §§pop();
                                                                                                                                                                                                                                                                                                                        loop108:
                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           _loc14_.§0!A§(this.§,,§);
                                                                                                                                                                                                                                                                                                                           loop109:
                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              §§push(this);
                                                                                                                                                                                                                                                                                                                              §§push(_loc12_);
                                                                                                                                                                                                                                                                                                                              if(!(_loc16_ && param1))
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 §§push(§§pop() + _loc13_);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§pop().§,@§ = §§pop();
                                                                                                                                                                                                                                                                                                                              if(_loc17_ || this)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 if(this.§,@§ > 0)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    if(!(_loc16_ && param1))
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       if(!_loc17_)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          continue loop107;
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       this.§,@§ = 1 / this.§,@§;
                                                                                                                                                                                                                                                                                                                                       do
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          if(_loc16_)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             continue loop108;
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       while(!_loc16_);
                                                                                                                                                                                                                                                                                                                                       
                                                                                                                                                                                                                                                                                                                                       §§goto(addr1132);
                                                                                                                                                                                                                                                                                                                                       addr626:
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    break;
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    if(param1.§-K§)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       while(_loc17_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          §§push(this.§4!H§);
                                                                                                                                                                                                                                                                                                                                          if(_loc16_)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             addr1521:
                                                                                                                                                                                                                                                                                                                                             §§pop().§@!;§();
                                                                                                                                                                                                                                                                                                                                             if(!_loc17_)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             break loop109;
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          §§push(this.§4!H§);
                                                                                                                                                                                                                                                                                                                                          loop113:
                                                                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             §§push(§§pop().x);
                                                                                                                                                                                                                                                                                                                                             addr601:
                                                                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                §§push(param1.§&s§);
                                                                                                                                                                                                                                                                                                                                                addr603:
                                                                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                   addr604:
                                                                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      §§pop().x = §§pop();
                                                                                                                                                                                                                                                                                                                                                      addr605:
                                                                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         addr536:
                                                                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            §§push(this.§4!H§);
                                                                                                                                                                                                                                                                                                                                                            if(!(_loc16_ && this))
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               continue loop113;
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            addr1196:
                                                                                                                                                                                                                                                                                                                                                            _loc15_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                            if(!(_loc16_ && this))
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               addr1516:
                                                                                                                                                                                                                                                                                                                                                               _loc4_.§4!h§.x -= _loc10_ * _loc15_.x;
                                                                                                                                                                                                                                                                                                                                                               addr1517:
                                                                                                                                                                                                                                                                                                                                                               addr1515:
                                                                                                                                                                                                                                                                                                                                                               addr1508:
                                                                                                                                                                                                                                                                                                                                                               addr1514:
                                                                                                                                                                                                                                                                                                                                                               addr1512:
                                                                                                                                                                                                                                                                                                                                                               addr1511:
                                                                                                                                                                                                                                                                                                                                                               §§push(_loc4_.§4!h§);
                                                                                                                                                                                                                                                                                                                                                               §§push(_loc4_.§4!h§);
                                                                                                                                                                                                                                                                                                                                                               if(!(_loc16_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  addr1473:
                                                                                                                                                                                                                                                                                                                                                                  §§push(§§pop().y);
                                                                                                                                                                                                                                                                                                                                                                  if(!_loc16_)
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     §§push(_loc10_);
                                                                                                                                                                                                                                                                                                                                                                     if(!(_loc16_ && param1))
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        if(!(_loc16_ && this))
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           addr1504:
                                                                                                                                                                                                                                                                                                                                                                           §§pop().y = §§pop() - §§pop() * _loc15_.y;
                                                                                                                                                                                                                                                                                                                                                                           addr1505:
                                                                                                                                                                                                                                                                                                                                                                           addr1502:
                                                                                                                                                                                                                                                                                                                                                                           addr1503:
                                                                                                                                                                                                                                                                                                                                                                           §§push(_loc4_);
                                                                                                                                                                                                                                                                                                                                                                           §§push(_loc4_.m_angularVelocity);
                                                                                                                                                                                                                                                                                                                                                                           if(_loc17_)
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              §§push(_loc12_);
                                                                                                                                                                                                                                                                                                                                                                              if(!_loc16_)
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 §§push(_loc6_);
                                                                                                                                                                                                                                                                                                                                                                                 if(!(_loc16_ && param1))
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    §§push(_loc15_.y);
                                                                                                                                                                                                                                                                                                                                                                                    if(!(_loc16_ && param1))
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                                                       if(!(_loc16_ && this))
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          addr1432:
                                                                                                                                                                                                                                                                                                                                                                                          §§push(_loc7_);
                                                                                                                                                                                                                                                                                                                                                                                          if(!(_loc16_ && param1))
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             addr1440:
                                                                                                                                                                                                                                                                                                                                                                                             §§push(§§pop() * _loc15_.x);
                                                                                                                                                                                                                                                                                                                                                                                             if(!_loc16_)
                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                addr1456:
                                                                                                                                                                                                                                                                                                                                                                                                addr1445:
                                                                                                                                                                                                                                                                                                                                                                                                addr1457:
                                                                                                                                                                                                                                                                                                                                                                                                addr1458:
                                                                                                                                                                                                                                                                                                                                                                                                §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                if(!(_loc16_ && this))
                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                   §§push(this.§ Y§);
                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                §§pop().m_angularVelocity = §§pop() - §§pop() * §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                addr1354:
                                                                                                                                                                                                                                                                                                                                                                                                addr1459:
                                                                                                                                                                                                                                                                                                                                                                                                §§push(_loc5_.§4!h§);
                                                                                                                                                                                                                                                                                                                                                                                                if(!_loc16_)
                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                   addr1358:
                                                                                                                                                                                                                                                                                                                                                                                                   §§push(_loc5_.§4!h§);
                                                                                                                                                                                                                                                                                                                                                                                                   if(!_loc16_)
                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                      addr1361:
                                                                                                                                                                                                                                                                                                                                                                                                      §§push(§§pop().x);
                                                                                                                                                                                                                                                                                                                                                                                                      if(!(_loc16_ && param1))
                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                         §§push(_loc11_);
                                                                                                                                                                                                                                                                                                                                                                                                         if(!_loc16_)
                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                            addr1373:
                                                                                                                                                                                                                                                                                                                                                                                                            §§push(_loc15_.x);
                                                                                                                                                                                                                                                                                                                                                                                                            if(!(_loc16_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                               addr1381:
                                                                                                                                                                                                                                                                                                                                                                                                               §§push(§§pop() + §§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                               if(!(_loc16_ && this))
                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                  §§pop().x = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                  addr1390:
                                                                                                                                                                                                                                                                                                                                                                                                                  if(_loc17_ || this)
                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                     addr1275:
                                                                                                                                                                                                                                                                                                                                                                                                                     §§push(_loc5_.§4!h§);
                                                                                                                                                                                                                                                                                                                                                                                                                     if(!(_loc16_ && param1))
                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                        if(_loc17_ || param1)
                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                           §§push(_loc5_.§4!h§);
                                                                                                                                                                                                                                                                                                                                                                                                                           if(!_loc16_)
                                                                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                                                                              §§push(§§pop().y);
                                                                                                                                                                                                                                                                                                                                                                                                                              if(_loc17_)
                                                                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                                                                 if(!(_loc16_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                                                                    if(_loc17_)
                                                                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                                                                       §§push(_loc11_);
                                                                                                                                                                                                                                                                                                                                                                                                                                       if(_loc17_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                                                                          if(!(_loc16_ && _loc2_))
                                                                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                                                                             §§push(_loc15_.y);
                                                                                                                                                                                                                                                                                                                                                                                                                                             if(_loc17_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                                                                if(!(_loc16_ && this))
                                                                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                                                                   addr1340:
                                                                                                                                                                                                                                                                                                                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                                   if(_loc17_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                                                                      if(_loc17_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                                                                         addr1345:
                                                                                                                                                                                                                                                                                                                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                                         if(_loc17_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                                                                            §§pop().y = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                                                            addr1348:
                                                                                                                                                                                                                                                                                                                                                                                                                                                            if(!_loc16_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                                                                               §§push(_loc5_);
                                                                                                                                                                                                                                                                                                                                                                                                                                                               §§push(_loc5_.m_angularVelocity);
                                                                                                                                                                                                                                                                                                                                                                                                                                                               if(_loc17_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  §§push(_loc13_);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  if(!_loc16_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     §§push(_loc8_);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     if(_loc17_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        §§push(_loc15_.y);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        if(!_loc16_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           if(!(_loc16_ && param1))
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              §§push(_loc9_);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              if(!_loc16_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 §§push(§§pop() * _loc15_.x);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 if(_loc17_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    addr1249:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    if(!_loc16_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       §§push(this.§ Y§);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    §§pop().m_angularVelocity = §§pop() + §§pop() * §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    if(!(_loc16_ && this))
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       if(_loc17_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          if(!(_loc16_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             if(false)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                §§goto(addr1275);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             break loop109;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr1505);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr1390);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr1348);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr1249);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                                                                               §§goto(addr1249);
                                                                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                                                                            §§goto(addr1517);
                                                                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                                                                         §§goto(addr1473);
                                                                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                                                                      §§goto(addr1515);
                                                                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                                                                   §§goto(addr1381);
                                                                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                                                                §§goto(addr1502);
                                                                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                                                                             §§goto(addr1373);
                                                                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr1503);
                                                                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr1340);
                                                                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr1361);
                                                                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr1381);
                                                                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr1345);
                                                                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr1358);
                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr1508);
                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr1354);
                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr1459);
                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                               §§goto(addr1516);
                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                            §§goto(addr1514);
                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                         §§goto(addr1381);
                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                      §§goto(addr1504);
                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                §§goto(addr1516);
                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                             §§goto(addr1456);
                                                                                                                                                                                                                                                                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr1445);
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr1456);
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr1440);
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr1432);
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr1457);
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr1458);
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr1512);
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr1504);
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr1511);
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               addr1510:
                                                                                                                                                                                                                                                                                                                                                               §§goto(addr1510);
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            §§goto(addr1504);
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         continue loop109;
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          §§goto(addr1525);
                                                                                                                                                                                                                                                                                                                                          if(_loc16_ && this)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             continue;
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          if(!_loc16_)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             if(_loc16_)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                continue loop109;
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             if(false)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                §§goto(addr536);
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             §§push(this.§4!H§);
                                                                                                                                                                                                                                                                                                                                             if(!(_loc16_ && this))
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                §§goto(addr1196);
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             else
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                §§goto(addr1521);
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          §§goto(addr626);
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          §§push(_loc14_.col1);
                                                                                                                                                                                                                                                                                                                                          loop90:
                                                                                                                                                                                                                                                                                                                                          while(_loc17_)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             §§push(_loc14_.col1);
                                                                                                                                                                                                                                                                                                                                             continue loop71;
                                                                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                §§push(_loc14_.col1);
                                                                                                                                                                                                                                                                                                                                                if(_loc17_)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   continue loop70;
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                continue loop90;
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          continue loop34;
                                                                                                                                                                                                                                                                                                                                          §§goto(addr587);
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       addr587:
                                                                                                                                                                                                                                                                                                                                       addr1069:
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       §§push(this.§4!H§);
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    §§goto(addr1521);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              break;
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           return;
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr1122);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  else
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     addr970:
                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        §§pop().x = §§pop();
                                                                                                                                                                                                                                                                                                                        break loop107;
                                                                                                                                                                                                                                                                                                                        §§goto(addr719);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     addr970:
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               while(!_loc16_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  §§goto(addr970);
                                                                                                                                                                                                                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr1128);
                                                                                                                                                                                                                                                                                                               addr967:
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            while(!_loc16_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               if(!_loc16_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  §§goto(addr967);
                                                                                                                                                                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr1127);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            loop84:
                                                                                                                                                                                                                                                                                                            while(!(_loc16_ && param1))
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  §§push(_loc6_);
                                                                                                                                                                                                                                                                                                                  addr1062:
                                                                                                                                                                                                                                                                                                                  addr952:
                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                     addr1063:
                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                        addr1064:
                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           if(!_loc16_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              if(!_loc17_)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 break;
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§pop().y = §§pop();
                                                                                                                                                                                                                                                                                                                              §§goto(addr1069);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           else
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              §§goto(addr1131);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        continue loop46;
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  if(_loc16_ && this)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     continue;
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  if(!_loc16_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§goto(addr962);
                                                                                                                                                                                                                                                                                                                     §§push(_loc9_);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  while(!_loc16_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§push(_loc6_);
                                                                                                                                                                                                                                                                                                                     continue loop84;
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr1123);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            addr962:
                                                                                                                                                                                                                                                                                                            §§goto(addr1129);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr709);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr1062);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                      addr945:
                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         if(_loc17_ || param1)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§goto(addr952);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr1063);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr1050);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   addr944:
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr706);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr945);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr709);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§goto(addr1050);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       addr1049:
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr719);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 loop98:
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(!(_loc16_ && _loc2_))
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(_loc17_ || this)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push(§§pop().x);
                                                                                                                                                                                                                                                                                          if(_loc17_ || this)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(_loc17_ || _loc2_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(_loc16_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   break;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§push(_loc13_);
                                                                                                                                                                                                                                                                                                if(_loc17_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§push(-§§pop());
                                                                                                                                                                                                                                                                                                   if(!(_loc16_ && _loc3_))
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(_loc17_ || _loc2_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§goto(addr944);
                                                                                                                                                                                                                                                                                                         §§push(_loc8_);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr1130);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr709);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr945);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr1064);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr970);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr1121);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§goto(addr1049);
                                                                                                                                                                                                                                                                                          continue loop98;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       addr1048:
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr1050);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 continue loop48;
                                                                                                                                                                                                                                                                                 addr894:
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(_loc16_ && this)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    continue loop39;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 if(!_loc16_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(!_loc17_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       break;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr894);
                                                                                                                                                                                                                                                                                    §§push(_loc14_.col2);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr1119);
                                                                                                                                                                                                                                                                                 §§goto(addr877);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              addr877:
                                                                                                                                                                                                                                                                              continue loop45;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           while(!(_loc16_ && _loc2_))
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§goto(addr978);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           while(!(_loc16_ && param1))
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(!(_loc17_ || param1))
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 continue loop38;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr881);
                                                                                                                                                                                                                                                                              §§push(_loc14_.col2);
                                                                                                                                                                                                                                                                              §§goto(addr971);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           addr971:
                                                                                                                                                                                                                                                                           continue loop41;
                                                                                                                                                                                                                                                                           addr1021:
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        else
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§goto(addr1110);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr1113);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     else
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(_loc13_);
                                                                                                                                                                                                                                                                           addr995:
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(_loc9_);
                                                                                                                                                                                                                                                                              if(_loc17_ || this)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                 if(_loc17_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    addr1007:
                                                                                                                                                                                                                                                                                    §§push(_loc9_);
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    addr1007:
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 while(_loc17_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(!_loc16_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(_loc17_ || param1)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§pop().x = §§pop();
                                                                                                                                                                                                                                                                                             §§goto(addr1021);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§goto(addr1143);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       break;
                                                                                                                                                                                                                                                                                       addr774:
                                                                                                                                                                                                                                                                                       if(!(_loc16_ && _loc3_))
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          continue loop72;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr1149);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr1144);
                                                                                                                                                                                                                                                                                 addr1008:
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr1007);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        addr994:
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr1021);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr1007);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr840);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr855);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr1145);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr1147);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr1146);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1105);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr1142);
                                                                                                                                                                                                                              })
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(_loc14_.col1);
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(§§pop().x);
                                                                                                                                                                                                                                    addr1143:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(_loc12_);
                                                                                                                                                                                                                                       addr1144:
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(_loc7_);
                                                                                                                                                                                                                                          addr1145:
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                             addr1146:
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(_loc7_);
                                                                                                                                                                                                                                                addr1147:
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                   addr1148:
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                      addr1149:
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§pop().x = §§pop();
                                                                                                                                                                                                                                                         loop59:
                                                                                                                                                                                                                                                         while(!_loc16_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(_loc14_.col2);
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(_loc14_.col2);
                                                                                                                                                                                                                                                               addr1121:
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(§§pop().x);
                                                                                                                                                                                                                                                                  addr1122:
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(_loc12_);
                                                                                                                                                                                                                                                                     addr1123:
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(-§§pop());
                                                                                                                                                                                                                                                                        if(!_loc16_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(_loc6_);
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                              addr1128:
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(_loc7_);
                                                                                                                                                                                                                                                                                 addr1129:
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           addr1127:
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        addr1130:
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                           addr1131:
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§pop().x = §§pop();
                                                                                                                                                                                                                                                                              addr1132:
                                                                                                                                                                                                                                                                              while(!_loc16_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(_loc14_.col1);
                                                                                                                                                                                                                                                                                 continue loop50;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              continue loop59;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         continue loop49;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              continue loop42;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         continue loop35;
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                while(!(_loc16_ && _loc3_))
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§goto(addr1048);
                                                                                                                                                                                                   §§push(_loc14_.col2);
                                                                                                                                                                                                   §§goto(addr881);
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr978);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr481);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr471);
                                                                                                                                                               }
                                                                                                                                                               break loop16;
                                                                                                                                                            }
                                                                                                                                                            continue loop29;
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr326);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   continue loop15;
                                                                                                                                                }
                                                                                                                                                §§goto(addr443);
                                                                                                                                             }
                                                                                                                                             addr435:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                                break loop26;
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       _loc3_ = §§pop();
                                                                                                                                       continue loop15;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              addr409:
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §§goto(addr433);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr434);
                                                                                                                        addr396:
                                                                                                                     }
                                                                                                                     §§goto(addr409);
                                                                                                                  }
                                                                                                                  §§goto(addr432);
                                                                                                               }
                                                                                                               addr376:
                                                                                                               if(!(_loc17_ || this))
                                                                                                               {
                                                                                                                  continue;
                                                                                                               }
                                                                                                               §§goto(addr384);
                                                                                                               §§push(§§pop() * §§pop());
                                                                                                            }
                                                                                                            §§goto(addr443);
                                                                                                            §§push(Number(§§pop()));
                                                                                                         }
                                                                                                         §§goto(addr435);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr354);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr293);
                                                                                       }
                                                                                       §§goto(addr296);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr281);
                                                                              }
                                                                              continue loop7;
                                                                           }
                                                                           addr187:
                                                                        }
                                                                     }
                                                                     §§goto(addr187);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr214);
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr219);
                                                         }
                                                         §§goto(addr187);
                                                      }
                                                      §§goto(addr195);
                                                   }
                                                   continue loop0;
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr204);
                              }
                           }
                        }
                     }
                  }
               }
               §§goto(addr103);
            }
         }
         §§goto(addr95);
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc26_:Boolean = true;
         var _loc27_:Boolean = false;
         var _loc2_:b2Mat22 = null;
         var _loc3_:* = NaN;
         var _loc18_:* = NaN;
         var _loc4_:b2Body = §-;§;
         var _loc5_:b2Body = §`x§;
         var _loc6_:b2Vec2 = _loc4_.§4!h§;
         §§push(_loc4_.m_angularVelocity);
         if(!_loc27_)
         {
            §§push(Number(§§pop()));
         }
         var _loc7_:* = §§pop();
         var _loc8_:b2Vec2 = _loc5_.§4!h§;
         §§push(_loc5_.m_angularVelocity);
         if(!(_loc27_ && _loc3_))
         {
            §§push(Number(§§pop()));
         }
         var _loc9_:* = §§pop();
         §§push(_loc4_.§=n§);
         if(_loc26_ || _loc2_)
         {
            §§push(Number(§§pop()));
         }
         var _loc10_:* = §§pop();
         §§push(_loc5_.§=n§);
         if(!_loc27_)
         {
            §§push(Number(§§pop()));
         }
         var _loc11_:* = §§pop();
         §§push(_loc4_.§1&§);
         if(!(_loc27_ && this))
         {
            §§push(Number(§§pop()));
         }
         var _loc12_:* = §§pop();
         §§push(_loc5_.§1&§);
         if(_loc26_)
         {
            §§push(Number(§§pop()));
         }
         var _loc13_:* = §§pop();
         _loc2_ = _loc4_.m_xf.R;
         §§push(this.§<t§.x);
         if(_loc26_ || this)
         {
            §§push(§§pop() - _loc4_.m_sweep.localCenter.x);
            if(!(_loc27_ && _loc3_))
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc14_:* = §§pop();
         §§push(this.§<t§.y);
         if(_loc26_ || _loc2_)
         {
            §§push(§§pop() - _loc4_.m_sweep.localCenter.y);
            if(!_loc27_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc15_:* = §§pop();
         if(_loc26_)
         {
            §§push(_loc2_.col1);
            loop0:
            while(true)
            {
               §§push(§§pop().x);
               loop1:
               while(true)
               {
                  §§push(_loc14_);
                  if(_loc26_ || param1)
                  {
                     §§push(§§pop() * §§pop());
                     while(true)
                     {
                        §§push(_loc2_.col2);
                        loop3:
                        while(true)
                        {
                           §§push(§§pop().x);
                           if(_loc26_)
                           {
                              §§push(_loc15_);
                              loop4:
                              while(true)
                              {
                                 §§push(§§pop() * §§pop());
                                 addr207:
                                 §§push(_loc15_);
                                 if(!(_loc26_ || param1))
                                 {
                                    continue;
                                 }
                                 addr216:
                                 §§push(§§pop() * §§pop());
                                 if(_loc26_ || param1)
                                 {
                                    §§push(§§pop() + §§pop());
                                    loop11:
                                    while(true)
                                    {
                                       §§push(Number(§§pop()));
                                       loop12:
                                       while(_loc26_ || this)
                                       {
                                          _loc15_ = §§pop();
                                          loop13:
                                          while(_loc26_)
                                          {
                                             while(true)
                                             {
                                                §§push(_loc3_);
                                                if(!(_loc27_ && _loc3_))
                                                {
                                                   if(!_loc27_)
                                                   {
                                                      if(!_loc27_)
                                                      {
                                                         addr155:
                                                         §§push(Number(§§pop()));
                                                         if(_loc26_)
                                                         {
                                                            continue loop11;
                                                         }
                                                         continue loop12;
                                                      }
                                                      addr256:
                                                      while(true)
                                                      {
                                                         §§push(Number(§§pop()));
                                                         addr257:
                                                         while(true)
                                                         {
                                                            _loc3_ = §§pop();
                                                            break loop13;
                                                         }
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      if(!_loc27_)
                                                      {
                                                         §§push(_loc14_);
                                                         if(_loc26_ || this)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            if(!(_loc26_ || param1))
                                                            {
                                                               continue loop12;
                                                            }
                                                            §§push(_loc2_.col2);
                                                            if(!_loc26_)
                                                            {
                                                               continue loop3;
                                                            }
                                                            §§push(§§pop().y);
                                                            if(_loc26_)
                                                            {
                                                               §§goto(addr207);
                                                            }
                                                            §§goto(addr216);
                                                         }
                                                         §§goto(addr207);
                                                      }
                                                      §§goto(addr257);
                                                   }
                                                   continue loop4;
                                                   addr182:
                                                }
                                                §§goto(addr155);
                                             }
                                             _loc2_ = _loc5_.m_xf.R;
                                             §§push(this.§ G§.x);
                                             if(_loc26_ || this)
                                             {
                                                §§push(§§pop() - _loc5_.m_sweep.localCenter.x);
                                                if(_loc26_)
                                                {
                                                   addr281:
                                                   §§push(Number(§§pop()));
                                                }
                                                var _loc16_:* = §§pop();
                                                §§push(this.§ G§.y);
                                                if(_loc26_)
                                                {
                                                   §§push(§§pop() - _loc5_.m_sweep.localCenter.y);
                                                   if(!_loc27_)
                                                   {
                                                      §§push(Number(§§pop()));
                                                   }
                                                }
                                                var _loc17_:* = §§pop();
                                                if(!_loc27_)
                                                {
                                                   §§push(_loc2_.col1);
                                                   loop15:
                                                   while(true)
                                                   {
                                                      §§push(§§pop().x);
                                                      addr408:
                                                      while(true)
                                                      {
                                                         §§push(_loc16_);
                                                         if(!(_loc27_ && this))
                                                         {
                                                            addr445:
                                                            §§push(§§pop() * §§pop());
                                                            if(_loc26_ || _loc2_)
                                                            {
                                                               §§push(_loc2_.col2);
                                                               while(true)
                                                               {
                                                                  §§push(§§pop().x);
                                                                  if(!_loc26_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  §§push(_loc17_);
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     addr431:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() + §§pop());
                                                                        if(_loc27_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        §§push(Number(§§pop()));
                                                                        while(true)
                                                                        {
                                                                           _loc3_ = §§pop();
                                                                           addr436:
                                                                           while(true)
                                                                           {
                                                                              continue loop15;
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               addr441:
                                                               §§push(§§pop() - §§pop());
                                                               if(_loc26_)
                                                               {
                                                                  addr444:
                                                                  §§push(Number(§§pop()));
                                                               }
                                                               addr426:
                                                            }
                                                            var _loc19_:* = §§pop();
                                                            §§push(this.§,@§);
                                                            if(!_loc27_)
                                                            {
                                                               §§push(-§§pop());
                                                               if(_loc26_ || _loc3_)
                                                               {
                                                                  §§push(§§pop() * _loc19_);
                                                                  if(!(_loc27_ && param1))
                                                                  {
                                                                     addr467:
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                                  var _loc20_:* = §§pop();
                                                                  §§push(this.§ Y§);
                                                                  if(_loc26_)
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                                  var _loc21_:* = §§pop();
                                                                  if(!_loc27_)
                                                                  {
                                                                     addr641:
                                                                     §§push(param1.§`M§);
                                                                     §§push(this.§;j§);
                                                                     if(!_loc27_)
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                        if(_loc26_ || param1)
                                                                        {
                                                                           addr654:
                                                                           _loc18_ = Number(§§pop());
                                                                           addr655:
                                                                           §§push(this);
                                                                           §§push(b2Math);
                                                                           §§push(this.§ Y§);
                                                                           if(!(_loc27_ && param1))
                                                                           {
                                                                              §§push(_loc20_);
                                                                              if(!_loc27_)
                                                                              {
                                                                                 addr631:
                                                                                 §§push(§§pop() + §§pop());
                                                                                 §§push(_loc18_);
                                                                                 if(_loc26_)
                                                                                 {
                                                                                    addr634:
                                                                                    §§push(-§§pop());
                                                                                 }
                                                                                 §§pop().§ Y§ = §§pop().§3X§(§§pop(),§§pop(),_loc18_);
                                                                                 addr638:
                                                                                 §§push(this.§ Y§);
                                                                                 if(_loc26_)
                                                                                 {
                                                                                    if(_loc26_ || _loc3_)
                                                                                    {
                                                                                       addr608:
                                                                                       §§push(Number(§§pop() - _loc21_));
                                                                                       if(_loc26_)
                                                                                       {
                                                                                          addr612:
                                                                                          _loc20_ = §§pop();
                                                                                          addr523:
                                                                                          addr613:
                                                                                          §§push(_loc7_);
                                                                                          if(_loc26_ || this)
                                                                                          {
                                                                                             §§push(_loc12_);
                                                                                             if(_loc26_ || _loc2_)
                                                                                             {
                                                                                                §§push(_loc20_);
                                                                                                if(_loc26_ || param1)
                                                                                                {
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   if(_loc26_ || param1)
                                                                                                   {
                                                                                                      addr556:
                                                                                                      §§push(§§pop() - §§pop());
                                                                                                      if(!(_loc27_ && _loc2_))
                                                                                                      {
                                                                                                         if(_loc26_)
                                                                                                         {
                                                                                                            addr567:
                                                                                                            §§push(Number(§§pop()));
                                                                                                            if(!(_loc27_ && param1))
                                                                                                            {
                                                                                                               _loc7_ = §§pop();
                                                                                                               addr575:
                                                                                                               if(!_loc27_)
                                                                                                               {
                                                                                                                  if(!(_loc27_ && param1))
                                                                                                                  {
                                                                                                                     §§push(_loc9_);
                                                                                                                     if(!_loc27_)
                                                                                                                     {
                                                                                                                        §§push(_loc13_);
                                                                                                                        if(_loc26_ || param1)
                                                                                                                        {
                                                                                                                           §§push(_loc20_);
                                                                                                                           if(_loc26_)
                                                                                                                           {
                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                              if(!(_loc27_ && param1))
                                                                                                                              {
                                                                                                                                 if(!_loc27_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                    if(!_loc27_)
                                                                                                                                    {
                                                                                                                                       if(!_loc27_)
                                                                                                                                       {
                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                          if(!_loc27_)
                                                                                                                                          {
                                                                                                                                             _loc9_ = §§pop();
                                                                                                                                             if(!_loc27_)
                                                                                                                                             {
                                                                                                                                                if(_loc26_ || _loc2_)
                                                                                                                                                {
                                                                                                                                                   if(false)
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr523);
                                                                                                                                                   }
                                                                                                                                                   §§push(_loc8_.x);
                                                                                                                                                   if(!_loc27_)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc9_);
                                                                                                                                                      if(_loc26_)
                                                                                                                                                      {
                                                                                                                                                         addr663:
                                                                                                                                                         §§push(_loc17_);
                                                                                                                                                         if(_loc26_)
                                                                                                                                                         {
                                                                                                                                                            addr666:
                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                            if(_loc26_)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() - §§pop());
                                                                                                                                                               if(!_loc27_)
                                                                                                                                                               {
                                                                                                                                                                  addr672:
                                                                                                                                                                  §§push(_loc6_.x);
                                                                                                                                                                  if(!(_loc27_ && _loc2_))
                                                                                                                                                                  {
                                                                                                                                                                     addr698:
                                                                                                                                                                     §§push(§§pop() - §§pop());
                                                                                                                                                                     if(!_loc27_)
                                                                                                                                                                     {
                                                                                                                                                                        addr684:
                                                                                                                                                                        §§push(_loc7_);
                                                                                                                                                                        if(_loc26_ || this)
                                                                                                                                                                        {
                                                                                                                                                                           addr692:
                                                                                                                                                                           §§push(§§pop() * _loc15_);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     var _loc22_:* = §§pop();
                                                                                                                                                                     §§push(_loc8_.y);
                                                                                                                                                                     if(_loc26_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc9_);
                                                                                                                                                                        if(!(_loc27_ && _loc2_))
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc16_);
                                                                                                                                                                           if(!_loc27_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                              if(_loc26_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                                                                 if(_loc26_ || _loc3_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc6_.y);
                                                                                                                                                                                    if(_loc26_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr729:
                                                                                                                                                                                       §§push(§§pop() - §§pop());
                                                                                                                                                                                       if(!_loc27_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc7_);
                                                                                                                                                                                          if(_loc26_ || _loc2_)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr742:
                                                                                                                                                                                             §§push(§§pop() - §§pop() * _loc14_);
                                                                                                                                                                                             if(_loc26_ || param1)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr750:
                                                                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr742);
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr742);
                                                                                                                                                                                 }
                                                                                                                                                                                 var _loc23_:* = §§pop();
                                                                                                                                                                                 §§push(b2Math);
                                                                                                                                                                                 §§push(this.§,,§);
                                                                                                                                                                                 §§push(§§findproperty(b2Vec2));
                                                                                                                                                                                 §§push(_loc22_);
                                                                                                                                                                                 if(!(_loc27_ && _loc3_))
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(-§§pop());
                                                                                                                                                                                 }
                                                                                                                                                                                 §§push(_loc23_);
                                                                                                                                                                                 if(_loc26_ || _loc3_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(-§§pop());
                                                                                                                                                                                 }
                                                                                                                                                                                 var _loc24_:b2Vec2 = §§pop().§]!§(§§pop(),new §§pop().b2Vec2(§§pop(),§§pop()));
                                                                                                                                                                                 var _loc25_:b2Vec2 = this.§4!H§.Copy();
                                                                                                                                                                                 if(_loc26_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr890:
                                                                                                                                                                                    this.§4!H§.§!V§(_loc24_);
                                                                                                                                                                                    addr886:
                                                                                                                                                                                    §§push(param1.§`M§);
                                                                                                                                                                                    if(_loc26_ || _loc2_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr882:
                                                                                                                                                                                       §§push(§§pop() * this.§,&§);
                                                                                                                                                                                       if(!_loc27_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    _loc18_ = §§pop();
                                                                                                                                                                                    addr832:
                                                                                                                                                                                    addr893:
                                                                                                                                                                                    addr887:
                                                                                                                                                                                    §§push(this.§4!H§.§3!M§());
                                                                                                                                                                                    if(!_loc27_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!_loc27_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc18_);
                                                                                                                                                                                          if(_loc26_ || _loc2_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc26_ || param1)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr857:
                                                                                                                                                                                                if(§§pop() > §§pop() * _loc18_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr858:
                                                                                                                                                                                                   if(!(_loc27_ && _loc3_))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr868:
                                                                                                                                                                                                      this.§4!H§.Normalize();
                                                                                                                                                                                                      addr869:
                                                                                                                                                                                                      §§push(this.§4!H§);
                                                                                                                                                                                                      if(_loc26_ || param1)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc26_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc26_ || _loc2_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§pop().§2p§(_loc18_);
                                                                                                                                                                                                               if(_loc26_ || this)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!(_loc27_ && _loc3_))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc26_ || this)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr830:
                                                                                                                                                                                                                        if(false)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§goto(addr832);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr894:
                                                                                                                                                                                                                        _loc24_ = b2Math.§2!C§(this.§4!H§,_loc25_);
                                                                                                                                                                                                                        if(_loc26_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(_loc6_);
                                                                                                                                                                                                                           §§push(_loc6_.x);
                                                                                                                                                                                                                           if(!(_loc27_ && this))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(_loc10_);
                                                                                                                                                                                                                              if(_loc26_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(§§pop() * _loc24_.x);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§push(§§pop() - §§pop());
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§pop().x = §§pop();
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§push(_loc6_);
                                                                                                                                                                                                                        §§push(_loc6_.y);
                                                                                                                                                                                                                        if(!(_loc27_ && _loc3_))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(_loc10_);
                                                                                                                                                                                                                           if(_loc26_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(§§pop() * _loc24_.y);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§push(§§pop() - §§pop());
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§pop().y = §§pop();
                                                                                                                                                                                                                        addr1188:
                                                                                                                                                                                                                        addr1169:
                                                                                                                                                                                                                        §§push(_loc7_);
                                                                                                                                                                                                                        if(_loc26_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr1138:
                                                                                                                                                                                                                           addr1129:
                                                                                                                                                                                                                           §§push(_loc12_);
                                                                                                                                                                                                                           if(!(_loc27_ && param1))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr1121:
                                                                                                                                                                                                                              §§push(_loc14_ * _loc24_.y);
                                                                                                                                                                                                                              §§push(_loc15_);
                                                                                                                                                                                                                              if(_loc26_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr1126:
                                                                                                                                                                                                                                 §§push(§§pop() * _loc24_.x);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§push(§§pop() * (§§pop() - §§pop()));
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§push(§§pop() - §§pop());
                                                                                                                                                                                                                           if(_loc26_ || this)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr1137:
                                                                                                                                                                                                                              §§push(Number(§§pop()));
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           _loc7_ = §§pop();
                                                                                                                                                                                                                           §§push(_loc8_);
                                                                                                                                                                                                                           §§push(_loc8_.x);
                                                                                                                                                                                                                           if(!(_loc27_ && _loc2_))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(_loc11_);
                                                                                                                                                                                                                              if(!_loc27_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(§§pop() * _loc24_.x);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§pop().x = §§pop();
                                                                                                                                                                                                                           addr1139:
                                                                                                                                                                                                                           if(!(_loc27_ && param1))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(_loc8_);
                                                                                                                                                                                                                              §§push(_loc8_.y);
                                                                                                                                                                                                                              if(!_loc27_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(_loc11_);
                                                                                                                                                                                                                                 if(_loc26_ || this)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(§§pop() * _loc24_.y);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§pop().y = §§pop();
                                                                                                                                                                                                                              addr1075:
                                                                                                                                                                                                                              if(_loc26_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(_loc9_);
                                                                                                                                                                                                                                 if(_loc26_ || _loc2_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(_loc13_);
                                                                                                                                                                                                                                    if(_loc26_ || _loc2_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(_loc16_);
                                                                                                                                                                                                                                       if(_loc26_ || _loc3_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(!(_loc27_ && param1))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(_loc26_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(_loc24_.y);
                                                                                                                                                                                                                                                if(_loc26_ || this)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                   if(!(_loc27_ && param1))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(_loc17_);
                                                                                                                                                                                                                                                      if(!(_loc27_ && param1))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(_loc24_.x);
                                                                                                                                                                                                                                                         if(_loc26_ || _loc3_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            addr1018:
                                                                                                                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                            if(_loc26_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(!_loc27_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  addr1023:
                                                                                                                                                                                                                                                                  §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                  if(_loc26_ || this)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     addr1031:
                                                                                                                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                     if(_loc26_ || _loc3_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                        if(!(_loc27_ && _loc2_))
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           addr1046:
                                                                                                                                                                                                                                                                           if(_loc26_ || _loc2_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              addr1054:
                                                                                                                                                                                                                                                                              _loc9_ = Number(§§pop());
                                                                                                                                                                                                                                                                              _loc4_.m_angularVelocity = _loc7_;
                                                                                                                                                                                                                                                                              addr941:
                                                                                                                                                                                                                                                                              if(!(_loc27_ && _loc2_))
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 _loc5_.m_angularVelocity = _loc9_;
                                                                                                                                                                                                                                                                                 if(_loc26_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(!(_loc27_ && param1))
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(!(_loc27_ && _loc2_))
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(!(_loc26_ || _loc2_))
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§goto(addr1188);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          return;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr1139);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr1075);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr941);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              addr1055:
                                                                                                                                                                                                                                                                              §§goto(addr1055);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr1138);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr1054);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr1129);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr1121);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr1126);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr1023);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr1018);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr1121);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1023);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1031);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr1046);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr1138);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr1169);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1137);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr893);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr858);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr869);
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr890);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr867:
                                                                                                                                                                                                      §§goto(addr867);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr887);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr894);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr882);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr857);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr886);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr868);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr830);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr742);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr729);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr750);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr692);
                                                                                                                                                               }
                                                                                                                                                               addr697:
                                                                                                                                                               §§goto(addr698);
                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                            }
                                                                                                                                                            §§push(§§pop() + §§pop());
                                                                                                                                                            if(!_loc27_)
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr697);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr698);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr692);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr698);
                                                                                                                                                }
                                                                                                                                                §§goto(addr613);
                                                                                                                                             }
                                                                                                                                             §§goto(addr575);
                                                                                                                                          }
                                                                                                                                          §§goto(addr672);
                                                                                                                                       }
                                                                                                                                       §§goto(addr567);
                                                                                                                                    }
                                                                                                                                    §§goto(addr684);
                                                                                                                                 }
                                                                                                                                 §§goto(addr608);
                                                                                                                              }
                                                                                                                              §§goto(addr663);
                                                                                                                           }
                                                                                                                           §§goto(addr666);
                                                                                                                        }
                                                                                                                        §§goto(addr692);
                                                                                                                     }
                                                                                                                     §§goto(addr672);
                                                                                                                  }
                                                                                                                  §§goto(addr655);
                                                                                                               }
                                                                                                               §§goto(addr638);
                                                                                                            }
                                                                                                            §§goto(addr641);
                                                                                                         }
                                                                                                         §§goto(addr608);
                                                                                                      }
                                                                                                      §§goto(addr698);
                                                                                                   }
                                                                                                   §§goto(addr692);
                                                                                                }
                                                                                                §§goto(addr666);
                                                                                             }
                                                                                             §§goto(addr556);
                                                                                          }
                                                                                          §§goto(addr567);
                                                                                       }
                                                                                       §§goto(addr697);
                                                                                    }
                                                                                    §§goto(addr654);
                                                                                 }
                                                                                 §§goto(addr612);
                                                                              }
                                                                              §§goto(addr634);
                                                                           }
                                                                           §§goto(addr631);
                                                                        }
                                                                        §§goto(addr672);
                                                                     }
                                                                     §§goto(addr663);
                                                                  }
                                                                  §§goto(addr631);
                                                               }
                                                            }
                                                            §§goto(addr467);
                                                         }
                                                         §§goto(addr441);
                                                      }
                                                   }
                                                }
                                                §§goto(addr436);
                                             }
                                             §§goto(addr281);
                                          }
                                          while(true)
                                          {
                                             addr176:
                                             while(true)
                                             {
                                                §§push(_loc2_.col1);
                                                if(_loc27_)
                                                {
                                                   break;
                                                }
                                                §§goto(addr182);
                                                §§push(§§pop().y);
                                             }
                                             continue loop0;
                                          }
                                       }
                                       continue loop1;
                                    }
                                 }
                                 while(true)
                                 {
                                    §§goto(addr256);
                                 }
                              }
                           }
                        }
                        if(_loc27_ && param1)
                        {
                           continue;
                        }
                        _loc14_ = §§pop();
                        if(_loc26_)
                        {
                           if(false)
                           {
                              §§goto(addr176);
                           }
                           §§goto(addr259);
                        }
                        §§goto(addr233);
                     }
                  }
                  §§goto(addr255);
               }
            }
         }
         §§goto(addr235);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return true;
      }
   }
}
