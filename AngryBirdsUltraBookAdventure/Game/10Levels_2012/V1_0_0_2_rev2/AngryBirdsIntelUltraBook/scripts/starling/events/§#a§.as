package starling.events
{
   import §'!9§.§?!U§;
   import §'!9§.Sprite;
   import §^!+§.Texture;
   import flash.display3D.Context3D;
   import flash.geom.Point;
   
   class §#a§ extends Sprite
   {
      
      private static var §!!Q§:Class;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && §#a§))
         {
            §!!Q§ = TouchMarker_TouchMarkerBmp;
         }
      }
      
      private var §&!l§:Point;
      
      private var §[!5§:Texture;
      
      function §#a§(param1:Context3D)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§?!U§ = null;
         if(!_loc4_)
         {
            super();
         }
         while(true)
         {
            while(true)
            {
               this.§&!l§ = new Point();
               do
               {
                  this.§[!5§ = Texture.§@#§(param1,new §!!Q§());
               }
               while(!(_loc5_ || _loc3_));
               
               if(_loc5_)
               {
                  if(true)
                  {
                     var _loc2_:int = 0;
                     while(_loc2_ < 2)
                     {
                        _loc3_ = new §?!U§(this.§[!5§);
                        if(!_loc4_)
                        {
                           §§push(_loc3_);
                           §§push(this.§[!5§.width);
                           if(_loc5_ || _loc3_)
                           {
                              §§push(§§pop() / 2);
                           }
                           §§pop().pivotX = §§pop();
                           while(true)
                           {
                              §§push(_loc3_);
                              §§push(this.§[!5§.height);
                              if(_loc5_ || _loc3_)
                              {
                                 §§push(§§pop() / 2);
                              }
                              §§pop().pivotY = §§pop();
                              loop5:
                              while(true)
                              {
                                 _loc3_.§@!U§ = false;
                                 loop6:
                                 while(true)
                                 {
                                    addr92:
                                    while(true)
                                    {
                                       addChild(_loc3_);
                                       continue loop6;
                                    }
                                    continue loop5;
                                 }
                              }
                              if(!(_loc5_ || this))
                              {
                                 continue;
                              }
                              _loc2_++;
                              if(!(_loc4_ && this))
                              {
                                 §§goto(addr83);
                              }
                              §§goto(addr96);
                           }
                        }
                        while(false)
                        {
                           §§goto(addr92);
                        }
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
         if(!(_loc1_ && _loc1_))
         {
            this.§[!5§.dispose();
            do
            {
               super.dispose();
            }
            while(_loc1_ && _loc1_);
            
         }
      }
      
      public function §?>§(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param1))
         {
            if(param3)
            {
               while(true)
               {
                  this.§&!l§.x += param1 - this.§^!^§.x;
                  addr175:
                  while(true)
                  {
                     this.§&!l§.y += param2 - this.§^!^§.y;
                     addr160:
                     while(true)
                     {
                     }
                  }
                  addr123:
                  if(_loc5_ && param3)
                  {
                     continue;
                  }
                  §§push(this.§5n§);
                  loop7:
                  while(true)
                  {
                     §§push(2);
                     addr95:
                     while(true)
                     {
                        §§push(§§pop() * this.§&!l§.x);
                        if(!_loc5_)
                        {
                           §§push(param1);
                           while(true)
                           {
                              §§push(§§pop() - §§pop());
                           }
                           addr102:
                        }
                        addr103:
                        while(true)
                        {
                           §§pop().x = §§pop();
                           addr104:
                           while(true)
                           {
                              if(!_loc5_)
                              {
                                 continue loop7;
                              }
                              addr121:
                              while(_loc4_)
                              {
                                 §§goto(addr123);
                              }
                              §§goto(addr160);
                           }
                        }
                     }
                  }
               }
            }
            while(true)
            {
               §§goto(addr134);
               §§goto(addr160);
            }
         }
         §§goto(addr160);
      }
      
      public function §'e§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.§&!l§.x = param1;
         }
         while(true)
         {
            this.§&!l§.y = param2;
            while(!_loc4_)
            {
               this.§?>§(this.§;P§,this.§0w§);
               if(_loc3_)
               {
                  return;
               }
            }
         }
      }
      
      private function get §^!^§() : §?!U§
      {
         return getChildAt(0) as §?!U§;
      }
      
      private function get §5n§() : §?!U§
      {
         return getChildAt(1) as §?!U§;
      }
      
      public function get §;P§() : Number
      {
         return this.§^!^§.x;
      }
      
      public function get §0w§() : Number
      {
         return this.§^!^§.y;
      }
      
      public function get §;d§() : Number
      {
         return this.§5n§.x;
      }
      
      public function get §6!=§() : Number
      {
         return this.§5n§.y;
      }
   }
}
