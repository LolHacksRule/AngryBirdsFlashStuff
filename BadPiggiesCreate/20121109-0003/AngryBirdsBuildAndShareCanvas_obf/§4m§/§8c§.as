package §4m§
{
   import §%!0§.§,4§;
   import §+V§.§&!O§;
   import §7&§.§%""§;
   import §7t§.§7a§;
   import §;" §.§5_§;
   import §<!a§.b2Vec2;
   import §^!k§.§;!T§;
   import flash.display.DisplayObject;
   
   public class §8c§ extends §9g§
   {
       
      
      private const §9h§:Number = 8.0;
      
      protected var §&!4§:§7a§;
      
      protected var §0p§:§%""§;
      
      private var §',§:Vector.<String>;
      
      private var §if §:Vector.<String>;
      
      private var §<![§:int = 0;
      
      public function §8c§(param1:§,4§, param2:XML)
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc3_:XML = null;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         if(_loc8_ || this)
         {
            super(param1,param2);
            while(true)
            {
               if(§]B§.length == 0)
               {
                  loop1:
                  while(true)
                  {
                     §]B§ = "Please the pigs";
                     addr100:
                     while(true)
                     {
                     }
                     loop5:
                     while(true)
                     {
                        if(!(_loc8_ || _loc3_))
                        {
                           continue loop1;
                        }
                        while(true)
                        {
                           do
                           {
                              this.§&!4§ = §5_§.§<!v§(param2["object"][0].toString(),param1.objects);
                              continue loop5;
                           }
                           while(false);
                           
                           loop9:
                           for each(_loc3_ in param2["request"])
                           {
                              if(_loc8_)
                              {
                                 if(_loc3_.hasOwnProperty("@amount"))
                                 {
                                    if(_loc8_)
                                    {
                                       addr217:
                                       §§push(int(_loc3_["@amount"]));
                                       if(_loc9_ && this)
                                       {
                                       }
                                       addr237:
                                       §§push(int(§§pop()));
                                       if(!_loc9_)
                                       {
                                          §§push(§§pop());
                                          if(!_loc9_)
                                          {
                                             _loc4_ = §§pop();
                                             if(_loc8_ || param1)
                                             {
                                                addr251:
                                                §§push(0);
                                                if(_loc8_ || param2)
                                                {
                                                   if(§§pop() != §§pop())
                                                   {
                                                      §§push(0);
                                                      if(!(_loc9_ && param2))
                                                      {
                                                         _loc5_ = §§pop();
                                                         while(true)
                                                         {
                                                            addr276:
                                                            while(true)
                                                            {
                                                               §§push(_loc5_);
                                                               addr277:
                                                               while(true)
                                                               {
                                                                  §§push(_loc4_);
                                                               }
                                                            }
                                                         }
                                                         addr202:
                                                      }
                                                      §§goto(addr277);
                                                   }
                                                   addr260:
                                                   this.§if §.push(_loc3_.toString());
                                                   addr206:
                                                   this.§0p§.§,!D§(_loc3_.toString(),false);
                                                   continue;
                                                   addr275:
                                                   addr210:
                                                }
                                             }
                                             §§goto(addr277);
                                          }
                                          while(true)
                                          {
                                             if(§§pop() >= §§pop())
                                             {
                                                continue loop9;
                                             }
                                             this.§',§.push(_loc3_.toString());
                                             if(!_loc8_)
                                             {
                                                continue loop9;
                                             }
                                             if(_loc8_)
                                             {
                                                loop11:
                                                do
                                                {
                                                   §§push(this.§0p§);
                                                   if(!(_loc9_ && _loc3_))
                                                   {
                                                      §§pop().§,!D§(_loc3_.toString(),true);
                                                      while(true)
                                                      {
                                                         _loc5_++;
                                                         if(!_loc8_)
                                                         {
                                                            continue loop9;
                                                         }
                                                         if(_loc9_)
                                                         {
                                                            continue;
                                                         }
                                                         if(_loc8_ || param1)
                                                         {
                                                            if(_loc8_ || param2)
                                                            {
                                                               if(!(_loc9_ && _loc3_))
                                                               {
                                                                  continue loop11;
                                                               }
                                                               §§goto(addr275);
                                                            }
                                                            §§goto(addr210);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr202);
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr206);
                                                }
                                                while(false);
                                                
                                                §§goto(addr276);
                                             }
                                             else
                                             {
                                                §§goto(addr260);
                                             }
                                             §§goto(addr277);
                                          }
                                       }
                                       §§goto(addr251);
                                    }
                                    §§goto(addr260);
                                 }
                                 else
                                 {
                                    §§push(1);
                                    if(!(_loc9_ && param1))
                                    {
                                       §§goto(addr237);
                                    }
                                 }
                                 §§goto(addr277);
                              }
                              §§goto(addr217);
                           }
                           return;
                        }
                     }
                     §§goto(addr100);
                  }
               }
               while(true)
               {
                  this.§',§ = new Vector.<String>();
                  §§goto(addr91);
                  §§goto(addr100);
               }
            }
         }
         §§goto(addr83);
      }
      
      override public function update(param1:§,4§) : Boolean
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc7_:§7a§ = null;
         var _loc2_:* = 0;
         var _loc3_:Vector.<String> = this.§',§.concat();
         var _loc4_:Vector.<§7a§> = new Vector.<§7a§>();
         var _loc5_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc5_);
            if(_loc8_)
            {
               if(§§pop() >= param1.objects.getObjectCount())
               {
                  if(_loc8_ || _loc2_)
                  {
                     this.§0p§.update(_loc4_);
                  }
                  §§push(_loc2_);
                  break;
               }
               if((_loc7_ = §7a§.§^!g§(param1.objects.getObject(_loc5_))) == this.§&!4§)
               {
                  if(!(_loc9_ && param1))
                  {
                     loop17:
                     while(true)
                     {
                        _loc5_++;
                        if(_loc8_ || _loc2_)
                        {
                           if(!_loc9_)
                           {
                              if(!_loc9_)
                              {
                                 if(true)
                                 {
                                    continue loop0;
                                 }
                                 loop11:
                                 while(true)
                                 {
                                    _loc4_.push(_loc7_);
                                    addr98:
                                    addr138:
                                    while(!(_loc9_ && this))
                                    {
                                       while(true)
                                       {
                                          continue loop17;
                                       }
                                       continue loop0;
                                    }
                                    while(!(_loc9_ && param1))
                                    {
                                       §§push(_loc2_);
                                       if(_loc8_ || _loc3_)
                                       {
                                          §§push(§§pop() - 1);
                                       }
                                       _loc2_ = §§pop();
                                       while(true)
                                       {
                                          continue loop11;
                                       }
                                       §§goto(addr98);
                                    }
                                    loop3:
                                    while(true)
                                    {
                                       if(!_loc9_)
                                       {
                                          if(!_loc9_)
                                          {
                                             loop4:
                                             while(true)
                                             {
                                                §§push(this.§if §.indexOf(_loc7_.getName()) > -1);
                                                loop5:
                                                while(true)
                                                {
                                                   §§push(§§pop());
                                                   addr165:
                                                   while(true)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         while(true)
                                                         {
                                                            §§pop();
                                                            addr167:
                                                            loop7:
                                                            while(true)
                                                            {
                                                               §§push(this.§!!h§(_loc7_));
                                                               if(!_loc9_)
                                                               {
                                                                  if(_loc9_)
                                                                  {
                                                                     continue loop5;
                                                                  }
                                                                  if(!_loc9_)
                                                                  {
                                                                     addr126:
                                                                     if(!(_loc9_ && _loc3_))
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§push(Boolean(§§pop()));
                                                                           addr134:
                                                                           while(true)
                                                                           {
                                                                              if(!_loc8_)
                                                                              {
                                                                                 break loop7;
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    continue loop3;
                                                                                 }
                                                                                 §§goto(addr79);
                                                                              }
                                                                           }
                                                                        }
                                                                        addr133:
                                                                     }
                                                                     else
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§push(Boolean(§§pop()));
                                                                           §§goto(addr126);
                                                                        }
                                                                        addr180:
                                                                     }
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        break loop3;
                                                                     }
                                                                     continue loop4;
                                                                  }
                                                               }
                                                               §§goto(addr134);
                                                            }
                                                         }
                                                         addr166:
                                                      }
                                                      §§goto(addr136);
                                                   }
                                                }
                                             }
                                          }
                                          break;
                                       }
                                       addr183:
                                       while(true)
                                       {
                                          _loc4_.push(_loc7_);
                                          continue loop3;
                                       }
                                    }
                                    while(true)
                                    {
                                       _loc2_++;
                                       §§goto(addr183);
                                    }
                                 }
                              }
                              §§goto(addr167);
                           }
                           §§goto(addr155);
                        }
                        §§goto(addr98);
                     }
                  }
                  §§goto(addr183);
               }
               else
               {
                  §§push(_loc3_.indexOf(_loc7_.getName()) > -1);
                  if(_loc8_)
                  {
                     §§push(§§pop());
                     if(!(_loc9_ && this))
                     {
                        if(§§pop())
                        {
                           if(!_loc9_)
                           {
                              §§pop();
                              if(_loc8_)
                              {
                                 §§goto(addr180);
                                 §§push(this.§!!h§(_loc7_));
                              }
                              §§goto(addr183);
                           }
                           §§goto(addr166);
                        }
                        §§goto(addr181);
                     }
                     §§goto(addr165);
                  }
               }
               §§goto(addr133);
            }
            break;
         }
         var _loc6_:* = §§pop() == this.§',§.length;
         if(_loc8_)
         {
            if(this.§<![§ != _loc2_)
            {
               if(_loc8_ || param1)
               {
                  this.§<![§ = _loc2_;
                  if(_loc8_ || _loc2_)
                  {
                     §§goto(addr241);
                  }
               }
               §§goto(addr241);
            }
            §§goto(addr245);
         }
         addr241:
         §§push(_loc6_);
         if(_loc8_)
         {
            if(§§pop())
            {
            }
            addr245:
            return _loc6_;
         }
      }
      
      private function §!!h§(param1:§7a§) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            §§push(param1.§@Z§());
            if(_loc5_ || param1)
            {
               §§push(Boolean(§§pop()));
               if(_loc5_ || param1)
               {
                  if(!§§pop())
                  {
                     if(!(_loc4_ && _loc2_))
                     {
                        addr45:
                        §§pop();
                        if(!_loc4_)
                        {
                           addr48:
                           §§push(this.§&!4§);
                           if(!_loc4_)
                           {
                              §§push(§§pop().§@Z§());
                              if(!(_loc4_ && _loc2_))
                              {
                                 addr70:
                                 §§push(Boolean(§§pop()));
                                 if(!(_loc4_ && this))
                                 {
                                    §§goto(addr78);
                                 }
                              }
                              return §§pop();
                           }
                        }
                        §§goto(addr90);
                     }
                  }
                  addr78:
                  if(§§pop())
                  {
                     if(_loc5_ || param1)
                     {
                        §§push(false);
                     }
                     else
                     {
                        addr90:
                        var _loc2_:b2Vec2 = this.§&!4§.getCenter();
                        var _loc3_:b2Vec2 = _loc2_.Copy();
                        §§goto(addr88);
                     }
                  }
                  addr88:
                  if(!_loc4_)
                  {
                     _loc3_.§&"1§(param1.getCenter());
                  }
                  return _loc3_.§?!]§() < this.§9h§;
               }
               §§goto(addr45);
            }
            §§goto(addr70);
         }
         §§goto(addr48);
      }
      
      override public function getNextInstruction() : DisplayObject
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§&!O§ = null;
         if(!_loc4_)
         {
            if(isCompleted)
            {
               if(!(_loc4_ && _loc1_))
               {
                  §§goto(addr31);
               }
            }
            var _loc2_:int = 0;
            var _loc3_:* = §<!$§;
            while(true)
            {
               for each(_loc1_ in _loc3_)
               {
                  if(!_loc4_)
                  {
                     §§push(_loc1_.start);
                     if(!(_loc4_ && _loc1_))
                     {
                        §§push(§§pop().object is §7a§);
                        if(!(_loc4_ && _loc3_))
                        {
                           if(§§pop())
                           {
                              if(_loc5_)
                              {
                                 addr79:
                                 §§push(this.§!!h§(_loc1_.start.object));
                                 if(_loc5_ || _loc2_)
                                 {
                                    if(!§§pop())
                                    {
                                       if(!_loc4_)
                                       {
                                          return _loc1_;
                                       }
                                       addr98:
                                       if(_loc1_.start.object is §;!T§)
                                       {
                                          if(!_loc4_)
                                          {
                                             break;
                                          }
                                       }
                                       continue;
                                    }
                                 }
                                 §§goto(addr98);
                              }
                              break;
                           }
                        }
                     }
                     §§goto(addr98);
                  }
                  §§goto(addr79);
               }
               return null;
            }
            return _loc1_;
         }
         addr31:
         return null;
      }
      
      override public function isObjectNeeded(param1:§7a§) : Boolean
      {
         return false;
      }
      
      override public function getHUDs() : Vector.<DisplayObject>
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:Vector.<DisplayObject> = new Vector.<DisplayObject>();
         if(!(_loc2_ && _loc1_))
         {
            _loc1_.push(this.§0p§);
         }
         return _loc1_;
      }
   }
}
