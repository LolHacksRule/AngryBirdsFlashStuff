package §]!+§
{
   import §%c§.§=!X§;
   import §7R§.Texture;
   import §8" §.§7z§;
   import §default§.§=!Z§;
   import flash.display.Bitmap;
   import flash.utils.Dictionary;
   
   public class §'"+§
   {
      
      private static const §]j§:Class;
      
      private static const §"7§:Class;
      
      protected static var §;2§:Class;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §]j§ = § !o§;
         }
         do
         {
            §"7§ = §<!s§;
         }
         while(_loc1_ && §'"+§);
         
      }
      
      private var §"<§:Dictionary;
      
      private var §>!§:Dictionary;
      
      public function §'"+§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§"<§ = new Dictionary();
         }
         while(true)
         {
            this.§>!§ = new Dictionary();
            while(_loc2_)
            {
               super();
               if(_loc2_)
               {
                  return;
               }
            }
         }
      }
      
      public function clear() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§=!Z§ = null;
         var _loc2_:int = 0;
         var _loc3_:* = this.§"<§;
         loop0:
         while(true)
         {
            §§push(§§hasnext(_loc3_,_loc2_));
            if(_loc4_ || _loc1_)
            {
               if(§§pop())
               {
                  _loc1_ = §§nextvalue(_loc2_,_loc3_);
                  if(!(_loc5_ && _loc2_))
                  {
                     §=!X§.§!'§.objects.§6!v§.removeChild(_loc1_);
                  }
                  continue;
               }
               if(_loc4_)
               {
                  if(!_loc5_)
                  {
                     if(_loc4_)
                     {
                        _loc2_ = 0;
                        if(!_loc5_)
                        {
                           _loc3_ = this.§>!§;
                           while(true)
                           {
                              §§push(§§hasnext(_loc3_,_loc2_));
                              break loop0;
                           }
                           addr103:
                           if(!_loc5_)
                           {
                              this.§"<§ = new Dictionary();
                           }
                           addr102:
                           addr100:
                        }
                        §§goto(addr103);
                     }
                     do
                     {
                        this.§>!§ = new Dictionary();
                     }
                     while(!(_loc4_ || _loc2_));
                     
                     return;
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
               if(!(_loc5_ && this))
               {
                  §=!X§.§!'§.objects.§6!v§.removeChild(_loc1_);
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
         var _loc3_:* = this.§"<§;
         loop0:
         while(true)
         {
            §§push(§§hasnext(_loc3_,_loc2_));
            if(_loc4_ || _loc3_)
            {
               if(!§§pop())
               {
                  if(!_loc5_)
                  {
                     if(_loc4_)
                     {
                        if(!_loc5_)
                        {
                           _loc2_ = 0;
                           if(_loc4_ || _loc1_)
                           {
                              _loc3_ = this.§>!§;
                              while(true)
                              {
                                 §§push(§§hasnext(_loc3_,_loc2_));
                                 break loop0;
                              }
                              addr204:
                              addr203:
                              addr201:
                           }
                           §§goto(addr204);
                        }
                        return;
                     }
                     §§goto(addr204);
                  }
                  §§goto(addr203);
               }
               else
               {
                  _loc1_ = §§nextname(_loc2_,_loc3_);
                  if(!(_loc5_ && _loc1_))
                  {
                     if((_loc1_ as §7z§).§%!0§)
                     {
                        if(_loc5_ && _loc2_)
                        {
                           continue;
                        }
                        addr51:
                        §§push(§=!X§.§!'§);
                        if(_loc4_)
                        {
                           §§push(§§pop().objects);
                           if(_loc4_ || this)
                           {
                              §§push(§§pop().§6!v§);
                              if(_loc4_)
                              {
                                 §§pop().addChild(this.§"<§[_loc1_]);
                                 if(_loc5_ && _loc1_)
                                 {
                                 }
                                 continue;
                              }
                           }
                           else
                           {
                              addr82:
                              §§push(§§pop().§6!v§);
                           }
                           §§pop().removeChild(this.§"<§[_loc1_]);
                           continue;
                        }
                        addr81:
                        §§push(§§pop().objects);
                        §§goto(addr82);
                     }
                     else
                     {
                        §§push(§=!X§.§!'§);
                     }
                     §§goto(addr81);
                  }
                  §§goto(addr51);
               }
            }
            break;
         }
         while(true)
         {
            if(!§§pop())
            {
               §§goto(addr204);
            }
            else
            {
               _loc1_ = §§nextname(_loc2_,_loc3_);
               if(_loc4_ || _loc2_)
               {
                  if((_loc1_ as §7z§).§%!0§)
                  {
                     if(_loc4_ || _loc3_)
                     {
                        §§push(§=!X§.§!'§);
                        if(!_loc5_)
                        {
                           §§push(§§pop().objects);
                           if(!(_loc5_ && _loc2_))
                           {
                              §§push(§§pop().§6!v§);
                              if(_loc4_ || _loc2_)
                              {
                                 §§pop().removeChild(this.§>!§[_loc1_]);
                                 if(_loc4_)
                                 {
                                    addr181:
                                 }
                                 continue;
                              }
                           }
                           else
                           {
                              addr185:
                              §§push(§§pop().§6!v§);
                           }
                           §§pop().addChild(this.§>!§[_loc1_]);
                           continue;
                        }
                        addr184:
                        §§push(§§pop().objects);
                        §§goto(addr185);
                     }
                     §§goto(addr181);
                  }
                  else
                  {
                     §§push(§=!X§.§!'§);
                  }
                  §§goto(addr184);
               }
               §§goto(addr181);
            }
         }
      }
      
      public function init(param1:Vector.<§7z§>) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc2_:§7z§ = null;
         var _loc3_:* = 0;
         var _loc4_:Bitmap = null;
         var _loc5_:Texture = null;
         var _loc6_:§=!Z§ = null;
         if(!(_loc9_ && this))
         {
            this.clear();
         }
         loop0:
         for each(_loc2_ in param1)
         {
            if(!(_loc10_ || _loc2_))
            {
               continue;
            }
            §§push(0);
            if(!_loc9_)
            {
               _loc3_ = §§pop();
               if(_loc9_)
               {
                  continue;
               }
               while(true)
               {
                  §§push(_loc3_);
               }
               addr238:
            }
            while(true)
            {
               §§push(2);
               while(true)
               {
                  if(§§pop() >= §§pop())
                  {
                     continue loop0;
                  }
                  §§push(_loc3_);
                  if(!_loc10_)
                  {
                     break;
                  }
                  §§push(0);
                  if(!_loc10_)
                  {
                     continue;
                  }
                  if(§§pop() == §§pop())
                  {
                     if(_loc9_ && param1)
                     {
                        continue loop0;
                     }
                     §§push(new §]j§());
                  }
                  else
                  {
                     §§push(new §"7§());
                  }
                  _loc4_ = §§pop();
                  _loc5_ = §=!X§.§!'§.§7!J§.§&#§(_loc4_.bitmapData);
                  (_loc6_ = new §=!Z§(_loc5_)).name = _loc2_.§9!p§;
                  if(!_loc9_)
                  {
                     _loc6_.x = _loc2_.§&U§;
                     while(true)
                     {
                        _loc6_.y = _loc2_.§`!3§;
                        loop5:
                        while(true)
                        {
                           §§push(_loc6_);
                           §§push(-_loc6_.width);
                           if(_loc10_)
                           {
                              §§push(§§pop() / 2);
                           }
                           §§pop().pivotX = §§pop();
                           addr216:
                           while(true)
                           {
                              §§push(_loc6_);
                              §§push(-_loc6_.height);
                              if(_loc10_ || _loc3_)
                              {
                                 §§push(§§pop() / 2);
                              }
                              §§pop().pivotY = §§pop();
                              addr205:
                              while(true)
                              {
                                 §=!X§.§!'§.objects.§6!v§.addChild(_loc6_);
                                 continue loop5;
                              }
                           }
                        }
                        if(!(_loc10_ || param1))
                        {
                           continue;
                        }
                        _loc3_++;
                        if(!_loc9_)
                        {
                           §§goto(addr125);
                        }
                        §§goto(addr138);
                     }
                  }
                  §§goto(addr132);
               }
            }
         }
      }
      
      public function set visible(param1:Boolean) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§=!Z§ = null;
         var _loc3_:int = 0;
         var _loc4_:* = this.§"<§;
         loop0:
         while(true)
         {
            §§push(§§hasnext(_loc4_,_loc3_));
            if(!(_loc5_ && _loc3_))
            {
               if(§§pop())
               {
                  _loc2_ = §§nextvalue(_loc3_,_loc4_);
                  if(!(_loc5_ && this))
                  {
                     _loc2_.visible = param1;
                  }
                  continue;
               }
               if(!(_loc5_ && this))
               {
                  if(_loc6_ || _loc3_)
                  {
                     if(_loc6_)
                     {
                        _loc3_ = 0;
                        if(!(_loc5_ && _loc2_))
                        {
                           _loc4_ = this.§>!§;
                           while(true)
                           {
                              §§push(§§hasnext(_loc4_,_loc3_));
                              break loop0;
                           }
                           addr118:
                           addr117:
                           addr115:
                        }
                        §§goto(addr118);
                     }
                     return;
                  }
                  §§goto(addr118);
               }
               §§goto(addr117);
            }
            break;
         }
         while(true)
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
            §§goto(addr118);
         }
      }
   }
}
