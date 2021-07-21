package §%"$§
{
   import §#R§.§79§;
   import §2"=§.b2Vec2;
   import §3§.§[d§;
   import §5!V§.§!w§;
   import §7r§.§=q§;
   import §8" §.§`8§;
   import §^[§.§!$§;
   import flash.display.DisplayObject;
   
   public class §+!+§ extends §[!0§
   {
       
      
      private const §%p§:Number = 8.0;
      
      protected var §?N§:§=q§;
      
      protected var §^%§:§[d§;
      
      private var §""?§:Vector.<String>;
      
      private var §^m§:Vector.<String>;
      
      private var §7!h§:int = 0;
      
      public function §+!+§(param1:§!w§, param2:XML)
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc3_:XML = null;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         if(!_loc8_)
         {
            super(param1,param2);
            while(true)
            {
               if(§9!7§.length == 0)
               {
                  while(true)
                  {
                     §9!7§ = "Please the pigs";
                     addr96:
                     while(true)
                     {
                     }
                  }
                  addr93:
               }
               while(true)
               {
                  this.§""?§ = new Vector.<String>();
                  loop3:
                  while(true)
                  {
                     this.§^m§ = new Vector.<String>();
                     loop4:
                     while(true)
                     {
                        if(!_loc9_)
                        {
                           break loop3;
                           addr49:
                        }
                        while(true)
                        {
                           this.§?N§ = §`8§.§"!h§(param2["object"][0].toString(),param1.objects);
                           continue loop4;
                        }
                        continue loop3;
                     }
                  }
                  §§goto(addr93);
                  §§goto(addr96);
               }
               if(_loc9_ || param2)
               {
                  if(false)
                  {
                     §§goto(addr49);
                  }
                  var _loc6_:int = 0;
                  var _loc7_:* = param2["request"];
                  addr250:
                  for each(_loc3_ in _loc7_)
                  {
                     if(_loc9_)
                     {
                        if(_loc3_.hasOwnProperty("@amount"))
                        {
                           addr197:
                           §§push(int(int(_loc3_["@amount"])));
                           §§push(int(int(_loc3_["@amount"])));
                           if(!(_loc8_ && param1))
                           {
                              _loc4_ = §§pop();
                              if(!_loc8_)
                              {
                                 §§push(0);
                                 if(!(_loc8_ && param2))
                                 {
                                    addr230:
                                    if(§§pop() == §§pop())
                                    {
                                       addr231:
                                       this.§^m§.push(_loc3_.toString());
                                       addr186:
                                       this.§^%§.§9%§(_loc3_.toString(),false);
                                       if(_loc9_)
                                       {
                                          §§goto(addr250);
                                       }
                                       §§goto(addr197);
                                       addr246:
                                    }
                                    §§push(0);
                                    if(!_loc8_)
                                    {
                                       if(_loc9_)
                                       {
                                          if(!_loc8_)
                                          {
                                             _loc5_ = §§pop();
                                             addr180:
                                             if(_loc9_)
                                             {
                                                addr247:
                                                addr248:
                                                addr249:
                                                if(_loc5_ >= _loc4_)
                                                {
                                                   §§goto(addr250);
                                                }
                                                this.§""?§.push(_loc3_.toString());
                                                if(_loc9_)
                                                {
                                                   if(_loc9_ || this)
                                                   {
                                                      if(!_loc8_)
                                                      {
                                                         if(!_loc8_)
                                                         {
                                                            addr137:
                                                            §§push(this.§^%§);
                                                            if(_loc9_)
                                                            {
                                                               §§pop().§9%§(_loc3_.toString(),true);
                                                               _loc5_++;
                                                               addr146:
                                                               if(!_loc8_)
                                                               {
                                                                  if(_loc9_)
                                                                  {
                                                                     if(false)
                                                                     {
                                                                        §§goto(addr137);
                                                                     }
                                                                     §§goto(addr247);
                                                                  }
                                                                  §§goto(addr146);
                                                               }
                                                               §§goto(addr250);
                                                            }
                                                            §§goto(addr186);
                                                         }
                                                      }
                                                      §§goto(addr231);
                                                   }
                                                   §§goto(addr180);
                                                }
                                                §§goto(addr250);
                                                addr182:
                                             }
                                             §§goto(addr246);
                                          }
                                       }
                                       §§goto(addr197);
                                    }
                                    §§goto(addr248);
                                 }
                                 §§goto(addr249);
                              }
                              §§goto(addr247);
                           }
                           §§goto(addr230);
                        }
                        §§push(1);
                        if(_loc9_ || this)
                        {
                        }
                        §§goto(addr197);
                     }
                     §§goto(addr182);
                  }
                  return;
               }
            }
         }
         §§goto(addr96);
      }
      
      override public function update(param1:§!w§) : Boolean
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc7_:§=q§ = null;
         var _loc2_:* = 0;
         var _loc3_:Vector.<String> = this.§""?§.concat();
         var _loc4_:Vector.<§=q§> = new Vector.<§=q§>();
         var _loc5_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc5_);
            if(_loc8_ || _loc3_)
            {
               if(§§pop() >= param1.objects.getObjectCount())
               {
                  if(_loc8_)
                  {
                     this.§^%§.update(_loc4_);
                  }
                  §§push(_loc2_);
                  break;
               }
               if((_loc7_ = §=q§.§0"§(param1.objects.getObject(_loc5_))) == this.§?N§)
               {
                  if(_loc8_ || _loc2_)
                  {
                     loop17:
                     while(true)
                     {
                        _loc5_++;
                        if(!_loc9_)
                        {
                           if(!_loc9_)
                           {
                              if(!(_loc9_ && _loc2_))
                              {
                                 if(!_loc9_)
                                 {
                                    if(true)
                                    {
                                       continue loop0;
                                    }
                                    while(true)
                                    {
                                       _loc4_.push(_loc7_);
                                       addr100:
                                       while(true)
                                       {
                                       }
                                    }
                                    addr96:
                                 }
                                 else
                                 {
                                    loop7:
                                    while(true)
                                    {
                                       if(_loc8_)
                                       {
                                          loop8:
                                          while(true)
                                          {
                                             §§push(this.§^m§.indexOf(_loc7_.getName()) > -1);
                                             loop9:
                                             while(!_loc9_)
                                             {
                                                if(!(_loc9_ && this))
                                                {
                                                   §§push(§§pop());
                                                   while(true)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         loop13:
                                                         while(true)
                                                         {
                                                            §§pop();
                                                            loop14:
                                                            while(true)
                                                            {
                                                               if(_loc9_ && param1)
                                                               {
                                                                  break loop8;
                                                               }
                                                               §§push(this.§;"1§(_loc7_));
                                                               if(_loc8_)
                                                               {
                                                                  continue loop13;
                                                               }
                                                               addr128:
                                                               addr128:
                                                               while(true)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc2_);
                                                                        if(_loc8_ || _loc3_)
                                                                        {
                                                                           §§push(§§pop() - 1);
                                                                        }
                                                                        _loc2_ = §§pop();
                                                                        addr139:
                                                                        while(true)
                                                                        {
                                                                           if(_loc9_)
                                                                           {
                                                                              continue loop14;
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§goto(addr96);
                                                                           }
                                                                        }
                                                                        continue loop14;
                                                                     }
                                                                     addr129:
                                                                  }
                                                                  addr79:
                                                                  while(true)
                                                                  {
                                                                     continue loop17;
                                                                  }
                                                                  continue loop0;
                                                               }
                                                            }
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         §§goto(addr128);
                                                      }
                                                   }
                                                   addr160:
                                                }
                                                else
                                                {
                                                   while(true)
                                                   {
                                                      §§push(Boolean(§§pop()));
                                                      break loop9;
                                                   }
                                                   addr180:
                                                }
                                             }
                                             addr181:
                                             while(true)
                                             {
                                                if(!§§pop())
                                                {
                                                   continue loop8;
                                                }
                                             }
                                          }
                                          continue;
                                       }
                                       while(true)
                                       {
                                          _loc2_++;
                                          continue loop7;
                                       }
                                    }
                                 }
                                 §§goto(addr79);
                              }
                              §§goto(addr129);
                           }
                           §§goto(addr139);
                        }
                        §§goto(addr100);
                     }
                  }
                  §§goto(addr141);
               }
               else
               {
                  §§push(_loc3_.indexOf(_loc7_.getName()) > -1);
                  if(_loc8_ || param1)
                  {
                     §§push(§§pop());
                     if(_loc8_)
                     {
                        if(§§pop())
                        {
                           if(_loc8_)
                           {
                              addr75:
                              §§pop();
                              if(_loc8_)
                              {
                                 §§goto(addr180);
                                 §§push(this.§;"1§(_loc7_));
                              }
                              §§goto(addr183);
                           }
                           §§goto(addr128);
                        }
                        §§goto(addr181);
                     }
                     §§goto(addr160);
                  }
                  §§goto(addr75);
               }
            }
            break;
         }
         var _loc6_:* = §§pop() == this.§""?§.length;
         if(!_loc9_)
         {
            if(this.§7!h§ != _loc2_)
            {
               if(!(_loc9_ && param1))
               {
                  this.§7!h§ = _loc2_;
                  if(_loc8_ || _loc2_)
                  {
                     §§push(_loc6_);
                     if(_loc8_ || _loc3_)
                     {
                        if(§§pop())
                        {
                        }
                        addr250:
                        return _loc6_;
                     }
                  }
               }
            }
         }
         §§goto(addr250);
      }
      
      private function §;"1§(param1:§=q§) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            §§push(param1.§&!5§());
            if(_loc4_ || this)
            {
               §§push(Boolean(§§pop()));
               if(!_loc5_)
               {
                  if(!§§pop())
                  {
                     if(!_loc5_)
                     {
                        addr34:
                        §§pop();
                        if(_loc4_ || this)
                        {
                           §§push(this.§?N§);
                           if(!_loc5_)
                           {
                              §§push(§§pop().§&!5§());
                              if(!_loc5_)
                              {
                                 addr59:
                                 §§push(Boolean(§§pop()));
                                 if(_loc4_ || this)
                                 {
                                    §§goto(addr67);
                                 }
                              }
                              return §§pop();
                           }
                        }
                        §§goto(addr79);
                     }
                     §§goto(addr59);
                  }
               }
               addr67:
               if(§§pop())
               {
                  if(_loc4_ || _loc2_)
                  {
                     §§push(false);
                  }
                  else
                  {
                     addr79:
                     var _loc2_:b2Vec2 = this.§?N§.getCenter();
                     var _loc3_:b2Vec2 = _loc2_.Copy();
                     §§goto(addr77);
                  }
               }
               addr77:
               if(!_loc5_)
               {
                  _loc3_.§5!]§(param1.getCenter());
               }
               return _loc3_.§`g§() < this.§%p§;
            }
            §§goto(addr34);
         }
         §§goto(addr79);
      }
      
      override public function getNextInstruction() : DisplayObject
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§79§ = null;
         if(_loc4_)
         {
            if(isCompleted)
            {
               if(_loc4_)
               {
                  return null;
               }
            }
         }
         var _loc2_:int = 0;
         var _loc3_:* = §`!"§;
         while(true)
         {
            for each(_loc1_ in _loc3_)
            {
               if(!(_loc5_ && this))
               {
                  §§push(_loc1_.start);
                  if(_loc4_ || _loc1_)
                  {
                     §§push(§§pop().object is §=q§);
                     if(_loc4_ || this)
                     {
                        if(§§pop())
                        {
                           if(_loc4_ || _loc3_)
                           {
                              §§push(this.§;"1§(_loc1_.start.object));
                              if(!(_loc5_ && _loc2_))
                              {
                                 addr95:
                                 if(!§§pop())
                                 {
                                    if(_loc4_)
                                    {
                                       return _loc1_;
                                    }
                                    break;
                                 }
                                 addr107:
                                 §§push(_loc1_.start.object is §!$§);
                              }
                              if(§§pop())
                              {
                                 if(!_loc5_)
                                 {
                                    break;
                                 }
                              }
                           }
                           continue;
                        }
                        §§goto(addr107);
                     }
                     §§goto(addr95);
                  }
                  §§goto(addr107);
               }
               break;
            }
            return null;
         }
         return _loc1_;
      }
      
      override public function isObjectNeeded(param1:§=q§) : Boolean
      {
         return false;
      }
      
      override public function getHUDs() : Vector.<DisplayObject>
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:Vector.<DisplayObject> = new Vector.<DisplayObject>();
         if(!_loc3_)
         {
            _loc1_.push(this.§^%§);
         }
         return _loc1_;
      }
   }
}
