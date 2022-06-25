package starling.events
{
   import §6!7§.§-m§;
   import §6!7§.Sprite;
   import §7i§.Texture;
   import flash.display3D.Context3D;
   import flash.geom.Point;
   
   class § !<§ extends Sprite
   {
      
      private static var §'!9§:Class;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §'!9§ = TouchMarker_TouchMarkerBmp;
         }
      }
      
      private var §8&§:Point;
      
      private var §5@§:Texture;
      
      function § !<§(param1:Context3D)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§-m§ = null;
         if(_loc4_)
         {
            super();
            while(true)
            {
               loop1:
               while(true)
               {
                  this.§8&§ = new Point();
                  do
                  {
                     this.§5@§ = Texture.§8;§(param1,new §'!9§());
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
                        _loc3_ = new §-m§(this.§5@§);
                        if(!_loc5_)
                        {
                           §§push(_loc3_);
                           §§push(this.§5@§.width);
                           if(!(_loc5_ && this))
                           {
                              §§push(§§pop() / 2);
                           }
                           §§pop().pivotX = §§pop();
                        }
                        while(true)
                        {
                           §§push(_loc3_);
                           §§push(this.§5@§.height);
                           if(_loc4_ || param1)
                           {
                              §§push(§§pop() / 2);
                           }
                           §§pop().pivotY = §§pop();
                           loop6:
                           while(_loc4_ || param1)
                           {
                              _loc3_.§<!4§ = false;
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
            this.§5@§.dispose();
            do
            {
               super.dispose();
            }
            while(_loc1_ && this);
            
         }
      }
      
      public function §8n§(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param3))
         {
            if(param3)
            {
               if(!(_loc4_ && param3))
               {
                  this.§8&§.x += param1 - this.§``§.x;
               }
               loop0:
               while(true)
               {
                  this.§8&§.y += param2 - this.§``§.y;
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
                     §§push(this.§4[§);
                     loop7:
                     while(true)
                     {
                        §§push(2);
                        addr110:
                        while(true)
                        {
                           §§push(§§pop() * this.§8&§.x);
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
                        §§push(this.§``§);
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
      
      public function §,V§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && this))
         {
            this.§8&§.x = param1;
         }
         while(true)
         {
            this.§8&§.y = param2;
            while(!(_loc3_ && _loc3_))
            {
               this.§8n§(this.§"!3§,this.§!!9§);
               if(_loc4_ || param2)
               {
                  return;
               }
            }
         }
      }
      
      private function get §``§() : §-m§
      {
         return getChildAt(0) as §-m§;
      }
      
      private function get §4[§() : §-m§
      {
         return getChildAt(1) as §-m§;
      }
      
      public function get §"!3§() : Number
      {
         return this.§``§.x;
      }
      
      public function get §!!9§() : Number
      {
         return this.§``§.y;
      }
      
      public function get §]!X§() : Number
      {
         return this.§4[§.x;
      }
      
      public function get §,g§() : Number
      {
         return this.§4[§.y;
      }
   }
}
