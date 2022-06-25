package §`u§
{
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class SpriteSheetJSONGGS extends SpriteSheetBase
   {
      
      public static var §@!V§:Boolean = false;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && SpriteSheetJSONGGS))
         {
            §@!V§ = false;
         }
      }
      
      public function SpriteSheetJSONGGS(param1:Object, param2:BitmapData)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            super(param2);
            do
            {
               this.§-g§(param1);
            }
            while(!_loc3_);
            
         }
      }
      
      private static function §"O§(param1:§#!7§, param2:int, param3:int) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param3)
         {
            if(param1.§4!E§.top < 0)
            {
               while(true)
               {
                  param1.§4!E§.top = 0;
                  addr115:
                  while(true)
                  {
                  }
               }
               addr111:
            }
            loop2:
            while(true)
            {
               if(param1.§4!E§.left < 0)
               {
                  while(true)
                  {
                     param1.§4!E§.left = 0;
                     addr105:
                     while(true)
                     {
                     }
                  }
                  addr101:
               }
               loop4:
               while(true)
               {
                  if(param1.§4!E§.bottom > param3)
                  {
                     while(true)
                     {
                        if(!_loc4_)
                        {
                           param1.§4!E§.bottom = param3;
                           while(!(_loc4_ && param3))
                           {
                           }
                           continue loop2;
                           addr87:
                        }
                        §§goto(addr101);
                     }
                     continue;
                     addr71:
                  }
                  while(param1.§4!E§.right > param2)
                  {
                     if(_loc5_ || param3)
                     {
                        if(!_loc5_)
                        {
                           continue loop4;
                        }
                        param1.§4!E§.right = param2;
                     }
                     if(_loc5_)
                     {
                        if(_loc5_)
                        {
                           if(!_loc4_)
                           {
                              break;
                           }
                           §§goto(addr111);
                        }
                        else
                        {
                           §§goto(addr71);
                        }
                     }
                     §§goto(addr87);
                  }
                  return;
               }
            }
         }
         §§goto(addr105);
      }
      
      protected function §-g§(param1:Object) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc4_:* = null;
         var _loc5_:Object = null;
         var _loc6_:§#!7§ = null;
         §§push(false);
         if(_loc10_)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc10_)
         {
            §§push(§@!V§);
            if(!(_loc9_ && this))
            {
               if(§§pop())
               {
                  if(!_loc9_)
                  {
                     §§push(true);
                     if(!_loc9_)
                     {
                        §§push(Boolean(§§pop()));
                        if(_loc10_)
                        {
                           _loc2_ = §§pop();
                           if(_loc10_)
                           {
                              addr54:
                              §§push(Boolean(param1.usePivot));
                              if(!_loc9_)
                              {
                                 addr59:
                                 if(§§pop())
                                 {
                                    if(_loc10_ || _loc3_)
                                    {
                                       §§push(true);
                                       if(_loc9_ && this)
                                       {
                                       }
                                       addr76:
                                       _loc2_ = §§pop();
                                    }
                                 }
                                 §§goto(addr77);
                              }
                           }
                           addr77:
                           var _loc3_:Number = 1;
                           if(!_loc9_)
                           {
                              if(param1.scale)
                              {
                                 if(_loc10_ || this)
                                 {
                                    _loc3_ = parseFloat(param1.scale);
                                    if(_loc10_ || param1)
                                    {
                                    }
                                 }
                                 §§goto(addr109);
                              }
                              this.scale = _loc3_;
                           }
                           addr109:
                           var _loc7_:int = 0;
                           var _loc8_:* = param1;
                           while(§§hasnext(_loc8_,_loc7_))
                           {
                              §§push(§§nextname(_loc7_,_loc8_));
                              if(_loc10_)
                              {
                                 _loc4_ = §§pop();
                                 if(_loc9_ && param1)
                                 {
                                    continue;
                                 }
                                 §§push(_loc4_);
                                 if(_loc10_)
                                 {
                                    §§push("sprite_");
                                    if(!_loc9_)
                                    {
                                       if(§§pop().indexOf(§§pop()) != -1)
                                       {
                                          if(_loc10_)
                                          {
                                             _loc5_ = param1[_loc4_];
                                             _loc6_ = new §#!7§();
                                             if(!_loc9_)
                                             {
                                                _loc6_.mName = _loc5_.id;
                                                while(true)
                                                {
                                                   _loc5_.width = Math.round(_loc5_.width / _loc3_);
                                                   loop2:
                                                   while(!_loc9_)
                                                   {
                                                      _loc5_.height = Math.round(_loc5_.height / _loc3_);
                                                      loop3:
                                                      while(true)
                                                      {
                                                         _loc5_.x = Math.round(_loc5_.x / _loc3_);
                                                         loop4:
                                                         while(true)
                                                         {
                                                            _loc5_.y = Math.round(_loc5_.y / _loc3_);
                                                            loop5:
                                                            while(true)
                                                            {
                                                               _loc6_.§4!E§ = new Rectangle(_loc5_.x,_loc5_.y,_loc5_.width,_loc5_.height);
                                                               loop6:
                                                               while(true)
                                                               {
                                                                  §"O§(_loc6_,§%!J§.width,§%!J§.height);
                                                                  loop7:
                                                                  while(true)
                                                                  {
                                                                     if(_loc2_)
                                                                     {
                                                                        continue loop3;
                                                                     }
                                                                     _loc6_.§0!>§ = _loc5_.width / 2;
                                                                     loop8:
                                                                     while(true)
                                                                     {
                                                                        _loc6_.§+<§ = _loc5_.height / 2;
                                                                        loop9:
                                                                        while(true)
                                                                        {
                                                                           if(_loc10_)
                                                                           {
                                                                              loop10:
                                                                              while(true)
                                                                              {
                                                                                 _loc6_.§4!P§ = §%!J§;
                                                                                 while(!_loc9_)
                                                                                 {
                                                                                    §^!E§(_loc6_);
                                                                                    if(_loc9_ && _loc2_)
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                    if(_loc9_)
                                                                                    {
                                                                                       continue loop9;
                                                                                    }
                                                                                    if(_loc9_)
                                                                                    {
                                                                                       continue loop8;
                                                                                    }
                                                                                    if(_loc10_)
                                                                                    {
                                                                                       if(_loc10_)
                                                                                       {
                                                                                          if(!_loc10_)
                                                                                          {
                                                                                             break loop10;
                                                                                          }
                                                                                          if(_loc10_)
                                                                                          {
                                                                                             continue loop5;
                                                                                          }
                                                                                          continue loop6;
                                                                                       }
                                                                                       continue loop4;
                                                                                    }
                                                                                    addr231:
                                                                                    while(true)
                                                                                    {
                                                                                       continue loop10;
                                                                                    }
                                                                                 }
                                                                                 continue loop2;
                                                                              }
                                                                              continue loop7;
                                                                              addr196:
                                                                           }
                                                                           continue loop3;
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             while(false)
                                             {
                                                §§goto(addr196);
                                             }
                                          }
                                          continue;
                                       }
                                       addr345:
                                       §§push(_loc4_);
                                       §§push("image");
                                    }
                                    if(§§pop() == §§pop())
                                    {
                                       if(_loc10_ || _loc3_)
                                       {
                                          mName = param1[_loc4_];
                                       }
                                    }
                                    continue;
                                 }
                              }
                              §§goto(addr345);
                           }
                           return;
                        }
                        §§goto(addr76);
                        §§push(Boolean(§§pop()));
                     }
                     §§goto(addr59);
                  }
                  §§goto(addr76);
               }
               §§goto(addr54);
            }
         }
         §§goto(addr76);
      }
   }
}
