package starling.events
{
   import § N§.§1!A§;
   import § N§.Sprite;
   import §8z§.Texture;
   import flash.display3D.Context3D;
   import flash.geom.Point;
   
   class §?!'§ extends Sprite
   {
      
      private static var §for §:Class;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §for § = TouchMarker_TouchMarkerBmp;
         }
      }
      
      private var §`!§:Point;
      
      private var §-`§:Texture;
      
      function §?!'§(param1:Context3D)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§1!A§ = null;
         if(_loc5_ || _loc2_)
         {
            super();
            while(true)
            {
               loop1:
               while(true)
               {
                  this.§`!§ = new Point();
                  do
                  {
                     this.§-`§ = Texture.§@!-§(param1,new §for §());
                  }
                  while(_loc4_);
                  
                  if(!(_loc4_ && param1))
                  {
                     while(false)
                     {
                        continue loop1;
                     }
                     var _loc2_:int = 0;
                     loop4:
                     while(_loc2_ < 2)
                     {
                        _loc3_ = new §1!A§(this.§-`§);
                        if(!(_loc4_ && this))
                        {
                           §§push(_loc3_);
                           §§push(this.§-`§.width);
                           if(_loc5_ || this)
                           {
                              §§push(§§pop() / 2);
                           }
                           §§pop().pivotX = §§pop();
                        }
                        loop5:
                        while(true)
                        {
                           §§push(_loc3_);
                           §§push(this.§-`§.height);
                           if(_loc5_)
                           {
                              §§push(§§pop() / 2);
                           }
                           §§pop().pivotY = §§pop();
                           loop6:
                           while(true)
                           {
                              _loc3_.§!!"§ = false;
                              loop7:
                              while(true)
                              {
                                 loop8:
                                 while(true)
                                 {
                                    addChild(_loc3_);
                                    while(true)
                                    {
                                       if(!_loc4_)
                                       {
                                          if(_loc5_)
                                          {
                                             if(_loc4_)
                                             {
                                                break;
                                             }
                                             _loc2_++;
                                             if(_loc5_)
                                             {
                                                if(true)
                                                {
                                                   break loop8;
                                                }
                                                continue loop8;
                                             }
                                             continue;
                                          }
                                          continue loop6;
                                       }
                                       continue loop7;
                                    }
                                    continue loop5;
                                 }
                                 continue loop4;
                              }
                           }
                        }
                     }
                     return;
                     addr45:
                  }
                  break;
               }
            }
         }
         §§goto(addr45);
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§-`§.dispose();
            do
            {
               super.dispose();
            }
            while(_loc2_ && _loc2_);
            
         }
      }
      
      public function § <§(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param2))
         {
            if(param3)
            {
               loop0:
               while(true)
               {
                  this.§`!§.x += param1 - this.§!!L§.x;
                  addr163:
                  while(true)
                  {
                     this.§`!§.y += param2 - this.§!!L§.y;
                     loop12:
                     while(_loc4_ || param1)
                     {
                        addr148:
                        while(true)
                        {
                           §§push(this.§!!L§);
                           loop2:
                           while(true)
                           {
                              §§push(param1);
                              loop3:
                              while(true)
                              {
                                 §§pop().x = §§pop();
                                 while(true)
                                 {
                                    §§push(this.§!!L§);
                                    if(!(_loc4_ || param1))
                                    {
                                       break;
                                    }
                                    §§push(param2);
                                    if(!_loc4_)
                                    {
                                       continue loop3;
                                    }
                                    §§pop().y = §§pop();
                                    §§push(this.§![§);
                                    loop5:
                                    while(true)
                                    {
                                       §§push(2);
                                       addr80:
                                       while(true)
                                       {
                                          §§push(§§pop() * this.§`!§.x);
                                          addr84:
                                          while(true)
                                          {
                                             §§push(param1);
                                             addr85:
                                             while(true)
                                             {
                                                §§push(§§pop() - §§pop());
                                                addr86:
                                                while(true)
                                                {
                                                   §§pop().x = §§pop();
                                                   addr87:
                                                   while(true)
                                                   {
                                                      if(_loc4_ || param3)
                                                      {
                                                         if(_loc4_)
                                                         {
                                                            continue loop5;
                                                         }
                                                         continue loop0;
                                                      }
                                                      continue loop12;
                                                   }
                                                   continue loop12;
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                                 continue loop2;
                              }
                           }
                           §§goto(addr148);
                        }
                     }
                  }
               }
            }
            §§goto(addr112);
         }
         §§goto(addr163);
      }
      
      public function §"+§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§`!§.x = param1;
            do
            {
               this.§`!§.y = param2;
               do
               {
                  this.§ <§(this.§3!O§,this.§[!M§);
               }
               while(_loc3_ && this);
               
            }
            while(!_loc4_);
            
         }
      }
      
      private function get §!!L§() : §1!A§
      {
         return getChildAt(0) as §1!A§;
      }
      
      private function get §![§() : §1!A§
      {
         return getChildAt(1) as §1!A§;
      }
      
      public function get §3!O§() : Number
      {
         return this.§!!L§.x;
      }
      
      public function get §[!M§() : Number
      {
         return this.§!!L§.y;
      }
      
      public function get §]<§() : Number
      {
         return this.§![§.x;
      }
      
      public function get §[L§() : Number
      {
         return this.§![§.y;
      }
   }
}
