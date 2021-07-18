package starling.events
{
   import §[P§.Texture;
   import §^V§.§1!,§;
   import §^V§.Sprite;
   import flash.display3D.Context3D;
   import flash.geom.Point;
   
   class §6p§ extends Sprite
   {
      
      private static var §8f§:Class;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §8f§ = TouchMarker_TouchMarkerBmp;
         }
      }
      
      private var §%M§:Point;
      
      private var §<i§:Texture;
      
      function §6p§(param1:Context3D)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§1!,§ = null;
         if(_loc5_ || _loc3_)
         {
            super();
            while(true)
            {
               loop1:
               while(true)
               {
                  this.§%M§ = new Point();
                  do
                  {
                     this.§<i§ = Texture.§%U§(param1,new §8f§());
                  }
                  while(_loc4_);
                  
                  if(!(_loc4_ && _loc3_))
                  {
                     while(false)
                     {
                        continue loop1;
                     }
                     var _loc2_:int = 0;
                     loop4:
                     while(_loc2_ < 2)
                     {
                        _loc3_ = new §1!,§(this.§<i§);
                        if(_loc5_ || this)
                        {
                           §§push(_loc3_);
                           §§push(this.§<i§.width);
                           if(!(_loc4_ && this))
                           {
                              §§push(§§pop() / 2);
                           }
                           §§pop().pivotX = §§pop();
                           while(true)
                           {
                              §§push(_loc3_);
                              §§push(this.§<i§.height);
                              if(!(_loc4_ && param1))
                              {
                                 §§push(§§pop() / 2);
                              }
                              §§pop().pivotY = §§pop();
                              loop7:
                              while(!(_loc4_ && param1))
                              {
                                 do
                                 {
                                    addChild(_loc3_);
                                    loop9:
                                    while(_loc5_ || param1)
                                    {
                                       addr101:
                                       if(!(_loc4_ && this))
                                       {
                                          _loc2_++;
                                          if(!_loc5_)
                                          {
                                             continue;
                                          }
                                          §§goto(addr88);
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             _loc3_.§<!<§ = false;
                                             break loop9;
                                             §§goto(addr101);
                                          }
                                          addr146:
                                       }
                                    }
                                    continue loop7;
                                 }
                                 while(false);
                                 
                                 continue loop4;
                              }
                           }
                        }
                        §§goto(addr146);
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
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.§<i§.dispose();
            do
            {
               super.dispose();
            }
            while(_loc1_);
            
         }
      }
      
      public function §?G§(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(param3)
         {
            while(true)
            {
               this.§%M§.x += param1 - this.§^!9§.x;
               addr147:
               while(true)
               {
                  this.§%M§.y += param2 - this.§^!9§.y;
                  addr132:
                  while(true)
                  {
                  }
               }
               addr57:
               if(!_loc4_)
               {
                  return;
               }
            }
         }
         while(true)
         {
            §§push(this.§^!9§);
            loop4:
            while(true)
            {
               §§push(param1);
               addr107:
               while(true)
               {
                  §§pop().x = §§pop();
                  continue loop4;
               }
            }
            §§goto(addr132);
         }
      }
      
      public function §!=§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.§%M§.x = param1;
            while(true)
            {
               this.§%M§.y = param2;
               loop1:
               while(!(_loc4_ && param1))
               {
                  while(true)
                  {
                     this.§?G§(this.§3&§,this.§4]§);
                     if(!_loc4_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr55);
      }
      
      private function get §^!9§() : §1!,§
      {
         return getChildAt(0) as §1!,§;
      }
      
      private function get §!_§() : §1!,§
      {
         return getChildAt(1) as §1!,§;
      }
      
      public function get §3&§() : Number
      {
         return this.§^!9§.x;
      }
      
      public function get §4]§() : Number
      {
         return this.§^!9§.y;
      }
      
      public function get §-!<§() : Number
      {
         return this.§!_§.x;
      }
      
      public function get § [§() : Number
      {
         return this.§!_§.y;
      }
   }
}
