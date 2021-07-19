package §7P§
{
   import §!!U§.§#"t§;
   import §!!U§.Sprite;
   import §+#$§.b2World;
   import §2"Y§.§?#Q§;
   import §2"Y§.§["$§;
   import §4!$§.b2CircleShape;
   import §7!F§.§8!W§;
   import §<"B§.§94§;
   import §[R§.b2Vec2;
   import §^#>§.§#_§;
   
   public class §"M§ extends §1#E§
   {
      
      public static const §+"§:String = "SENSOR_GRAVITATION";
      
      private static const §7!s§:Number = 0.057;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §+"§ = "SENSOR_GRAVITATION";
            do
            {
               §7!s§ = 0.057;
            }
            while(!_loc2_);
            
         }
      }
      
      protected var §%#,§:Number = 0.0;
      
      protected var §1#C§:Number = 0.0;
      
      protected var §%G§:Sprite;
      
      protected var §9#a§:Sprite;
      
      protected var mInnerSprite1:Sprite;
      
      protected var mInnerSprite2:Sprite;
      
      protected var §?3§:Number = 0.0;
      
      protected var §0#J§:Number;
      
      public function §"M§(param1:Sprite, param2:b2World, param3:§94§, param4:§["$§, param5:Number, param6:Number, param7:Number, param8:Number, param9:§8!W§, param10:§8!W§)
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         if(!_loc11_)
         {
            this.§0#J§ = param5;
            while(true)
            {
               super(param1,param2,param4,param4.shape,param3);
               loop1:
               while(!_loc11_)
               {
                  this.§%G§ = param1;
                  loop2:
                  while(true)
                  {
                     §§push(this);
                     §§push(this.§0#J§);
                     if(_loc12_ || param2)
                     {
                        §§push(§§pop() * §7!s§);
                     }
                     §§pop().§?3§ = §§pop();
                     loop3:
                     while(true)
                     {
                        if(param9)
                        {
                           continue;
                        }
                        loop8:
                        while(true)
                        {
                           if(param10)
                           {
                              if(!(_loc11_ && param1))
                              {
                                 this.mInnerSprite1 = this.§=x§(param10,this.§?3§);
                              }
                              while(true)
                              {
                                 §§push(this.§%G§);
                                 loop10:
                                 for(; !_loc11_; while(true)
                                 {
                                    §§push(this.§%G§);
                                    if(!_loc12_)
                                    {
                                       continue loop10;
                                    }
                                    §§pop().addChild(this.mInnerSprite2);
                                    while(!_loc12_)
                                    {
                                       §§goto(addr117);
                                    }
                                    if(_loc11_)
                                    {
                                       continue loop2;
                                    }
                                 })
                                 {
                                    §§pop().addChild(this.mInnerSprite1);
                                    while(true)
                                    {
                                       §§push(this);
                                       §§push(this);
                                       §§push(param10);
                                       §§push(this.§?3§);
                                       if(_loc12_ || this)
                                       {
                                          §§push(§§pop() / 2);
                                       }
                                       §§pop().mInnerSprite2 = §§pop().§=x§(§§pop(),§§pop());
                                       addr117:
                                       while(true)
                                       {
                                          if(!_loc11_)
                                          {
                                             continue loop10;
                                          }
                                          continue loop3;
                                       }
                                    }
                                 }
                                 loop6:
                                 while(true)
                                 {
                                    §§pop().addChild(this.§9#a§);
                                    addr153:
                                    addr178:
                                    while(!(_loc11_ && this))
                                    {
                                       continue loop8;
                                    }
                                    while(_loc12_)
                                    {
                                       §§push(this.§%G§);
                                       continue loop6;
                                       §§goto(addr153);
                                    }
                                    continue loop1;
                                 }
                                 addr50:
                                 if(!(_loc12_ || param3))
                                 {
                                    continue;
                                 }
                                 if(!_loc11_)
                                 {
                                    this.§"r§();
                                    addr59:
                                    if(!(_loc11_ && this))
                                    {
                                       addr34:
                                       if(_loc11_ && param1)
                                       {
                                          loop15:
                                          for(; _loc12_ || param3; §§goto(addr34))
                                          {
                                             §`!u§ = param8;
                                             while(true)
                                             {
                                                if(!_loc11_)
                                                {
                                                   if(!_loc12_)
                                                   {
                                                      break;
                                                   }
                                                   §§goto(addr50);
                                                }
                                                addr76:
                                                while(true)
                                                {
                                                   this.§1#C§ = param7;
                                                   continue loop15;
                                                }
                                                §§goto(addr59);
                                             }
                                             §§goto(addr128);
                                          }
                                          §§goto(addr85);
                                       }
                                       return;
                                    }
                                    §§goto(addr46);
                                 }
                                 §§goto(addr153);
                              }
                           }
                           while(true)
                           {
                              this.§%#,§ = param6;
                              §§goto(addr76);
                              §§goto(addr87);
                           }
                           continue loop2;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr119);
      }
      
      override protected function get scale() : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§?#Q§ = §;B§.shape as §?#Q§;
         if(_loc2_)
         {
            if(_loc1_)
            {
               if(!(_loc3_ && _loc3_))
               {
                  §§goto(addr43);
               }
               else
               {
                  addr63:
                  §§push(super.scale);
               }
               §§goto(addr65);
            }
            §§goto(addr63);
         }
         addr43:
         §§push(this.§0#J§);
         if(!_loc3_)
         {
            §§push(§§pop() / _loc1_.radius);
            if(!_loc2_)
            {
               addr65:
               return §§pop();
            }
         }
         return §§pop();
      }
      
      private function §=x§(param1:§8!W§, param2:Number) : Sprite
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:§#"t§ = null;
         var _loc3_:Sprite = new Sprite();
         if(!_loc6_)
         {
            _loc3_.scaleX = param2;
            if(_loc7_ || _loc3_)
            {
               addr36:
               _loc3_.scaleY = param2;
            }
            var _loc4_:int = 0;
            while(_loc4_ < 8)
            {
               (_loc5_ = new §#"t§(param1.texture)).pivotX = -param1.pivotX;
               if(_loc7_)
               {
                  _loc5_.pivotY = -param1.pivotY;
                  loop1:
                  while(true)
                  {
                     §§push(_loc5_);
                     §§push(45 * _loc4_);
                     if(!(_loc6_ && _loc3_))
                     {
                        §§push(§§pop() / 180);
                        if(!_loc6_)
                        {
                           addr103:
                           §§push(§§pop() * Math.PI);
                        }
                        §§pop().rotation = §§pop();
                        loop2:
                        while(true)
                        {
                           addr80:
                           while(true)
                           {
                              _loc3_.addChild(_loc5_);
                              while(!_loc6_)
                              {
                                 _loc4_++;
                                 if(_loc7_)
                                 {
                                    continue loop1;
                                 }
                              }
                              continue loop2;
                           }
                           continue loop1;
                        }
                     }
                     §§goto(addr103);
                  }
               }
               while(false)
               {
                  §§goto(addr80);
               }
            }
            return _loc3_;
         }
         §§goto(addr36);
      }
      
      override public function collidedWith(param1:§7B§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            super.collidedWith(param1);
         }
         while(param1.§=G§ == GravityFilterCategory.LEIA_FORCE_OBJECT)
         {
            if(!_loc2_)
            {
               break;
            }
            addr67:
            if(_loc3_ && param1)
            {
               continue;
            }
            param1.§=G§ = GravityFilterCategory.LEIA_FORCE_DISABLED_OBJECT;
            §§goto(addr67);
         }
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.dispose();
            loop0:
            while(true)
            {
               §§push(this.§%G§);
               if(!_loc2_)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§push(this.§%G§);
                        addr81:
                        while(true)
                        {
                           §§pop().dispose();
                           loop6:
                           while(true)
                           {
                              this.§%G§ = null;
                              addr60:
                              addr62:
                              while(_loc2_)
                              {
                                 continue loop6;
                              }
                              while(true)
                              {
                              }
                           }
                        }
                        addr46:
                        if(_loc1_ || this)
                        {
                           if(_loc1_)
                           {
                              this.mInnerSprite1 = null;
                              if(_loc2_)
                              {
                                 while(_loc1_)
                                 {
                                    §§goto(addr46);
                                 }
                                 §§goto(addr60);
                                 addr44:
                              }
                              return;
                           }
                           continue loop0;
                        }
                     }
                  }
                  while(true)
                  {
                     this.§9#a§ = null;
                     §§goto(addr44);
                     §§goto(addr62);
                  }
               }
               §§goto(addr81);
            }
         }
         §§goto(addr62);
      }
      
      public function §2E§(param1:b2Vec2, param2:Number, param3:b2Vec2 = null, param4:Number = 0.0) : b2Vec2
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!(_loc8_ && param2))
         {
            if(!param3)
            {
               if(_loc7_)
               {
                  addr27:
                  param3 = §3!t§().GetPosition().Copy();
                  if(!(_loc8_ && this))
                  {
                     addr46:
                     param3.§-p§(param1);
                     if(_loc7_)
                     {
                        §§push(param3.Length());
                        if(!_loc8_)
                        {
                           §§push(this.§0#J§);
                           if(!(_loc8_ && param2))
                           {
                              §§push(§§pop() + param2);
                              if(_loc7_)
                              {
                                 addr85:
                                 if(§§pop() > §§pop())
                                 {
                                    addr86:
                                    param3.x = 0;
                                    §§goto(addr63);
                                 }
                                 else
                                 {
                                    addr90:
                                    §§push(param3.Length());
                                    if(!_loc8_)
                                    {
                                       addr95:
                                       §§push(Number(§§pop()));
                                       §§push(Number(§§pop()));
                                    }
                                    §§goto(addr95);
                                 }
                              }
                              var _loc5_:* = §§pop();
                              if(_loc7_)
                              {
                                 if(§§pop() == 0)
                                 {
                                    if(!_loc8_)
                                    {
                                       return new b2Vec2(0,0);
                                    }
                                 }
                                 §§push(this.§1#C§);
                                 if(!(_loc8_ && param3))
                                 {
                                    addr127:
                                    §§push(_loc5_);
                                    if(!_loc8_)
                                    {
                                       §§push(this.§0#J§);
                                       if(_loc7_ || param1)
                                       {
                                          §§push(§§pop() / §§pop());
                                          if(!_loc8_)
                                          {
                                             addr150:
                                             §§push(this.§1#C§);
                                             if(!_loc8_)
                                             {
                                                addr146:
                                                §§push(§§pop() - this.§%#,§);
                                             }
                                             §§push(§§pop() - §§pop() * §§pop());
                                             if(_loc7_ || param3)
                                             {
                                                addr159:
                                                var _loc6_:* = Number(§§pop());
                                                if(!(_loc8_ && param3))
                                                {
                                                   §§push(param4);
                                                   if(!_loc8_)
                                                   {
                                                      §§push(0);
                                                      loop0:
                                                      while(true)
                                                      {
                                                         if(§§pop() == §§pop())
                                                         {
                                                            if(!_loc8_)
                                                            {
                                                               addr244:
                                                               §§push(Number(§`!u§));
                                                               while(true)
                                                               {
                                                                  param4 = §§pop();
                                                                  addr245:
                                                                  while(true)
                                                                  {
                                                                  }
                                                               }
                                                               addr244:
                                                            }
                                                            §§goto(addr245);
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(_loc6_);
                                                            if(!_loc8_)
                                                            {
                                                               continue loop0;
                                                            }
                                                            addr221:
                                                            _loc6_ = §§pop();
                                                            while(!_loc8_)
                                                            {
                                                               §§push(param3);
                                                               §§push(_loc6_);
                                                               if(!_loc8_)
                                                               {
                                                                  §§push(§§pop() / _loc5_);
                                                               }
                                                               §§pop().§?1§(§§pop());
                                                               if(_loc7_ || param1)
                                                               {
                                                                  return param3;
                                                               }
                                                            }
                                                            §§goto(addr245);
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr244);
                                                }
                                                §§goto(addr245);
                                             }
                                             §§goto(addr159);
                                          }
                                          §§goto(addr150);
                                       }
                                       §§goto(addr146);
                                    }
                                    §§goto(addr150);
                                 }
                                 §§goto(addr159);
                              }
                              §§goto(addr127);
                           }
                           §§goto(addr85);
                        }
                        §§goto(addr95);
                     }
                     else if(false)
                     {
                        addr63:
                        param3.y = 0;
                        return param3;
                     }
                     §§goto(addr90);
                  }
                  §§goto(addr86);
               }
            }
            else
            {
               param3.SetV(§3!t§().GetPosition());
            }
            §§goto(addr46);
         }
         §§goto(addr27);
      }
      
      override public function update(param1:Number, param2:§;$§) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc5_:§7B§ = null;
         var _loc6_:* = NaN;
         var _loc7_:Number = NaN;
         if(!(_loc9_ && this))
         {
            this.§"r§();
            if(!_loc9_)
            {
               addr34:
               super.update(param1,param2);
            }
            var _loc3_:b2Vec2 = null;
            var _loc4_:int = 0;
            loop0:
            while(_loc4_ < §,"k§.length)
            {
               §§push(!(_loc5_ = §,"k§[_loc4_]));
               if(_loc8_)
               {
                  §§push(§§pop());
                  if(_loc8_ || param1)
                  {
                     if(!§§pop())
                     {
                        if(_loc8_)
                        {
                           §§pop();
                           if(!(_loc9_ && param1))
                           {
                              §§push(!_loc5_.§3!t§());
                              loop8:
                              while(true)
                              {
                                 §§push(§§pop());
                                 loop9:
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       while(true)
                                       {
                                          §§pop();
                                          addr327:
                                          while(true)
                                          {
                                             §§push(_loc5_.applyGravity());
                                             addr313:
                                             while(true)
                                             {
                                                §§push(!§§pop());
                                             }
                                          }
                                       }
                                       addr326:
                                    }
                                    while(true)
                                    {
                                       loop14:
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          loop15:
                                          while(_loc8_)
                                          {
                                             if(!§§pop())
                                             {
                                                loop16:
                                                while(true)
                                                {
                                                   §§pop();
                                                   addr320:
                                                   loop1:
                                                   while(true)
                                                   {
                                                      §§push(_loc5_.shape);
                                                      while(true)
                                                      {
                                                         §§push(!§§pop());
                                                         loop29:
                                                         while(true)
                                                         {
                                                            §§push(_loc5_.shape);
                                                            if(!(_loc8_ || this))
                                                            {
                                                               break;
                                                            }
                                                            addr128:
                                                            §§push(§§pop() is b2CircleShape);
                                                            if(_loc8_ || param2)
                                                            {
                                                               if(_loc8_)
                                                               {
                                                                  if(!_loc9_)
                                                                  {
                                                                     if(!§§pop())
                                                                     {
                                                                        §§push(Number(Math.max(_loc5_.shape.getWidth(),_loc5_.shape.getHeight())));
                                                                        if(!(_loc9_ && param1))
                                                                        {
                                                                           if(!_loc9_)
                                                                           {
                                                                              _loc6_ = §§pop();
                                                                              if(!_loc8_)
                                                                              {
                                                                                 continue loop0;
                                                                              }
                                                                              if(_loc8_)
                                                                              {
                                                                                 if(_loc8_ || param1)
                                                                                 {
                                                                                    if(!_loc9_)
                                                                                    {
                                                                                       if(!(_loc8_ || param2))
                                                                                       {
                                                                                          continue loop1;
                                                                                       }
                                                                                       if(false)
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       addr328:
                                                                                       _loc3_ = this.§2E§(_loc5_.§3!t§().GetPosition(),_loc6_,_loc3_,_loc5_.getGravityMultiplier(§`!u§));
                                                                                       if(!_loc9_)
                                                                                       {
                                                                                          addr425:
                                                                                          §§push(_loc3_.x != 0);
                                                                                          if(_loc8_)
                                                                                          {
                                                                                             if(!§§pop())
                                                                                             {
                                                                                                addr440:
                                                                                                §§pop();
                                                                                                addr441:
                                                                                                §§push(_loc3_.y);
                                                                                                if(!(_loc9_ && param2))
                                                                                                {
                                                                                                   if(_loc8_)
                                                                                                   {
                                                                                                      §§push(0);
                                                                                                      if(!_loc9_)
                                                                                                      {
                                                                                                         §§push(§§pop() == §§pop());
                                                                                                         if(_loc8_ || param2)
                                                                                                         {
                                                                                                            if(!_loc9_)
                                                                                                            {
                                                                                                               if(_loc8_)
                                                                                                               {
                                                                                                                  addr405:
                                                                                                                  if(!§§pop())
                                                                                                                  {
                                                                                                                     addr408:
                                                                                                                     §§push(_loc5_.§3!t§().GetMass());
                                                                                                                     if(!_loc9_)
                                                                                                                     {
                                                                                                                        addr412:
                                                                                                                        _loc7_ = §§pop();
                                                                                                                        addr413:
                                                                                                                        if(!(_loc9_ && _loc3_))
                                                                                                                        {
                                                                                                                           addr362:
                                                                                                                           _loc3_.§?1§(_loc7_);
                                                                                                                           if(_loc8_ || _loc3_)
                                                                                                                           {
                                                                                                                              if(!_loc9_)
                                                                                                                              {
                                                                                                                                 §§push(_loc5_.§3!t§());
                                                                                                                                 if(!(_loc9_ && this))
                                                                                                                                 {
                                                                                                                                    §§pop().§^2§(_loc3_,_loc5_.§3!t§().GetPosition());
                                                                                                                                    if(_loc8_)
                                                                                                                                    {
                                                                                                                                       if(false)
                                                                                                                                       {
                                                                                                                                          §§goto(addr362);
                                                                                                                                       }
                                                                                                                                       addr442:
                                                                                                                                       _loc4_++;
                                                                                                                                       continue loop0;
                                                                                                                                    }
                                                                                                                                    §§goto(addr362);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr408);
                                                                                                                           }
                                                                                                                           §§goto(addr413);
                                                                                                                        }
                                                                                                                        §§goto(addr441);
                                                                                                                     }
                                                                                                                     §§goto(addr412);
                                                                                                                  }
                                                                                                                  §§goto(addr442);
                                                                                                               }
                                                                                                               §§goto(addr425);
                                                                                                            }
                                                                                                            §§goto(addr440);
                                                                                                         }
                                                                                                         §§goto(addr405);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr425);
                                                                                                }
                                                                                                §§goto(addr412);
                                                                                             }
                                                                                             §§goto(addr405);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr440);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr284:
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr208:
                                                                                    if(!_loc8_)
                                                                                    {
                                                                                       loop19:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc5_.§=G§);
                                                                                          if(_loc8_ || this)
                                                                                          {
                                                                                             §§push(this.§'"I§);
                                                                                             loop20:
                                                                                             while(_loc8_ || param1)
                                                                                             {
                                                                                                §§push(§§pop() & §§pop());
                                                                                                loop21:
                                                                                                for(; !_loc9_; §§push(_loc5_.§=G§),if(_loc9_ && param2)
                                                                                                {
                                                                                                   continue;
                                                                                                },§§push(GravityFilterCategory.LEIA_FORCE_OBJECT),if(!_loc8_)
                                                                                                {
                                                                                                   continue loop20;
                                                                                                },§§push(§§pop() == §§pop()),if(_loc8_ || param1)
                                                                                                {
                                                                                                   if(!_loc9_)
                                                                                                   {
                                                                                                      if(!_loc9_)
                                                                                                      {
                                                                                                         if(_loc8_ || _loc3_)
                                                                                                         {
                                                                                                            if(!(_loc8_ || param2))
                                                                                                            {
                                                                                                               continue loop14;
                                                                                                            }
                                                                                                            §§push(!§§pop());
                                                                                                            while(!_loc9_)
                                                                                                            {
                                                                                                               §§goto(addr206);
                                                                                                               §§goto(addr128);
                                                                                                            }
                                                                                                            while(!§§pop())
                                                                                                            {
                                                                                                               §§push(_loc5_.§=G§);
                                                                                                               break loop21;
                                                                                                            }
                                                                                                            §§goto(addr284);
                                                                                                            addr204:
                                                                                                         }
                                                                                                         while(_loc8_)
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(!§§pop());
                                                                                                               addr292:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(_loc9_ && this)
                                                                                                                  {
                                                                                                                     continue loop8;
                                                                                                                  }
                                                                                                                  §§goto(addr300);
                                                                                                                  §§push(§§pop());
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr326);
                                                                                                         addr289:
                                                                                                      }
                                                                                                      §§goto(addr301);
                                                                                                   }
                                                                                                   §§goto(addr262);
                                                                                                },§§goto(addr204))
                                                                                                {
                                                                                                   §§push(!§§pop());
                                                                                                   loop22:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      addr251:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop());
                                                                                                         if(!_loc9_)
                                                                                                         {
                                                                                                            if(_loc9_ && this)
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               while(_loc8_ || this)
                                                                                                               {
                                                                                                                  §§pop();
                                                                                                                  if(_loc8_ || _loc3_)
                                                                                                                  {
                                                                                                                     continue loop21;
                                                                                                                  }
                                                                                                                  continue loop0;
                                                                                                               }
                                                                                                               §§goto(addr313);
                                                                                                               addr262:
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     §§goto(addr208);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§push(0);
                                                                                                                     do
                                                                                                                     {
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           _loc6_ = §§pop();
                                                                                                                           if(!_loc9_)
                                                                                                                           {
                                                                                                                              continue loop29;
                                                                                                                           }
                                                                                                                           continue loop0;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     while(_loc9_);
                                                                                                                     
                                                                                                                     _loc6_ = §§pop();
                                                                                                                     if(!_loc8_)
                                                                                                                     {
                                                                                                                        continue loop0;
                                                                                                                     }
                                                                                                                     §§goto(addr328);
                                                                                                                  }
                                                                                                               }
                                                                                                               addr206:
                                                                                                            }
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            addr300:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(§§pop())
                                                                                                               {
                                                                                                                  while(_loc8_ || param1)
                                                                                                                  {
                                                                                                                     §§pop();
                                                                                                                     continue loop19;
                                                                                                                  }
                                                                                                                  continue loop16;
                                                                                                                  addr301:
                                                                                                               }
                                                                                                               continue loop22;
                                                                                                            }
                                                                                                            addr300:
                                                                                                         }
                                                                                                      }
                                                                                                      continue loop15;
                                                                                                   }
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   break loop20;
                                                                                                }
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§goto(addr289);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr247);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr442);
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr142:
                                                                                 if(!_loc9_)
                                                                                 {
                                                                                    addr149:
                                                                                    §§push(Number(b2CircleShape(_loc5_.shape).§[p§()));
                                                                                    if(!(_loc9_ && param1))
                                                                                    {
                                                                                       §§goto(addr157);
                                                                                    }
                                                                                    §§goto(addr223);
                                                                                 }
                                                                              }
                                                                              §§goto(addr327);
                                                                           }
                                                                        }
                                                                        §§goto(addr149);
                                                                     }
                                                                     §§goto(addr142);
                                                                  }
                                                                  §§goto(addr292);
                                                               }
                                                               §§goto(addr251);
                                                            }
                                                            §§goto(addr204);
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             while(true)
                                             {
                                                §§goto(addr283);
                                             }
                                          }
                                          continue loop9;
                                       }
                                    }
                                 }
                              }
                              addr324:
                           }
                           §§goto(addr320);
                        }
                     }
                     §§goto(addr324);
                  }
                  §§goto(addr300);
               }
               §§goto(addr291);
            }
            return;
         }
         §§goto(addr34);
      }
      
      private function §,#S§(param1:Sprite) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            param1.scaleX -= §7!s§ / 6;
         }
         loop0:
         while(true)
         {
            param1.scaleY -= §7!s§ / 6;
            loop1:
            while(param1.scaleX / §7!s§ < 5)
            {
               do
               {
                  param1.scaleX = this.§?3§;
                  while(!_loc3_)
                  {
                     continue loop0;
                  }
                  continue loop1;
               }
               while(_loc3_ && this);
               
               break;
            }
            return;
         }
      }
      
      protected function §"r§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:Number = §3!t§().GetPosition().x;
         var _loc2_:Number = §3!t§().GetPosition().y;
         if(!_loc4_)
         {
            §§push(this.§%G§);
            loop0:
            while(true)
            {
               §§push(_loc1_);
               if(_loc3_)
               {
                  §§push(§#_§.§8]§);
                  while(true)
                  {
                     §§push(§§pop() / §§pop());
                  }
                  addr127:
               }
               addr128:
               while(true)
               {
                  §§pop().x = §§pop();
                  continue loop0;
               }
            }
         }
         while(this.mInnerSprite1)
         {
            if(_loc3_)
            {
               §§goto(addr74);
            }
            §§goto(addr85);
         }
         §§goto(addr35);
      }
      
      public function get §'"I§() : int
      {
         return GravityFilterCategory.FORCE_OBJECT;
      }
   }
}
