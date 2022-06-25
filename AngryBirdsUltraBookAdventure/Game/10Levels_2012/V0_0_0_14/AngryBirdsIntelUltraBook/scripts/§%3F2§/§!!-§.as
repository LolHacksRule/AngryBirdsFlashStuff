package §?2§
{
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class §!!-§ extends §]!'§
   {
       
      
      public function §!!-§(param1:Object, param2:BitmapData)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            super(param2);
            do
            {
               this.§`K§(param1);
            }
            while(_loc4_);
            
         }
      }
      
      protected function §`K§(param1:Object) : void
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc3_:* = null;
         var _loc4_:Object = null;
         var _loc5_:* = null;
         var _loc6_:Object = null;
         var _loc7_:§=!L§ = null;
         var _loc2_:Number = 1;
         if(!_loc13_)
         {
            if(param1.scale)
            {
               if(!_loc13_)
               {
                  _loc2_ = parseFloat(param1.scale);
                  if(_loc13_ && this)
                  {
                  }
               }
               §§goto(addr57);
            }
            this.scale = _loc2_;
         }
         addr57:
         var _loc8_:int = 0;
         var _loc9_:* = param1;
         while(§§hasnext(_loc9_,_loc8_))
         {
            §§push(§§nextname(_loc8_,_loc9_));
            if(_loc12_ || _loc2_)
            {
               _loc3_ = §§pop();
               if(!_loc13_)
               {
                  §§push(_loc3_);
                  if(!_loc13_)
                  {
                     §§push("chars");
                     if(!_loc13_)
                     {
                        if(§§pop().indexOf(§§pop()) == 0)
                        {
                           if(_loc13_)
                           {
                              continue;
                           }
                           addr89:
                           _loc4_ = param1[_loc3_];
                           if(!_loc13_)
                           {
                              var _loc10_:int = 0;
                              if(!(_loc13_ && _loc2_))
                              {
                                 var _loc11_:* = _loc4_;
                                 if(_loc12_)
                                 {
                                    for(_loc5_ in _loc11_)
                                    {
                                    }
                                    addr260:
                                    continue;
                                    addr256:
                                    addr259:
                                 }
                                 while(true)
                                 {
                                    (_loc6_ = _loc4_[_loc5_]).width = Math.round(_loc6_.width / _loc2_);
                                    if(_loc12_ || param1)
                                    {
                                       _loc6_.height = Math.ceil(_loc6_.height / _loc2_);
                                       loop3:
                                       while(true)
                                       {
                                          addr163:
                                          while(true)
                                          {
                                             _loc6_.x = Math.round(_loc6_.x / _loc2_);
                                             continue loop3;
                                          }
                                       }
                                       addr181:
                                    }
                                    while(true)
                                    {
                                       _loc6_.y = Math.round(_loc6_.y / _loc2_);
                                       if(!_loc12_)
                                       {
                                          continue;
                                       }
                                       if(_loc12_)
                                       {
                                          if(true)
                                          {
                                             break;
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr181);
                                       }
                                       §§goto(addr163);
                                    }
                                    (_loc7_ = new §=!L§()).mName = String.fromCharCode(_loc6_.code);
                                    if(_loc12_ || _loc3_)
                                    {
                                       _loc7_.§43§ = new Rectangle(_loc6_.x,_loc6_.y,_loc6_.width,_loc6_.height);
                                       while(true)
                                       {
                                          _loc7_.§if § = _loc6_.width / 2;
                                          while(_loc12_)
                                          {
                                             _loc7_.§2w§ = _loc6_.baseline;
                                             while(_loc12_)
                                             {
                                             }
                                          }
                                       }
                                    }
                                    while(true)
                                    {
                                       loop10:
                                       do
                                       {
                                          _loc7_.§^!d§ = §#n§;
                                          while(_loc12_)
                                          {
                                             §6!P§(_loc7_);
                                             if(_loc12_)
                                             {
                                                continue loop10;
                                             }
                                          }
                                          §§goto(addr220);
                                       }
                                       while(false);
                                       
                                       §§goto(addr256);
                                    }
                                 }
                              }
                              §§goto(addr259);
                           }
                           §§goto(addr260);
                        }
                        else
                        {
                           addr262:
                           §§push(_loc3_);
                           §§push("name");
                        }
                     }
                     if(§§pop() == §§pop())
                     {
                        if(_loc12_)
                        {
                           mName = param1[_loc3_];
                        }
                     }
                     continue;
                  }
                  §§goto(addr262);
               }
               §§goto(addr89);
            }
            §§goto(addr262);
         }
      }
   }
}
