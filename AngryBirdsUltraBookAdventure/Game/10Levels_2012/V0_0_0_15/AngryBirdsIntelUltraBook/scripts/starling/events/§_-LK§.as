package starling.events
{
   import §_-uY§.Sprite;
   import §_-uY§.§_-09b§;
   import §_-z4§.Texture;
   import flash.display3D.Context3D;
   import flash.geom.Point;
   
   class §_-LK§ extends Sprite
   {
      
      private static var §_-Ot§:Class;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §_-Ot§ = TouchMarker_TouchMarkerBmp;
         }
      }
      
      private var §_-Y-§:Point;
      
      private var §_-7u§:Texture;
      
      function §_-LK§(param1:Context3D)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§_-09b§ = null;
         if(_loc5_ || _loc2_)
         {
            super();
            while(true)
            {
               loop1:
               while(true)
               {
                  this.§_-Y-§ = new Point();
                  do
                  {
                     this.§_-7u§ = Texture.§_-Qi§(param1,new §_-Ot§());
                  }
                  while(!_loc5_);
                  
                  if(_loc5_)
                  {
                     while(false)
                     {
                        continue loop1;
                     }
                     var _loc2_:int = 0;
                     loop4:
                     while(_loc2_ < 2)
                     {
                        _loc3_ = new §_-09b§(this.§_-7u§);
                        if(!(_loc4_ && _loc2_))
                        {
                           §§push(_loc3_);
                           §§push(this.§_-7u§.width);
                           if(!_loc4_)
                           {
                              §§push(§§pop() / 2);
                           }
                           §§pop().pivotX = §§pop();
                        }
                        loop5:
                        while(true)
                        {
                           §§push(_loc3_);
                           §§push(this.§_-7u§.height);
                           if(_loc5_)
                           {
                              §§push(§§pop() / 2);
                           }
                           §§pop().pivotY = §§pop();
                           loop6:
                           while(true)
                           {
                              _loc3_.§_-xd§ = false;
                              addr115:
                              while(true)
                              {
                                 addr87:
                                 while(true)
                                 {
                                    addChild(_loc3_);
                                    addr91:
                                    while(true)
                                    {
                                       if(!_loc4_)
                                       {
                                          continue loop5;
                                       }
                                       continue loop6;
                                    }
                                    continue loop5;
                                 }
                                 continue loop4;
                              }
                           }
                        }
                     }
                     return;
                     addr40:
                  }
                  break;
               }
            }
         }
         §§goto(addr40);
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§_-7u§.dispose();
         }
         do
         {
            super.dispose();
         }
         while(_loc2_ && this);
         
      }
      
      public function §_-Ze§(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param2))
         {
            if(param3)
            {
               if(!_loc5_)
               {
                  this.§_-Y-§.x += param1 - this.§_-VX§.x;
               }
               while(true)
               {
                  this.§_-Y-§.y += param2 - this.§_-VX§.y;
                  addr153:
                  while(true)
                  {
                  }
               }
               addr170:
            }
            while(true)
            {
               §§push(this.§_-VX§);
               addr127:
               loop3:
               while(true)
               {
                  §§push(param1);
                  addr128:
                  while(true)
                  {
                     §§pop().x = §§pop();
                     continue loop3;
                  }
               }
               §§goto(addr153);
            }
         }
         loop5:
         while(true)
         {
            §§push(this.§_-VX§);
            if(_loc4_)
            {
               §§push(param2);
               if(_loc4_)
               {
                  §§pop().y = §§pop();
                  loop6:
                  while(true)
                  {
                     if(!(_loc4_ || param3))
                     {
                        continue loop5;
                     }
                     if(!_loc5_)
                     {
                        §§push(this.§_-3e§);
                        while(true)
                        {
                           §§push(2);
                           addr83:
                           addr104:
                           while(true)
                           {
                              §§push(§§pop() * this.§_-Y-§.x);
                              if(!(_loc5_ && param2))
                              {
                                 §§push(param1);
                                 while(true)
                                 {
                                    §§push(§§pop() - §§pop());
                                 }
                                 addr95:
                              }
                              addr96:
                              while(true)
                              {
                                 §§pop().x = §§pop();
                                 continue loop6;
                              }
                           }
                           §§push(this.§_-3e§);
                           if(_loc5_ && this)
                           {
                              continue;
                           }
                           §§push(2);
                           if(!_loc5_)
                           {
                              §§push(§§pop() * this.§_-Y-§.y);
                              if(!(_loc5_ && param3))
                              {
                                 §§push(param2);
                                 if(_loc4_)
                                 {
                                    §§push(§§pop() - §§pop());
                                 }
                                 else
                                 {
                                    §§goto(addr95);
                                 }
                                 §§goto(addr96);
                              }
                              if(!(_loc5_ && param1))
                              {
                                 §§pop().y = §§pop();
                                 if(!_loc5_)
                                 {
                                    if(!_loc5_)
                                    {
                                       return;
                                    }
                                    break loop6;
                                 }
                                 continue loop6;
                              }
                           }
                           else
                           {
                              §§goto(addr83);
                           }
                           §§goto(addr96);
                        }
                     }
                     else
                     {
                        §§goto(addr170);
                     }
                  }
                  §§goto(addr153);
               }
               §§goto(addr128);
            }
            §§goto(addr127);
         }
      }
      
      public function §_-0AV§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            this.§_-Y-§.x = param1;
            while(true)
            {
               this.§_-Y-§.y = param2;
               while(!_loc4_)
               {
                  this.§_-Ze§(this.§_-1m§,this.§_-0Ap§);
                  if(_loc3_)
                  {
                     return;
                     addr47:
                  }
               }
            }
         }
         §§goto(addr47);
      }
      
      private function get §_-VX§() : §_-09b§
      {
         return getChildAt(0) as §_-09b§;
      }
      
      private function get §_-3e§() : §_-09b§
      {
         return getChildAt(1) as §_-09b§;
      }
      
      public function get §_-1m§() : Number
      {
         return this.§_-VX§.x;
      }
      
      public function get §_-0Ap§() : Number
      {
         return this.§_-VX§.y;
      }
      
      public function get §_-gI§() : Number
      {
         return this.§_-3e§.x;
      }
      
      public function get §_-68§() : Number
      {
         return this.§_-3e§.y;
      }
   }
}
