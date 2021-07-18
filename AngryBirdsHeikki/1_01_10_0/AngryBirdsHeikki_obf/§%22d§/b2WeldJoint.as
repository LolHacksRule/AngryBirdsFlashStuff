package §"d§
{
   import §3!R§.b2Body;
   import §3!R§.b2TimeStep;
   import §6A§.b2Mat22;
   import §6A§.b2Mat33;
   import §6A§.b2Math;
   import §6A§.b2Vec2;
   import §6A§.b2Vec3;
   import §^P§.b2Settings;
   import §^P§.b2internal;
   
   use namespace b2internal;
   
   public class b2WeldJoint extends b2Joint
   {
       
      
      private var §+!&§:b2Vec2;
      
      private var §^!'§:b2Vec2;
      
      private var §=C§:Number;
      
      private var §12§:b2Vec3;
      
      private var §`!6§:b2Mat33;
      
      public function b2WeldJoint(param1:b2WeldJointDef)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§+!&§ = new b2Vec2();
            loop0:
            while(true)
            {
               this.§^!'§ = new b2Vec2();
               loop1:
               while(true)
               {
                  this.§12§ = new b2Vec3();
                  while(!_loc3_)
                  {
                     this.§`!6§ = new b2Mat33();
                     loop3:
                     while(_loc2_)
                     {
                        super(param1);
                        while(true)
                        {
                           this.§+!&§.SetV(param1.§@b§);
                           continue loop1;
                        }
                        addr44:
                        if(_loc3_ && _loc3_)
                        {
                           continue;
                        }
                        this.§`!6§ = new b2Mat33();
                        addr51:
                        if(_loc2_)
                        {
                           addr30:
                           if(_loc3_ && _loc2_)
                           {
                              loop7:
                              while(true)
                              {
                                 this.§12§.§^!,§();
                                 addr42:
                                 while(true)
                                 {
                                    if(!_loc2_)
                                    {
                                       while(!(_loc3_ && param1))
                                       {
                                          if(_loc2_)
                                          {
                                             this.§=C§ = param1.§;w§;
                                             continue loop7;
                                          }
                                          §§goto(addr102);
                                       }
                                       continue loop1;
                                       addr74:
                                    }
                                    §§goto(addr44);
                                    §§goto(addr51);
                                 }
                                 continue loop3;
                              }
                           }
                           return;
                           addr37:
                        }
                        §§goto(addr42);
                     }
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr37);
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::#A.GetWorldPoint(this.§+!&§);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::2!`.GetWorldPoint(this.§^!'§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(_loc2_ || param1)
         {
            §§push(this.§12§.x);
            if(_loc2_)
            {
               addr41:
               §§push(§§pop() * §§pop());
               §§push(param1);
               if(!(_loc3_ && _loc3_))
               {
                  §§push(§§pop() * this.§12§.y);
               }
            }
            return new §§pop().b2Vec2(§§pop(),§§pop());
         }
         §§goto(addr41);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(param1);
         if(_loc3_)
         {
            return §§pop() * this.§12§.z;
         }
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Deobfuscation is activated but decompilation still failed. If the file is NOT obfuscated, disable "Automatic deobfuscation" for better results.
          * Error type: ExecutionException (java.lang.StackOverflowError)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc22_:Boolean = true;
         var _loc23_:Boolean = false;
         var _loc2_:b2Mat22 = null;
         var _loc3_:* = NaN;
         var _loc4_:b2Body = b2internal::#A;
         var _loc5_:b2Body = b2internal::2!`;
         var _loc6_:b2Vec2 = _loc4_.§@S§;
         §§push(_loc4_.m_angularVelocity);
         if(!(_loc23_ && _loc3_))
         {
            §§push(Number(§§pop()));
         }
         var _loc7_:* = §§pop();
         var _loc8_:b2Vec2 = _loc5_.§@S§;
         §§push(_loc5_.m_angularVelocity);
         if(!_loc23_)
         {
            §§push(Number(§§pop()));
         }
         var _loc9_:* = §§pop();
         §§push(_loc4_.§",§);
         if(!_loc23_)
         {
            §§push(Number(§§pop()));
         }
         var _loc10_:* = §§pop();
         §§push(_loc5_.§",§);
         if(_loc22_ || param1)
         {
            §§push(Number(§§pop()));
         }
         var _loc11_:* = §§pop();
         §§push(_loc4_.§-2§);
         if(_loc22_ || param1)
         {
            §§push(Number(§§pop()));
         }
         var _loc12_:* = §§pop();
         §§push(_loc5_.§-2§);
         if(!_loc23_)
         {
            §§push(Number(§§pop()));
         }
         var _loc13_:* = §§pop();
         _loc2_ = _loc4_.m_xf.R;
         §§push(this.§+!&§.x);
         if(!(_loc23_ && _loc3_))
         {
            §§push(§§pop() - _loc4_.m_sweep.localCenter.x);
            if(_loc22_)
            {
               addr108:
               §§push(Number(§§pop()));
            }
            var _loc14_:* = §§pop();
            §§push(this.§+!&§.y);
            if(_loc22_)
            {
               §§push(§§pop() - _loc4_.m_sweep.localCenter.y);
               if(!(_loc23_ && param1))
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc15_:* = §§pop();
            if(!(_loc23_ && param1))
            {
               §§push(_loc2_.col1);
               loop0:
               while(true)
               {
                  §§push(§§pop().x);
                  if(_loc22_)
                  {
                     §§push(_loc14_);
                     while(true)
                     {
                        §§push(§§pop() * §§pop());
                        addr203:
                        if(!(_loc22_ || _loc3_))
                        {
                           continue;
                        }
                        §§push(_loc15_);
                        if(_loc22_)
                        {
                           §§push(§§pop() * §§pop());
                           loop13:
                           while(true)
                           {
                              §§push(§§pop() + §§pop());
                              loop14:
                              while(true)
                              {
                                 if(!_loc23_)
                                 {
                                    §§push(Number(§§pop()));
                                    loop15:
                                    for(; !_loc23_; if(_loc22_ || _loc2_)
                                    {
                                       continue loop14;
                                    })
                                    {
                                       _loc15_ = §§pop();
                                       while(!(_loc23_ && this))
                                       {
                                          §§push(_loc3_);
                                          if(_loc22_ || _loc3_)
                                          {
                                             continue loop15;
                                          }
                                          addr165:
                                          _loc14_ = §§pop();
                                          if(_loc23_)
                                          {
                                             continue;
                                          }
                                          if(false)
                                          {
                                             while(true)
                                             {
                                                §§push(_loc2_.col1);
                                                if(!_loc22_)
                                                {
                                                   continue loop0;
                                                }
                                                §§push(§§pop().y);
                                                while(_loc22_ || _loc2_)
                                                {
                                                   §§push(_loc14_);
                                                   if(!_loc22_)
                                                   {
                                                      continue loop13;
                                                   }
                                                   if(_loc22_)
                                                   {
                                                      if(!_loc23_)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         while(true)
                                                         {
                                                            §§push(_loc2_.col2);
                                                            if(!(_loc22_ || _loc2_))
                                                            {
                                                               break;
                                                            }
                                                            §§push(§§pop().y);
                                                            if(!_loc22_)
                                                            {
                                                               continue loop13;
                                                            }
                                                            §§goto(addr203);
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(§§pop().x);
                                                         }
                                                         addr238:
                                                         addr191:
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(_loc15_);
                                                         addr240:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                         }
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                      addr242:
                                                      while(true)
                                                      {
                                                         §§push(Number(§§pop()));
                                                         break loop15;
                                                      }
                                                   }
                                                }
                                                while(true)
                                                {
                                                   §§goto(addr238);
                                                }
                                             }
                                             addr170:
                                          }
                                          else
                                          {
                                             _loc2_ = _loc5_.m_xf.R;
                                             §§push(this.§^!'§.x);
                                             if(!(_loc23_ && this))
                                             {
                                                §§push(§§pop() - _loc5_.m_sweep.localCenter.x);
                                                if(_loc22_ || this)
                                                {
                                                   addr272:
                                                   §§push(Number(§§pop()));
                                                }
                                                var _loc16_:* = §§pop();
                                                §§push(this.§^!'§.y);
                                                if(_loc22_ || param1)
                                                {
                                                   §§push(§§pop() - _loc5_.m_sweep.localCenter.y);
                                                   if(!(_loc23_ && this))
                                                   {
                                                      §§push(Number(§§pop()));
                                                   }
                                                }
                                                var _loc17_:* = §§pop();
                                                if(!_loc23_)
                                                {
                                                   addr396:
                                                   §§push(_loc2_.col1.x);
                                                   if(_loc22_ || _loc3_)
                                                   {
                                                      §§push(_loc16_);
                                                      if(_loc22_ || param1)
                                                      {
                                                         addr415:
                                                         §§push(§§pop() * §§pop());
                                                         §§push(_loc2_.col2.x);
                                                         if(_loc22_)
                                                         {
                                                            §§push(_loc17_);
                                                            if(!_loc23_)
                                                            {
                                                               addr422:
                                                               §§push(§§pop() + §§pop() * §§pop());
                                                               if(!_loc23_)
                                                               {
                                                                  §§push(Number(§§pop()));
                                                                  if(!(_loc23_ && param1))
                                                                  {
                                                                     _loc3_ = §§pop();
                                                                     addr313:
                                                                     addr434:
                                                                     §§push(_loc2_.col1);
                                                                     if(!_loc23_)
                                                                     {
                                                                        §§push(§§pop().y);
                                                                        if(_loc22_ || _loc3_)
                                                                        {
                                                                           §§push(_loc16_);
                                                                           if(!(_loc23_ && _loc2_))
                                                                           {
                                                                              §§push(§§pop() * §§pop());
                                                                              if(!(_loc23_ && _loc2_))
                                                                              {
                                                                                 if(!(_loc23_ && _loc3_))
                                                                                 {
                                                                                    §§push(_loc2_.col2);
                                                                                    if(!(_loc23_ && param1))
                                                                                    {
                                                                                       §§push(§§pop().y);
                                                                                       if(_loc22_)
                                                                                       {
                                                                                          §§push(_loc17_);
                                                                                          if(!_loc23_)
                                                                                          {
                                                                                             §§push(§§pop() * §§pop());
                                                                                             if(!(_loc23_ && this))
                                                                                             {
                                                                                                if(_loc22_ || _loc2_)
                                                                                                {
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                   if(_loc22_)
                                                                                                   {
                                                                                                      addr382:
                                                                                                      §§push(Number(§§pop()));
                                                                                                      if(!(_loc23_ && this))
                                                                                                      {
                                                                                                         _loc17_ = §§pop();
                                                                                                         addr391:
                                                                                                         if(_loc22_)
                                                                                                         {
                                                                                                            §§push(_loc3_);
                                                                                                            if(_loc22_)
                                                                                                            {
                                                                                                               §§push(Number(§§pop()));
                                                                                                               if(_loc22_)
                                                                                                               {
                                                                                                                  _loc16_ = §§pop();
                                                                                                                  if(_loc22_)
                                                                                                                  {
                                                                                                                     if(false)
                                                                                                                     {
                                                                                                                        §§goto(addr313);
                                                                                                                     }
                                                                                                                     §§push(_loc8_.x);
                                                                                                                     if(_loc22_)
                                                                                                                     {
                                                                                                                        addr439:
                                                                                                                        §§push(_loc9_);
                                                                                                                        if(_loc22_ || this)
                                                                                                                        {
                                                                                                                           §§push(_loc17_);
                                                                                                                           if(!(_loc23_ && _loc2_))
                                                                                                                           {
                                                                                                                              addr465:
                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                              if(!(_loc23_ && _loc2_))
                                                                                                                              {
                                                                                                                                 §§push(§§pop() - §§pop());
                                                                                                                                 if(!(_loc23_ && _loc3_))
                                                                                                                                 {
                                                                                                                                    addr481:
                                                                                                                                    §§push(_loc6_.x);
                                                                                                                                    if(!(_loc23_ && _loc3_))
                                                                                                                                    {
                                                                                                                                       addr490:
                                                                                                                                       §§push(§§pop() - §§pop());
                                                                                                                                       if(_loc22_)
                                                                                                                                       {
                                                                                                                                          §§push(_loc7_);
                                                                                                                                          if(_loc23_ && _loc2_)
                                                                                                                                          {
                                                                                                                                          }
                                                                                                                                          addr503:
                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                          if(!_loc23_)
                                                                                                                                          {
                                                                                                                                             addr507:
                                                                                                                                             var _loc18_:Number = §§pop();
                                                                                                                                             §§push(_loc8_.y);
                                                                                                                                             if(!(_loc23_ && _loc3_))
                                                                                                                                             {
                                                                                                                                                §§push(_loc9_);
                                                                                                                                                if(_loc22_)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc16_);
                                                                                                                                                   if(_loc22_ || this)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                      if(_loc22_ || _loc2_)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                         if(!_loc23_)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc6_.y);
                                                                                                                                                            if(!_loc23_)
                                                                                                                                                            {
                                                                                                                                                               addr543:
                                                                                                                                                               §§push(§§pop() - §§pop());
                                                                                                                                                               if(!_loc23_)
                                                                                                                                                               {
                                                                                                                                                                  addr546:
                                                                                                                                                                  §§push(_loc7_);
                                                                                                                                                                  if(_loc23_)
                                                                                                                                                                  {
                                                                                                                                                                  }
                                                                                                                                                                  addr551:
                                                                                                                                                                  §§push(§§pop() - §§pop());
                                                                                                                                                                  if(_loc22_)
                                                                                                                                                                  {
                                                                                                                                                                     addr554:
                                                                                                                                                                     §§push(Number(§§pop()));
                                                                                                                                                                  }
                                                                                                                                                                  var _loc19_:* = §§pop();
                                                                                                                                                                  §§push(_loc9_);
                                                                                                                                                                  if(_loc22_ || _loc3_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() - _loc7_);
                                                                                                                                                                     if(_loc22_ || this)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(Number(§§pop()));
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  var _loc20_:* = §§pop();
                                                                                                                                                                  var _loc21_:b2Vec3 = new b2Vec3();
                                                                                                                                                                  if(!_loc23_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(this.§`!6§);
                                                                                                                                                                     §§push(_loc21_);
                                                                                                                                                                     §§push(_loc18_);
                                                                                                                                                                     if(!_loc23_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(-§§pop());
                                                                                                                                                                     }
                                                                                                                                                                     §§push(_loc19_);
                                                                                                                                                                     if(_loc22_ || _loc2_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(-§§pop());
                                                                                                                                                                     }
                                                                                                                                                                     §§push(_loc20_);
                                                                                                                                                                     if(!_loc23_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(-§§pop());
                                                                                                                                                                     }
                                                                                                                                                                     §§pop().Solve33(§§pop(),§§pop(),§§pop(),§§pop());
                                                                                                                                                                     this.§12§.§ v§(_loc21_);
                                                                                                                                                                     §§push(_loc6_);
                                                                                                                                                                     §§push(_loc6_.x);
                                                                                                                                                                     if(_loc22_ || _loc3_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc10_);
                                                                                                                                                                        if(!(_loc23_ && _loc3_))
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() * _loc21_.x);
                                                                                                                                                                        }
                                                                                                                                                                        §§push(§§pop() - §§pop());
                                                                                                                                                                     }
                                                                                                                                                                     §§pop().x = §§pop();
                                                                                                                                                                     §§push(_loc6_);
                                                                                                                                                                     §§push(_loc6_.y);
                                                                                                                                                                     if(_loc22_ || _loc2_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc10_);
                                                                                                                                                                        if(_loc22_ || param1)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() * _loc21_.y);
                                                                                                                                                                        }
                                                                                                                                                                        §§push(§§pop() - §§pop());
                                                                                                                                                                     }
                                                                                                                                                                     §§pop().y = §§pop();
                                                                                                                                                                     addr874:
                                                                                                                                                                     addr912:
                                                                                                                                                                     if(!(_loc23_ && param1))
                                                                                                                                                                     {
                                                                                                                                                                        addr816:
                                                                                                                                                                        _loc7_ -= _loc12_ * (_loc14_ * _loc21_.y - _loc15_ * _loc21_.x + _loc21_.z);
                                                                                                                                                                        §§push(_loc8_);
                                                                                                                                                                        §§push(_loc8_.x);
                                                                                                                                                                        if(_loc22_ || param1)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc11_);
                                                                                                                                                                           if(_loc22_ || param1)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() * _loc21_.x);
                                                                                                                                                                           }
                                                                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                                                                        }
                                                                                                                                                                        §§pop().x = §§pop();
                                                                                                                                                                        §§push(_loc8_);
                                                                                                                                                                        §§push(_loc8_.y);
                                                                                                                                                                        if(!_loc23_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc11_);
                                                                                                                                                                           if(_loc22_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() * _loc21_.y);
                                                                                                                                                                           }
                                                                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                                                                        }
                                                                                                                                                                        §§pop().y = §§pop();
                                                                                                                                                                        addr756:
                                                                                                                                                                        addr815:
                                                                                                                                                                        addr801:
                                                                                                                                                                        addr804:
                                                                                                                                                                        addr806:
                                                                                                                                                                        addr802:
                                                                                                                                                                        addr808:
                                                                                                                                                                        addr812:
                                                                                                                                                                        addr805:
                                                                                                                                                                        addr809:
                                                                                                                                                                        addr810:
                                                                                                                                                                        addr813:
                                                                                                                                                                        addr814:
                                                                                                                                                                        addr800:
                                                                                                                                                                        addr817:
                                                                                                                                                                        if(!_loc23_)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc22_ || this)
                                                                                                                                                                           {
                                                                                                                                                                              if(!(_loc23_ && param1))
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc9_);
                                                                                                                                                                                 if(!_loc23_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!_loc23_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc13_);
                                                                                                                                                                                       if(!_loc23_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!(_loc23_ && this))
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc16_);
                                                                                                                                                                                             if(!_loc23_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!_loc23_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!(_loc23_ && _loc2_))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(_loc21_.y);
                                                                                                                                                                                                      if(_loc22_ || _loc2_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc22_ || _loc2_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                                                                            if(!(_loc23_ && param1))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc22_ || param1)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(_loc17_);
                                                                                                                                                                                                                  if(!_loc23_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr681:
                                                                                                                                                                                                                     if(_loc22_ || param1)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(_loc21_.x);
                                                                                                                                                                                                                        if(!(_loc23_ && _loc2_))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                                                                           if(!_loc23_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(§§pop() - §§pop());
                                                                                                                                                                                                                              if(_loc22_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr703:
                                                                                                                                                                                                                                 if(!_loc23_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr707:
                                                                                                                                                                                                                                    §§push(_loc21_.z);
                                                                                                                                                                                                                                    if(_loc22_ || param1)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(_loc22_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr717:
                                                                                                                                                                                                                                          §§push(§§pop() * (§§pop() + §§pop()));
                                                                                                                                                                                                                                          if(_loc22_ || _loc2_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                             if(!_loc23_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(!_loc23_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr731:
                                                                                                                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                                                                                                                   if(!(_loc23_ && this))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      _loc9_ = §§pop();
                                                                                                                                                                                                                                                      addr739:
                                                                                                                                                                                                                                                      if(_loc22_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         _loc4_.m_angularVelocity = _loc7_;
                                                                                                                                                                                                                                                         addr609:
                                                                                                                                                                                                                                                         if(_loc22_ || param1)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(!_loc23_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               _loc5_.m_angularVelocity = _loc9_;
                                                                                                                                                                                                                                                               if(_loc22_ || _loc2_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(!(_loc22_ || _loc3_))
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§goto(addr874);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  return;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr609);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr874);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr739);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr756);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr816);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr815);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr731);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr801);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr804);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr806);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr802);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr717);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr707);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr808);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr812);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr707);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr805);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr703);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr809);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr681);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr810);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr813);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr717);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr814);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr717);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr800);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr731);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr912);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr817);
                                                                                                                                                                        }
                                                                                                                                                                        addr797:
                                                                                                                                                                        §§goto(addr797);
                                                                                                                                                                     }
                                                                                                                                                                     addr880:
                                                                                                                                                                     §§goto(addr880);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr816);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr554);
                                                                                                                                                            }
                                                                                                                                                            addr550:
                                                                                                                                                            §§goto(addr551);
                                                                                                                                                            §§push(§§pop() * _loc14_);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr546);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr550);
                                                                                                                                                }
                                                                                                                                                §§goto(addr543);
                                                                                                                                             }
                                                                                                                                             §§goto(addr554);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr507);
                                                                                                                                    }
                                                                                                                                    §§goto(addr503);
                                                                                                                                 }
                                                                                                                                 §§goto(addr507);
                                                                                                                              }
                                                                                                                              addr502:
                                                                                                                              §§goto(addr503);
                                                                                                                              §§push(§§pop() * _loc15_);
                                                                                                                           }
                                                                                                                           §§goto(addr502);
                                                                                                                        }
                                                                                                                        §§goto(addr490);
                                                                                                                     }
                                                                                                                     §§goto(addr507);
                                                                                                                  }
                                                                                                                  §§goto(addr391);
                                                                                                               }
                                                                                                               §§goto(addr507);
                                                                                                            }
                                                                                                            §§goto(addr439);
                                                                                                            addr393:
                                                                                                         }
                                                                                                         §§goto(addr434);
                                                                                                      }
                                                                                                      §§goto(addr507);
                                                                                                   }
                                                                                                   §§goto(addr439);
                                                                                                }
                                                                                                §§goto(addr422);
                                                                                             }
                                                                                             §§goto(addr490);
                                                                                          }
                                                                                          §§goto(addr502);
                                                                                       }
                                                                                       §§goto(addr503);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr415);
                                                                              }
                                                                              §§goto(addr382);
                                                                           }
                                                                           §§goto(addr490);
                                                                        }
                                                                        §§goto(addr481);
                                                                     }
                                                                     §§goto(addr396);
                                                                  }
                                                                  §§goto(addr439);
                                                               }
                                                               §§goto(addr507);
                                                            }
                                                            §§goto(addr465);
                                                         }
                                                      }
                                                      §§goto(addr503);
                                                   }
                                                   §§goto(addr415);
                                                }
                                                §§goto(addr393);
                                             }
                                             §§goto(addr272);
                                          }
                                       }
                                       while(true)
                                       {
                                          §§goto(addr170);
                                       }
                                    }
                                    while(true)
                                    {
                                       _loc3_ = §§pop();
                                       §§goto(addr244);
                                    }
                                 }
                                 §§goto(addr242);
                                 if(!(_loc22_ || _loc2_))
                                 {
                                    continue;
                                 }
                                 if(_loc22_)
                                 {
                                    if(!_loc23_)
                                    {
                                       §§goto(addr165);
                                       §§push(Number(§§pop()));
                                    }
                                    §§goto(addr176);
                                 }
                                 §§goto(addr191);
                              }
                           }
                        }
                        §§goto(addr240);
                     }
                  }
                  §§goto(addr236);
               }
            }
            §§goto(addr244);
         }
         §§goto(addr108);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Deobfuscation is activated but decompilation still failed. If the file is NOT obfuscated, disable "Automatic deobfuscation" for better results.
          * Error type: ExecutionException (java.lang.StackOverflowError)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
