package §0!M§
{
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class §7U§ extends §=!=§
   {
      
      public static var §83§:Boolean = false;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §83§ = false;
         }
      }
      
      public function §7U§(param1:Object, param2:BitmapData)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            super(param2);
            do
            {
               this.§<0§(param1);
            }
            while(_loc3_ && param1);
            
         }
      }
      
      private static function §-6§(param1:§,'§, param2:int, param3:int) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param1)
         {
            if(param1.§;!a§.top < 0)
            {
               loop0:
               while(true)
               {
                  param1.§;!a§.top = 0;
                  addr119:
                  while(true)
                  {
                  }
                  loop9:
                  while(true)
                  {
                     if(_loc4_ || §7U§)
                     {
                        while(true)
                        {
                           if(param1.§;!a§.bottom > param3)
                           {
                              loop5:
                              while(true)
                              {
                                 if(!_loc5_)
                                 {
                                    param1.§;!a§.bottom = param3;
                                    while(true)
                                    {
                                       if(!(_loc4_ || §7U§))
                                       {
                                          continue loop9;
                                       }
                                       addr34:
                                       if(_loc4_ || param2)
                                       {
                                          param1.§;!a§.right = param2;
                                       }
                                       if(!_loc5_)
                                       {
                                          if(_loc4_)
                                          {
                                             §§goto(addr24);
                                          }
                                          continue loop5;
                                       }
                                    }
                                    continue loop9;
                                 }
                                 addr96:
                                 while(_loc4_)
                                 {
                                    while(true)
                                    {
                                       param1.§;!a§.left = 0;
                                       continue loop9;
                                    }
                                 }
                                 §§goto(addr119);
                              }
                           }
                           while(param1.§;!a§.right > param2)
                           {
                              §§goto(addr34);
                           }
                           addr24:
                           return;
                           continue loop9;
                        }
                        addr60:
                     }
                     continue loop0;
                  }
               }
            }
            while(true)
            {
               if(param1.§;!a§.left < 0)
               {
                  §§goto(addr96);
               }
               §§goto(addr60);
               §§goto(addr119);
            }
         }
         §§goto(addr98);
      }
      
      protected function §<0§(param1:Object) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc4_:* = null;
         var _loc5_:Object = null;
         var _loc6_:§,'§ = null;
         var _loc2_:* = false;
         if(!(_loc9_ && _loc2_))
         {
            §§push(§83§);
            if(_loc10_)
            {
               if(§§pop())
               {
                  if(!(_loc9_ && _loc2_))
                  {
                     §§push(true);
                     if(_loc10_ || _loc3_)
                     {
                        _loc2_ = §§pop();
                        if(!_loc9_)
                        {
                           addr57:
                           if(param1.usePivot)
                           {
                              if(_loc9_)
                              {
                              }
                           }
                           §§goto(addr64);
                        }
                     }
                     §§goto(addr63);
                  }
                  addr63:
                  _loc2_ = §§pop();
                  addr64:
                  var _loc3_:Number = 1;
                  if(!(_loc9_ && param1))
                  {
                     if(param1.scale)
                     {
                        if(!_loc9_)
                        {
                           §§goto(addr79);
                        }
                     }
                     §§goto(addr92);
                  }
                  addr79:
                  _loc3_ = parseFloat(param1.scale);
                  if(_loc10_ || this)
                  {
                     addr92:
                     this.scale = _loc3_;
                  }
                  var _loc7_:int = 0;
                  var _loc8_:* = param1;
                  while(§§hasnext(_loc8_,_loc7_))
                  {
                     §§push(§§nextname(_loc7_,_loc8_));
                     if(!(_loc9_ && this))
                     {
                        §§push(_loc4_ = §§pop());
                        if(!(_loc9_ && _loc2_))
                        {
                           addr122:
                           §§push("sprite_");
                           if(!(_loc9_ && _loc2_))
                           {
                              if(§§pop().indexOf(§§pop()) != -1)
                              {
                                 if(_loc10_)
                                 {
                                    _loc5_ = param1[_loc4_];
                                    (_loc6_ = new §,'§()).mName = _loc5_.id;
                                    if(_loc10_)
                                    {
                                       _loc5_.width = Math.round(_loc5_.width / _loc3_);
                                       loop1:
                                       while(true)
                                       {
                                          _loc5_.height = Math.round(_loc5_.height / _loc3_);
                                          loop2:
                                          while(true)
                                          {
                                             _loc5_.x = Math.round(_loc5_.x / _loc3_);
                                             addr302:
                                             while(!_loc9_)
                                             {
                                                _loc5_.y = Math.round(_loc5_.y / _loc3_);
                                                continue loop2;
                                             }
                                             continue loop1;
                                          }
                                       }
                                    }
                                    while(true)
                                    {
                                       §§goto(addr171);
                                    }
                                 }
                              }
                              else
                              {
                                 addr337:
                                 if(_loc4_ != "image")
                                 {
                                    continue;
                                 }
                                 if(_loc9_ && param1)
                                 {
                                    continue;
                                 }
                              }
                              mName = param1[_loc4_];
                              continue;
                           }
                        }
                        §§goto(addr337);
                     }
                     §§goto(addr122);
                  }
                  return;
                  §§push(true);
               }
               §§goto(addr57);
            }
            §§goto(addr63);
         }
         §§goto(addr64);
      }
   }
}
