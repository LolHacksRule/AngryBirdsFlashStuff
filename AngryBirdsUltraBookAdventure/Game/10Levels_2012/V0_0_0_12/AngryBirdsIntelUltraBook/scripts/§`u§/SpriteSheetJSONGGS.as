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
         if(_loc1_ || _loc1_)
         {
            §@!V§ = false;
         }
      }
      
      public function SpriteSheetJSONGGS(param1:Object, param2:BitmapData)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param2)
         {
            super(param2);
            do
            {
               this.§-g§(param1);
            }
            while(_loc4_ && _loc3_);
            
         }
      }
      
      private static function §"O§(param1:§#!7§, param2:int, param3:int) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param1)
         {
            if(param1.§4!E§.top < 0)
            {
               while(true)
               {
                  param1.§4!E§.top = 0;
                  addr114:
                  while(true)
                  {
                  }
                  addr74:
                  if(_loc4_ || SpriteSheetJSONGGS)
                  {
                     loop7:
                     while(param1.§4!E§.right > param2)
                     {
                        if(_loc4_)
                        {
                           if(!(_loc5_ && param1))
                           {
                              param1.§4!E§.right = param2;
                              addr57:
                              if(!_loc5_)
                              {
                                 break;
                              }
                              addr104:
                              loop6:
                              while(_loc4_)
                              {
                                 if(_loc4_)
                                 {
                                    §§goto(addr74);
                                 }
                                 else
                                 {
                                    while(!_loc5_)
                                    {
                                       param1.§4!E§.left = 0;
                                       break loop6;
                                    }
                                    §§goto(addr114);
                                    addr98:
                                 }
                              }
                              loop8:
                              while(true)
                              {
                                 addr60:
                                 while(true)
                                 {
                                    if(param1.§4!E§.bottom <= param3)
                                    {
                                       continue loop7;
                                    }
                                    continue loop8;
                                 }
                              }
                              addr70:
                           }
                           while(true)
                           {
                              param1.§4!E§.bottom = param3;
                              §§goto(addr70);
                           }
                        }
                        §§goto(addr57);
                     }
                     return;
                  }
               }
            }
            while(true)
            {
               if(param1.§4!E§.left < 0)
               {
                  §§goto(addr98);
               }
               §§goto(addr60);
               §§goto(addr114);
            }
         }
         §§goto(addr104);
      }
      
      protected function §-g§(param1:Object) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc4_:* = null;
         var _loc5_:Object = null;
         var _loc6_:§#!7§ = null;
         §§push(false);
         if(!_loc10_)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc10_ && _loc3_))
         {
            §§push(§@!V§);
            if(!_loc10_)
            {
               if(§§pop())
               {
                  if(!(_loc10_ && this))
                  {
                     §§push(true);
                     if(_loc9_ || param1)
                     {
                        §§push(Boolean(§§pop()));
                        if(_loc9_ || param1)
                        {
                           _loc2_ = §§pop();
                           if(_loc9_)
                           {
                              addr68:
                              §§push(Boolean(param1.usePivot));
                              if(!(_loc10_ && this))
                              {
                                 §§goto(addr78);
                              }
                              §§goto(addr95);
                           }
                           §§goto(addr86);
                        }
                        §§goto(addr78);
                     }
                     §§goto(addr95);
                  }
                  §§goto(addr86);
               }
               §§goto(addr68);
            }
            addr78:
            if(§§pop())
            {
               if(_loc9_ || param1)
               {
                  addr86:
                  §§push(true);
                  if(_loc9_ || this)
                  {
                     addr95:
                     _loc2_ = Boolean(§§pop());
                  }
                  §§goto(addr95);
               }
            }
            var _loc3_:Number = 1;
            if(_loc9_ || param1)
            {
               if(param1.scale)
               {
                  if(_loc9_)
                  {
                     _loc3_ = parseFloat(param1.scale);
                     if(!_loc9_)
                     {
                     }
                     §§goto(addr123);
                  }
               }
               this.scale = _loc3_;
            }
            addr123:
            var _loc7_:int = 0;
            var _loc8_:* = param1;
            while(§§hasnext(_loc8_,_loc7_))
            {
               §§push(§§nextname(_loc7_,_loc8_));
               if(_loc9_ || param1)
               {
                  _loc4_ = §§pop();
                  if(_loc9_ || _loc2_)
                  {
                     §§push(_loc4_);
                     if(!(_loc10_ && _loc3_))
                     {
                        §§push("sprite_");
                        if(!(_loc10_ && _loc3_))
                        {
                           if(§§pop().indexOf(§§pop()) != -1)
                           {
                              if(!(_loc9_ || _loc3_))
                              {
                                 addr398:
                                 mName = param1[_loc4_];
                                 continue;
                              }
                              _loc5_ = param1[_loc4_];
                              _loc6_ = new §#!7§();
                              if(_loc9_)
                              {
                                 _loc6_.mName = _loc5_.id;
                                 while(true)
                                 {
                                    _loc5_.width = Math.round(_loc5_.width / _loc3_);
                                 }
                                 addr386:
                              }
                              loop2:
                              while(true)
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
                                       for(; _loc9_; while(_loc9_ || _loc3_)
                                       {
                                          _loc6_.§+<§ = _loc5_.pivoty / _loc3_;
                                          loop9:
                                          while(true)
                                          {
                                             addr224:
                                             while(true)
                                             {
                                                _loc6_.§4!P§ = §%!J§;
                                                continue loop9;
                                             }
                                             continue loop4;
                                          }
                                       })
                                       {
                                          _loc6_.§4!E§ = new Rectangle(_loc5_.x,_loc5_.y,_loc5_.width,_loc5_.height);
                                          while(true)
                                          {
                                             §"O§(_loc6_,§%!J§.width,§%!J§.height);
                                             while(true)
                                             {
                                                if(!_loc2_)
                                                {
                                                   _loc6_.§0!>§ = _loc5_.width / 2;
                                                   break;
                                                }
                                                if(_loc9_)
                                                {
                                                   continue;
                                                }
                                                continue loop5;
                                             }
                                             addr261:
                                             while(true)
                                             {
                                                if(_loc9_)
                                                {
                                                   _loc6_.§+<§ = _loc5_.height / 2;
                                                   continue loop2;
                                                }
                                                continue loop5;
                                             }
                                          }
                                          §§goto(addr386);
                                       }
                                       continue loop3;
                                    }
                                 }
                              }
                           }
                           else
                           {
                              addr389:
                              §§push(_loc4_);
                              §§push("image");
                           }
                           §§goto(addr398);
                        }
                        if(§§pop() != §§pop())
                        {
                           continue;
                        }
                        if(_loc10_ && this)
                        {
                           continue;
                        }
                     }
                     §§goto(addr389);
                  }
                  §§goto(addr398);
               }
               §§goto(addr389);
            }
            return;
         }
         §§goto(addr68);
      }
   }
}
