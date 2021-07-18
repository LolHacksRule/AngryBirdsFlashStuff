package starling.events
{
   import §]!B§.Texture;
   import §]@§.Sprite;
   import §]@§.§`!C§;
   import flash.display3D.Context3D;
   import flash.geom.Point;
   
   class §5!"§ extends Sprite
   {
      
      private static var §?=§:Class;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §?=§ = TouchMarker_TouchMarkerBmp;
         }
      }
      
      private var §&!J§:Point;
      
      private var §if§:Texture;
      
      function §5!"§(param1:Context3D)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§`!C§ = null;
         if(!_loc5_)
         {
            super();
         }
         loop0:
         while(true)
         {
            addr34:
            addr50:
            addr146:
            while(true)
            {
               this.§&!J§ = new Point();
               continue loop0;
            }
            var _loc2_:int = 0;
            while(_loc2_ < 2)
            {
               _loc3_ = new §`!C§(this.§if§);
               if(_loc4_)
               {
                  §§push(_loc3_);
                  §§push(this.§if§.width);
                  if(!(_loc5_ && _loc3_))
                  {
                     §§push(§§pop() / 2);
                  }
                  §§pop().pivotX = §§pop();
                  loop4:
                  while(true)
                  {
                     §§push(_loc3_);
                     §§push(this.§if§.height);
                     if(!(_loc5_ && _loc3_))
                     {
                        §§push(§§pop() / 2);
                     }
                     §§pop().pivotY = §§pop();
                     loop5:
                     while(true)
                     {
                        _loc3_.§^f§ = false;
                        while(!_loc5_)
                        {
                           while(_loc4_ || _loc2_)
                           {
                              _loc2_++;
                              if(_loc4_)
                              {
                                 continue loop5;
                              }
                           }
                        }
                        continue loop4;
                     }
                  }
               }
               while(true)
               {
                  §§goto(addr86);
               }
            }
            return;
         }
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.§if§.dispose();
         }
         do
         {
            super.dispose();
         }
         while(!(_loc2_ || _loc1_));
         
      }
      
      public function §3k§(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            if(param3)
            {
               loop0:
               while(true)
               {
                  this.§&!J§.x += param1 - this.§-?§.x;
                  addr180:
                  while(true)
                  {
                     this.§&!J§.y += param2 - this.§-?§.y;
                     addr155:
                     while(true)
                     {
                     }
                     addr63:
                     if(_loc4_ || this)
                     {
                        return;
                     }
                  }
                  loop5:
                  while(true)
                  {
                     if(!(_loc4_ || param1))
                     {
                        continue loop0;
                     }
                     §§push(this.§-?§);
                     if(!(_loc5_ && param1))
                     {
                        §§push(param2);
                        if(!_loc5_)
                        {
                           §§pop().y = §§pop();
                           loop6:
                           while(true)
                           {
                              §§push(this.§7G§);
                              while(true)
                              {
                                 §§push(2);
                                 addr75:
                                 addr113:
                                 while(true)
                                 {
                                    §§push(§§pop() * this.§&!J§.x);
                                    addr79:
                                    while(true)
                                    {
                                       §§push(param1);
                                       addr80:
                                       while(true)
                                       {
                                          §§push(§§pop() - §§pop());
                                          addr91:
                                          while(true)
                                          {
                                             §§pop().x = §§pop();
                                             continue loop6;
                                          }
                                       }
                                    }
                                 }
                                 §§push(this.§7G§);
                                 if(!_loc4_)
                                 {
                                    continue;
                                 }
                                 §§push(2);
                                 if(_loc4_)
                                 {
                                    §§push(§§pop() * this.§&!J§.y);
                                    if(_loc4_ || param1)
                                    {
                                       if(!_loc5_)
                                       {
                                          §§push(param2);
                                          if(_loc4_)
                                          {
                                             addr48:
                                             §§push(§§pop() - §§pop());
                                             if(!(_loc5_ && param1))
                                             {
                                                §§pop().y = §§pop();
                                                if(!(_loc4_ || param3))
                                                {
                                                   continue loop6;
                                                }
                                                §§goto(addr63);
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr80);
                                          }
                                          §§goto(addr91);
                                       }
                                       else
                                       {
                                          §§goto(addr79);
                                       }
                                    }
                                    §§goto(addr48);
                                 }
                                 else
                                 {
                                    §§goto(addr75);
                                 }
                              }
                           }
                        }
                        while(true)
                        {
                           §§pop().x = §§pop();
                           continue loop5;
                        }
                        addr133:
                     }
                     while(true)
                     {
                        §§goto(addr133);
                     }
                  }
                  §§goto(addr180);
               }
            }
            while(true)
            {
               §§goto(addr132);
               §§goto(addr155);
            }
         }
         §§goto(addr155);
      }
      
      public function §+O§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
            this.§&!J§.x = param1;
            while(true)
            {
               this.§&!J§.y = param2;
               while(_loc4_)
               {
                  this.§3k§(this.§7!!§,this.§4h§);
                  if(_loc4_)
                  {
                     return;
                     addr48:
                  }
               }
            }
         }
         §§goto(addr48);
      }
      
      private function get §-?§() : §`!C§
      {
         return getChildAt(0) as §`!C§;
      }
      
      private function get §7G§() : §`!C§
      {
         return getChildAt(1) as §`!C§;
      }
      
      public function get §7!!§() : Number
      {
         return this.§-?§.x;
      }
      
      public function get §4h§() : Number
      {
         return this.§-?§.y;
      }
      
      public function get §&h§() : Number
      {
         return this.§7G§.x;
      }
      
      public function get §@Q§() : Number
      {
         return this.§7G§.y;
      }
   }
}
