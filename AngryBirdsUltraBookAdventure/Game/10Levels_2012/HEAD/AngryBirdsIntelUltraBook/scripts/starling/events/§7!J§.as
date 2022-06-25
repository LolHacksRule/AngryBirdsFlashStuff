package starling.events
{
   import §'_§.Texture;
   import §1!&§.§&p§;
   import §1!&§.Sprite;
   import flash.display3D.Context3D;
   import flash.geom.Point;
   
   class §7!J§ extends Sprite
   {
      
      private static var §7!b§:Class;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §7!b§ = TouchMarker_TouchMarkerBmp;
         }
      }
      
      private var §<!V§:Point;
      
      private var §!!!§:Texture;
      
      function §7!J§(param1:Context3D)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§&p§ = null;
         if(_loc4_)
         {
            super();
            while(true)
            {
               loop1:
               while(true)
               {
                  this.§<!V§ = new Point();
                  do
                  {
                     this.§!!!§ = Texture.§3!R§(param1,new §7!b§());
                  }
                  while(_loc5_ && _loc2_);
                  
                  if(_loc4_)
                  {
                     while(false)
                     {
                        continue loop1;
                     }
                     §§push(0);
                     if(!(_loc5_ && _loc3_))
                     {
                        §§push(int(§§pop()));
                     }
                     var _loc2_:* = §§pop();
                     loop4:
                     while(_loc2_ < 2)
                     {
                        _loc3_ = new §&p§(this.§!!!§);
                        if(!_loc5_)
                        {
                           §§push(_loc3_);
                           §§push(this.§!!!§.width);
                           if(!(_loc5_ && this))
                           {
                              §§push(§§pop() / 2);
                           }
                           §§pop().pivotX = §§pop();
                        }
                        while(true)
                        {
                           §§push(_loc3_);
                           §§push(this.§!!!§.height);
                           if(_loc4_ || param1)
                           {
                              §§push(§§pop() / 2);
                           }
                           §§pop().pivotY = §§pop();
                           loop6:
                           while(_loc4_ || param1)
                           {
                              _loc3_.§9@§ = false;
                              loop7:
                              while(true)
                              {
                                 while(true)
                                 {
                                    addChild(_loc3_);
                                    do
                                    {
                                       §§push(_loc2_);
                                       if(!_loc5_)
                                       {
                                          §§push(§§pop() + 1);
                                          if(_loc4_ || this)
                                          {
                                             §§push(int(§§pop()));
                                          }
                                       }
                                       _loc2_ = §§pop();
                                    }
                                    while(!_loc4_);
                                    
                                    if(_loc4_ || _loc3_)
                                    {
                                       if(_loc4_)
                                       {
                                          if(true)
                                          {
                                             break;
                                          }
                                          continue;
                                       }
                                       continue loop6;
                                    }
                                    continue loop7;
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
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§!!!§.dispose();
            do
            {
               super.dispose();
            }
            while(_loc1_ && this);
            
         }
      }
      
      public function §]3§(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param3))
         {
            if(param3)
            {
               if(!(_loc4_ && param3))
               {
                  this.§<!V§.x += param1 - this.§"v§.x;
               }
               loop0:
               while(true)
               {
                  this.§<!V§.y += param2 - this.§"v§.y;
                  addr169:
                  while(true)
                  {
                     addr98:
                     if(_loc5_ || param1)
                     {
                        return;
                        addr105:
                     }
                  }
                  loop6:
                  while(true)
                  {
                     if(!(_loc5_ || param1))
                     {
                        continue loop0;
                     }
                     §§push(this.§;q§);
                     loop7:
                     while(true)
                     {
                        §§push(2);
                        addr110:
                        while(true)
                        {
                           §§push(§§pop() * this.§<!V§.x);
                           addr114:
                           while(true)
                           {
                              §§push(param1);
                              addr115:
                              while(true)
                              {
                                 §§push(§§pop() - §§pop());
                                 addr116:
                                 while(true)
                                 {
                                    §§pop().x = §§pop();
                                    continue loop7;
                                 }
                              }
                           }
                        }
                     }
                     if(_loc4_ && param3)
                     {
                        continue;
                     }
                     if(_loc5_ || this)
                     {
                        §§goto(addr98);
                     }
                     loop5:
                     while(true)
                     {
                        §§push(this.§"v§);
                        if(!_loc5_)
                        {
                           break;
                        }
                        §§push(param2);
                        if(!(_loc4_ && param1))
                        {
                           §§pop().y = §§pop();
                           continue loop6;
                        }
                        addr144:
                        while(true)
                        {
                           §§pop().x = §§pop();
                           continue loop5;
                        }
                     }
                     while(true)
                     {
                        §§goto(addr144);
                        §§goto(addr145);
                     }
                     addr145:
                     addr143:
                  }
                  §§goto(addr169);
               }
            }
            while(true)
            {
               §§goto(addr143);
               §§goto(addr169);
            }
         }
         §§goto(addr105);
      }
      
      public function §-!j§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && this))
         {
            this.§<!V§.x = param1;
         }
         while(true)
         {
            this.§<!V§.y = param2;
            while(!(_loc3_ && _loc3_))
            {
               this.§]3§(this.§4T§,this.§#!A§);
               if(_loc4_ || param2)
               {
                  return;
               }
            }
         }
      }
      
      private function get §"v§() : §&p§
      {
         return getChildAt(0) as §&p§;
      }
      
      private function get §;q§() : §&p§
      {
         return getChildAt(1) as §&p§;
      }
      
      public function get §4T§() : Number
      {
         return this.§"v§.x;
      }
      
      public function get §#!A§() : Number
      {
         return this.§"v§.y;
      }
      
      public function get §^u§() : Number
      {
         return this.§;q§.x;
      }
      
      public function get §@F§() : Number
      {
         return this.§;q§.y;
      }
   }
}
