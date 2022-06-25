package starling.events
{
   import §4>§.Texture;
   import §7!B§.§-§;
   import §7!B§.Sprite;
   import flash.display3D.Context3D;
   import flash.geom.Point;
   
   class §1I§ extends Sprite
   {
      
      private static var §=!<§:Class;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §=!<§ = TouchMarker_TouchMarkerBmp;
         }
      }
      
      private var §"!2§:Point;
      
      private var §5!6§:Texture;
      
      function §1I§(param1:Context3D)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§-§ = null;
         if(_loc4_)
         {
            super();
            loop0:
            while(true)
            {
               addr41:
               while(true)
               {
                  this.§"!2§ = new Point();
                  continue loop0;
               }
            }
            addr49:
         }
         while(true)
         {
            this.§5!6§ = Texture.§ l§(param1,new §=!<§());
            if(_loc5_ && param1)
            {
               continue;
            }
            if(!_loc5_)
            {
               if(true)
               {
                  break;
               }
            }
            else
            {
               §§goto(addr49);
            }
            §§goto(addr41);
         }
         var _loc2_:int = 0;
         loop3:
         while(_loc2_ < 2)
         {
            _loc3_ = new §-§(this.§5!6§);
            if(!(_loc5_ && this))
            {
               §§push(_loc3_);
               §§push(this.§5!6§.width);
               if(!(_loc5_ && this))
               {
                  §§push(§§pop() / 2);
               }
               §§pop().pivotX = §§pop();
               loop4:
               while(true)
               {
                  §§push(_loc3_);
                  §§push(this.§5!6§.height);
                  if(!(_loc5_ && _loc3_))
                  {
                     §§push(§§pop() / 2);
                  }
                  §§pop().pivotY = §§pop();
                  loop5:
                  while(true)
                  {
                     _loc3_.§]!F§ = false;
                     addr82:
                     if(!(_loc5_ && this))
                     {
                        if(false)
                        {
                           loop7:
                           while(true)
                           {
                              addChild(_loc3_);
                              while(true)
                              {
                                 if(!_loc5_)
                                 {
                                    if(_loc5_)
                                    {
                                       continue loop4;
                                    }
                                    _loc2_++;
                                    if(!_loc4_)
                                    {
                                       continue;
                                    }
                                    §§goto(addr82);
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       continue loop7;
                                    }
                                    addr104:
                                 }
                              }
                              continue loop5;
                           }
                        }
                        continue loop3;
                     }
                  }
               }
            }
            §§goto(addr104);
         }
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§5!6§.dispose();
         }
         do
         {
            super.dispose();
         }
         while(_loc2_ && _loc1_);
         
      }
      
      public function §#!+§(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            if(param3)
            {
               loop0:
               while(true)
               {
                  this.§"!2§.x += param1 - this.§8!"§.x;
                  loop1:
                  while(true)
                  {
                     this.§"!2§.y += param2 - this.§8!"§.y;
                     while(!_loc4_)
                     {
                        loop6:
                        while(_loc5_ || param1)
                        {
                           loop7:
                           while(true)
                           {
                              §§push(this.§8!"§);
                              if(!(_loc4_ && param1))
                              {
                                 §§push(param2);
                                 if(!(_loc4_ && param2))
                                 {
                                    §§pop().y = §§pop();
                                    while(!_loc4_)
                                    {
                                       §§push(this.§&!-§);
                                       loop9:
                                       while(true)
                                       {
                                          §§push(2);
                                          addr86:
                                          while(true)
                                          {
                                             §§push(§§pop() * this.§"!2§.x);
                                             addr90:
                                             while(true)
                                             {
                                                §§push(param1);
                                                addr91:
                                                while(true)
                                                {
                                                   §§push(§§pop() - §§pop());
                                                   addr92:
                                                   while(true)
                                                   {
                                                      §§pop().x = §§pop();
                                                      addr93:
                                                      while(_loc5_)
                                                      {
                                                         continue loop9;
                                                      }
                                                      continue loop6;
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       if(!_loc4_)
                                       {
                                          return;
                                       }
                                    }
                                    continue loop1;
                                 }
                              }
                              else
                              {
                                 while(true)
                                 {
                                    §§push(param1);
                                    continue loop7;
                                 }
                                 addr121:
                              }
                              while(true)
                              {
                                 §§pop().x = §§pop();
                                 continue loop6;
                              }
                           }
                        }
                     }
                     continue loop0;
                  }
               }
            }
            while(true)
            {
               §§goto(addr121);
            }
         }
         §§goto(addr130);
      }
      
      public function §'!6§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§"!2§.x = param1;
         }
         while(true)
         {
            this.§"!2§.y = param2;
            while(_loc3_)
            {
               this.§#!+§(this.§%!X§,this.§-$§);
               if(_loc3_)
               {
                  return;
               }
            }
         }
      }
      
      private function get §8!"§() : §-§
      {
         return getChildAt(0) as §-§;
      }
      
      private function get §&!-§() : §-§
      {
         return getChildAt(1) as §-§;
      }
      
      public function get §%!X§() : Number
      {
         return this.§8!"§.x;
      }
      
      public function get §-$§() : Number
      {
         return this.§8!"§.y;
      }
      
      public function get §-!;§() : Number
      {
         return this.§&!-§.x;
      }
      
      public function get §8!i§() : Number
      {
         return this.§&!-§.y;
      }
   }
}
