package §`!G§
{
   import §&E§.§0i§;
   import §&E§.§6!O§;
   import §'!6§.§ "E§;
   import §'!6§.Sprite;
   import §4!<§.§'!S§;
   import §4!<§.§^!Z§;
   import §6!^§.b2Vec2;
   import §6"1§.b2World;
   import §8m§.§@"M§;
   import §<T§.§^"5§;
   import §@!"§.§?l§;
   import flash.geom.Point;
   
   public class §=!D§ extends §[!8§
   {
       
      
      private const §]!Y§:Boolean = true;
      
      private const §4!i§:uint = 10000;
      
      public var §,i§:Boolean = false;
      
      public var §>"J§:Boolean = false;
      
      private var §@!G§:§ "E§;
      
      private var §5!d§:Point;
      
      private var §^"!§:Number = 0;
      
      private const §,!K§:Number;
      
      private var §'H§:§]"'§;
      
      private var §@!k§:Number = 0;
      
      public function §=!D§(param1:§8"=§, param2:Sprite, param3:b2World, param4:§'!S§, param5:int, param6:Number, param7:Number, param8:Number, param9:Number)
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         if(_loc10_ || this)
         {
            §§push(this);
            §§push(Math.random() * Math.PI);
            if(!(_loc11_ && param2))
            {
               §§push(§§pop() * 2);
            }
            §§pop().§,!K§ = §§pop();
            while(true)
            {
               super(param1,param2,param3,param4,param5,"POWERUP_BOMB",param6,param7,param8,param9);
               addr57:
               if(!(_loc11_ && this))
               {
                  this.§`R§();
                  addr64:
                  if(_loc11_)
                  {
                     while(!(_loc11_ && this))
                     {
                        §§goto(addr57);
                        §§goto(addr64);
                     }
                     while(true)
                     {
                        this.§'H§ = param1 as §]"'§;
                        §§goto(addr50);
                     }
                     addr50:
                     addr88:
                  }
                  return;
               }
            }
         }
         §§goto(addr88);
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_)
         {
            if(this.§>"J§)
            {
               §§push(this);
               §§push(this.§@!k§);
               if(_loc8_ || param1)
               {
                  §§push(§§pop() - 100);
               }
               §§pop().§@!k§ = §§pop();
               if(_loc8_)
               {
                  if(!(_loc8_ || param3))
                  {
                     loop2:
                     while(true)
                     {
                        this.§>"J§ = true;
                        addr75:
                        while(!(_loc8_ || param1))
                        {
                           while(true)
                           {
                              this.§@!k§ = this.§4!i§;
                              continue loop2;
                           }
                           continue loop2;
                        }
                     }
                     addr90:
                  }
                  return §^!2§;
               }
               §§goto(addr75);
            }
            §§goto(addr86);
         }
         §§goto(addr90);
      }
      
      private function §`R§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§^"5§ = §?l§.§'h§.animationManager.getAnimation("POWERUP_BOMB_PARACHUTE").getFrame(0);
         if(!_loc2_)
         {
            this.§@!G§ = new § "E§(_loc1_.texture,true);
            while(true)
            {
               this.§5!d§ = new Point(_loc1_.pivotX,_loc1_.pivotY);
               loop1:
               while(!(_loc2_ && _loc1_))
               {
                  while(true)
                  {
                     §?l§.§'h§.objects.§-!2§.addChild(this.§@!G§);
                     if(_loc3_ || _loc2_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr85);
      }
      
      public function §>x§(param1:Number) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc2_:b2Vec2 = null;
         var _loc3_:§[!8§ = null;
         var _loc4_:* = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Point = null;
         var _loc7_:* = NaN;
         if(!_loc8_)
         {
            super.update(param1);
            while(true)
            {
               §§push(this.§>"J§);
               loop1:
               while(true)
               {
                  §§push(Boolean(§§pop()));
                  if(_loc9_ || this)
                  {
                     §§push(§§pop());
                     if(!(_loc8_ && param1))
                     {
                        if(§§pop())
                        {
                           if(_loc9_ || this)
                           {
                              §§pop();
                              if(_loc9_)
                              {
                                 §§push(Boolean(getBody()));
                                 if(!_loc8_)
                                 {
                                    addr107:
                                    if(§§pop())
                                    {
                                       if(_loc9_ || _loc3_)
                                       {
                                          if(!_loc9_)
                                          {
                                             break;
                                          }
                                          §§push(this);
                                          §§push(this.§@!k§);
                                          if(_loc9_)
                                          {
                                             §§push(§§pop() - param1);
                                          }
                                          §§pop().§@!k§ = §§pop();
                                          loop2:
                                          while(true)
                                          {
                                             loop3:
                                             while(true)
                                             {
                                                §§push(this.§]!Y§);
                                                if(!_loc8_)
                                                {
                                                   §§push(Boolean(§§pop()));
                                                   loop4:
                                                   while(true)
                                                   {
                                                      §§push(§§pop());
                                                      while(true)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            if(_loc9_)
                                                            {
                                                               §§pop();
                                                               if(!(_loc8_ && param1))
                                                               {
                                                                  if(!_loc9_)
                                                                  {
                                                                     continue loop2;
                                                                  }
                                                                  §§push(!getBody().IsAwake());
                                                                  if(_loc9_ || _loc2_)
                                                                  {
                                                                     if(_loc9_)
                                                                     {
                                                                        if(!_loc8_)
                                                                        {
                                                                           addr51:
                                                                           §§push(§§pop());
                                                                           if(!(_loc8_ && _loc2_))
                                                                           {
                                                                              if(!(_loc9_ || param1))
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              if(!§§pop())
                                                                              {
                                                                                 if(!_loc8_)
                                                                                 {
                                                                                    §§pop();
                                                                                    if(_loc9_ || _loc2_)
                                                                                    {
                                                                                       if(false)
                                                                                       {
                                                                                          continue loop3;
                                                                                       }
                                                                                       §§push(this.§@!k§);
                                                                                       if(_loc9_)
                                                                                       {
                                                                                          §§push(§§pop() <= 0);
                                                                                          if(!(_loc8_ && _loc3_))
                                                                                          {
                                                                                             addr175:
                                                                                             if(§§pop())
                                                                                             {
                                                                                                if(!_loc8_)
                                                                                                {
                                                                                                   addr178:
                                                                                                   _loc2_ = getBody().GetPosition();
                                                                                                   if(_loc9_)
                                                                                                   {
                                                                                                      §?l§.§'h§.particles.§@6§("POWERUP_BOMB_UNWRAP",§0i§.§^"X§,§6!O§.PARTICLE_GROUP_GAME_EFFECTS,§0i§.PARTICLE_TYPE_KINETIC_PARTICLE,_loc2_.x,_loc2_.y,2000,"",§0i§.§?"Z§,0,0,0,0,1,20,true);
                                                                                                      if(_loc9_)
                                                                                                      {
                                                                                                         §§push(§@"M§);
                                                                                                         §§push("Sound_Tnt_Gift_Unwrap_");
                                                                                                         if(_loc9_ || this)
                                                                                                         {
                                                                                                            §§push(§§pop() + Math.round(Math.random() * 2 + 1));
                                                                                                         }
                                                                                                         §§pop().§3"C§(§§pop());
                                                                                                      }
                                                                                                   }
                                                                                                   _loc3_ = this.§'H§.addObject("MISC_EXPLOSIVE_TNT",getBody().GetPosition().x,getBody().GetPosition().y,§,!c§());
                                                                                                   if(_loc9_ || param1)
                                                                                                   {
                                                                                                      _loc3_.§+" §(getBody().GetLinearVelocity().Copy());
                                                                                                      addr265:
                                                                                                      _loc3_.§0!?§(getBody().GetAngularVelocity());
                                                                                                      if(!_loc8_)
                                                                                                      {
                                                                                                         this.§'H§.§8`§(this);
                                                                                                         if(!_loc8_)
                                                                                                         {
                                                                                                            addr263:
                                                                                                            if(false)
                                                                                                            {
                                                                                                               §§goto(addr265);
                                                                                                            }
                                                                                                            §§push(this.§@!G§);
                                                                                                            if(!_loc8_)
                                                                                                            {
                                                                                                               if(§§pop())
                                                                                                               {
                                                                                                                  if(!_loc8_)
                                                                                                                  {
                                                                                                                     §§push(this.§,!K§);
                                                                                                                     if(_loc9_ || this)
                                                                                                                     {
                                                                                                                        §§push(this.§^"!§);
                                                                                                                        if(!_loc8_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() / 1000);
                                                                                                                           if(_loc9_)
                                                                                                                           {
                                                                                                                              §§push(§§pop() * Math.PI);
                                                                                                                              if(_loc9_ || _loc3_)
                                                                                                                              {
                                                                                                                              }
                                                                                                                              addr318:
                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                              if(_loc9_ || this)
                                                                                                                              {
                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                 if(_loc9_ || this)
                                                                                                                                 {
                                                                                                                                    addr334:
                                                                                                                                    _loc4_ = §§pop();
                                                                                                                                    addr438:
                                                                                                                                    if(!(_loc8_ && this))
                                                                                                                                    {
                                                                                                                                       addr531:
                                                                                                                                       _loc5_ = Math.sin(_loc4_);
                                                                                                                                       §§push(this.§>"J§);
                                                                                                                                       if(!_loc8_)
                                                                                                                                       {
                                                                                                                                          break loop3;
                                                                                                                                       }
                                                                                                                                       §§push(§§pop());
                                                                                                                                       break;
                                                                                                                                       addr532:
                                                                                                                                    }
                                                                                                                                    loop16:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       this.§@!G§ = null;
                                                                                                                                       loop17:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(!(_loc8_ && _loc2_))
                                                                                                                                          {
                                                                                                                                             addr714:
                                                                                                                                             §§push(this);
                                                                                                                                             §§push(this.§^"!§);
                                                                                                                                             if(!_loc8_)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() + param1);
                                                                                                                                             }
                                                                                                                                             §§pop().§^"!§ = §§pop();
                                                                                                                                             addr722:
                                                                                                                                             return;
                                                                                                                                             addr343:
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             loop15:
                                                                                                                                             while(_loc9_)
                                                                                                                                             {
                                                                                                                                                §§push(this.§@!G§);
                                                                                                                                                while(!(_loc8_ && param1))
                                                                                                                                                {
                                                                                                                                                   §§pop().dispose();
                                                                                                                                                   if(_loc9_ || param1)
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr438);
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr722);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                loop7:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(this.§@!G§);
                                                                                                                                                   loop8:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§pop().y = §§pop().y + 1;
                                                                                                                                                      addr481:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(this.§@!G§);
                                                                                                                                                         addr442:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(this.§@!G§);
                                                                                                                                                            if(_loc8_ && param1)
                                                                                                                                                            {
                                                                                                                                                               break;
                                                                                                                                                            }
                                                                                                                                                            if(_loc9_ || this)
                                                                                                                                                            {
                                                                                                                                                               §§pop().rotation = §§pop().rotation + 0.01;
                                                                                                                                                               break loop15;
                                                                                                                                                            }
                                                                                                                                                            §§pop().alpha = §§pop().alpha - 0.025;
                                                                                                                                                            if(_loc9_)
                                                                                                                                                            {
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  continue loop7;
                                                                                                                                                               }
                                                                                                                                                               addr509:
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr722);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         continue loop8;
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                addr423:
                                                                                                                                             }
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(!(_loc8_ && _loc3_))
                                                                                                                                                {
                                                                                                                                                   if(_loc9_)
                                                                                                                                                   {
                                                                                                                                                      addr412:
                                                                                                                                                      §§push(this.§@!G§);
                                                                                                                                                      if(_loc9_)
                                                                                                                                                      {
                                                                                                                                                         if(!_loc8_)
                                                                                                                                                         {
                                                                                                                                                            addr416:
                                                                                                                                                            if(§§pop().alpha <= 0)
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr419);
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr343);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            addr501:
                                                                                                                                                            §§goto(addr503);
                                                                                                                                                            §§push(this.§@!G§);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr722);
                                                                                                                                                      }
                                                                                                                                                      break;
                                                                                                                                                      addr471:
                                                                                                                                                   }
                                                                                                                                                   do
                                                                                                                                                   {
                                                                                                                                                      if(_loc9_)
                                                                                                                                                      {
                                                                                                                                                         if(_loc9_ || this)
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr501);
                                                                                                                                                            §§push(this.§@!G§);
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr532);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      loop14:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(!getBody());
                                                                                                                                                         if(!_loc8_)
                                                                                                                                                         {
                                                                                                                                                            break;
                                                                                                                                                         }
                                                                                                                                                         addr525:
                                                                                                                                                         addr525:
                                                                                                                                                         addr525:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§pop();
                                                                                                                                                            continue loop14;
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   while(§§pop());
                                                                                                                                                   
                                                                                                                                                   §§push(this.§@!G§);
                                                                                                                                                   if(_loc9_)
                                                                                                                                                   {
                                                                                                                                                      if(!(_loc8_ && this))
                                                                                                                                                      {
                                                                                                                                                         §§push(Math.cos(_loc4_) * §^!Z§.§1!Z§);
                                                                                                                                                         if(_loc9_ || _loc3_)
                                                                                                                                                         {
                                                                                                                                                            §§pop().rotation = §§pop();
                                                                                                                                                            if(_loc9_ || _loc3_)
                                                                                                                                                            {
                                                                                                                                                               if(!(_loc9_ || _loc3_))
                                                                                                                                                               {
                                                                                                                                                                  continue loop17;
                                                                                                                                                               }
                                                                                                                                                               if(false)
                                                                                                                                                               {
                                                                                                                                                                  continue loop16;
                                                                                                                                                               }
                                                                                                                                                               _loc6_ = new Point(-this.§5!d§.x,-this.§5!d§.y * 2);
                                                                                                                                                               if(!_loc8_)
                                                                                                                                                               {
                                                                                                                                                                  this.§@!G§.x = x + _loc6_.x * Math.cos(this.§@!G§.rotation) - _loc6_.y * Math.sin(this.§@!G§.rotation);
                                                                                                                                                                  addr713:
                                                                                                                                                                  §§push(this.§@!G§);
                                                                                                                                                                  if(_loc9_ || _loc2_)
                                                                                                                                                                  {
                                                                                                                                                                     §§pop().y = y + _loc6_.x * Math.sin(this.§@!G§.rotation) + _loc6_.y * Math.cos(this.§@!G§.rotation);
                                                                                                                                                                     addr629:
                                                                                                                                                                     §§push(Number(getBody().GetLinearVelocity().y));
                                                                                                                                                                     §§push(Number(getBody().GetLinearVelocity().y));
                                                                                                                                                                     if(!_loc8_)
                                                                                                                                                                     {
                                                                                                                                                                        _loc7_ = §§pop();
                                                                                                                                                                        addr633:
                                                                                                                                                                        §§push(§^!Z§.§3!8§);
                                                                                                                                                                     }
                                                                                                                                                                     addr680:
                                                                                                                                                                     if(§§pop() > §§pop())
                                                                                                                                                                     {
                                                                                                                                                                        addr636:
                                                                                                                                                                        addr646:
                                                                                                                                                                        §§push(§^!Z§.§3!8§);
                                                                                                                                                                        if(!(_loc8_ && param1))
                                                                                                                                                                        {
                                                                                                                                                                           §§push(Number(§§pop()));
                                                                                                                                                                        }
                                                                                                                                                                        _loc7_ = §§pop();
                                                                                                                                                                        if(_loc9_)
                                                                                                                                                                        {
                                                                                                                                                                           addr550:
                                                                                                                                                                           getBody().SetLinearVelocity(new b2Vec2(_loc5_ * §^!Z§.§&"H§,_loc7_));
                                                                                                                                                                           addr572:
                                                                                                                                                                           if(_loc9_ || this)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc9_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(false)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§goto(addr572);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr714);
                                                                                                                                                                              }
                                                                                                                                                                              addr591:
                                                                                                                                                                              if(!_loc8_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§^!Z§.§3!8§);
                                                                                                                                                                                 if(!_loc8_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc9_ || this)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(-§§pop());
                                                                                                                                                                                       if(_loc9_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!(_loc8_ && param1))
                                                                                                                                                                                          {
                                                                                                                                                                                             addr615:
                                                                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                                                                             if(_loc9_)
                                                                                                                                                                                             {
                                                                                                                                                                                                _loc7_ = §§pop();
                                                                                                                                                                                                addr618:
                                                                                                                                                                                                if(_loc9_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!_loc8_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§goto(addr550);
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr636);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr633);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr629);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr615);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr646);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr615);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr680);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr618);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr713);
                                                                                                                                                                     }
                                                                                                                                                                     §§push(_loc7_);
                                                                                                                                                                     if(_loc9_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§^!Z§.§3!8§);
                                                                                                                                                                        if(!(_loc8_ && param1))
                                                                                                                                                                        {
                                                                                                                                                                           §§push(-§§pop());
                                                                                                                                                                        }
                                                                                                                                                                        if(!_loc8_)
                                                                                                                                                                        {
                                                                                                                                                                           if(§§pop() < §§pop())
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr591);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr550);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr629);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr615);
                                                                                                                                                                  }
                                                                                                                                                                  addr683:
                                                                                                                                                                  §§goto(addr683);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr636);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr714);
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr412);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr423);
                                                                                                                                                }
                                                                                                                                                §§goto(addr481);
                                                                                                                                             }
                                                                                                                                             addr419:
                                                                                                                                             §§goto(addr442);
                                                                                                                                          }
                                                                                                                                          §§goto(addr714);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr531);
                                                                                                                              }
                                                                                                                              §§goto(addr334);
                                                                                                                           }
                                                                                                                           §§push(§§pop() * §^!Z§.§1d§);
                                                                                                                        }
                                                                                                                        §§goto(addr318);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr334);
                                                                                                               }
                                                                                                               §§goto(addr714);
                                                                                                            }
                                                                                                            §§goto(addr416);
                                                                                                         }
                                                                                                         §§goto(addr265);
                                                                                                      }
                                                                                                      addr280:
                                                                                                      §§goto(addr280);
                                                                                                   }
                                                                                                   §§goto(addr263);
                                                                                                }
                                                                                                §§goto(addr334);
                                                                                             }
                                                                                             §§goto(addr263);
                                                                                          }
                                                                                          §§goto(addr489);
                                                                                       }
                                                                                       §§goto(addr531);
                                                                                    }
                                                                                    §§goto(addr714);
                                                                                 }
                                                                                 §§goto(addr489);
                                                                              }
                                                                              §§goto(addr175);
                                                                           }
                                                                           break;
                                                                        }
                                                                        continue loop1;
                                                                     }
                                                                     continue loop4;
                                                                  }
                                                                  §§goto(addr525);
                                                               }
                                                               §§goto(addr178);
                                                            }
                                                            §§goto(addr531);
                                                         }
                                                         §§goto(addr51);
                                                      }
                                                      addr524:
                                                      if(!§§pop())
                                                      {
                                                         §§goto(addr525);
                                                      }
                                                      §§goto(addr489);
                                                   }
                                                }
                                                break;
                                             }
                                             §§push(Boolean(§§pop()));
                                             if(!(_loc8_ && _loc2_))
                                             {
                                                §§goto(addr531);
                                             }
                                             §§goto(addr525);
                                          }
                                       }
                                       §§goto(addr471);
                                    }
                                    §§goto(addr263);
                                 }
                                 §§goto(addr531);
                              }
                              §§goto(addr423);
                           }
                           §§goto(addr175);
                        }
                        §§goto(addr107);
                     }
                     §§goto(addr524);
                  }
                  §§goto(addr531);
               }
            }
         }
         §§goto(addr509);
      }
      
      public function get §&"+§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §§push(!getBody());
            if(!(_loc1_ && this))
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     §§pop();
                     addr49:
                     return this.§@!G§ == null;
                  }
               }
            }
         }
         §§goto(addr49);
      }
      
      public function get §'"9§() : Boolean
      {
         return this.§>"J§;
      }
   }
}
