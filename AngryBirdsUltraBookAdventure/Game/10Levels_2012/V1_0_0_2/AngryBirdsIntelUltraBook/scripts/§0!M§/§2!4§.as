package §0!M§
{
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class §2!4§ extends §=!=§
   {
       
      
      public function §2!4§(param1:Object, param2:BitmapData)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            super(param2);
            do
            {
               this.§<0§(param1);
            }
            while(!_loc3_);
            
         }
      }
      
      protected function §<0§(param1:Object) : void
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc3_:* = null;
         var _loc4_:Object = null;
         var _loc5_:* = null;
         var _loc6_:Object = null;
         var _loc7_:§,'§ = null;
         var _loc2_:Number = 1;
         if(_loc13_)
         {
            if(param1.scale)
            {
               if(_loc13_)
               {
                  _loc2_ = parseFloat(param1.scale);
                  if(_loc13_ || _loc2_)
                  {
                  }
               }
               §§goto(addr58);
            }
            this.scale = _loc2_;
         }
         addr58:
         var _loc8_:int = 0;
         var _loc9_:* = param1;
         while(§§hasnext(_loc9_,_loc8_))
         {
            §§push(§§nextname(_loc8_,_loc9_));
            if(_loc13_)
            {
               _loc3_ = §§pop();
               if(!(_loc12_ && _loc2_))
               {
                  §§push(_loc3_);
                  if(!(_loc12_ && this))
                  {
                     §§push("chars");
                     if(!(_loc12_ && this))
                     {
                        if(§§pop().indexOf(§§pop()) == 0)
                        {
                           if(!(_loc13_ || _loc2_))
                           {
                              continue;
                           }
                           addr105:
                           _loc4_ = param1[_loc3_];
                           if(_loc13_ || this)
                           {
                              var _loc10_:int = 0;
                              if(_loc13_)
                              {
                                 var _loc11_:* = _loc4_;
                                 if(_loc13_ || this)
                                 {
                                    for(_loc5_ in _loc11_)
                                    {
                                    }
                                    addr281:
                                    continue;
                                    addr277:
                                    addr280:
                                 }
                                 while(true)
                                 {
                                    (_loc6_ = _loc4_[_loc5_]).width = Math.round(_loc6_.width / _loc2_);
                                    if(_loc13_)
                                    {
                                       _loc6_.height = Math.ceil(_loc6_.height / _loc2_);
                                       loop3:
                                       while(true)
                                       {
                                          addr182:
                                          while(true)
                                          {
                                             _loc6_.x = Math.round(_loc6_.x / _loc2_);
                                             continue loop3;
                                          }
                                       }
                                    }
                                    while(true)
                                    {
                                       _loc6_.y = Math.round(_loc6_.y / _loc2_);
                                       if(!(_loc12_ && _loc2_))
                                       {
                                          if(true)
                                          {
                                             break;
                                          }
                                          §§goto(addr182);
                                       }
                                       §§goto(addr191);
                                    }
                                    (_loc7_ = new §,'§()).mName = String.fromCharCode(_loc6_.code);
                                    if(_loc13_)
                                    {
                                       _loc7_.§;!a§ = new Rectangle(_loc6_.x,_loc6_.y,_loc6_.width,_loc6_.height);
                                       loop7:
                                       while(true)
                                       {
                                          _loc7_.§&5§ = _loc6_.width / 2;
                                          while(true)
                                          {
                                             _loc7_.§1!O§ = _loc6_.baseline;
                                             addr243:
                                             while(_loc13_)
                                             {
                                                while(true)
                                                {
                                                   _loc7_.§?![§ = §'!N§;
                                                   addr235:
                                                   while(_loc13_)
                                                   {
                                                   }
                                                   continue loop7;
                                                }
                                             }
                                          }
                                       }
                                    }
                                    while(true)
                                    {
                                       §5!w§(_loc7_);
                                       if(_loc13_)
                                       {
                                          if(!_loc12_)
                                          {
                                             if(true)
                                             {
                                                break;
                                             }
                                             §§goto(addr231);
                                          }
                                          §§goto(addr243);
                                       }
                                       §§goto(addr235);
                                    }
                                    §§goto(addr277);
                                 }
                              }
                              §§goto(addr280);
                           }
                           §§goto(addr281);
                        }
                        else
                        {
                           addr283:
                           §§push(_loc3_);
                           §§push("name");
                        }
                     }
                     if(§§pop() == §§pop())
                     {
                        if(_loc13_ || param1)
                        {
                           mName = param1[_loc3_];
                        }
                     }
                     continue;
                  }
                  §§goto(addr283);
               }
               §§goto(addr105);
            }
            §§goto(addr283);
         }
      }
   }
}
