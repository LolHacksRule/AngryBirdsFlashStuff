package starling.events
{
   import §%q§.Texture;
   import §6![§.§1!J§;
   import §6![§.Sprite;
   import flash.display3D.Context3D;
   import flash.geom.Point;
   
   class § !k§ extends Sprite
   {
      
      private static var §%!1§:Class;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §%!1§ = TouchMarker_TouchMarkerBmp;
         }
      }
      
      private var §!!]§:Point;
      
      private var §'!t§:Texture;
      
      function § !k§(param1:Context3D)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§1!J§ = null;
         if(!(_loc5_ && _loc2_))
         {
            super();
            loop0:
            while(true)
            {
               addr39:
               while(true)
               {
                  this.§!!]§ = new Point();
                  continue loop0;
               }
            }
         }
         while(false)
         {
            §§goto(addr39);
         }
         var _loc2_:int = 0;
         loop4:
         while(_loc2_ < 2)
         {
            _loc3_ = new §1!J§(this.§'!t§);
            if(!(_loc5_ && _loc3_))
            {
               §§push(_loc3_);
               §§push(this.§'!t§.width);
               if(!(_loc5_ && _loc2_))
               {
                  §§push(§§pop() / 2);
               }
               §§pop().pivotX = §§pop();
               while(true)
               {
                  §§push(_loc3_);
                  §§push(this.§'!t§.height);
                  if(!_loc5_)
                  {
                     §§push(§§pop() / 2);
                  }
                  §§pop().pivotY = §§pop();
                  addr115:
                  while(true)
                  {
                     _loc3_.§!!9§ = false;
                  }
               }
               addr140:
            }
            loop7:
            while(true)
            {
               loop8:
               while(true)
               {
                  addChild(_loc3_);
                  while(_loc4_)
                  {
                     _loc2_++;
                     if(_loc5_)
                     {
                        continue;
                     }
                     if(_loc5_)
                     {
                        continue loop7;
                     }
                     if(!_loc5_)
                     {
                        if(true)
                        {
                           break loop8;
                        }
                        continue loop8;
                     }
                     §§goto(addr140);
                  }
                  §§goto(addr115);
               }
               continue loop4;
            }
         }
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            this.§'!t§.dispose();
         }
         do
         {
            super.dispose();
         }
         while(_loc1_);
         
      }
      
      public function §#-§(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param3))
         {
            if(param3)
            {
               loop0:
               while(true)
               {
                  this.§!!]§.x += param1 - this.§7!M§.x;
                  loop1:
                  while(true)
                  {
                     this.§!!]§.y += param2 - this.§7!M§.y;
                     addr170:
                     while(true)
                     {
                        addr136:
                        loop7:
                        for(; !(_loc5_ && param2); while(_loc4_ || this)
                        {
                           continue loop1;
                        })
                        {
                           §§push(this.§@!P§);
                           loop8:
                           while(true)
                           {
                              §§push(2);
                              addr78:
                              addr116:
                              while(true)
                              {
                                 §§push(§§pop() * this.§!!]§.x);
                                 if(_loc4_ || this)
                                 {
                                    §§push(param1);
                                    while(true)
                                    {
                                       §§push(§§pop() - §§pop());
                                       addr52:
                                       §§push(param2);
                                       if(!(_loc4_ || param2))
                                       {
                                          continue;
                                       }
                                       §§push(§§pop() - §§pop());
                                       if(_loc4_)
                                       {
                                          §§pop().y = §§pop();
                                          if(!_loc5_)
                                          {
                                             if(_loc4_ || param1)
                                             {
                                                return;
                                                addr73:
                                             }
                                             continue loop0;
                                          }
                                          continue loop7;
                                       }
                                       addr101:
                                       while(true)
                                       {
                                          §§pop().x = §§pop();
                                          continue loop7;
                                       }
                                       addr101:
                                    }
                                 }
                                 §§goto(addr101);
                              }
                              while(true)
                              {
                                 §§push(this.§@!P§);
                                 if(!_loc4_)
                                 {
                                    continue loop8;
                                 }
                                 §§push(2);
                                 if(!(_loc5_ && param2))
                                 {
                                    §§push(§§pop() * this.§!!]§.y);
                                    if(!(_loc5_ && param3))
                                    {
                                       §§goto(addr52);
                                    }
                                    §§goto(addr61);
                                 }
                                 else
                                 {
                                    §§goto(addr78);
                                 }
                              }
                              §§goto(addr73);
                           }
                        }
                     }
                     if(!(_loc4_ || param1))
                     {
                        continue;
                     }
                     §§goto(addr116);
                  }
               }
            }
            while(true)
            {
               §§goto(addr147);
               §§goto(addr170);
            }
         }
         §§goto(addr116);
      }
      
      public function §@!M§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§!!]§.x = param1;
            while(true)
            {
               this.§!!]§.y = param2;
               while(!_loc4_)
               {
                  this.§#-§(this.§+'§,this.§[Q§);
                  if(!_loc4_)
                  {
                     return;
                     addr42:
                  }
               }
            }
         }
         §§goto(addr42);
      }
      
      private function get §7!M§() : §1!J§
      {
         return getChildAt(0) as §1!J§;
      }
      
      private function get §@!P§() : §1!J§
      {
         return getChildAt(1) as §1!J§;
      }
      
      public function get §+'§() : Number
      {
         return this.§7!M§.x;
      }
      
      public function get §[Q§() : Number
      {
         return this.§7!M§.y;
      }
      
      public function get §?!O§() : Number
      {
         return this.§@!P§.x;
      }
      
      public function get §4!s§() : Number
      {
         return this.§@!P§.y;
      }
   }
}
