package §+!o§
{
   import § "?§.§&!>§;
   import § "?§.§-5§;
   import §"!9§.b2CircleShape;
   import §%c§.§=!X§;
   import §+S§.b2Body;
   import §+S§.b2Fixture;
   import §+S§.b2World;
   import §,a§.§+!Z§;
   import §,a§.§+"&§;
   import §,a§.§<!m§;
   import §2"=§.b2Vec2;
   import §5!V§.§!w§;
   import §default§.Sprite;
   
   public class §[f§ extends §>G§
   {
      
      public static const §@r§:int;
      
      private static const §9!z§:int = 200;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && §[f§))
         {
            §§push(§§findproperty(§@r§));
            §§push(241 * §!w§.§4!-§);
            if(_loc1_)
            {
               §§push(§§pop() / 2);
            }
            §§pop().§@r§ = §§pop();
         }
         do
         {
            §9!z§ = 200;
         }
         while(_loc2_ && _loc2_);
         
      }
      
      private const §"x§:Number = -5;
      
      private const §-a§:int = 1500;
      
      private const §#!v§:int = 3500;
      
      private const §,!s§:int = 1500;
      
      private var §#!`§:Boolean = false;
      
      private var §;]§:Boolean = false;
      
      private var §]!m§:Number = -5;
      
      private var §4!Q§:Number = -5;
      
      private var §60§:Number = -5;
      
      private var §&!g§:Number = 0;
      
      private var §4!x§:int = 0;
      
      private var §>9§:Number = 0;
      
      private var §%!k§:Number = 0;
      
      private var §30§:Number = 0;
      
      private var §16§:Number = 1000;
      
      private var §else §:Boolean = false;
      
      private var §^<§:§?"-§;
      
      public function §[f§(param1:§?"-§, param2:Sprite, param3:b2World, param4:§!w§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         if(!(_loc12_ && this))
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         }
         while(true)
         {
            this.§^<§ = param1;
            while(_loc13_)
            {
               §[!g§.mTryToFly = true;
               while(_loc13_)
               {
                  this.§30§ = 0;
                  if(!(_loc12_ && param1))
                  {
                     return;
                  }
               }
            }
         }
      }
      
      private function get §1!=§() : Number
      {
         return §@r§ * scale;
      }
      
      override public function addDamageParticles(param1:§-5§, param2:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §§push(param2 < 2);
            if(_loc4_)
            {
               if(!§§pop())
               {
                  loop7:
                  while(true)
                  {
                     §§pop();
                     addr109:
                     loop5:
                     while(true)
                     {
                        §§push(this.§16§);
                        addr76:
                        while(true)
                        {
                           §§push(§§pop() < §9!z§);
                           if(_loc4_)
                           {
                              break loop5;
                           }
                           continue loop7;
                        }
                        continue loop7;
                     }
                  }
                  addr108:
               }
               while(true)
               {
                  if(§§pop())
                  {
                     if(_loc4_ || param2)
                     {
                        break;
                     }
                     while(true)
                     {
                        addr37:
                        if(_loc4_ || param2)
                        {
                           return;
                        }
                     }
                  }
                  while(true)
                  {
                     §§push(this.§4!Q§);
                     if(!_loc3_)
                     {
                        if(§§pop() != this.§"x§)
                        {
                           while(!(_loc3_ && param2))
                           {
                              while(true)
                              {
                                 this.§9"-§();
                                 addr72:
                                 while(true)
                                 {
                                 }
                              }
                           }
                           §§goto(addr109);
                           addr63:
                        }
                        while(true)
                        {
                           this.§16§ = 0;
                           if(!(_loc4_ || _loc3_))
                           {
                              continue;
                           }
                           if(_loc4_)
                           {
                              break;
                           }
                           §§goto(addr63);
                        }
                        §§goto(addr37);
                     }
                     break;
                  }
                  §§goto(addr76);
               }
               return;
            }
            §§goto(addr108);
         }
         §§goto(addr70);
      }
      
      override public function activateSpecialPower(param1:§?"-§) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(super.activateSpecialPower(param1));
            while(§§pop())
            {
               do
               {
                  §=!X§.§!'§.particles.§[b§(§&!>§.§5"5§,§-5§.§&b§,§&!>§.§?"0§,getBody().GetPosition().x,getBody().GetPosition().y,-1,"",§&!>§.§`!g§);
                  do
                  {
                     this.§^!C§(0);
                  }
                  while(!(_loc2_ || this));
                  
               }
               while(!(_loc2_ || _loc2_));
               
               if(!_loc2_)
               {
                  break;
               }
               §§push(true);
               if(!_loc2_)
               {
                  return §§pop();
               }
               addr98:
               if(_loc2_)
               {
                  return §§pop();
               }
            }
         }
         §§goto(addr98);
         §§push(false);
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc7_:* = NaN;
         if(_loc8_ || param3)
         {
            §§push(!§6S§);
            while(true)
            {
               §§push(§§pop());
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        addr219:
                        while(true)
                        {
                           §§push(this.§]!m§);
                           addr189:
                           while(true)
                           {
                              §§push(§§pop() == this.§"x§);
                           }
                        }
                     }
                     addr218:
                  }
                  while(true)
                  {
                     loop6:
                     while(true)
                     {
                        if(§§pop())
                        {
                           loop7:
                           while(_loc8_ || param3)
                           {
                              this.§^!C§();
                              loop8:
                              while(true)
                              {
                                 addr178:
                                 while(true)
                                 {
                                    §§push(param1);
                                    loop10:
                                    while(true)
                                    {
                                       §§push(12);
                                       loop11:
                                       while(true)
                                       {
                                          §§push(§§pop() < §§pop());
                                          loop12:
                                          while(true)
                                          {
                                             §§push(§§pop());
                                             loop13:
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   while(true)
                                                   {
                                                      §§pop();
                                                      addr185:
                                                      while(true)
                                                      {
                                                         §§push(param1);
                                                         addr147:
                                                         while(true)
                                                         {
                                                            §§push(5);
                                                            if(!_loc8_)
                                                            {
                                                               break;
                                                            }
                                                            §§push(§§pop() > §§pop());
                                                         }
                                                         continue loop11;
                                                      }
                                                   }
                                                   addr184:
                                                }
                                                while(true)
                                                {
                                                   loop18:
                                                   while(true)
                                                   {
                                                      §§push(§§pop());
                                                      if(!(_loc8_ || param1))
                                                      {
                                                         break;
                                                      }
                                                      if(!_loc8_)
                                                      {
                                                         continue loop1;
                                                      }
                                                      if(!§§pop())
                                                      {
                                                         loop21:
                                                         while(true)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               if(_loc8_)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §"!a§(§+"&§.§`!!§);
                                                                  }
                                                                  addr133:
                                                               }
                                                               loop22:
                                                               while(true)
                                                               {
                                                                  if(_loc8_ || param3)
                                                                  {
                                                                     §§push(Number(§@!P§));
                                                                     continue loop10;
                                                                  }
                                                                  addr175:
                                                                  while(true)
                                                                  {
                                                                     if(!_loc8_)
                                                                     {
                                                                        continue loop7;
                                                                     }
                                                                     §§push(this.§#!`§);
                                                                     if(!_loc9_)
                                                                     {
                                                                        if(_loc8_ || param2)
                                                                        {
                                                                           §§push(Boolean(§§pop()));
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr218);
                                                                        }
                                                                     }
                                                                     if(!_loc8_)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           if(_loc8_)
                                                                           {
                                                                              continue loop6;
                                                                           }
                                                                           continue loop12;
                                                                        }
                                                                        continue loop6;
                                                                        addr163:
                                                                     }
                                                                     if(!_loc8_)
                                                                     {
                                                                        continue loop18;
                                                                     }
                                                                     if(!(_loc9_ && this))
                                                                     {
                                                                        continue loop21;
                                                                     }
                                                                     §§goto(addr184);
                                                                     continue loop22;
                                                                  }
                                                                  §§goto(addr185);
                                                               }
                                                               addr137:
                                                            }
                                                            else
                                                            {
                                                               §§push(Number(super.applyDamage(param1,param2,param3,param4,param5,param6)));
                                                               while(true)
                                                               {
                                                                  if(_loc8_)
                                                                  {
                                                                     if(_loc8_)
                                                                     {
                                                                        _loc7_ = §§pop();
                                                                        loop27:
                                                                        while(true)
                                                                        {
                                                                           loop25:
                                                                           while(true)
                                                                           {
                                                                              this.§#!`§ = true;
                                                                              if(!(_loc8_ || this))
                                                                              {
                                                                                 continue loop27;
                                                                              }
                                                                              addr46:
                                                                              if(_loc8_ || param1)
                                                                              {
                                                                                 if(_loc8_)
                                                                                 {
                                                                                    continue loop8;
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 while(!_loc9_)
                                                                                 {
                                                                                    continue loop25;
                                                                                    §§goto(addr46);
                                                                                 }
                                                                                 §§goto(addr137);
                                                                                 addr92:
                                                                              }
                                                                              §§goto(addr185);
                                                                           }
                                                                           §§goto(addr147);
                                                                        }
                                                                     }
                                                                     §§goto(addr189);
                                                                  }
                                                               }
                                                               addr75:
                                                            }
                                                            §§goto(addr147);
                                                         }
                                                      }
                                                      §§goto(addr163);
                                                   }
                                                   continue loop13;
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                           §§goto(addr219);
                        }
                        §§goto(addr178);
                     }
                  }
               }
            }
         }
         §§goto(addr133);
      }
      
      override public function explode() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            if(!§6S§)
            {
               do
               {
                  super.activateSpecialPower(null);
                  §46§ = true;
                  this.§^!C§(0);
               }
               while(!_loc1_);
               
               §§push(true);
               addr90:
            }
            else
            {
               §§push(false);
               if(!(_loc2_ && _loc2_))
               {
                  return §§pop();
               }
            }
            return §§pop();
         }
         §§goto(addr90);
      }
      
      private function §^!C§(param1:Number = -1) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(0);
               while(§§pop() != §§pop())
               {
                  §§push(param1);
                  if(_loc3_)
                  {
                     continue loop0;
                  }
                  §§push(0);
                  if(!(_loc2_ || this))
                  {
                     continue;
                  }
                  if(§§pop() <= §§pop())
                  {
                     this.§]!m§ = this.§-a§;
                     if(_loc2_ || this)
                     {
                        if(!(_loc3_ && _loc2_))
                        {
                           if(!_loc2_)
                           {
                              this.update(0);
                              addr99:
                              addr106:
                           }
                           §§goto(addr19);
                        }
                        addr72:
                        if(_loc2_ || _loc3_)
                        {
                           if(_loc3_)
                           {
                              break;
                           }
                           this.§]!m§ = param1;
                           addr19:
                           return;
                           addr84:
                        }
                        §§goto(addr99);
                     }
                     §§goto(addr84);
                  }
                  §§goto(addr72);
               }
            }
         }
         this.§]!m§ = 0;
         §§goto(addr106);
      }
      
      override public function update(param1:Number) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc2_:Vector.<§]"5§> = null;
         var _loc3_:* = NaN;
         var _loc4_:b2Body = null;
         var _loc5_:b2Vec2 = null;
         if(_loc8_)
         {
            §§push(this);
            §§push(this.§16§);
            if(_loc8_ || _loc3_)
            {
               §§push(§§pop() + param1);
            }
            §§pop().§16§ = §§pop();
            if(_loc8_ || param1)
            {
               §46§ = true;
               if(_loc8_ || _loc3_)
               {
                  §§push(this.§]!m§);
                  if(!(_loc9_ && param1))
                  {
                     §§push(this.§"x§);
                     if(_loc8_)
                     {
                        if(§§pop() != §§pop())
                        {
                           if(_loc8_)
                           {
                              §§push(this);
                              §§push(this.§]!m§);
                              if(!_loc9_)
                              {
                                 §§push(§§pop() - param1);
                              }
                              §§pop().§]!m§ = §§pop();
                              if(_loc8_ || param1)
                              {
                                 §§push(this.§]!m§);
                                 if(_loc8_)
                                 {
                                    §§push(0);
                                    if(_loc8_ || _loc3_)
                                    {
                                       if(§§pop() < §§pop())
                                       {
                                          if(_loc8_ || _loc3_)
                                          {
                                             §§push(this.§30§);
                                             if(!(_loc9_ && this))
                                             {
                                                §§push(1);
                                                if(!_loc9_)
                                                {
                                                   if(§§pop() >= §§pop())
                                                   {
                                                      if(!_loc9_)
                                                      {
                                                         this.§]!m§ = this.§"x§;
                                                         if(_loc8_)
                                                         {
                                                            this.§30§ = 1;
                                                            if(!_loc9_)
                                                            {
                                                               this.§^!,§(this.§1!=§);
                                                               if(!_loc9_)
                                                               {
                                                                  this.§4!Q§ = this.§#!v§;
                                                                  if(_loc8_)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(this);
                                                                        §§push(this.§1!=§);
                                                                        if(!_loc9_)
                                                                        {
                                                                           §§push(§§pop() * this.§30§);
                                                                        }
                                                                        §§pop().§^!,§(§§pop(),§6"'§.material.mValues[§+!Z§.§8";§],§6"'§.material.mValues[§+!Z§.§,!>§],§6"'§.material.mValues[§+!Z§.§9",§]);
                                                                        if(_loc8_)
                                                                        {
                                                                           §[!g§.setScale(this.§30§ * scale);
                                                                           if(!_loc9_)
                                                                           {
                                                                              if(true)
                                                                              {
                                                                                 addr811:
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr811:
                                                                                 addr337:
                                                                              }
                                                                              continue;
                                                                              return;
                                                                           }
                                                                           addr666:
                                                                           addr666:
                                                                           this.§;]§ = true;
                                                                           this.§4!Q§ = this.§"x§;
                                                                           this.§60§ = this.§,!s§;
                                                                           if(!(_loc9_ && param1))
                                                                           {
                                                                              §"!a§(§+"&§.§<!k§);
                                                                              if(_loc8_)
                                                                              {
                                                                                 addr597:
                                                                                 §§goto(addr811);
                                                                                 addr596:
                                                                              }
                                                                              §§goto(addr811);
                                                                           }
                                                                           addr807:
                                                                           this.§^<§.removeObject(this);
                                                                           §§goto(addr811);
                                                                           addr669:
                                                                           addr659:
                                                                           §§goto(addr811);
                                                                        }
                                                                        else
                                                                        {
                                                                           loop29:
                                                                           while(true)
                                                                           {
                                                                              §§push(1);
                                                                              if(_loc8_)
                                                                              {
                                                                                 §§push(Number(§§pop()));
                                                                                 if(!_loc9_)
                                                                                 {
                                                                                    _loc3_ = §§pop();
                                                                                    if(_loc8_)
                                                                                    {
                                                                                       if(!_loc9_)
                                                                                       {
                                                                                          if(false)
                                                                                          {
                                                                                             loop4:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(this.§60§);
                                                                                                if(_loc8_ || _loc3_)
                                                                                                {
                                                                                                   §§push(this.§,!s§);
                                                                                                   loop5:
                                                                                                   while(_loc8_)
                                                                                                   {
                                                                                                      §§push(§§pop() / §§pop());
                                                                                                      if(!_loc9_)
                                                                                                      {
                                                                                                         §§push(Number(§§pop()));
                                                                                                         if(_loc9_)
                                                                                                         {
                                                                                                         }
                                                                                                         addr697:
                                                                                                         addr696:
                                                                                                         if(§§pop() == 0)
                                                                                                         {
                                                                                                            if(!_loc9_)
                                                                                                            {
                                                                                                               addr700:
                                                                                                               §[!g§.setScale(_loc3_ * scale);
                                                                                                               if(_loc8_ || param1)
                                                                                                               {
                                                                                                                  addr712:
                                                                                                                  §§push(this);
                                                                                                                  §§push(this.§1!=§);
                                                                                                                  if(_loc8_ || _loc2_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() * _loc3_);
                                                                                                                  }
                                                                                                                  §§pop().§^!,§(§§pop());
                                                                                                                  if(_loc9_)
                                                                                                                  {
                                                                                                                     §§goto(addr807);
                                                                                                                  }
                                                                                                                  §§goto(addr811);
                                                                                                               }
                                                                                                               §§goto(addr807);
                                                                                                            }
                                                                                                            addr727:
                                                                                                            _loc5_ = (_loc4_ = getBody()).GetLinearVelocity();
                                                                                                            if(_loc8_ || _loc2_)
                                                                                                            {
                                                                                                               _loc4_.ApplyImpulse(new b2Vec2(this.§>9§,this.§%!k§),getBody().GetPosition());
                                                                                                            }
                                                                                                            loop13:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               loop14:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  _loc4_.§-!7§(Math.atan2(-_loc5_.x,_loc5_.y) - Math.PI / 2);
                                                                                                                  while(_loc8_)
                                                                                                                  {
                                                                                                                     this.§9"-§(0.02);
                                                                                                                     if(!(_loc9_ && _loc3_))
                                                                                                                     {
                                                                                                                        if(true)
                                                                                                                        {
                                                                                                                           break loop14;
                                                                                                                        }
                                                                                                                        continue loop14;
                                                                                                                     }
                                                                                                                  }
                                                                                                                  continue loop13;
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr811);
                                                                                                      }
                                                                                                      if(!_loc9_)
                                                                                                      {
                                                                                                         addr475:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            _loc3_ = §§pop();
                                                                                                            if(_loc8_)
                                                                                                            {
                                                                                                               addr478:
                                                                                                               if(!(_loc9_ && _loc2_))
                                                                                                               {
                                                                                                                  if(!_loc9_)
                                                                                                                  {
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc3_);
                                                                                                                        if(!(_loc9_ && this))
                                                                                                                        {
                                                                                                                           if(_loc9_ && param1)
                                                                                                                           {
                                                                                                                              addr662:
                                                                                                                              break loop4;
                                                                                                                           }
                                                                                                                           §§push(1);
                                                                                                                           if(_loc8_ || _loc2_)
                                                                                                                           {
                                                                                                                              if(_loc9_)
                                                                                                                              {
                                                                                                                                 continue loop5;
                                                                                                                              }
                                                                                                                              if(!(_loc9_ && _loc2_))
                                                                                                                              {
                                                                                                                                 if(§§pop() > §§pop())
                                                                                                                                 {
                                                                                                                                    if(_loc8_ || this)
                                                                                                                                    {
                                                                                                                                       addr573:
                                                                                                                                       if(_loc8_)
                                                                                                                                       {
                                                                                                                                          if(_loc8_ || _loc3_)
                                                                                                                                          {
                                                                                                                                             continue loop29;
                                                                                                                                          }
                                                                                                                                          loop8:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(!(_loc9_ && _loc2_))
                                                                                                                                             {
                                                                                                                                                §§push(this.§&!g§);
                                                                                                                                                loop6:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(_loc8_ || _loc3_)
                                                                                                                                                   {
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         break loop5;
                                                                                                                                                      }
                                                                                                                                                      addr551:
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      addr603:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(0);
                                                                                                                                                         addr604:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(§§pop() <= §§pop())
                                                                                                                                                            {
                                                                                                                                                               this.§else § = true;
                                                                                                                                                               if(_loc8_ || this)
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr807);
                                                                                                                                                               }
                                                                                                                                                               break loop6;
                                                                                                                                                            }
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(!(_loc9_ && _loc3_))
                                                                                                                                                               {
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(this);
                                                                                                                                                                     §§push(this.§60§);
                                                                                                                                                                     if(_loc8_ || _loc2_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() - param1);
                                                                                                                                                                     }
                                                                                                                                                                     §§pop().§60§ = §§pop();
                                                                                                                                                                     if(!(_loc9_ && _loc3_))
                                                                                                                                                                     {
                                                                                                                                                                        addr632:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(this);
                                                                                                                                                                           §§push(this.§&!g§);
                                                                                                                                                                           if(!(_loc9_ && param1))
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() - param1);
                                                                                                                                                                           }
                                                                                                                                                                           §§pop().§&!g§ = §§pop();
                                                                                                                                                                           continue loop8;
                                                                                                                                                                        }
                                                                                                                                                                        addr632:
                                                                                                                                                                     }
                                                                                                                                                                     else
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr712);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  addr612:
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr669);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr807);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr807);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      addr603:
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr595);
                                                                                                                                                }
                                                                                                                                                addr595:
                                                                                                                                                §§goto(addr811);
                                                                                                                                                addr544:
                                                                                                                                             }
                                                                                                                                             §§goto(addr659);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(this);
                                                                                                                                          §§push(Math.random() * 100);
                                                                                                                                          if(_loc8_)
                                                                                                                                          {
                                                                                                                                             §§push(50);
                                                                                                                                             if(!(_loc9_ && _loc2_))
                                                                                                                                             {
                                                                                                                                                addr539:
                                                                                                                                                §§push(§§pop() - §§pop());
                                                                                                                                                if(!_loc9_)
                                                                                                                                                {
                                                                                                                                                   §§push(10);
                                                                                                                                                }
                                                                                                                                                §§pop().§>9§ = §§pop();
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(this);
                                                                                                                                                   §§push(Math.random() * 100);
                                                                                                                                                   if(_loc8_)
                                                                                                                                                   {
                                                                                                                                                      §§push(50);
                                                                                                                                                      if(_loc8_)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() - §§pop());
                                                                                                                                                         if(!(_loc9_ && param1))
                                                                                                                                                         {
                                                                                                                                                            addr508:
                                                                                                                                                            §§push(§§pop() * 10);
                                                                                                                                                         }
                                                                                                                                                         §§pop().§%!k§ = §§pop();
                                                                                                                                                         continue;
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr508);
                                                                                                                                                }
                                                                                                                                                addr540:
                                                                                                                                             }
                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                          }
                                                                                                                                          §§goto(addr539);
                                                                                                                                       }
                                                                                                                                       addr573:
                                                                                                                                    }
                                                                                                                                    §§goto(addr700);
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    addr670:
                                                                                                                                    var _loc6_:*;
                                                                                                                                    §§push((_loc6_ = this).§4!x§);
                                                                                                                                    if(_loc8_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() + 1);
                                                                                                                                    }
                                                                                                                                    var _loc7_:* = §§pop();
                                                                                                                                    if(!_loc9_)
                                                                                                                                    {
                                                                                                                                       _loc6_.§4!x§ = _loc7_;
                                                                                                                                    }
                                                                                                                                    if(!(_loc9_ && _loc3_))
                                                                                                                                    {
                                                                                                                                       §§push(this.§4!x§);
                                                                                                                                       break loop29;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr727);
                                                                                                                              }
                                                                                                                              §§goto(addr604);
                                                                                                                           }
                                                                                                                           §§goto(addr697);
                                                                                                                        }
                                                                                                                        §§goto(addr696);
                                                                                                                     }
                                                                                                                     addr487:
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§goto(addr603);
                                                                                                                     }
                                                                                                                     addr601:
                                                                                                                  }
                                                                                                                  §§goto(addr603);
                                                                                                               }
                                                                                                               §§goto(addr510);
                                                                                                            }
                                                                                                            §§goto(addr807);
                                                                                                         }
                                                                                                         addr475:
                                                                                                      }
                                                                                                      §§goto(addr544);
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc9_ && param1)
                                                                                                      {
                                                                                                         break loop4;
                                                                                                      }
                                                                                                      if(§§pop() > §§pop())
                                                                                                      {
                                                                                                         continue loop4;
                                                                                                      }
                                                                                                      addr560:
                                                                                                      if(!(_loc9_ && _loc3_))
                                                                                                      {
                                                                                                         addr567:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            this.§&!g§ = this.§,!s§ / 5;
                                                                                                            §§goto(addr573);
                                                                                                            §§goto(addr560);
                                                                                                         }
                                                                                                         addr567:
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§goto(addr700);
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr697);
                                                                                             }
                                                                                             if(§§pop() < §§pop())
                                                                                             {
                                                                                                if(!_loc9_)
                                                                                                {
                                                                                                   §§goto(addr666);
                                                                                                }
                                                                                                §§goto(addr811);
                                                                                             }
                                                                                             §§goto(addr596);
                                                                                          }
                                                                                          §§goto(addr670);
                                                                                       }
                                                                                       §§goto(addr605);
                                                                                    }
                                                                                    §§goto(addr666);
                                                                                 }
                                                                                 §§goto(addr697);
                                                                              }
                                                                              break;
                                                                           }
                                                                           §§goto(addr697);
                                                                           §§push(§§pop() % 3);
                                                                           addr440:
                                                                        }
                                                                        §§goto(addr811);
                                                                     }
                                                                     addr41:
                                                                  }
                                                                  §§goto(addr632);
                                                               }
                                                               §§goto(addr612);
                                                            }
                                                            §§goto(addr573);
                                                            addr156:
                                                         }
                                                         §§goto(addr811);
                                                      }
                                                      §§goto(addr540);
                                                   }
                                                   else
                                                   {
                                                      §§push(this);
                                                      §§push(this.§30§);
                                                      if(_loc8_ || this)
                                                      {
                                                         §§push(§§pop() + 0.2);
                                                      }
                                                      §§pop().§30§ = §§pop();
                                                      if(_loc8_)
                                                      {
                                                         §§goto(addr41);
                                                      }
                                                   }
                                                   §§goto(addr811);
                                                }
                                                §§goto(addr697);
                                             }
                                             §§goto(addr551);
                                          }
                                          §§goto(addr156);
                                       }
                                       else
                                       {
                                          §§push(this.§]!m§);
                                          if(_loc8_ || _loc3_)
                                          {
                                             §§push(param1);
                                             if(!(_loc9_ && this))
                                             {
                                                addr241:
                                                if(§§pop() <= §§pop())
                                                {
                                                   if(!(_loc9_ && this))
                                                   {
                                                      _loc2_ = new Vector.<§]"5§>(1,true);
                                                      if(!_loc9_)
                                                      {
                                                         _loc2_[0] = this;
                                                         loop20:
                                                         while(true)
                                                         {
                                                            container.addExplosions(§]!i§.§2";§,getBody().GetPosition().x,getBody().GetPosition().y,_loc2_);
                                                            while(true)
                                                            {
                                                               super.activateSpecialPower(null);
                                                               while(!(_loc9_ && this))
                                                               {
                                                                  §!F§ = "BIRD_ORANGE_BIG";
                                                                  while(!_loc9_)
                                                                  {
                                                                     §6"'§ = §<!m§.§"!F§(§!F§);
                                                                     loop24:
                                                                     for(; _loc8_; if(_loc9_ && _loc3_)
                                                                     {
                                                                        continue;
                                                                     },while(false)
                                                                     {
                                                                        §§goto(addr281);
                                                                     },§§goto(addr337))
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           sprite.scaleX = this.§30§;
                                                                           while(!_loc9_)
                                                                           {
                                                                              sprite.scaleY = this.§30§;
                                                                              if(!(_loc9_ && this))
                                                                              {
                                                                                 continue loop24;
                                                                              }
                                                                           }
                                                                           continue loop20;
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr279);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr567);
                                                   }
                                                }
                                                §§goto(addr811);
                                             }
                                             else
                                             {
                                                addr349:
                                                if(§§pop() != §§pop())
                                                {
                                                   if(_loc8_ || _loc2_)
                                                   {
                                                      §§push(this.§#!`§);
                                                      if(!_loc9_)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            if(_loc8_)
                                                            {
                                                               §§push(this);
                                                               §§push(this.§4!Q§);
                                                               if(_loc8_)
                                                               {
                                                                  §§push(§§pop() - param1);
                                                               }
                                                               §§pop().§4!Q§ = §§pop();
                                                               if(_loc8_ || this)
                                                               {
                                                                  §§goto(addr662);
                                                                  §§push(this.§4!Q§);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr567);
                                                               }
                                                               §§goto(addr811);
                                                            }
                                                            §§goto(addr666);
                                                         }
                                                         §§goto(addr597);
                                                      }
                                                      else
                                                      {
                                                         addr600:
                                                         if(§§pop())
                                                         {
                                                            §§goto(addr601);
                                                         }
                                                         §§goto(addr811);
                                                      }
                                                   }
                                                   §§goto(addr487);
                                                }
                                                else
                                                {
                                                   §§push(this.§;]§);
                                                }
                                                §§goto(addr600);
                                             }
                                          }
                                       }
                                       §§goto(addr603);
                                    }
                                    §§goto(addr604);
                                 }
                                 §§goto(addr697);
                              }
                           }
                           §§goto(addr632);
                        }
                        else
                        {
                           §§push(this.§4!Q§);
                           if(!(_loc9_ && this))
                           {
                              §§goto(addr349);
                              §§push(this.§"x§);
                           }
                           §§goto(addr475);
                        }
                     }
                     §§goto(addr241);
                  }
                  §§goto(addr475);
               }
               §§goto(addr440);
               addr222:
            }
            §§goto(addr666);
         }
         §§goto(addr222);
      }
      
      private function §^!,§(param1:Number, param2:Number = -1, param3:Number = -1, param4:Number = -1) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc6_:b2Fixture;
         var _loc5_:b2Body;
         var _loc7_:b2CircleShape = (_loc6_ = (_loc5_ = getBody()).GetFixtureList()).GetShape() as b2CircleShape;
         if(!_loc9_)
         {
            _loc5_.SetAwake(true);
            loop0:
            while(true)
            {
               _loc7_.§7s§(param1);
               loop1:
               while(true)
               {
                  §§push(param2);
                  loop2:
                  while(true)
                  {
                     §§push(0);
                     loop3:
                     while(true)
                     {
                        if(§§pop() >= §§pop())
                        {
                           if(!_loc9_)
                           {
                              _loc6_.§,!p§(param2);
                              addr128:
                              while(true)
                              {
                                 _loc5_.§3!L§();
                                 addr108:
                                 while(true)
                                 {
                                 }
                              }
                              addr128:
                           }
                           §§goto(addr128);
                        }
                        while(true)
                        {
                           §§push(param3);
                           loop5:
                           while(true)
                           {
                              §§push(0);
                              loop6:
                              while(true)
                              {
                                 if(§§pop() >= §§pop())
                                 {
                                    if(_loc8_ || param1)
                                    {
                                       if(!_loc9_)
                                       {
                                          if(!_loc8_)
                                          {
                                             continue loop0;
                                          }
                                          _loc6_.§=!i§(param3);
                                          while(true)
                                          {
                                             §§goto(addr37);
                                          }
                                          addr104:
                                       }
                                       break;
                                    }
                                    §§goto(addr104);
                                 }
                                 addr37:
                                 addr33:
                                 while(true)
                                 {
                                    §§push(param4);
                                    if(!(_loc8_ || this))
                                    {
                                       continue loop5;
                                    }
                                    if(!_loc8_)
                                    {
                                       continue loop2;
                                    }
                                    §§push(0);
                                    if(!_loc8_)
                                    {
                                       continue loop6;
                                    }
                                    if(!_loc8_)
                                    {
                                       continue loop3;
                                    }
                                    if(§§pop() < §§pop())
                                    {
                                       break;
                                    }
                                    if(!(_loc8_ || param2))
                                    {
                                       continue loop1;
                                    }
                                    if(_loc9_)
                                    {
                                       continue loop7;
                                    }
                                    if(!_loc9_)
                                    {
                                       _loc6_.§8!^§(param4);
                                       continue loop1;
                                    }
                                    §§goto(addr128);
                                 }
                                 return;
                              }
                              §§goto(addr108);
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr128);
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
      
      override public function addTrail() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(!§6S§)
            {
               if(!(_loc1_ && _loc2_))
               {
                  super.addTrail();
               }
            }
         }
      }
      
      private function §9"-§(param1:Number = 1) : void
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc6_:* = NaN;
         var _loc7_:* = 0;
         var _loc8_:Number = NaN;
         var _loc9_:* = NaN;
         §§push(§0$§() / 40);
         if(!_loc10_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(1);
         if(_loc11_)
         {
            §§push(_loc2_);
            if(_loc11_ || param1)
            {
               §§push(§§pop() * §0&§(false));
               if(!_loc10_)
               {
                  §§push(§§pop() * 0.9);
               }
            }
            §§push(int(§§pop() + §§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(Math.PI / 2);
         if(!(_loc10_ && this))
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push((getBody().GetFixtureList().GetShape() as b2CircleShape).§4!P§());
         if(_loc11_ || param1)
         {
            §§push(§§pop() / this.§1!=§);
            if(_loc11_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc5_:* = §§pop();
         if(_loc11_ || _loc2_)
         {
            §§push(_loc3_);
            loop0:
            while(true)
            {
               §§push(_loc5_);
               if(!(_loc10_ && param1))
               {
                  §§push(§§pop() * 3);
                  if(!(_loc10_ && _loc3_))
                  {
                     addr646:
                     §§push(§§pop() * param1);
                  }
                  §§push(int(§§pop() * §§pop()));
                  loop1:
                  while(true)
                  {
                     _loc3_ = §§pop();
                     loop2:
                     while(true)
                     {
                        §§push(_loc3_);
                        if(!_loc10_)
                        {
                           continue loop0;
                        }
                        loop4:
                        while(!_loc10_)
                        {
                           _loc3_ = §§pop();
                           loop5:
                           while(true)
                           {
                              addr573:
                              while(true)
                              {
                                 §§push(0);
                                 if(!_loc11_)
                                 {
                                    continue loop4;
                                 }
                                 _loc7_ = §§pop();
                                 if(!(_loc11_ || _loc3_))
                                 {
                                    continue loop5;
                                 }
                                 if(_loc11_ || param1)
                                 {
                                    break;
                                 }
                                 addr613:
                                 while(true)
                                 {
                                    continue loop4;
                                 }
                                 continue loop5;
                              }
                              if(_loc10_ && this)
                              {
                                 continue loop2;
                              }
                              addr468:
                              if(_loc7_ >= _loc3_ / 3)
                              {
                                 addr474:
                                 if(_loc11_ || this)
                                 {
                                    addr482:
                                    _loc7_ = 0;
                                    addr97:
                                    addr483:
                                    §§push(_loc7_);
                                    if(_loc11_ || _loc3_)
                                    {
                                       if(!(_loc10_ && this))
                                       {
                                          §§push(_loc3_);
                                          if(_loc11_)
                                          {
                                             if(§§pop() >= §§pop())
                                             {
                                                if(!(_loc10_ && _loc2_))
                                                {
                                                   if(!(_loc11_ || param1))
                                                   {
                                                      addr337:
                                                      if(_loc11_)
                                                      {
                                                         §§push(§=!X§.§!'§);
                                                         if(!_loc10_)
                                                         {
                                                            §§push(§§pop().particles);
                                                            if(!_loc10_)
                                                            {
                                                               §§push(§&!>§.§]!c§);
                                                               if(_loc11_)
                                                               {
                                                                  §§push(§-5§.§5Q§);
                                                                  if(!(_loc10_ && param1))
                                                                  {
                                                                     §§push(§&!>§.§&W§);
                                                                     if(_loc11_ || _loc2_)
                                                                     {
                                                                        §§pop().§[b§(§§pop(),§§pop(),§§pop(),getBody().GetPosition().x + Math.cos(_loc4_) * _loc6_,getBody().GetPosition().y + Math.sin(_loc4_) * _loc6_,1250,"",§&!>§.§7+§,_loc9_ * Math.cos(_loc8_) * _loc5_,-_loc9_ * Math.sin(_loc8_) * _loc5_,5,_loc9_ * 20,1);
                                                                        addr233:
                                                                        if(!_loc10_)
                                                                        {
                                                                           if(_loc11_)
                                                                           {
                                                                              _loc7_++;
                                                                              addr136:
                                                                              if(!(_loc10_ && _loc3_))
                                                                              {
                                                                                 if(!(_loc10_ && _loc3_))
                                                                                 {
                                                                                    if(_loc11_ || _loc2_)
                                                                                    {
                                                                                       §§goto(addr97);
                                                                                    }
                                                                                    addr497:
                                                                                    §=!X§.§!'§.particles.§[b§(§&!>§.§^!R§,§-5§.§5Q§,§&!>§.§&W§,getBody().GetPosition().x + Math.cos(_loc4_) * _loc6_,getBody().GetPosition().y + Math.sin(_loc4_) * _loc6_,1000,"",0,0,0,5,_loc2_ * 5,Math.random() * 0.75 + 0.25);
                                                                                    _loc7_++;
                                                                                    addr558:
                                                                                    addr495:
                                                                                    addr493:
                                                                                    addr491:
                                                                                    addr490:
                                                                                    addr533:
                                                                                 }
                                                                                 §§goto(addr468);
                                                                              }
                                                                              §§goto(addr233);
                                                                           }
                                                                           §§goto(addr474);
                                                                        }
                                                                        addr393:
                                                                        if(_loc11_ || _loc3_)
                                                                        {
                                                                           §§push(0.5);
                                                                           if(_loc11_ || _loc2_)
                                                                           {
                                                                              if(_loc11_ || param1)
                                                                              {
                                                                                 if(!(_loc10_ && _loc3_))
                                                                                 {
                                                                                    §§push(_loc2_);
                                                                                    if(_loc11_)
                                                                                    {
                                                                                       if(!_loc10_)
                                                                                       {
                                                                                          §§push(§§pop() * §§pop());
                                                                                          if(_loc11_)
                                                                                          {
                                                                                             if(_loc11_ || this)
                                                                                             {
                                                                                                if(_loc11_)
                                                                                                {
                                                                                                   §§push(_loc2_);
                                                                                                   if(!(_loc10_ && this))
                                                                                                   {
                                                                                                      addr286:
                                                                                                      if(_loc11_ || param1)
                                                                                                      {
                                                                                                         if(!_loc10_)
                                                                                                         {
                                                                                                            addr300:
                                                                                                            §§push(§§pop() * (Math.random() * 0.5));
                                                                                                            if(!(_loc10_ && _loc3_))
                                                                                                            {
                                                                                                               §§push(§§pop() + §§pop());
                                                                                                               if(_loc11_)
                                                                                                               {
                                                                                                                  if(_loc11_ || param1)
                                                                                                                  {
                                                                                                                     addr328:
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                     if(_loc11_)
                                                                                                                     {
                                                                                                                        if(!_loc10_)
                                                                                                                        {
                                                                                                                           if(_loc11_)
                                                                                                                           {
                                                                                                                              if(_loc11_)
                                                                                                                              {
                                                                                                                                 _loc9_ = §§pop();
                                                                                                                                 §§goto(addr337);
                                                                                                                              }
                                                                                                                              addr571:
                                                                                                                              _loc4_ = §§pop();
                                                                                                                              §§push(Math.random() * this.§1!=§);
                                                                                                                              if(_loc11_ || this)
                                                                                                                              {
                                                                                                                                 addr556:
                                                                                                                                 §§push(Number((§§pop() - this.§1!=§ / 2) * 2 * _loc5_));
                                                                                                                              }
                                                                                                                              _loc6_ = §§pop();
                                                                                                                              §§goto(addr558);
                                                                                                                              addr572:
                                                                                                                           }
                                                                                                                           §§goto(addr556);
                                                                                                                        }
                                                                                                                        addr377:
                                                                                                                        if(!(_loc10_ && param1))
                                                                                                                        {
                                                                                                                           if(!(_loc10_ && this))
                                                                                                                           {
                                                                                                                              addr392:
                                                                                                                              _loc6_ = Number(§§pop());
                                                                                                                              §§goto(addr393);
                                                                                                                           }
                                                                                                                           §§goto(addr556);
                                                                                                                        }
                                                                                                                        if(!(_loc10_ && this))
                                                                                                                        {
                                                                                                                           if(!_loc10_)
                                                                                                                           {
                                                                                                                              addr464:
                                                                                                                              _loc8_ = §§pop();
                                                                                                                              if(!_loc10_)
                                                                                                                              {
                                                                                                                                 addr346:
                                                                                                                                 §§push(Math.random() * this.§1!=§);
                                                                                                                                 if(_loc11_ || _loc3_)
                                                                                                                                 {
                                                                                                                                    addr355:
                                                                                                                                    §§push(this.§1!=§);
                                                                                                                                    §§push(2);
                                                                                                                                    if(!_loc10_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() / §§pop());
                                                                                                                                       if(_loc11_)
                                                                                                                                       {
                                                                                                                                          if(!_loc10_)
                                                                                                                                          {
                                                                                                                                             addr364:
                                                                                                                                             §§push(§§pop() - §§pop());
                                                                                                                                             §§push(2);
                                                                                                                                             if(!_loc10_)
                                                                                                                                             {
                                                                                                                                                addr444:
                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                §§push(_loc5_);
                                                                                                                                                if(!(_loc10_ && _loc3_))
                                                                                                                                                {
                                                                                                                                                   §§goto(addr377);
                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                }
                                                                                                                                                if(_loc11_)
                                                                                                                                                {
                                                                                                                                                   if(_loc11_ || _loc3_)
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr377);
                                                                                                                                                      §§push(§§pop() / §§pop());
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr556);
                                                                                                                                             }
                                                                                                                                             addr434:
                                                                                                                                             if(!(_loc10_ && _loc3_))
                                                                                                                                             {
                                                                                                                                                §§goto(addr444);
                                                                                                                                                §§push(§§pop() / Math.PI);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr556);
                                                                                                                                       }
                                                                                                                                       §§goto(addr444);
                                                                                                                                    }
                                                                                                                                    §§goto(addr556);
                                                                                                                                 }
                                                                                                                                 §§goto(addr464);
                                                                                                                              }
                                                                                                                              §§goto(addr483);
                                                                                                                           }
                                                                                                                           addr570:
                                                                                                                           §§goto(addr571);
                                                                                                                           §§push(Number(§§pop()));
                                                                                                                        }
                                                                                                                        §§goto(addr571);
                                                                                                                     }
                                                                                                                     §§goto(addr392);
                                                                                                                  }
                                                                                                                  addr433:
                                                                                                                  §§goto(addr434);
                                                                                                                  §§push(180);
                                                                                                               }
                                                                                                               §§goto(addr328);
                                                                                                            }
                                                                                                            §§goto(addr444);
                                                                                                         }
                                                                                                         addr569:
                                                                                                         §§goto(addr570);
                                                                                                         §§push(§§pop() + §§pop());
                                                                                                      }
                                                                                                      §§goto(addr355);
                                                                                                   }
                                                                                                   §§goto(addr300);
                                                                                                }
                                                                                                addr424:
                                                                                                if(_loc11_ || _loc2_)
                                                                                                {
                                                                                                   addr432:
                                                                                                   §§goto(addr433);
                                                                                                   §§push(_loc4_ = §§pop());
                                                                                                }
                                                                                                §§goto(addr556);
                                                                                             }
                                                                                             §§goto(addr346);
                                                                                          }
                                                                                          §§goto(addr328);
                                                                                       }
                                                                                       §§goto(addr432);
                                                                                    }
                                                                                    §§goto(addr286);
                                                                                 }
                                                                                 §§goto(addr364);
                                                                              }
                                                                              §§goto(addr444);
                                                                           }
                                                                           §§goto(addr328);
                                                                        }
                                                                        §§goto(addr572);
                                                                     }
                                                                     §§goto(addr497);
                                                                  }
                                                                  §§goto(addr495);
                                                               }
                                                               §§goto(addr493);
                                                            }
                                                            §§goto(addr491);
                                                         }
                                                         §§goto(addr490);
                                                      }
                                                      §§goto(addr464);
                                                   }
                                                   return;
                                                }
                                                §§goto(addr136);
                                             }
                                             §§push(_loc4_);
                                             if(_loc11_ || param1)
                                             {
                                                addr563:
                                                if(_loc11_)
                                                {
                                                   §§goto(addr424);
                                                   §§push(Number(§§pop() + §#!V§(Math.random() * (720 / _loc3_))));
                                                }
                                                §§goto(addr569);
                                                §§push(Math.random() * (720 / _loc3_));
                                             }
                                             §§goto(addr377);
                                          }
                                       }
                                       §§goto(addr468);
                                    }
                                    §§goto(addr482);
                                 }
                                 §§goto(addr533);
                              }
                              §§goto(addr563);
                              §§push(_loc4_);
                           }
                        }
                        continue loop1;
                     }
                     continue loop0;
                  }
               }
               §§goto(addr646);
            }
         }
         §§goto(addr613);
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(§6S§)
            {
               if(_loc2_ || this)
               {
                  addr38:
                  §§push(1);
                  if(!(_loc1_ && this))
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr57:
                  return -1;
               }
               return §§pop();
            }
            §§goto(addr57);
         }
         §§goto(addr38);
      }
   }
}
