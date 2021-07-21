package §]" §
{
   import §+!-§.§7"#§;
   import §,P§.§'_§;
   import §0!%§.Texture;
   import §;" §.§7!9§;
   import flash.display.Bitmap;
   import flash.utils.Dictionary;
   
   public class §?!m§
   {
      
      private static const § !5§:Class;
      
      private static const §"n§:Class;
      
      protected static var §-8§:Class;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            § !5§ = §35§;
            do
            {
               §"n§ = §>h§;
            }
            while(_loc2_);
            
         }
      }
      
      private var § else§:Dictionary;
      
      private var §6!&§:Dictionary;
      
      public function §?!m§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§ else§ = new Dictionary();
         }
         do
         {
            this.§6!&§ = new Dictionary();
            do
            {
               super();
            }
            while(!(_loc1_ || _loc1_));
            
         }
         while(!_loc1_);
         
      }
      
      public function clear() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§7"#§ = null;
         var _loc2_:int = 0;
         var _loc3_:* = this.§ else§;
         loop0:
         while(true)
         {
            §§push(§§hasnext(_loc3_,_loc2_));
            if(_loc4_)
            {
               if(§§pop())
               {
                  _loc1_ = §§nextvalue(_loc2_,_loc3_);
                  if(_loc4_)
                  {
                     §'_§.§=M§.objects.§`z§.removeChild(_loc1_);
                  }
                  continue;
               }
               if(!_loc5_)
               {
                  if(!_loc5_)
                  {
                     if(!(_loc5_ && this))
                     {
                        _loc2_ = 0;
                        if(!(_loc5_ && this))
                        {
                           _loc3_ = this.§6!&§;
                           while(true)
                           {
                              §§push(§§hasnext(_loc3_,_loc2_));
                              break loop0;
                           }
                           addr103:
                           if(_loc4_)
                           {
                              this.§ else§ = new Dictionary();
                              do
                              {
                                 this.§6!&§ = new Dictionary();
                              }
                              while(_loc5_);
                              
                              addr133:
                           }
                           return;
                           addr102:
                           addr100:
                        }
                        §§goto(addr103);
                     }
                     §§goto(addr133);
                  }
                  §§goto(addr103);
               }
               §§goto(addr102);
            }
            break;
         }
         while(true)
         {
            if(§§pop())
            {
               _loc1_ = §§nextvalue(_loc2_,_loc3_);
               if(_loc4_ || _loc1_)
               {
                  §'_§.§=M§.objects.§`z§.removeChild(_loc1_);
               }
               continue;
            }
            §§goto(addr103);
         }
      }
      
      public function update() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:Object = null;
         var _loc2_:int = 0;
         var _loc3_:* = this.§ else§;
         loop0:
         while(true)
         {
            §§push(§§hasnext(_loc3_,_loc2_));
            if(!(_loc5_ && this))
            {
               if(!§§pop())
               {
                  if(_loc4_ || _loc3_)
                  {
                     if(_loc4_)
                     {
                        if(_loc4_ || _loc3_)
                        {
                           _loc2_ = 0;
                           if(_loc4_)
                           {
                              _loc3_ = this.§6!&§;
                              while(true)
                              {
                                 §§push(§§hasnext(_loc3_,_loc2_));
                                 break loop0;
                              }
                              addr199:
                              addr198:
                              addr196:
                           }
                           §§goto(addr199);
                        }
                        return;
                     }
                     §§goto(addr199);
                  }
                  §§goto(addr198);
               }
               else
               {
                  _loc1_ = §§nextname(_loc2_,_loc3_);
                  if(_loc5_ && _loc3_)
                  {
                     continue;
                  }
                  if((_loc1_ as §7!9§).§!9§)
                  {
                     if(!_loc4_)
                     {
                        continue;
                     }
                     §§push(§'_§.§=M§);
                     if(!_loc5_)
                     {
                        §§push(§§pop().objects);
                        if(_loc4_)
                        {
                           §§push(§§pop().§`z§);
                           if(!_loc5_)
                           {
                              §§pop().addChild(this.§ else§[_loc1_]);
                              if(_loc5_)
                              {
                              }
                              continue;
                           }
                        }
                        else
                        {
                           addr67:
                           §§push(§§pop().§`z§);
                        }
                        §§pop().removeChild(this.§ else§[_loc1_]);
                        continue;
                     }
                     addr66:
                     §§push(§§pop().objects);
                     §§goto(addr67);
                  }
                  else
                  {
                     §§push(§'_§.§=M§);
                  }
                  §§goto(addr66);
               }
            }
            break;
         }
         while(true)
         {
            if(!§§pop())
            {
               §§goto(addr199);
            }
            else
            {
               _loc1_ = §§nextname(_loc2_,_loc3_);
               if(_loc4_ || _loc1_)
               {
                  if((_loc1_ as §7!9§).§!9§)
                  {
                     if(!(_loc4_ || _loc2_))
                     {
                        continue;
                     }
                     §§push(§'_§.§=M§);
                     if(_loc4_ || _loc3_)
                     {
                        §§push(§§pop().objects);
                        if(!(_loc5_ && this))
                        {
                           §§push(§§pop().§`z§);
                           if(!(_loc5_ && this))
                           {
                              §§pop().removeChild(this.§6!&§[_loc1_]);
                              if(_loc4_)
                              {
                                 addr176:
                              }
                              continue;
                           }
                        }
                        else
                        {
                           addr180:
                           §§push(§§pop().§`z§);
                        }
                        §§pop().addChild(this.§6!&§[_loc1_]);
                        continue;
                     }
                     addr179:
                     §§push(§§pop().objects);
                     §§goto(addr180);
                  }
                  else
                  {
                     §§push(§'_§.§=M§);
                  }
                  §§goto(addr179);
               }
               §§goto(addr176);
            }
         }
      }
      
      public function init(param1:Vector.<§7!9§>) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc2_:§7!9§ = null;
         var _loc3_:* = 0;
         var _loc4_:Bitmap = null;
         var _loc5_:Texture = null;
         var _loc6_:§7"#§ = null;
         if(!_loc10_)
         {
            this.clear();
         }
         loop0:
         for each(_loc2_ in param1)
         {
            if(_loc9_ || _loc3_)
            {
               §§push(0);
               if(!(_loc10_ && _loc2_))
               {
                  _loc3_ = §§pop();
                  addr86:
                  if(!(_loc10_ && param1))
                  {
                     while(true)
                     {
                        §§push(_loc3_);
                        loop2:
                        while(true)
                        {
                           §§push(2);
                           addr259:
                           while(§§pop() < §§pop())
                           {
                              §§push(_loc3_);
                              if(_loc10_)
                              {
                                 continue loop2;
                              }
                           }
                           continue loop0;
                        }
                     }
                     addr257:
                  }
                  while(true)
                  {
                     §§push(new § !5§());
                     addr93:
                     while(true)
                     {
                        _loc4_ = §§pop();
                        _loc5_ = §'_§.§=M§.§8=§.§%N§(_loc4_.bitmapData);
                        (_loc6_ = new §7"#§(_loc5_)).name = _loc2_.§&9§;
                        if(!(_loc10_ && _loc3_))
                        {
                           _loc6_.x = _loc2_.§6!o§;
                           loop5:
                           while(true)
                           {
                              _loc6_.y = _loc2_.§6!e§;
                              while(true)
                              {
                                 §§push(_loc6_);
                                 §§push(-_loc6_.width);
                                 if(!(_loc10_ && param1))
                                 {
                                    §§push(§§pop() / 2);
                                 }
                                 §§pop().pivotX = §§pop();
                                 loop7:
                                 while(_loc9_)
                                 {
                                    §§push(_loc6_);
                                    §§push(-_loc6_.height);
                                    if(!_loc10_)
                                    {
                                       §§push(§§pop() / 2);
                                    }
                                    §§pop().pivotY = §§pop();
                                    while(true)
                                    {
                                       §'_§.§=M§.objects.§`z§.addChild(_loc6_);
                                       addr141:
                                       if(_loc10_ && _loc2_)
                                       {
                                          continue;
                                       }
                                       if(false)
                                       {
                                          loop11:
                                          while(true)
                                          {
                                             _loc6_.visible = false;
                                             addr154:
                                             addr206:
                                             while(_loc9_ || this)
                                             {
                                                _loc3_++;
                                                if(_loc10_)
                                                {
                                                   continue;
                                                }
                                                if(!(_loc9_ || _loc2_))
                                                {
                                                   break loop11;
                                                }
                                                §§goto(addr141);
                                             }
                                             while(true)
                                             {
                                                if(_loc3_ != 0)
                                                {
                                                   this.§6!&§[_loc2_] = _loc6_;
                                                   break loop11;
                                                }
                                                addr191:
                                                while(true)
                                                {
                                                   this.§ else§[_loc2_] = _loc6_;
                                                   addr196:
                                                   while(!_loc10_)
                                                   {
                                                      continue loop11;
                                                   }
                                                   continue loop7;
                                                }
                                                §§goto(addr154);
                                             }
                                          }
                                          while(true)
                                          {
                                             if(_loc9_ || this)
                                             {
                                                if(!(_loc10_ && param1))
                                                {
                                                   if(_loc10_)
                                                   {
                                                      continue loop5;
                                                   }
                                                   §§goto(addr150);
                                                }
                                                §§goto(addr191);
                                             }
                                             §§goto(addr196);
                                             §§goto(addr134);
                                          }
                                          addr150:
                                          continue;
                                       }
                                       §§goto(addr257);
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr206);
                     }
                  }
                  addr86:
               }
               while(true)
               {
                  §§push(0);
                  if(_loc9_ || _loc3_)
                  {
                     if(§§pop() == §§pop())
                     {
                        if(!_loc9_)
                        {
                           continue loop0;
                        }
                        §§goto(addr86);
                     }
                     else
                     {
                        §§push(new §"n§());
                     }
                     §§goto(addr93);
                  }
                  §§goto(addr259);
               }
            }
            §§goto(addr86);
         }
      }
      
      public function set visible(param1:Boolean) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§7"#§ = null;
         var _loc3_:int = 0;
         var _loc4_:* = this.§ else§;
         loop0:
         while(true)
         {
            §§push(§§hasnext(_loc4_,_loc3_));
            if(!_loc5_)
            {
               if(§§pop())
               {
                  _loc2_ = §§nextvalue(_loc3_,_loc4_);
                  if(!_loc5_)
                  {
                     _loc2_.visible = param1;
                  }
                  continue;
               }
               if(_loc6_ || this)
               {
                  if(_loc6_ || this)
                  {
                     if(_loc6_ || this)
                     {
                        _loc3_ = 0;
                        if(!_loc5_)
                        {
                           addr79:
                           _loc4_ = this.§6!&§;
                           while(true)
                           {
                              §§push(§§hasnext(_loc4_,_loc3_));
                              break loop0;
                           }
                           addr105:
                        }
                     }
                     return;
                  }
               }
               §§goto(addr79);
            }
            break;
         }
         while(true)
         {
            if(§§pop())
            {
               _loc2_ = §§nextvalue(_loc3_,_loc4_);
               if(_loc6_)
               {
                  _loc2_.visible = param1;
               }
               continue;
            }
            §§goto(addr79);
         }
      }
   }
}
