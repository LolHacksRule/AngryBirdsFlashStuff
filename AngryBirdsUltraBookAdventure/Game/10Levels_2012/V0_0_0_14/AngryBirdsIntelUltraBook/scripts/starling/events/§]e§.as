package starling.events
{
   import §!!9§.Texture;
   import §9E§.§;!U§;
   import §9E§.Sprite;
   import flash.display3D.Context3D;
   import flash.geom.Point;
   
   class §]e§ extends Sprite
   {
      
      private static var §!?§:Class;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §!?§ = TouchMarker_TouchMarkerBmp;
         }
      }
      
      private var §-f§:Point;
      
      private var §,!Q§:Texture;
      
      function §]e§(param1:Context3D)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§;!U§ = null;
         if(!(_loc5_ && _loc3_))
         {
            super();
         }
         loop0:
         while(true)
         {
            addr44:
            addr60:
            addr72:
            while(true)
            {
               this.§-f§ = new Point();
               continue loop0;
            }
            var _loc2_:int = 0;
            while(_loc2_ < 2)
            {
               _loc3_ = new §;!U§(this.§,!Q§);
               if(!_loc5_)
               {
                  §§push(_loc3_);
                  §§push(this.§,!Q§.width);
                  if(_loc4_)
                  {
                     §§push(§§pop() / 2);
                  }
                  §§pop().pivotX = §§pop();
                  while(true)
                  {
                     §§push(_loc3_);
                     §§push(this.§,!Q§.height);
                     if(!(_loc5_ && this))
                     {
                        §§push(§§pop() / 2);
                     }
                     §§pop().pivotY = §§pop();
                     addr140:
                     while(true)
                     {
                        _loc3_.§<V§ = false;
                        loop6:
                        while(true)
                        {
                           addr96:
                           while(true)
                           {
                              addChild(_loc3_);
                              continue loop6;
                           }
                        }
                     }
                  }
               }
               while(true)
               {
                  _loc2_++;
                  if(_loc4_ || this)
                  {
                     if(!_loc5_)
                     {
                        if(true)
                        {
                           break;
                        }
                        §§goto(addr96);
                     }
                     §§goto(addr140);
                  }
                  §§goto(addr100);
               }
            }
            return;
         }
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§,!Q§.dispose();
            do
            {
               super.dispose();
            }
            while(_loc2_);
            
         }
      }
      
      public function §7!^§(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            if(param3)
            {
               if(_loc4_)
               {
                  this.§-f§.x += param1 - this.§;Y§.x;
               }
               while(true)
               {
                  this.§-f§.y += param2 - this.§;Y§.y;
                  addr143:
                  while(true)
                  {
                  }
               }
               addr160:
            }
            while(true)
            {
               §§push(this.§;Y§);
               addr117:
               loop3:
               while(true)
               {
                  §§push(param1);
                  addr118:
                  while(true)
                  {
                     §§pop().x = §§pop();
                     continue loop3;
                  }
               }
               §§goto(addr143);
            }
         }
         loop5:
         while(true)
         {
            §§push(this.§;Y§);
            if(_loc4_)
            {
               §§push(param2);
               if(!(_loc5_ && param1))
               {
                  §§pop().y = §§pop();
                  while(true)
                  {
                     if(_loc4_)
                     {
                        if(!_loc5_)
                        {
                           §§push(this.§&!=§);
                           loop7:
                           while(true)
                           {
                              §§push(2);
                              addr85:
                              while(true)
                              {
                                 §§push(§§pop() * this.§-f§.x);
                                 addr89:
                                 while(true)
                                 {
                                    §§push(param1);
                                    addr90:
                                    while(true)
                                    {
                                       §§push(§§pop() - §§pop());
                                       addr91:
                                       while(true)
                                       {
                                          §§pop().x = §§pop();
                                          addr92:
                                          while(true)
                                          {
                                             if(!_loc5_)
                                             {
                                                continue loop7;
                                             }
                                             §§goto(addr160);
                                          }
                                          continue loop7;
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        break;
                     }
                     continue loop5;
                  }
                  §§goto(addr143);
               }
               §§goto(addr118);
            }
            §§goto(addr117);
         }
      }
      
      public function § !A§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            this.§-f§.x = param1;
         }
         do
         {
            this.§-f§.y = param2;
            do
            {
               this.§7!^§(this.§]=§,this.§8!?§);
            }
            while(!(_loc3_ || param2));
            
         }
         while(_loc4_);
         
      }
      
      private function get §;Y§() : §;!U§
      {
         return getChildAt(0) as §;!U§;
      }
      
      private function get §&!=§() : §;!U§
      {
         return getChildAt(1) as §;!U§;
      }
      
      public function get §]=§() : Number
      {
         return this.§;Y§.x;
      }
      
      public function get §8!?§() : Number
      {
         return this.§;Y§.y;
      }
      
      public function get §!!n§() : Number
      {
         return this.§&!=§.x;
      }
      
      public function get §1C§() : Number
      {
         return this.§&!=§.y;
      }
   }
}
