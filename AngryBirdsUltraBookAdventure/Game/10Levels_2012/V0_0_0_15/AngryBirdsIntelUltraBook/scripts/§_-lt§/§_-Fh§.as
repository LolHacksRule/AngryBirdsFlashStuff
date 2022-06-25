package §_-lt§
{
   import §_-0DG§.§_-a2§;
   import §_-N3§.§_-Hv§;
   import §_-N3§.§_-Zc§;
   import §_-TG§.§_-00u§;
   import §_-TG§.§_-E0§;
   import §_-aU§.b2BodyDef;
   import §_-aU§.b2World;
   import §_-qO§.§ in§;
   import §_-uY§.Sprite;
   
   public class §_-Fh§ extends §_-0f§
   {
      
      protected static const §_-aQ§:Boolean = false;
      
      protected static const §_-Ml§:Number = 2000;
      
      protected static const §_-Mf§:Number = 0.2;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §_-aQ§ = false;
         }
         do
         {
            §_-Ml§ = 2000;
            do
            {
               §_-Mf§ = 0.2;
            }
            while(_loc1_);
            
         }
         while(!(_loc2_ || §_-Fh§));
         
      }
      
      private var §_-fv§:Number;
      
      private var §_-Vl§:Boolean = false;
      
      protected var §_-Jh§:int = 0;
      
      public function §_-Fh§(param1:§_-30§, param2:Sprite, param3:b2World, param4:§_-00u§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         if(_loc13_ || param1)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param11);
            while(param10)
            {
               if(!(_loc12_ && param3))
               {
                  §_-U-§.mTryToScream = §_-05W§.§_-0C9§ + 1;
               }
               if(!(_loc12_ && param1))
               {
                  addr72:
                  break;
               }
            }
            return;
         }
         §§goto(addr72);
      }
      
      public function get §_-rV§() : Boolean
      {
         return this.§_-Vl§;
      }
      
      override protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:b2BodyDef = super.createBodyDefinition(param1,param2);
         if(!_loc5_)
         {
            _loc3_.§_-mq§ = true;
         }
         do
         {
            _loc3_.§_-ZI§ = 2;
         }
         while(!(_loc4_ || param1));
         
         return _loc3_;
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            §§push(§_-Kh§ < §_-8l§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§pop();
                     addr118:
                     while(true)
                     {
                        §§push(Boolean(§_-01F§()));
                     }
                  }
                  addr117:
               }
               while(true)
               {
                  do
                  {
                     if(!§§pop())
                     {
                        this.§_-fv§ = 0;
                        if(!_loc3_)
                        {
                           if(!_loc2_)
                           {
                              loop5:
                              while(true)
                              {
                                 if(_loc2_)
                                 {
                                    if(!(_loc3_ && param1))
                                    {
                                       while(true)
                                       {
                                          §§push(true);
                                          §§goto(addr91);
                                       }
                                       addr90:
                                    }
                                    §§goto(addr118);
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       §§push(this);
                                       §§push(this.§_-fv§);
                                       if(_loc2_)
                                       {
                                          §§push(§§pop() + param1);
                                       }
                                       §§pop().§_-fv§ = §§pop();
                                       continue loop5;
                                    }
                                    addr103:
                                 }
                              }
                           }
                           §§push(false);
                           if(!_loc2_)
                           {
                              addr91:
                              while(!_loc2_)
                              {
                                 §§goto(addr117);
                              }
                           }
                           continue;
                           return §§pop();
                        }
                        if(_loc3_)
                        {
                           §§goto(addr111);
                        }
                        §§goto(addr55);
                        §§goto(addr111);
                     }
                     §§goto(addr103);
                  }
                  while(_loc3_ && this);
                  
                  continue loop0;
               }
            }
         }
         §§goto(addr90);
      }
      
      override protected function updateSpecialAnimation(param1:Number) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         if(_loc4_)
         {
            §§push(this.§_-Vl§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     if(§_-o2§.toUpperCase() != "BIRD_WHITE")
                     {
                        §§push(§_-o2§.toUpperCase() == "BIRD_YELLOW");
                        loop2:
                        while(true)
                        {
                           §§push(§§pop());
                           loop3:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    while(_loc4_)
                                    {
                                       if(!§§pop())
                                       {
                                          loop9:
                                          while(true)
                                          {
                                             if(_loc4_ || _loc2_)
                                             {
                                                §§pop();
                                                while(true)
                                                {
                                                   §§push(§_-o2§.toUpperCase() == "BIRD_RED");
                                                   addr186:
                                                   while(_loc4_)
                                                   {
                                                      if(!(_loc5_ && param1))
                                                      {
                                                         continue loop9;
                                                      }
                                                   }
                                                   continue loop0;
                                                }
                                                addr230:
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                   §§pop();
                                                   break loop9;
                                                }
                                                addr240:
                                             }
                                          }
                                          while(true)
                                          {
                                             §§push(§_-o2§.toUpperCase() == "BIRD_GREEN");
                                             continue loop2;
                                          }
                                       }
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          if(_loc5_)
                                          {
                                             break;
                                          }
                                          if(!§§pop())
                                          {
                                             §§goto(addr193);
                                          }
                                          §§goto(addr166);
                                       }
                                    }
                                    continue loop3;
                                 }
                                 addr207:
                              }
                              §§goto(addr240);
                           }
                        }
                     }
                     §§goto(addr249);
                  }
               }
               §§goto(addr23);
            }
         }
         §§goto(addr131);
      }
      
      override protected function updateFlyingFrameAnimations(param1:Number) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:* = NaN;
         var _loc2_:* = false;
         if(_loc4_ || param1)
         {
            §§push(Boolean(§_-SJ§().IsAwake()));
            loop0:
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
                        addr361:
                        while(true)
                        {
                           §§push(§_-Kh§ == §_-8l§);
                        }
                     }
                     addr360:
                  }
                  while(true)
                  {
                     loop5:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           if(§_-U-§.mTryToFly)
                           {
                              loop6:
                              while(true)
                              {
                                 if(_loc4_ || this)
                                 {
                                    while(true)
                                    {
                                       §_-U-§.mTryToFly = false;
                                       addr119:
                                       loop28:
                                       while(!(_loc5_ && _loc2_))
                                       {
                                          if(_loc4_)
                                          {
                                             if(§_-U-§.mIsFlying)
                                             {
                                                if(!_loc5_)
                                                {
                                                   continue loop6;
                                                }
                                                addr95:
                                                addr95:
                                                if(!(_loc5_ && this))
                                                {
                                                   §§push(true);
                                                   loop27:
                                                   while(true)
                                                   {
                                                      _loc2_ = §§pop();
                                                      if(_loc4_)
                                                      {
                                                         if(_loc5_ && _loc2_)
                                                         {
                                                            continue loop28;
                                                         }
                                                         if(!_loc5_)
                                                         {
                                                            if(!(_loc5_ && this))
                                                            {
                                                               if(_loc4_ || _loc2_)
                                                               {
                                                                  loop26:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc2_);
                                                                     if(!_loc4_)
                                                                     {
                                                                        continue loop27;
                                                                     }
                                                                     if(!_loc5_)
                                                                     {
                                                                        if(!_loc5_)
                                                                        {
                                                                           if(_loc4_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           loop21:
                                                                           while(true)
                                                                           {
                                                                              §§pop();
                                                                              loop17:
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.§_-Vl§);
                                                                                 addr212:
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc4_)
                                                                                    {
                                                                                       §§push(Boolean(§§pop()));
                                                                                       if(!(_loc5_ && _loc3_))
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             if(!§§pop())
                                                                                             {
                                                                                                §§push(§_-aQ§);
                                                                                                break;
                                                                                             }
                                                                                             if(_loc4_)
                                                                                             {
                                                                                                if(_loc5_)
                                                                                                {
                                                                                                   §§goto(addr361);
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                addr240:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc5_ && _loc3_)
                                                                                                   {
                                                                                                      continue loop17;
                                                                                                   }
                                                                                                }
                                                                                                addr240:
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                continue loop26;
                                                                                             }
                                                                                          }
                                                                                          addr222:
                                                                                       }
                                                                                       loop23:
                                                                                       for(; !§§pop(); while(true)
                                                                                       {
                                                                                          if(_loc4_ || this)
                                                                                          {
                                                                                             if(!_loc5_)
                                                                                             {
                                                                                                continue loop0;
                                                                                             }
                                                                                             continue loop5;
                                                                                          }
                                                                                          continue loop23;
                                                                                       },continue loop0)
                                                                                       {
                                                                                          §§push(!§_-rN§());
                                                                                          if(_loc5_ && this)
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                          addr163:
                                                                                          if(_loc4_ || param1)
                                                                                          {
                                                                                             §§push(§§pop());
                                                                                             if(!_loc5_)
                                                                                             {
                                                                                                if(_loc5_ && _loc2_)
                                                                                                {
                                                                                                   continue loop1;
                                                                                                }
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   continue;
                                                                                                }
                                                                                                addr140:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(_loc5_)
                                                                                                         {
                                                                                                            break loop23;
                                                                                                         }
                                                                                                         §_-7E§(0);
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc5_)
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(param1);
                                                                                                                  if(_loc4_ || this)
                                                                                                                  {
                                                                                                                     if(this.§_-Vl§)
                                                                                                                     {
                                                                                                                        if(!(_loc5_ && _loc3_))
                                                                                                                        {
                                                                                                                           §§push(2 * (!_loc5_ ? §§pop() : §§pop()));
                                                                                                                           if(_loc4_)
                                                                                                                           {
                                                                                                                              §§push(360);
                                                                                                                              if(_loc4_)
                                                                                                                              {
                                                                                                                                 addr318:
                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                 if(_loc4_ || _loc3_)
                                                                                                                                 {
                                                                                                                                    addr313:
                                                                                                                                    §§push(1000);
                                                                                                                                 }
                                                                                                                                 _loc3_ = §§pop();
                                                                                                                                 break loop27;
                                                                                                                              }
                                                                                                                              §§push(§§pop() / §§pop());
                                                                                                                              if(!_loc5_)
                                                                                                                              {
                                                                                                                                 §§goto(addr318);
                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr318);
                                                                                                                        }
                                                                                                                        §§goto(addr313);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        §§push(1);
                                                                                                                        if(!_loc5_)
                                                                                                                        {
                                                                                                                           §§goto(addr298);
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr318);
                                                                                                               }
                                                                                                               addr272:
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      addr142:
                                                                                                   }
                                                                                                   §§goto(addr103);
                                                                                                }
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   continue loop21;
                                                                                                }
                                                                                                §§goto(addr222);
                                                                                             }
                                                                                             addr256:
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§goto(addr256);
                                                                                             §§goto(addr163);
                                                                                          }
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc4_ || _loc2_)
                                                                                          {
                                                                                             §_-0Cl§();
                                                                                             §§goto(addr240);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                if(!§_-U-§.mTryToFly)
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §_-U-§.mTryToFly = true;
                                                                                                      addr353:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(true);
                                                                                                         continue loop5;
                                                                                                      }
                                                                                                   }
                                                                                                   addr350:
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   loop18:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(§_-o2§.toUpperCase() != "BIRD_GREEN")
                                                                                                      {
                                                                                                         §§goto(addr255);
                                                                                                         §§push(§_-o2§.toUpperCase() == "BIRD_WHITE");
                                                                                                      }
                                                                                                      §§goto(addr272);
                                                                                                      addr340:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         continue loop18;
                                                                                                      }
                                                                                                   }
                                                                                                   addr267:
                                                                                                }
                                                                                             }
                                                                                             addr347:
                                                                                          }
                                                                                          §§goto(addr103);
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr360);
                                                                                    }
                                                                                    §§goto(addr361);
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr191);
                                                                     }
                                                                     else
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           if(!(_loc5_ && param1))
                                                                           {
                                                                              §§goto(addr140);
                                                                           }
                                                                        }
                                                                        addr133:
                                                                     }
                                                                     §§goto(addr212);
                                                                  }
                                                                  return §§pop();
                                                                  addr28:
                                                               }
                                                               §§goto(addr350);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr340);
                                                            }
                                                         }
                                                         §§goto(addr142);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr95);
                                                      }
                                                   }
                                                }
                                                while(true)
                                                {
                                                   §_-7E§(§_-NN§() - _loc3_);
                                                   break loop28;
                                                   §§goto(addr95);
                                                }
                                             }
                                             §§goto(addr28);
                                          }
                                          §§goto(addr353);
                                       }
                                       while(true)
                                       {
                                          §§goto(addr103);
                                          §§goto(addr119);
                                       }
                                    }
                                    addr116:
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       addr207:
                                       !§_-21§();
                                    }
                                 }
                                 §§goto(addr133);
                              }
                           }
                           §§goto(addr28);
                        }
                        §§goto(addr347);
                     }
                  }
               }
               if(_loc5_ && _loc2_)
               {
                  continue;
               }
               §§goto(addr207);
            }
         }
         §§goto(addr116);
      }
      
      override public function addTrail() : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:* = null;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc1_:§_-00u§ = § in§.§_-Dc§;
         if(_loc7_ || _loc2_)
         {
            §§push(§_-Kh§ < §_-8l§);
            if(_loc7_)
            {
               if(!§§pop())
               {
                  do
                  {
                     §§pop();
                     §§push(§_-SJ§() == null);
                  }
                  while(_loc8_ && this);
                  
                  addr92:
               }
               if(§§pop())
               {
                  _loc1_.§_-5Q§(this);
                  §§goto(addr62);
               }
               else
               {
                  addr94:
                  §§push(x * §_-00u§.§_-lY§);
                  if(_loc7_ || _loc3_)
                  {
                     §§push(Number(§§pop()));
                  }
                  var _loc2_:* = §§pop();
                  §§push(y * §_-00u§.§_-lY§);
                  if(_loc7_ || _loc3_)
                  {
                     §§push(Number(§§pop()));
                  }
                  var _loc3_:* = §§pop();
                  if(!_loc8_)
                  {
                     §§push(_loc1_.§_-02W§);
                     while(true)
                     {
                        if(!§§pop())
                        {
                           if(§_-JZ§ <= 1)
                           {
                              §§push(§_-Hv§.PARTICLE_NAME_BIRD_TRAIL1);
                              loop2:
                              while(true)
                              {
                                 §§push(§§pop());
                                 loop3:
                                 while(true)
                                 {
                                    _loc4_ = §§pop();
                                    loop4:
                                    while(true)
                                    {
                                       if(_loc7_)
                                       {
                                          §§push(this.§_-Jh§);
                                          loop5:
                                          while(true)
                                          {
                                             §§push(1);
                                             loop6:
                                             while(§§pop() != §§pop())
                                             {
                                                §§push(this.§_-Jh§);
                                                if(_loc8_)
                                                {
                                                   continue loop5;
                                                }
                                                §§push(2);
                                                if(_loc8_ && _loc2_)
                                                {
                                                   continue;
                                                }
                                                if(§§pop() == §§pop())
                                                {
                                                   loop46:
                                                   while(true)
                                                   {
                                                      if(!_loc8_)
                                                      {
                                                         if(_loc7_)
                                                         {
                                                            if(_loc7_ || _loc3_)
                                                            {
                                                               §§push(§_-Hv§.PARTICLE_NAME_BIRD_TRAIL3);
                                                               if(_loc7_ || _loc3_)
                                                               {
                                                                  addr453:
                                                                  if(!(_loc8_ && _loc2_))
                                                                  {
                                                                     §§push(§§pop());
                                                                     continue loop2;
                                                                  }
                                                                  addr485:
                                                                  while(!_loc8_)
                                                                  {
                                                                     _loc4_ = §§pop();
                                                                     while(true)
                                                                     {
                                                                        addr389:
                                                                        loop10:
                                                                        while(true)
                                                                        {
                                                                           §§push(this);
                                                                           §§push(this.§_-Jh§ + 1);
                                                                           if(!_loc8_)
                                                                           {
                                                                              §§push(§§pop() % 3);
                                                                           }
                                                                           §§pop().§_-Jh§ = §§pop();
                                                                           loop11:
                                                                           while(_loc7_ || this)
                                                                           {
                                                                              if(!_loc7_)
                                                                              {
                                                                                 continue loop4;
                                                                              }
                                                                              if(!(_loc8_ && _loc2_))
                                                                              {
                                                                                 §§push(_loc1_.particles);
                                                                                 loop12:
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc7_ || _loc3_)
                                                                                    {
                                                                                       §§push(_loc4_);
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§_-Zc§.§_-WZ§);
                                                                                          addr340:
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc7_ || _loc1_)
                                                                                             {
                                                                                                §§push(§_-Hv§.§_-0EM§);
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc7_ || this)
                                                                                                   {
                                                                                                      §§push(_loc2_);
                                                                                                      if(_loc7_)
                                                                                                      {
                                                                                                         if(_loc7_)
                                                                                                         {
                                                                                                            §§push(_loc3_);
                                                                                                            if(_loc7_)
                                                                                                            {
                                                                                                               if(!_loc8_)
                                                                                                               {
                                                                                                                  §§push(-1);
                                                                                                                  if(_loc7_)
                                                                                                                  {
                                                                                                                     if(!_loc8_)
                                                                                                                     {
                                                                                                                        §§push("");
                                                                                                                        if(_loc7_)
                                                                                                                        {
                                                                                                                           §§push(§_-Hv§.§_-Do§);
                                                                                                                           if(_loc7_)
                                                                                                                           {
                                                                                                                              if(_loc7_ || _loc3_)
                                                                                                                              {
                                                                                                                                 §§pop().§_-0EQ§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
                                                                                                                                 loop16:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(!_loc8_)
                                                                                                                                    {
                                                                                                                                       loop17:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(§_-06L§() > §_-E0§.BIRD_LAUNCH_FORCE_GREEN);
                                                                                                                                          if(_loc7_ || this)
                                                                                                                                          {
                                                                                                                                             if(§§pop())
                                                                                                                                             {
                                                                                                                                                loop23:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§pop();
                                                                                                                                                   addr317:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc8_)
                                                                                                                                                      {
                                                                                                                                                         addr319:
                                                                                                                                                         if(_loc8_ && _loc1_)
                                                                                                                                                         {
                                                                                                                                                            break loop6;
                                                                                                                                                         }
                                                                                                                                                         continue loop23;
                                                                                                                                                      }
                                                                                                                                                      continue loop11;
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                addr316:
                                                                                                                                             }
                                                                                                                                             loop18:
                                                                                                                                             while(§§pop())
                                                                                                                                             {
                                                                                                                                                loop19:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(!(_loc8_ && _loc3_))
                                                                                                                                                   {
                                                                                                                                                      if(!_loc7_)
                                                                                                                                                      {
                                                                                                                                                         continue loop16;
                                                                                                                                                      }
                                                                                                                                                      if(_loc8_)
                                                                                                                                                      {
                                                                                                                                                         continue loop46;
                                                                                                                                                      }
                                                                                                                                                      §§push(-Math.PI);
                                                                                                                                                      if(!_loc8_)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() / 2);
                                                                                                                                                         if(_loc7_ || _loc1_)
                                                                                                                                                         {
                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         _loc5_ = §§pop();
                                                                                                                                                         loop21:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(Number(Math.random()));
                                                                                                                                                            if(_loc8_ && this)
                                                                                                                                                            {
                                                                                                                                                               break;
                                                                                                                                                            }
                                                                                                                                                            _loc6_ = §§pop();
                                                                                                                                                            while(_loc7_)
                                                                                                                                                            {
                                                                                                                                                               continue loop12;
                                                                                                                                                               §§pop().§_-0EQ§(§§pop(),§§pop(),§§pop(),§_-SJ§().GetPosition().x,§_-SJ§().GetPosition().y,1250,"",§_-Hv§.§_-08L§(§_-o2§),_loc6_ * Math.cos(_loc5_) * scale,-_loc6_ * Math.sin(_loc5_) * scale,5,_loc6_ * 20,Math.sqrt(scale));
                                                                                                                                                               if(_loc8_ && _loc2_)
                                                                                                                                                               {
                                                                                                                                                                  continue;
                                                                                                                                                               }
                                                                                                                                                               if(_loc8_ && _loc2_)
                                                                                                                                                               {
                                                                                                                                                                  continue loop21;
                                                                                                                                                               }
                                                                                                                                                               if(!(_loc8_ && _loc2_))
                                                                                                                                                               {
                                                                                                                                                                  break loop18;
                                                                                                                                                               }
                                                                                                                                                               addr542:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  this.§_-Jh§ = 0;
                                                                                                                                                                  break loop19;
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            continue loop19;
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr317);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   continue loop17;
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             return;
                                                                                                                                          }
                                                                                                                                          §§goto(addr316);
                                                                                                                                       }
                                                                                                                                       addr301:
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(_loc1_.particles);
                                                                                                                                          addr548:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§_-Hv§.§_-Xr§);
                                                                                                                                             addr550:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(§_-Zc§.§_-WZ§);
                                                                                                                                                addr552:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(§_-Hv§.§_-0EM§);
                                                                                                                                                   addr554:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc2_);
                                                                                                                                                      addr555:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc3_);
                                                                                                                                                         addr556:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(-1);
                                                                                                                                                            addr557:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push("");
                                                                                                                                                               addr558:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§_-Hv§.§_-Do§);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       addr546:
                                                                                                                                    }
                                                                                                                                    §§goto(addr537);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§pop().§_-0EQ§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
                                                                                                                                 addr561:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    _loc1_.§_-02W§ = false;
                                                                                                                                    §§goto(addr542);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§pop().§_-0EQ§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
                                                                                                                                 addr532:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              addr531:
                                                                                                                           }
                                                                                                                           §§goto(addr301);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(!_loc8_)
                                                                                                                              {
                                                                                                                                 §§goto(addr531);
                                                                                                                                 §§push(§_-Hv§.§_-Do§);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           addr517:
                                                                                                                        }
                                                                                                                        §§goto(addr558);
                                                                                                                     }
                                                                                                                     §§goto(addr557);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                     }
                                                                                                                     addr516:
                                                                                                                  }
                                                                                                                  §§goto(addr517);
                                                                                                               }
                                                                                                               §§goto(addr556);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                               }
                                                                                                               addr515:
                                                                                                            }
                                                                                                            §§goto(addr516);
                                                                                                         }
                                                                                                         §§goto(addr555);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                         }
                                                                                                         addr514:
                                                                                                      }
                                                                                                      §§goto(addr515);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      addr513:
                                                                                                      while(true)
                                                                                                      {
                                                                                                      }
                                                                                                      addr513:
                                                                                                   }
                                                                                                   §§goto(addr514);
                                                                                                }
                                                                                                addr349:
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                addr511:
                                                                                                while(true)
                                                                                                {
                                                                                                }
                                                                                                addr511:
                                                                                             }
                                                                                             §§goto(addr513);
                                                                                          }
                                                                                       }
                                                                                       addr338:
                                                                                    }
                                                                                    §§goto(addr548);
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §§goto(addr507);
                                                                                 }
                                                                                 addr505:
                                                                              }
                                                                              §§goto(addr511);
                                                                           }
                                                                           addr469:
                                                                           while(true)
                                                                           {
                                                                              continue loop10;
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr453);
                                                                  }
                                                                  continue loop3;
                                                               }
                                                               continue loop2;
                                                            }
                                                            §§goto(addr561);
                                                         }
                                                         §§goto(addr537);
                                                      }
                                                      §§goto(addr488);
                                                   }
                                                   continue loop2;
                                                }
                                                §§goto(addr389);
                                             }
                                             while(true)
                                             {
                                                §§push(§_-Hv§.PARTICLE_NAME_BIRD_TRAIL2);
                                                if(!(_loc8_ && this))
                                                {
                                                   §§push(§§pop());
                                                }
                                                §§goto(addr485);
                                                §§goto(addr319);
                                             }
                                          }
                                       }
                                       §§goto(addr532);
                                    }
                                 }
                              }
                           }
                           §§goto(addr505);
                        }
                        §§goto(addr546);
                     }
                  }
                  §§goto(addr246);
               }
            }
            §§goto(addr92);
         }
         else if(false)
         {
            addr62:
            _loc1_.§_-02W§ = false;
            return;
         }
         §§goto(addr94);
      }
      
      override protected function playScreamingSoundEffect() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(!§_-U-§.mTryToFly)
            {
               super.playScreamingSoundEffect();
               if(_loc2_)
               {
                  addr55:
               }
               return;
            }
            if(!(_loc2_ && _loc2_))
            {
               §_-Dv§(§_-a2§.§_-1y§);
            }
         }
         §§goto(addr55);
      }
      
      override public function activateSpecialPower(param1:§_-30§) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§_-Vl§);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  if(_loc3_ || param1)
                  {
                     §§goto(addr80);
                  }
                  else
                  {
                     loop0:
                     while(true)
                     {
                        addr59:
                        addr53:
                        do
                        {
                           if(_loc3_ || _loc3_)
                           {
                              continue;
                           }
                           continue loop0;
                        }
                        while(this.§_-Vl§ = true, !_loc3_);
                        
                        §§push(true);
                        if(_loc3_)
                        {
                           return §§pop();
                        }
                        §§goto(addr80);
                     }
                     addr81:
                  }
                  §§goto(addr80);
               }
               while(true)
               {
                  §_-Dv§(§_-a2§.§_-I4§);
                  §§goto(addr59);
                  §§goto(addr81);
               }
            }
            addr80:
            return false;
         }
         §§goto(addr53);
      }
      
      private function §_-7U§(param1:int) : int
      {
         return Math.min(§ in§.§_-Dc§.§_-2O§,param1);
      }
      
      override public function addDestructionParticles(param1:§_-Zc§) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc6_:Number = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc2_:Number = 5;
         var _loc3_:* = int(§_-vw§(false) + 1);
         var _loc4_:* = Number(90);
         if(!(_loc10_ && _loc3_))
         {
            §§push(this.§_-7U§(_loc3_));
            if(_loc9_ || param1)
            {
               §§push(int(§§pop()));
               if(!_loc10_)
               {
                  addr55:
                  _loc3_ = §§pop();
                  §§push(0);
               }
               var _loc5_:* = §§pop();
               while(true)
               {
                  if(_loc5_ >= _loc3_)
                  {
                     if(!(_loc10_ && _loc3_))
                     {
                        break;
                     }
                     loop1:
                     while(true)
                     {
                        if(!_loc10_)
                        {
                           if(!(_loc10_ && param1))
                           {
                              break;
                           }
                           loop2:
                           while(true)
                           {
                              §§push(-§_-U-§.mW);
                              loop3:
                              while(true)
                              {
                                 §§push(§_-00u§.§_-lY§);
                                 loop4:
                                 while(true)
                                 {
                                    §§push(§§pop() * §§pop());
                                    loop5:
                                    while(true)
                                    {
                                       §§push(Number(§§pop()));
                                       loop6:
                                       while(_loc9_ || param1)
                                       {
                                          if(!_loc10_)
                                          {
                                             §§push(§§pop());
                                             loop7:
                                             while(true)
                                             {
                                                _loc7_ = §§pop();
                                                loop8:
                                                while(true)
                                                {
                                                   §§push(Math.random() * -_loc7_);
                                                   loop9:
                                                   while(!(_loc10_ && _loc2_))
                                                   {
                                                      §§push(2);
                                                      loop10:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         loop11:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            loop12:
                                                            while(true)
                                                            {
                                                               §§push(Number(§§pop()));
                                                               loop13:
                                                               while(true)
                                                               {
                                                                  _loc7_ = §§pop();
                                                                  while(true)
                                                                  {
                                                                     §§push(-§_-U-§.mH);
                                                                     if(!_loc10_)
                                                                     {
                                                                        if(_loc10_)
                                                                        {
                                                                           continue loop8;
                                                                        }
                                                                        if(!_loc9_)
                                                                        {
                                                                           continue loop3;
                                                                        }
                                                                        §§push(§_-00u§.§_-lY§);
                                                                        if(!(_loc10_ && _loc3_))
                                                                        {
                                                                           §§push(§§pop() * §§pop());
                                                                           if(!(_loc10_ && param1))
                                                                           {
                                                                              if(!_loc9_)
                                                                              {
                                                                                 continue loop13;
                                                                              }
                                                                              §§push(Number(§§pop()));
                                                                              if(!(_loc10_ && param1))
                                                                              {
                                                                                 addr176:
                                                                                 §§push(§§pop());
                                                                                 if(!(_loc10_ && _loc3_))
                                                                                 {
                                                                                    if(_loc10_ && param1)
                                                                                    {
                                                                                       continue loop9;
                                                                                    }
                                                                                    _loc8_ = §§pop();
                                                                                    if(_loc9_)
                                                                                    {
                                                                                       if(!(_loc9_ || _loc2_))
                                                                                       {
                                                                                          continue loop12;
                                                                                       }
                                                                                       if(_loc10_)
                                                                                       {
                                                                                          continue loop6;
                                                                                       }
                                                                                       if(!_loc10_)
                                                                                       {
                                                                                          §§push(Math.random() * -_loc8_);
                                                                                          if(!(_loc10_ && _loc2_))
                                                                                          {
                                                                                             §§push(2);
                                                                                             if(_loc10_)
                                                                                             {
                                                                                                continue loop10;
                                                                                             }
                                                                                             addr221:
                                                                                             §§push(§§pop() * §§pop());
                                                                                             if(_loc10_ && _loc3_)
                                                                                             {
                                                                                                continue loop11;
                                                                                             }
                                                                                             if(!_loc9_)
                                                                                             {
                                                                                                continue loop7;
                                                                                             }
                                                                                             if(_loc10_ && this)
                                                                                             {
                                                                                                continue loop4;
                                                                                             }
                                                                                             if(_loc9_ || this)
                                                                                             {
                                                                                                §§push(§§pop() + §§pop());
                                                                                                if(!_loc10_)
                                                                                                {
                                                                                                   addr247:
                                                                                                   if(!(_loc10_ && _loc2_))
                                                                                                   {
                                                                                                      if(_loc9_)
                                                                                                      {
                                                                                                         addr257:
                                                                                                         §§push(Number(§§pop()));
                                                                                                         if(_loc10_ && param1)
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         _loc8_ = §§pop();
                                                                                                         loop15:
                                                                                                         while(!_loc10_)
                                                                                                         {
                                                                                                            param1.§_-0EQ§(§_-Hv§.§_-gA§,§_-Zc§.§_-MP§,§_-Hv§.§_-vg§,§_-SJ§().GetPosition().x + _loc7_,§_-SJ§().GetPosition().y + _loc8_,1500,"",§_-Hv§.§_-08L§(§_-o2§),_loc2_ * Math.cos(_loc6_),-_loc2_ * Math.sin(_loc6_),5,_loc2_ * 20);
                                                                                                            while(!_loc9_)
                                                                                                            {
                                                                                                               continue loop15;
                                                                                                            }
                                                                                                            continue loop1;
                                                                                                         }
                                                                                                         continue;
                                                                                                      }
                                                                                                      addr318:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(Math.random() * (720 / _loc3_));
                                                                                                         addr324:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop() + §§pop());
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(Number(§§pop()));
                                                                                                      if(_loc9_)
                                                                                                      {
                                                                                                         §§push(§§pop());
                                                                                                         if(!_loc10_)
                                                                                                         {
                                                                                                            _loc4_ = §§pop();
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(180 / Math.PI);
                                                                                                               break loop9;
                                                                                                            }
                                                                                                            addr332:
                                                                                                         }
                                                                                                         break loop9;
                                                                                                      }
                                                                                                      break loop6;
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr257);
                                                                                             }
                                                                                             §§goto(addr324);
                                                                                          }
                                                                                          §§goto(addr221);
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(Number(§§pop()));
                                                                                          break loop6;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr221);
                                                                              }
                                                                              §§goto(addr257);
                                                                           }
                                                                           §§goto(addr176);
                                                                        }
                                                                        §§goto(addr221);
                                                                     }
                                                                     §§goto(addr247);
                                                                  }
                                                                  continue loop5;
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      §§goto(addr337);
                                                   }
                                                }
                                             }
                                          }
                                          §§goto(addr332);
                                       }
                                       continue loop2;
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr126);
                     }
                     continue;
                  }
                  §§push(_loc4_);
                  §§goto(addr318);
               }
               return;
            }
         }
         §§goto(addr55);
      }
      
      override public function addDamageParticles(param1:§_-Zc§, param2:int) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc6_:* = 0;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         if(_loc9_ || param1)
         {
            if(§_-21§())
            {
               if(_loc9_)
               {
                  return;
               }
            }
            else if(param2 < 6)
            {
               if(_loc9_ || this)
               {
                  §§goto(addr52);
               }
            }
            §§push(§_-06L§() / 10);
            if(_loc9_)
            {
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            §§push(1);
            if(!(_loc10_ && param1))
            {
               §§push(_loc3_);
               if(!_loc10_)
               {
                  addr87:
                  §§push(§§pop() * §_-vw§(false));
                  if(_loc9_ || param1)
                  {
                     addr83:
                     §§push(§§pop() * 0.12);
                  }
                  var _loc4_:* = int(§§pop() + §§pop());
                  var _loc5_:* = Number(90);
                  if(_loc9_ || this)
                  {
                     §§push(param2);
                     loop0:
                     while(true)
                     {
                        §§push(scale * scale);
                        loop1:
                        while(true)
                        {
                           §§push(§§pop() / §§pop());
                           loop2:
                           while(true)
                           {
                              §§push(int(§§pop()));
                              loop3:
                              while(true)
                              {
                                 param2 = §§pop();
                                 loop4:
                                 while(true)
                                 {
                                    §§push(_loc4_);
                                    while(!_loc10_)
                                    {
                                       §§push(3 + param2 / 20);
                                       if(!(_loc9_ || this))
                                       {
                                          continue loop1;
                                       }
                                       §§push(§§pop() * §§pop());
                                       if(_loc10_ && param2)
                                       {
                                          continue loop2;
                                       }
                                       §§push(int(§§pop()));
                                       while(true)
                                       {
                                          _loc4_ = §§pop();
                                       }
                                       loop8:
                                       for(; _loc9_ || param2; §§push(0),if(!_loc9_)
                                       {
                                          continue;
                                       },if(!_loc10_)
                                       {
                                          _loc6_ = §§pop();
                                          if(!_loc9_)
                                          {
                                             §§goto(addr442);
                                          }
                                          if(_loc10_)
                                          {
                                             continue loop4;
                                          }
                                          §§goto(addr414);
                                       },§§goto(addr485))
                                       {
                                          _loc4_ = §§pop();
                                          while(!(_loc10_ && param1))
                                          {
                                             continue loop8;
                                          }
                                          while(true)
                                          {
                                             §§push(this.§_-7U§(_loc4_));
                                             if(!(_loc10_ && this))
                                             {
                                                if(!(_loc10_ && _loc3_))
                                                {
                                                   §§push(int(§§pop()));
                                                   continue loop8;
                                                }
                                                continue loop3;
                                             }
                                             continue loop8;
                                          }
                                          loop10:
                                          while(true)
                                          {
                                             §§push(_loc6_);
                                             loop11:
                                             while(true)
                                             {
                                                §§push(_loc4_);
                                                loop12:
                                                while(true)
                                                {
                                                   if(§§pop() >= §§pop() / 3)
                                                   {
                                                      loop13:
                                                      while(true)
                                                      {
                                                         §§push(0);
                                                         loop14:
                                                         while(true)
                                                         {
                                                            _loc6_ = §§pop();
                                                            loop15:
                                                            while(_loc9_ || this)
                                                            {
                                                               loop16:
                                                               while(true)
                                                               {
                                                                  §§push(_loc6_);
                                                                  if(_loc10_)
                                                                  {
                                                                     continue loop14;
                                                                  }
                                                                  if(!(_loc9_ || param1))
                                                                  {
                                                                     break;
                                                                  }
                                                                  §§push(_loc4_);
                                                                  if(!(_loc9_ || this))
                                                                  {
                                                                     continue loop12;
                                                                  }
                                                                  if(§§pop() >= §§pop())
                                                                  {
                                                                     if(_loc10_)
                                                                     {
                                                                        continue;
                                                                     }
                                                                     if(!(_loc10_ && param1))
                                                                     {
                                                                        if(!_loc10_)
                                                                        {
                                                                           return;
                                                                        }
                                                                        while(!_loc10_)
                                                                        {
                                                                           param1.§_-0EQ§(§_-Hv§.§_-gA§,§_-Zc§.§_-MP§,§_-Hv§.§_-vg§,§_-SJ§().GetPosition().x,§_-SJ§().GetPosition().y,1250,"",§_-Hv§.§_-08L§(§_-o2§),_loc8_ * Math.cos(_loc7_) * scale,-_loc8_ * Math.sin(_loc7_) * scale,5,_loc8_ * 20,Math.sqrt(scale));
                                                                           _loc8_ = §§pop();
                                                                        }
                                                                        continue loop13;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        if(!(_loc10_ && param1))
                                                                        {
                                                                           if(!(_loc9_ || param1))
                                                                           {
                                                                              continue loop15;
                                                                           }
                                                                           if(!_loc10_)
                                                                           {
                                                                              _loc6_++;
                                                                              continue loop16;
                                                                           }
                                                                           param1.§_-0EQ§(§_-Hv§.§_-0AR§,§_-Zc§.§_-MP§,§_-Hv§.§_-vg§,§_-SJ§().GetPosition().x,§_-SJ§().GetPosition().y,1000,"",0,Math.cos(_loc5_) * scale,0,5,_loc3_ * 5,1);
                                                                           addr402:
                                                                        }
                                                                        else
                                                                        {
                                                                           loop19:
                                                                           for(; _loc9_ || _loc3_; _loc7_ = §§pop())
                                                                           {
                                                                              §§push(0.5);
                                                                              if(_loc9_ || param1)
                                                                              {
                                                                                 if(!(_loc10_ && this))
                                                                                 {
                                                                                    §§push(_loc3_);
                                                                                    if(_loc9_)
                                                                                    {
                                                                                       if(!(_loc10_ && param1))
                                                                                       {
                                                                                          if(!(_loc10_ && param1))
                                                                                          {
                                                                                             §§push(§§pop() * §§pop());
                                                                                             if(!(_loc10_ && this))
                                                                                             {
                                                                                                addr248:
                                                                                                if(_loc9_)
                                                                                                {
                                                                                                   §§push(_loc3_);
                                                                                                   if(_loc9_)
                                                                                                   {
                                                                                                      addr253:
                                                                                                      §§push(§§pop() * (Math.random() * 0.5));
                                                                                                   }
                                                                                                   if(!_loc10_)
                                                                                                   {
                                                                                                      if(!_loc10_)
                                                                                                      {
                                                                                                         §§push(§§pop() + §§pop());
                                                                                                         if(!(_loc10_ && param2))
                                                                                                         {
                                                                                                            addr270:
                                                                                                            if(!(_loc10_ && this))
                                                                                                            {
                                                                                                               addr278:
                                                                                                               §§push(Number(§§pop()));
                                                                                                               if(_loc9_)
                                                                                                               {
                                                                                                                  §§goto(addr280);
                                                                                                               }
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               addr319:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(!_loc10_)
                                                                                                                  {
                                                                                                                     addr322:
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(!(_loc10_ && param2))
                                                                                                                        {
                                                                                                                           continue loop19;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     addr322:
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     addr399:
                                                                                                                     §§push(§§pop() + Math.random() * (720 / _loc4_));
                                                                                                                  }
                                                                                                               }
                                                                                                               addr319:
                                                                                                            }
                                                                                                            _loc5_ = §§pop();
                                                                                                            §§goto(addr402);
                                                                                                         }
                                                                                                         §§goto(addr278);
                                                                                                      }
                                                                                                      §§goto(addr399);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                      }
                                                                                                      addr318:
                                                                                                   }
                                                                                                   §§goto(addr319);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(Math.random() * (720 / _loc4_));
                                                                                                      addr294:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop() + §§pop());
                                                                                                         if(_loc9_ || this)
                                                                                                         {
                                                                                                            §§push(Number(§§pop()));
                                                                                                            if(_loc9_ || this)
                                                                                                            {
                                                                                                               §§push(§§pop());
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  _loc5_ = §§pop();
                                                                                                                  if(!_loc10_)
                                                                                                                  {
                                                                                                                     §§goto(addr318);
                                                                                                                     §§push(180 / Math.PI);
                                                                                                                  }
                                                                                                                  §§goto(addr322);
                                                                                                               }
                                                                                                               addr311:
                                                                                                            }
                                                                                                            §§goto(addr319);
                                                                                                         }
                                                                                                         §§goto(addr322);
                                                                                                      }
                                                                                                   }
                                                                                                   addr288:
                                                                                                }
                                                                                                §§goto(addr322);
                                                                                             }
                                                                                             §§goto(addr270);
                                                                                          }
                                                                                          §§goto(addr294);
                                                                                       }
                                                                                       §§goto(addr311);
                                                                                    }
                                                                                    §§goto(addr253);
                                                                                 }
                                                                                 §§goto(addr322);
                                                                              }
                                                                              §§goto(addr248);
                                                                           }
                                                                        }
                                                                        _loc6_++;
                                                                        break loop15;
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(_loc5_);
                                                                  }
                                                                  §§goto(addr288);
                                                               }
                                                               continue loop11;
                                                            }
                                                            continue loop10;
                                                         }
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§push(_loc5_);
                                                   }
                                                   §§goto(addr399);
                                                }
                                             }
                                          }
                                       }
                                    }
                                    continue loop0;
                                 }
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr486);
               }
               §§goto(addr83);
            }
            §§goto(addr87);
         }
         addr52:
      }
   }
}
