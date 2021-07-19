package starling.events
{
   import §7!8§.Sprite;
   import §7!8§.§`y§;
   import §`!#§.Texture;
   import flash.display3D.Context3D;
   import flash.geom.Point;
   
   class §7!Q§ extends Sprite
   {
      
      private static var §["B§:Class;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §["B§ = TouchMarker_TouchMarkerBmp;
         }
      }
      
      private var §5!0§:Point;
      
      private var §2-§:Texture;
      
      function §7!Q§(param1:Context3D)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§`y§ = null;
         if(!(_loc5_ && param1))
         {
            super();
         }
         while(true)
         {
            while(true)
            {
               this.§5!0§ = new Point();
               do
               {
                  this.§2-§ = Texture.§3<§(param1,new §["B§());
               }
               while(!_loc4_);
               
               if(!(_loc5_ && _loc3_))
               {
                  if(true)
                  {
                     var _loc2_:int = 0;
                     loop3:
                     while(_loc2_ < 2)
                     {
                        _loc3_ = new §`y§(this.§2-§);
                        if(_loc4_ || this)
                        {
                           §§push(_loc3_);
                           §§push(this.§2-§.width);
                           if(_loc4_ || _loc2_)
                           {
                              §§push(§§pop() / 2);
                           }
                           §§pop().pivotX = §§pop();
                           loop4:
                           while(true)
                           {
                              §§push(_loc3_);
                              §§push(this.§2-§.height);
                              if(_loc4_)
                              {
                                 §§push(§§pop() / 2);
                              }
                              §§pop().pivotY = §§pop();
                              while(true)
                              {
                                 _loc3_.§]!D§ = false;
                                 addr89:
                                 if(!(_loc5_ && this))
                                 {
                                    if(!_loc5_)
                                    {
                                       if(false)
                                       {
                                          loop7:
                                          while(true)
                                          {
                                             addChild(_loc3_);
                                             do
                                             {
                                                _loc2_++;
                                             }
                                             while(!_loc4_);
                                             
                                             if(!_loc5_)
                                             {
                                                §§goto(addr89);
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                   continue loop7;
                                                }
                                                addr109:
                                             }
                                          }
                                          continue;
                                       }
                                       continue loop3;
                                    }
                                    continue loop4;
                                 }
                              }
                           }
                        }
                        §§goto(addr109);
                     }
                  }
                  continue;
                  return;
               }
               break;
            }
         }
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.§2-§.dispose();
         }
         do
         {
            super.dispose();
         }
         while(!_loc2_);
         
      }
      
      public function §]-§(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            if(param3)
            {
               loop0:
               while(true)
               {
                  this.§5!0§.x += param1 - this.§<!s§.x;
                  addr171:
                  while(true)
                  {
                     this.§5!0§.y += param2 - this.§<!s§.y;
                     addr146:
                     while(true)
                     {
                     }
                  }
                  loop6:
                  while(true)
                  {
                     if(!(_loc5_ || param2))
                     {
                        continue loop0;
                     }
                     §§push(this.§!!F§);
                     loop7:
                     while(true)
                     {
                        §§push(2);
                        addr95:
                        while(true)
                        {
                           §§push(§§pop() * this.§5!0§.x);
                           addr99:
                           while(true)
                           {
                              §§push(param1);
                              addr100:
                              while(true)
                              {
                                 §§push(§§pop() - §§pop());
                                 addr101:
                                 while(true)
                                 {
                                    §§pop().x = §§pop();
                                    addr102:
                                    while(_loc5_)
                                    {
                                       continue loop7;
                                    }
                                    §§goto(addr146);
                                 }
                              }
                           }
                        }
                     }
                     if(_loc4_ && this)
                     {
                        continue;
                     }
                     if(_loc5_ || param3)
                     {
                        if(_loc5_)
                        {
                           return;
                        }
                        break;
                     }
                     loop5:
                     while(true)
                     {
                        §§push(this.§<!s§);
                        if(_loc4_ && param3)
                        {
                           break;
                        }
                        §§push(param2);
                        if(!_loc4_)
                        {
                           §§pop().y = §§pop();
                           continue loop6;
                        }
                        addr131:
                        while(true)
                        {
                           §§pop().x = §§pop();
                           continue loop5;
                        }
                     }
                     while(true)
                     {
                        §§goto(addr131);
                     }
                     addr130:
                  }
                  §§goto(addr171);
               }
            }
            while(true)
            {
               §§goto(addr130);
               §§goto(addr146);
            }
         }
         §§goto(addr146);
      }
      
      public function §1!d§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            this.§5!0§.x = param1;
            do
            {
               this.§5!0§.y = param2;
               do
               {
                  this.§]-§(this.§>b§,this.§8x§);
               }
               while(!_loc4_);
               
            }
            while(!(_loc4_ || this));
            
         }
      }
      
      private function get §<!s§() : §`y§
      {
         return getChildAt(0) as §`y§;
      }
      
      private function get §!!F§() : §`y§
      {
         return getChildAt(1) as §`y§;
      }
      
      public function get §>b§() : Number
      {
         return this.§<!s§.x;
      }
      
      public function get §8x§() : Number
      {
         return this.§<!s§.y;
      }
      
      public function get §3!w§() : Number
      {
         return this.§!!F§.x;
      }
      
      public function get §;!Z§() : Number
      {
         return this.§!!F§.y;
      }
   }
}
