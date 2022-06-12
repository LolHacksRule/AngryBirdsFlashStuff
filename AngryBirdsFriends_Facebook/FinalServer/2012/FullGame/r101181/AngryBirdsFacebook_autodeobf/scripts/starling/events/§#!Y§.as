package starling.events
{
   import §0!R§.Texture;
   import §1!$§.§0!N§;
   import §1!$§.Sprite;
   import flash.display3D.Context3D;
   import flash.geom.Point;
   
   class §#!Y§ extends Sprite
   {
      
      private static var §7![§:Class;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §7![§ = TouchMarker_TouchMarkerBmp;
         }
      }
      
      private var §;0§:Point;
      
      private var §&M§:Texture;
      
      function §#!Y§(param1:Context3D)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§0!N§ = null;
         if(_loc5_)
         {
            super();
         }
         while(true)
         {
            while(true)
            {
               this.§;0§ = new Point();
               do
               {
                  this.§&M§ = Texture.§1!H§(param1,new §7![§());
               }
               while(_loc4_);
               
               if(!(_loc4_ && param1))
               {
                  if(true)
                  {
                     var _loc2_:int = 0;
                     loop3:
                     while(_loc2_ < 2)
                     {
                        _loc3_ = new §0!N§(this.§&M§);
                        if(!(_loc4_ && param1))
                        {
                           §§push(_loc3_);
                           §§push(this.§&M§.width);
                           if(_loc5_)
                           {
                              §§push(§§pop() / 2);
                           }
                           §§pop().pivotX = §§pop();
                           loop4:
                           while(true)
                           {
                              §§push(_loc3_);
                              §§push(this.§&M§.height);
                              if(!_loc4_)
                              {
                                 §§push(§§pop() / 2);
                              }
                              §§pop().pivotY = §§pop();
                              while(true)
                              {
                                 _loc3_.§`!u§ = false;
                                 loop6:
                                 while(!(_loc4_ && _loc2_))
                                 {
                                    loop7:
                                    while(true)
                                    {
                                       addChild(_loc3_);
                                       loop8:
                                       while(!_loc4_)
                                       {
                                          if(_loc5_)
                                          {
                                             while(true)
                                             {
                                                _loc2_++;
                                                if(_loc5_ || param1)
                                                {
                                                   if(true)
                                                   {
                                                      break;
                                                   }
                                                   continue loop7;
                                                }
                                                continue loop8;
                                             }
                                             continue loop3;
                                             addr98:
                                          }
                                          continue loop4;
                                       }
                                       continue loop6;
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr98);
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
         if(_loc2_)
         {
            this.§&M§.dispose();
            do
            {
               super.dispose();
            }
            while(!(_loc2_ || this));
            
         }
      }
      
      public function §'R§(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param2))
         {
            if(param3)
            {
               loop0:
               while(true)
               {
                  this.§;0§.x += param1 - this.§9S§.x;
                  addr176:
                  while(true)
                  {
                     this.§;0§.y += param2 - this.§9S§.y;
                     continue loop0;
                  }
               }
            }
            while(true)
            {
               §§push(this.§9S§);
               loop2:
               while(true)
               {
                  §§push(param1);
                  loop3:
                  while(true)
                  {
                     §§pop().x = §§pop();
                     loop4:
                     while(!(_loc4_ && param1))
                     {
                        §§push(this.§9S§);
                        if(_loc4_)
                        {
                           continue loop2;
                        }
                        §§push(param2);
                        if(_loc4_)
                        {
                           continue loop3;
                        }
                        §§pop().y = §§pop();
                        loop5:
                        while(true)
                        {
                           if(_loc4_ && param2)
                           {
                              continue loop4;
                           }
                           if(_loc4_)
                           {
                              break;
                           }
                           §§push(this.§6!U§);
                           loop6:
                           while(true)
                           {
                              §§push(2);
                              addr89:
                              while(true)
                              {
                                 §§push(§§pop() * this.§;0§.x);
                                 addr93:
                                 while(true)
                                 {
                                    §§push(param1);
                                    addr94:
                                    while(true)
                                    {
                                       §§push(§§pop() - §§pop());
                                       addr95:
                                       while(true)
                                       {
                                          §§pop().x = §§pop();
                                          addr96:
                                          while(!_loc4_)
                                          {
                                             continue loop6;
                                          }
                                          continue loop5;
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr154);
                     }
                  }
               }
               §§goto(addr161);
            }
         }
         §§goto(addr176);
      }
      
      public function §[!4§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
         {
            this.§;0§.x = param1;
            while(true)
            {
               this.§;0§.y = param2;
               loop1:
               while(!(_loc4_ && param2))
               {
                  while(true)
                  {
                     this.§'R§(this.§"" §,this.§!">§);
                     if(_loc3_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr70);
      }
      
      private function get §9S§() : §0!N§
      {
         return getChildAt(0) as §0!N§;
      }
      
      private function get §6!U§() : §0!N§
      {
         return getChildAt(1) as §0!N§;
      }
      
      public function get §"" §() : Number
      {
         return this.§9S§.x;
      }
      
      public function get §!">§() : Number
      {
         return this.§9S§.y;
      }
      
      public function get § ""§() : Number
      {
         return this.§6!U§.x;
      }
      
      public function get §5!R§() : Number
      {
         return this.§6!U§.y;
      }
   }
}
