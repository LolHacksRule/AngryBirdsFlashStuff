package §`!G§
{
   import §!"3§.b2MassData;
   import §!"3§.b2PolygonShape;
   import §&E§.§0i§;
   import §&E§.§6!O§;
   import §'!6§.Sprite;
   import §4!<§.§'!S§;
   import §6!^§.b2Vec2;
   import §6"1§.b2Body;
   import §6"1§.b2World;
   import §@!"§.§?l§;
   import flash.geom.Point;
   
   public class §<E§ extends §>o§
   {
       
      
      private const §8"&§:int = 2000;
      
      private const §#!<§:int = 0;
      
      private const §!"!§:int = 2000;
      
      public var §"V§:Point;
      
      public var §8!M§:Point;
      
      public var §-!4§:Point;
      
      private var §4!A§:b2Vec2;
      
      private var §6M§:Boolean = false;
      
      private var §?"L§:Number;
      
      private var §!"Z§:Number = 0;
      
      private var §=!<§:Boolean = false;
      
      private var §-"-§:§8"=§;
      
      private var §4!-§:Boolean = false;
      
      private var §>"<§:Point;
      
      private var §&L§:Number = 0.05;
      
      private const §1E§:Number = 2.0;
      
      private var §&"R§:Number = 0;
      
      private var §0!W§:Point;
      
      private const §0B§:Number = 3.65;
      
      private const §'+§:Number = 1.8859999;
      
      private var § j§:Boolean = false;
      
      private var §@b§:Number = 1.0;
      
      private var §=O§:Boolean = false;
      
      private var §,"&§:b2PolygonShape;
      
      public function §<E§(param1:§8"=§, param2:Sprite, param3:b2World, param4:§'!S§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = true;
         if(_loc14_)
         {
            §§push(0.1);
            if(_loc14_ || this)
            {
               §§push(Number(§§pop()));
            }
            param10 = §§pop();
            if(_loc14_)
            {
               param2.scaleX = param2.scaleY = 0.1;
               if(!_loc13_)
               {
                  this.§0!W§ = new Point(0,0);
                  loop4:
                  while(true)
                  {
                     super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,"PARTICLE_WONDERLAND_MUSHROOM",3);
                     addr119:
                     while(!_loc14_)
                     {
                        continue loop4;
                     }
                  }
                  addr42:
               }
               while(true)
               {
                  this.§,"&§ = getBody().GetFixtureList().GetShape().Copy() as b2PolygonShape;
                  loop1:
                  do
                  {
                     this.§-"-§ = param1;
                     while(!_loc13_)
                     {
                        this.init();
                        if(_loc14_ || param2)
                        {
                           continue loop1;
                        }
                     }
                     §§goto(addr119);
                  }
                  while(_loc13_ && param3);
                  
                  §§goto(addr74);
               }
            }
            §§goto(addr42);
         }
         addr74:
      }
      
      private function init() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc1_:b2Body = getBody();
         var _loc2_:b2MassData = new b2MassData();
         if(!_loc6_)
         {
            _loc1_.SetType(b2Body.b2_kinematicBody);
         }
         loop0:
         while(true)
         {
            this.§?"L§ = this.§8"&§;
            loop1:
            while(true)
            {
               this.§!"Z§ = this.§!"!§;
               loop2:
               while(true)
               {
                  loop3:
                  while(true)
                  {
                     this.sprite.visible = false;
                     while(!_loc6_)
                     {
                        if(!_loc5_)
                        {
                           continue loop1;
                        }
                        §]"K§ = true;
                        if(!_loc5_)
                        {
                           continue;
                        }
                        if(_loc6_)
                        {
                           break loop3;
                        }
                        if(false)
                        {
                           continue loop3;
                        }
                        §§push(_loc1_.GetPosition().x);
                        if(_loc5_ || _loc3_)
                        {
                           §§push(§§pop() / §'!S§.§2"<§);
                           if(!_loc6_)
                           {
                              §§push(§§pop() - sprite.x);
                              if(_loc5_)
                              {
                                 addr94:
                                 §§push(Number(§§pop()));
                              }
                           }
                           var _loc3_:* = §§pop();
                           §§push(_loc1_.GetPosition().y);
                           if(!_loc6_)
                           {
                              §§push(§§pop() / §'!S§.§2"<§);
                              if(_loc5_)
                              {
                                 §§goto(addr116);
                              }
                              §§goto(addr126);
                           }
                           addr116:
                           §§push(§§pop() - sprite.y);
                           if(_loc5_ || _loc3_)
                           {
                              addr126:
                              §§push(Number(§§pop()));
                           }
                           var _loc4_:* = §§pop();
                           if(_loc5_)
                           {
                              this.§>"<§ = new Point(_loc3_,_loc4_);
                           }
                           return;
                        }
                        §§goto(addr94);
                     }
                     continue loop2;
                  }
                  continue loop0;
               }
            }
         }
      }
      
      override public function addDestructionParticles(param1:§6!O§) : void
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         var _loc10_:* = 0;
         var _loc2_:Number = 4;
         var _loc3_:int = Math.min(10,Math.max(1,§`!A§(false))) + 1;
         var _loc4_:* = Number(90);
         var _loc5_:int = 0;
         while(true)
         {
            §§push(_loc5_);
            if(_loc11_)
            {
               if(!_loc12_)
               {
                  if(§§pop() >= _loc3_)
                  {
                     if(!_loc12_)
                     {
                        break;
                     }
                     loop1:
                     while(true)
                     {
                        if(_loc11_ || _loc3_)
                        {
                           if(!(_loc12_ && this))
                           {
                              break;
                           }
                           loop2:
                           while(true)
                           {
                              §§push(Number(Math.random()));
                              if(_loc12_)
                              {
                                 continue;
                              }
                              if(!_loc12_)
                              {
                                 _loc9_ = §§pop();
                                 loop3:
                                 while(true)
                                 {
                                    §§push(1);
                                    addr146:
                                    while(true)
                                    {
                                       §§push(int(§§pop() + Math.floor(Math.random() * §!"F§)));
                                       addr154:
                                       while(true)
                                       {
                                          _loc10_ = §§pop();
                                          loop30:
                                          while(true)
                                          {
                                             §§push(param1);
                                             §§push(§0"9§ + "_");
                                             if(!_loc12_)
                                             {
                                                §§push(§§pop() + _loc10_);
                                             }
                                             §§pop().§@6§(§§pop(),§0i§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§6!O§.PARTICLE_GROUP_GAME_EFFECTS,§0i§.PARTICLE_TYPE_KINETIC_PARTICLE,getBody().GetPosition().x + _loc7_,getBody().GetPosition().y + _loc8_,§1!9§ + Math.random() * 500,"",getParticleMaterialFromEngineMaterial(§@x§),_loc2_ * Math.cos(_loc6_),-_loc2_ * Math.sin(_loc6_),10,_loc2_ * 50,_loc9_);
                                             addr132:
                                             while(true)
                                             {
                                                if(!(_loc11_ || _loc3_))
                                                {
                                                   continue loop30;
                                                }
                                                if(!_loc11_)
                                                {
                                                   continue loop3;
                                                }
                                                if(_loc11_)
                                                {
                                                   break;
                                                }
                                                loop23:
                                                while(true)
                                                {
                                                   if(!(_loc12_ && this))
                                                   {
                                                      §§push(-§2!8§.mH);
                                                      if(_loc12_ && this)
                                                      {
                                                         continue loop2;
                                                      }
                                                      §§push(§'!S§.§2"<§);
                                                      if(_loc11_ || this)
                                                      {
                                                         if(!_loc12_)
                                                         {
                                                            if(!(_loc12_ && _loc3_))
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               if(_loc11_ || param1)
                                                               {
                                                                  if(_loc11_)
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                     if(!(_loc12_ && this))
                                                                     {
                                                                        §§push(§§pop());
                                                                        if(!(_loc12_ && _loc2_))
                                                                        {
                                                                           addr231:
                                                                           if(!_loc12_)
                                                                           {
                                                                              addr233:
                                                                              _loc8_ = §§pop();
                                                                              while(true)
                                                                              {
                                                                                 if(_loc11_ || _loc2_)
                                                                                 {
                                                                                    if(!(_loc12_ && param1))
                                                                                    {
                                                                                       if(!_loc12_)
                                                                                       {
                                                                                          §§push(Math.random() * -_loc8_);
                                                                                          if(_loc11_ || param1)
                                                                                          {
                                                                                             if(_loc11_)
                                                                                             {
                                                                                                if(_loc11_)
                                                                                                {
                                                                                                   §§push(2);
                                                                                                   if(!(_loc12_ && this))
                                                                                                   {
                                                                                                      addr275:
                                                                                                      §§push(§§pop() * §§pop());
                                                                                                      loop13:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(_loc11_)
                                                                                                         {
                                                                                                            §§push(§§pop() + §§pop());
                                                                                                            if(_loc12_)
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(Number(§§pop()));
                                                                                                               break loop13;
                                                                                                            }
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            loop9:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               _loc7_ = §§pop();
                                                                                                               if(_loc11_)
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(Math.random() * -_loc7_);
                                                                                                                     addr332:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(2);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  addr327:
                                                                                                               }
                                                                                                               addr335:
                                                                                                               loop19:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(Number(§§pop()));
                                                                                                                  addr336:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc11_)
                                                                                                                     {
                                                                                                                        _loc7_ = §§pop();
                                                                                                                        continue loop23;
                                                                                                                     }
                                                                                                                     addr360:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(Math.random() * (720 / _loc3_));
                                                                                                                        addr366:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                           loop21:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(Number(§§pop()));
                                                                                                                              if(_loc11_ || param1)
                                                                                                                              {
                                                                                                                                 addr375:
                                                                                                                                 §§push(§§pop());
                                                                                                                                 loop11:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    _loc4_ = §§pop();
                                                                                                                                    addr377:
                                                                                                                                    loop14:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(180 / Math.PI);
                                                                                                                                       addr381:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() / §§pop());
                                                                                                                                          addr382:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                _loc6_ = §§pop();
                                                                                                                                                addr384:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(-§2!8§.mW);
                                                                                                                                                   if(_loc11_ || _loc3_)
                                                                                                                                                   {
                                                                                                                                                      if(!(_loc11_ || _loc2_))
                                                                                                                                                      {
                                                                                                                                                         continue;
                                                                                                                                                      }
                                                                                                                                                      if(_loc12_ && this)
                                                                                                                                                      {
                                                                                                                                                         continue loop21;
                                                                                                                                                      }
                                                                                                                                                      addr308:
                                                                                                                                                      §§push(§'!S§.§2"<§);
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(_loc12_ && param1)
                                                                                                                                                         {
                                                                                                                                                            continue loop14;
                                                                                                                                                         }
                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                         if(_loc12_)
                                                                                                                                                         {
                                                                                                                                                            continue loop19;
                                                                                                                                                         }
                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                         if(_loc12_)
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr327);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr308);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      continue loop9;
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                continue loop21;
                                                                                                                                             }
                                                                                                                                             continue loop21;
                                                                                                                                          }
                                                                                                                                          continue loop11;
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr382);
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr233);
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      continue loop2;
                                                                                                      addr275:
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§goto(addr334);
                                                                                                      §§goto(addr332);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr310);
                                                                                             }
                                                                                             §§goto(addr332);
                                                                                          }
                                                                                          §§goto(addr275);
                                                                                       }
                                                                                       §§goto(addr377);
                                                                                    }
                                                                                    §§goto(addr335);
                                                                                 }
                                                                                 §§goto(addr336);
                                                                              }
                                                                              addr234:
                                                                           }
                                                                           §§goto(addr334);
                                                                        }
                                                                        §§goto(addr275);
                                                                     }
                                                                     §§goto(addr234);
                                                                  }
                                                                  §§goto(addr382);
                                                               }
                                                               §§goto(addr280);
                                                            }
                                                            §§goto(addr366);
                                                         }
                                                         §§goto(addr381);
                                                      }
                                                      §§goto(addr231);
                                                   }
                                                   §§goto(addr384);
                                                }
                                                continue loop30;
                                             }
                                             continue loop1;
                                          }
                                       }
                                    }
                                 }
                              }
                              §§goto(addr233);
                           }
                        }
                        §§goto(addr132);
                     }
                     continue;
                  }
                  §§push(_loc4_);
                  §§goto(addr360);
               }
               §§goto(addr146);
            }
            §§goto(addr154);
         }
      }
      
      public function §4&§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(§?l§.§'h§);
            loop0:
            while(true)
            {
               §§push(§§pop().objects);
               addr68:
               while(true)
               {
                  §§pop().§^!#§.removeChild(sprite);
                  continue loop0;
               }
            }
         }
      }
      
      public function §]"J§(param1:Point, param2:Point) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param1))
         {
            this.§6M§ = true;
         }
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               this.§-!4§ = param1;
               while(_loc4_)
               {
                  this.§8!M§ = param2;
                  if(_loc4_ || param2)
                  {
                     if(true)
                     {
                        break loop1;
                     }
                     continue loop1;
                  }
               }
               continue loop0;
            }
            var _loc3_:b2Body = getBody();
            if(!_loc5_)
            {
               _loc3_.SetPosition(new b2Vec2(this.§-!4§.x - this.§8!M§.x,this.§-!4§.y - this.§8!M§.y));
            }
            do
            {
               this.§4!A§ = _loc3_.GetPosition().Copy();
            }
            while(_loc5_);
            
            return;
         }
      }
      
      override public function update(param1:Number) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc2_:int = 0;
         var _loc3_:Number = NaN;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc6_:b2Vec2 = null;
         if(_loc7_ || param1)
         {
            §§push(this.§!"Z§);
            loop0:
            while(true)
            {
               §§push(0);
               loop1:
               while(§§pop() <= §§pop())
               {
                  loop2:
                  while(true)
                  {
                     §§push(this.§6M§);
                     loop3:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           this.reset();
                           break;
                        }
                        loop4:
                        while(_loc7_ || _loc3_)
                        {
                           §§push(this);
                           §§push(this.§?"L§);
                           if(!(_loc8_ && _loc2_))
                           {
                              §§push(§§pop() - param1);
                           }
                           §§pop().§?"L§ = §§pop();
                           loop5:
                           for(; _loc7_ || param1; if(_loc8_ && _loc2_)
                           {
                              continue;
                           },if(_loc8_)
                           {
                              continue loop4;
                           },if(_loc7_ || param1)
                           {
                              §§push(this.§6M§);
                              if(!(_loc8_ && param1))
                              {
                                 if(!_loc8_)
                                 {
                                    if(_loc7_ || this)
                                    {
                                       if(_loc7_)
                                       {
                                          §§goto(addr300);
                                          §§push(Boolean(§§pop()));
                                       }
                                       §§goto(addr353);
                                    }
                                    §§goto(addr354);
                                 }
                                 §§goto(addr372);
                              }
                              §§goto(addr301);
                           },§§goto(addr574))
                           {
                              §§push(this.§?"L§);
                              loop6:
                              while(true)
                              {
                                 §§push(0);
                                 addr439:
                                 loop7:
                                 while(_loc7_)
                                 {
                                    if(!_loc7_)
                                    {
                                       continue loop1;
                                    }
                                    if(§§pop() > §§pop())
                                    {
                                       addr350:
                                       loop15:
                                       while(true)
                                       {
                                          §§push(this.§=!<§);
                                          addr353:
                                          while(true)
                                          {
                                             §§push(!§§pop());
                                             addr354:
                                             addr537:
                                             while(true)
                                             {
                                                if(!(_loc8_ && param1))
                                                {
                                                   if(!_loc8_)
                                                   {
                                                      §§push(§§pop());
                                                      if(!(_loc8_ && this))
                                                      {
                                                         if(§§pop())
                                                         {
                                                            addr372:
                                                            loop18:
                                                            while(_loc7_ || this)
                                                            {
                                                               §§pop();
                                                               while(true)
                                                               {
                                                                  if(_loc7_)
                                                                  {
                                                                     continue loop5;
                                                                  }
                                                                  addr431:
                                                                  while(true)
                                                                  {
                                                                     this.§6M§ = false;
                                                                     continue loop15;
                                                                  }
                                                                  addr330:
                                                                  if(!(_loc7_ || param1))
                                                                  {
                                                                     continue;
                                                                  }
                                                                  if(!_loc8_)
                                                                  {
                                                                     if(!_loc8_)
                                                                     {
                                                                        if(_loc7_)
                                                                        {
                                                                           if(_loc7_)
                                                                           {
                                                                              if(!_loc8_)
                                                                              {
                                                                                 if(!_loc7_)
                                                                                 {
                                                                                    break loop1;
                                                                                 }
                                                                                 addr81:
                                                                                 if(_loc2_ >= 1)
                                                                                 {
                                                                                    addr85:
                                                                                    if(_loc7_ || _loc3_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    addr109:
                                                                                    §§goto(addr81);
                                                                                 }
                                                                                 addr276:
                                                                                 _loc3_ = (Math.random() * 90 - 45) * 0.0174532925;
                                                                                 §§push(this.§8!M§.x * Math.cos(_loc3_) - this.§8!M§.y * Math.sin(_loc3_));
                                                                                 if(!(_loc8_ && param1))
                                                                                 {
                                                                                    §§push(Number(§§pop()));
                                                                                 }
                                                                                 addr271:
                                                                                 addr274:
                                                                                 addr275:
                                                                                 if(!_loc8_)
                                                                                 {
                                                                                    _loc4_ = §§pop();
                                                                                    §§push(this.§8!M§.x * Math.sin(_loc3_));
                                                                                    if(!_loc8_)
                                                                                    {
                                                                                       if(!_loc8_)
                                                                                       {
                                                                                          if(_loc7_)
                                                                                          {
                                                                                             §§push(this.§8!M§.y * Math.cos(_loc3_));
                                                                                             if(_loc7_)
                                                                                             {
                                                                                                if(_loc7_ || this)
                                                                                                {
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                   if(_loc7_)
                                                                                                   {
                                                                                                      if(_loc7_ || _loc2_)
                                                                                                      {
                                                                                                         addr230:
                                                                                                         §§push(Number(§§pop()));
                                                                                                         if(_loc7_)
                                                                                                         {
                                                                                                            if(_loc7_)
                                                                                                            {
                                                                                                               _loc5_ = §§pop();
                                                                                                               §§push(§?l§.§'h§.particles);
                                                                                                               §§push("PARTICLE_HALLOWEEN_STONE_");
                                                                                                               if(!(_loc8_ && _loc3_))
                                                                                                               {
                                                                                                                  §§push(§§pop() + Math.round(Math.random() * 2 + 1));
                                                                                                               }
                                                                                                               §§pop().§@6§(§§pop(),§0i§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§6!O§.PARTICLE_GROUP_GAME_EFFECTS,§0i§.PARTICLE_TYPE_KINETIC_PARTICLE,this.§-!4§.x + -this.§8!M§.y * (Math.random() * 2),this.§-!4§.y + this.§8!M§.x * (Math.random() * 2),800,"",0,_loc4_ * (Math.random() * 6 + 3),_loc5_ * (Math.random() * 6 + 3),8,Math.random() * 180,1);
                                                                                                               _loc2_++;
                                                                                                               §§goto(addr109);
                                                                                                               addr188:
                                                                                                               addr235:
                                                                                                            }
                                                                                                            §§goto(addr271);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr276);
                                                                                                   }
                                                                                                   §§goto(addr230);
                                                                                                }
                                                                                                §§goto(addr274);
                                                                                             }
                                                                                             §§goto(addr276);
                                                                                          }
                                                                                          §§goto(addr275);
                                                                                       }
                                                                                       §§goto(addr276);
                                                                                    }
                                                                                    §§goto(addr230);
                                                                                    addr263:
                                                                                 }
                                                                                 addr273:
                                                                                 §§goto(addr273);
                                                                              }
                                                                              addr541:
                                                                              if(!(_loc8_ && _loc3_))
                                                                              {
                                                                                 this.§=O§ = true;
                                                                                 break loop5;
                                                                              }
                                                                              addr493:
                                                                              addr493:
                                                                              return;
                                                                              addr568:
                                                                           }
                                                                           addr525:
                                                                        }
                                                                        else
                                                                        {
                                                                           while(_loc7_ || this)
                                                                           {
                                                                              §§push(this.§=!<§);
                                                                              break loop18;
                                                                           }
                                                                           addr582:
                                                                           if(_loc8_)
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 addr578:
                                                                                 §§push(this.§!"Z§);
                                                                                 if(_loc7_)
                                                                                 {
                                                                                    break loop7;
                                                                                 }
                                                                                 continue loop0;
                                                                              }
                                                                              §§goto(addr493);
                                                                              addr601:
                                                                           }
                                                                           getBody().SetActive(true);
                                                                           getBody().SetSleepingAllowed(false);
                                                                           this.sprite.visible = true;
                                                                           §§goto(addr568);
                                                                           addr588:
                                                                           addr444:
                                                                           addr574:
                                                                        }
                                                                        §§goto(addr493);
                                                                     }
                                                                     while(!_loc8_)
                                                                     {
                                                                        this.reset();
                                                                     }
                                                                     continue loop2;
                                                                     addr456:
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     continue loop6;
                                                                  }
                                                               }
                                                            }
                                                            while(_loc7_)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  continue loop6;
                                                               }
                                                               §§goto(addr456);
                                                               §§goto(addr372);
                                                            }
                                                            addr372:
                                                            addr560:
                                                            addr559:
                                                            if(§§pop())
                                                            {
                                                               addr561:
                                                               §§pop();
                                                               break loop4;
                                                            }
                                                            if(§§pop())
                                                            {
                                                               §§goto(addr541);
                                                            }
                                                            §§goto(addr493);
                                                         }
                                                         else
                                                         {
                                                            while(true)
                                                            {
                                                               addr301:
                                                               while(true)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     if(_loc7_ || _loc3_)
                                                                     {
                                                                        if(!(_loc7_ || _loc3_))
                                                                        {
                                                                           continue loop15;
                                                                        }
                                                                        if(_loc7_)
                                                                        {
                                                                           _loc2_ = 0;
                                                                           §§goto(addr330);
                                                                        }
                                                                        §§goto(addr588);
                                                                     }
                                                                     §§goto(addr330);
                                                                  }
                                                               }
                                                            }
                                                            addr300:
                                                         }
                                                         addr46:
                                                         §§push(this.§&"R§);
                                                         if(_loc7_ || param1)
                                                         {
                                                            §§push(this.§8"&§);
                                                            if(!_loc8_)
                                                            {
                                                               if(§§pop() <= §§pop())
                                                               {
                                                                  if(!_loc8_)
                                                                  {
                                                                     if(_loc7_ || _loc2_)
                                                                     {
                                                                        if(!_loc8_)
                                                                        {
                                                                           §§push(this);
                                                                           §§push(this.§&"R§);
                                                                           if(_loc7_)
                                                                           {
                                                                              §§push(§§pop() + param1);
                                                                           }
                                                                           §§pop().§&"R§ = §§pop();
                                                                           this.§ U§();
                                                                           addr80:
                                                                           if(!_loc8_)
                                                                           {
                                                                              if(!_loc8_)
                                                                              {
                                                                                 if(!_loc8_)
                                                                                 {
                                                                                    if(false)
                                                                                    {
                                                                                       §§goto(addr46);
                                                                                    }
                                                                                    _loc6_ = new b2Vec2(this.§4!A§.x + this.§8!M§.x + this.§0!W§.x,this.§4!A§.y + this.§8!M§.y + this.§0!W§.y);
                                                                                    if(!(_loc8_ && _loc3_))
                                                                                    {
                                                                                       getBody().SetPosition(_loc6_);
                                                                                    }
                                                                                    §§goto(addr649);
                                                                                 }
                                                                                 §§goto(addr188);
                                                                              }
                                                                              break loop3;
                                                                           }
                                                                           addr80:
                                                                           §§goto(addr80);
                                                                        }
                                                                        §§goto(addr277);
                                                                     }
                                                                     §§goto(addr85);
                                                                  }
                                                                  §§goto(addr80);
                                                               }
                                                               addr649:
                                                               return;
                                                            }
                                                            §§goto(addr272);
                                                         }
                                                         §§goto(addr230);
                                                      }
                                                      §§goto(addr560);
                                                   }
                                                   break;
                                                }
                                                continue loop3;
                                             }
                                             if(!_loc7_)
                                             {
                                                §§goto(addr561);
                                             }
                                             §§goto(addr560);
                                          }
                                       }
                                       addr350:
                                    }
                                    §§goto(addr444);
                                 }
                                 addr557:
                                 if(§§pop() <= §§pop())
                                 {
                                    §§goto(addr582);
                                 }
                                 addr558:
                                 §§goto(addr559);
                              }
                           }
                           §?l§.§'h§.particles.§@6§("SMOKE_BIG",§0i§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§6!O§.§,G§,§0i§.PARTICLE_TYPE_KINETIC_PARTICLE,this.§4!A§.x,this.§4!A§.y,2000,"",§0i§.§?"Z§,0,0,0,0,1.5,20,true);
                           §§goto(addr525);
                        }
                        while(true)
                        {
                           §§push(this.§=O§);
                           if(_loc7_ || _loc3_)
                           {
                              §§push(!§§pop());
                           }
                           §§goto(addr537);
                           §§goto(addr561);
                        }
                        §§goto(addr372);
                     }
                     if(_loc7_)
                     {
                        if(!(_loc8_ && _loc3_))
                        {
                           §§goto(addr46);
                        }
                        §§goto(addr263);
                     }
                     §§goto(addr235);
                  }
               }
               §§push(this);
               §§push(this.§!"Z§);
               if(!_loc8_)
               {
                  §§push(§§pop() - param1);
               }
               §§pop().§!"Z§ = §§pop();
               §§goto(addr601);
            }
         }
         §§goto(addr562);
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         return super.applyDamage(param1,param2,param3,param4,param5,param6);
      }
      
      private function § U§() : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc1_:b2PolygonShape = getBody().GetFixtureList().GetShape() as b2PolygonShape;
         var _loc2_:Vector.<b2Vec2> = _loc1_.§,!N§();
         §§push(1);
         §§push(this.§?"L§);
         if(!_loc8_)
         {
            §§push(§§pop() / this.§8"&§);
         }
         §§push(§§pop() - §§pop());
         if(_loc9_ || _loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(_loc9_)
         {
            §§push(_loc3_);
            if(_loc9_ || _loc3_)
            {
               if(§§pop() > this.scaleModifier)
               {
                  if(_loc9_ || _loc2_)
                  {
                     addr71:
                     §§push(this.scaleModifier);
                     if(_loc9_ || this)
                     {
                        addr81:
                        _loc3_ = Number(§§pop());
                        if(_loc8_ && this)
                        {
                        }
                        addr92:
                        var _loc4_:int = 0;
                        loop0:
                        while(true)
                        {
                           if(_loc4_ >= _loc2_.length)
                           {
                              if(_loc9_)
                              {
                                 addr215:
                                 if(_loc3_ < this.scaleModifier)
                                 {
                                    if(_loc9_ || this)
                                    {
                                       addr225:
                                       sprite.scaleX = sprite.scaleY = sprite.scaleY + this.§&L§ * 5.5 * §'!S§.§2"<§;
                                       if(_loc9_ || _loc3_)
                                       {
                                          sprite.pivotY = 0;
                                          this.§0!W§.y -= 0.05;
                                          addr292:
                                       }
                                       getBody().ResetMassData();
                                       if(_loc9_ || _loc1_)
                                       {
                                          if(!_loc9_)
                                          {
                                             §§goto(addr292);
                                          }
                                          addr262:
                                          return;
                                          addr278:
                                       }
                                       addr288:
                                       §§goto(addr288);
                                    }
                                    §§goto(addr278);
                                 }
                              }
                              §§goto(addr262);
                           }
                           else
                           {
                              §§push(this.§,"&§);
                              loop1:
                              while(true)
                              {
                                 §§push(§§pop().§,!N§()[_loc4_].x * _loc3_);
                                 if(!(_loc8_ && _loc1_))
                                 {
                                    §§push(10);
                                    while(true)
                                    {
                                       §§push(§§pop() * §§pop());
                                       addr149:
                                       §§push(10);
                                       if(_loc8_ && _loc2_)
                                       {
                                          continue;
                                       }
                                       §§push(§§pop() * §§pop());
                                       if(!(_loc8_ && _loc1_))
                                       {
                                          addr165:
                                          if(_loc9_ || _loc3_)
                                          {
                                             §§push(Number(§§pop()));
                                             if(_loc9_)
                                             {
                                                if(!_loc8_)
                                                {
                                                   _loc6_ = §§pop();
                                                   _loc2_[_loc4_].x = _loc5_;
                                                   addr178:
                                                   if(_loc9_)
                                                   {
                                                      if(_loc8_)
                                                      {
                                                         §§goto(addr178);
                                                      }
                                                      addr106:
                                                      _loc2_[_loc4_].y = _loc6_;
                                                      if(!_loc8_)
                                                      {
                                                         _loc4_++;
                                                         if(_loc9_ || _loc2_)
                                                         {
                                                            if(true)
                                                            {
                                                               continue loop0;
                                                            }
                                                            §§goto(addr106);
                                                         }
                                                      }
                                                      §§goto(addr225);
                                                   }
                                                   §§goto(addr262);
                                                }
                                                else
                                                {
                                                   while(true)
                                                   {
                                                      §§push(Number(§§pop()));
                                                      addr199:
                                                      while(true)
                                                      {
                                                         _loc5_ = §§pop();
                                                         if(!(_loc9_ || _loc3_))
                                                         {
                                                            break;
                                                         }
                                                         continue loop1;
                                                      }
                                                   }
                                                   addr198:
                                                }
                                                §§goto(addr225);
                                             }
                                             else
                                             {
                                                §§goto(addr215);
                                             }
                                          }
                                          §§goto(addr199);
                                       }
                                       §§goto(addr215);
                                    }
                                 }
                                 §§goto(addr198);
                              }
                           }
                           §§goto(addr225);
                        }
                     }
                     §§goto(addr81);
                  }
                  this.§6M§ = false;
               }
               §§goto(addr92);
            }
            §§goto(addr81);
         }
         §§goto(addr71);
      }
      
      private function reset() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(!this.§4!-§)
            {
               if(_loc2_ || _loc2_)
               {
                  this.§4!-§ = true;
               }
               loop0:
               while(true)
               {
                  this.§=!<§ = true;
                  addr70:
                  loop1:
                  while(true)
                  {
                     getBody().SetLinearVelocity(new b2Vec2(0,0));
                     while(_loc2_)
                     {
                        getBody().SetType(b2Body.b2_dynamicBody);
                        if(!_loc1_)
                        {
                           if(!_loc1_)
                           {
                              break loop1;
                           }
                           continue loop0;
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr70);
      }
      
      override public function shouldUpdate() : Boolean
      {
         return true;
      }
      
      public function get scaleModifier() : Number
      {
         return this.§@b§;
      }
      
      public function set scaleModifier(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§@b§ = param1;
         }
      }
   }
}
