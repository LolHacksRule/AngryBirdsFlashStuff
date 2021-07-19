package starling.events
{
   import §3!J§.§4!2§;
   import §3!J§.Sprite;
   import §=!4§.Texture;
   import flash.display3D.Context3D;
   import flash.geom.Point;
   
   class §>q§ extends Sprite
   {
      
      private static var § ?§:Class;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            § ?§ = TouchMarker_TouchMarkerBmp;
         }
      }
      
      private var § %§:Point;
      
      private var §>"5§:Texture;
      
      function §>q§(param1:Context3D)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§4!2§ = null;
         if(_loc5_ || _loc3_)
         {
            super();
         }
         loop0:
         while(true)
         {
            addr40:
            addr56:
            addr147:
            while(true)
            {
               this.§ %§ = new Point();
               continue loop0;
            }
            var _loc2_:int = 0;
            loop3:
            while(_loc2_ < 2)
            {
               _loc3_ = new §4!2§(this.§>"5§);
               if(!_loc4_)
               {
                  §§push(_loc3_);
                  §§push(this.§>"5§.width);
                  if(!(_loc4_ && param1))
                  {
                     §§push(§§pop() / 2);
                  }
                  §§pop().pivotX = §§pop();
                  loop4:
                  while(true)
                  {
                     §§push(_loc3_);
                     §§push(this.§>"5§.height);
                     if(_loc5_ || param1)
                     {
                        §§push(§§pop() / 2);
                     }
                     §§pop().pivotY = §§pop();
                     while(true)
                     {
                        _loc3_.§6!U§ = false;
                        while(_loc5_)
                        {
                           continue loop4;
                           loop7:
                           while(true)
                           {
                              addChild(_loc3_);
                              do
                              {
                                 _loc2_++;
                              }
                              while(!_loc5_);
                              
                              if(_loc4_)
                              {
                                 break;
                                 addr85:
                              }
                              while(false)
                              {
                                 continue loop7;
                              }
                              continue loop3;
                           }
                        }
                     }
                  }
               }
               §§goto(addr85);
            }
            return;
         }
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§>"5§.dispose();
            do
            {
               super.dispose();
            }
            while(_loc1_);
            
         }
      }
      
      public function §]!3§(param1:Number, param2:Number, param3:Boolean = false) : void
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
                  this.§ %§.x += param1 - this.§`C§.x;
                  loop1:
                  while(true)
                  {
                     this.§ %§.y += param2 - this.§`C§.y;
                     addr124:
                     while(_loc5_)
                     {
                     }
                     continue loop0;
                     addr97:
                     if(_loc4_ && this)
                     {
                        continue;
                     }
                     §§push(this.§9!=§);
                     loop8:
                     while(true)
                     {
                        §§push(2);
                        addr61:
                        while(true)
                        {
                           §§push(§§pop() * this.§ %§.x);
                           addr65:
                           while(true)
                           {
                              §§push(param1);
                              addr76:
                              while(true)
                              {
                                 §§push(§§pop() - §§pop());
                                 addr77:
                                 while(true)
                                 {
                                    §§pop().x = §§pop();
                                    addr78:
                                    while(_loc5_)
                                    {
                                       continue loop8;
                                    }
                                    loop7:
                                    while(true)
                                    {
                                       if(_loc5_ || param2)
                                       {
                                          §§goto(addr97);
                                       }
                                       else
                                       {
                                          loop6:
                                          while(true)
                                          {
                                             §§push(this.§`C§);
                                             if(!_loc4_)
                                             {
                                                §§push(param2);
                                                if(_loc5_)
                                                {
                                                   §§pop().y = §§pop();
                                                   continue loop7;
                                                }
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                   §§push(param1);
                                                   continue loop6;
                                                }
                                                addr108:
                                             }
                                             while(true)
                                             {
                                                §§pop().x = §§pop();
                                                continue loop6;
                                             }
                                          }
                                          addr110:
                                       }
                                    }
                                    continue loop1;
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
            while(true)
            {
               §§goto(addr108);
            }
         }
         §§goto(addr110);
      }
      
      public function §=]§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§ %§.x = param1;
            while(true)
            {
               this.§ %§.y = param2;
               loop1:
               while(!(_loc4_ && _loc3_))
               {
                  while(true)
                  {
                     this.§]!3§(this.§"",§,this.§>u§);
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
         §§goto(addr65);
      }
      
      private function get §`C§() : §4!2§
      {
         return getChildAt(0) as §4!2§;
      }
      
      private function get §9!=§() : §4!2§
      {
         return getChildAt(1) as §4!2§;
      }
      
      public function get §"",§() : Number
      {
         return this.§`C§.x;
      }
      
      public function get §>u§() : Number
      {
         return this.§`C§.y;
      }
      
      public function get §@!_§() : Number
      {
         return this.§9!=§.x;
      }
      
      public function get §%a§() : Number
      {
         return this.§9!=§.y;
      }
   }
}
