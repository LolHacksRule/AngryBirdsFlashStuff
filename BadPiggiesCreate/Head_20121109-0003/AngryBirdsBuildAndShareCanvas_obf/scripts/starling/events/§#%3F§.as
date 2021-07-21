package starling.events
{
   import §+!-§.§7"#§;
   import §+!-§.Sprite;
   import §0!%§.Texture;
   import flash.display3D.Context3D;
   import flash.geom.Point;
   
   class §#?§ extends Sprite
   {
      
      private static var §^D§:Class;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §^D§ = TouchMarker_TouchMarkerBmp;
         }
      }
      
      private var §8!1§:Point;
      
      private var §=#§:Texture;
      
      function §#?§(param1:Context3D)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§7"#§ = null;
         if(_loc4_ || _loc2_)
         {
            super();
            loop0:
            while(true)
            {
               addr41:
               while(true)
               {
                  this.§8!1§ = new Point();
                  continue loop0;
               }
            }
            addr49:
         }
         while(true)
         {
            this.§=#§ = Texture.§+o§(param1,new §^D§());
            if(!_loc4_)
            {
               continue;
            }
            if(_loc4_)
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
            _loc3_ = new §7"#§(this.§=#§);
            if(!(_loc5_ && param1))
            {
               §§push(_loc3_);
               §§push(this.§=#§.width);
               if(_loc4_ || this)
               {
                  §§push(§§pop() / 2);
               }
               §§pop().pivotX = §§pop();
               loop4:
               while(true)
               {
                  §§push(_loc3_);
                  §§push(this.§=#§.height);
                  if(!_loc5_)
                  {
                     §§push(§§pop() / 2);
                  }
                  §§pop().pivotY = §§pop();
                  while(true)
                  {
                     _loc3_.§#b§ = false;
                     addr100:
                     while(_loc4_ || this)
                     {
                        continue loop4;
                     }
                  }
               }
            }
            while(true)
            {
               loop8:
               do
               {
                  addChild(_loc3_);
                  while(!_loc5_)
                  {
                     _loc2_++;
                     if(!(_loc5_ && _loc2_))
                     {
                        continue loop8;
                     }
                  }
                  §§goto(addr100);
               }
               while(false);
               
               continue loop3;
            }
         }
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.§=#§.dispose();
         }
         do
         {
            super.dispose();
         }
         while(!(_loc1_ || this));
         
      }
      
      public function §>!f§(param1:Number, param2:Number, param3:Boolean = false) : void
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
                  this.§8!1§.x += param1 - this.§2>§.x;
                  addr166:
                  while(true)
                  {
                     this.§8!1§.y += param2 - this.§2>§.y;
                     addr141:
                     while(true)
                     {
                     }
                     addr52:
                     if(_loc5_ || param3)
                     {
                        return;
                     }
                  }
                  loop6:
                  while(true)
                  {
                     if(!(_loc5_ || param3))
                     {
                        continue loop0;
                     }
                     §§push(this.§[Z§);
                     while(true)
                     {
                        §§push(2);
                        addr64:
                        addr99:
                        while(true)
                        {
                           §§push(§§pop() * this.§8!1§.x);
                           if(_loc5_)
                           {
                              §§push(param1);
                              while(true)
                              {
                                 §§push(§§pop() - §§pop());
                              }
                              addr71:
                           }
                           addr72:
                           while(true)
                           {
                              §§pop().x = §§pop();
                              continue loop6;
                           }
                        }
                        §§push(this.§[Z§);
                        if(!_loc5_)
                        {
                           continue;
                        }
                        §§push(2);
                        if(!_loc4_)
                        {
                           §§push(§§pop() * this.§8!1§.y);
                           if(_loc5_)
                           {
                              §§push(param2);
                              if(_loc5_)
                              {
                                 §§push(§§pop() - §§pop());
                              }
                              else
                              {
                                 §§goto(addr71);
                              }
                              §§goto(addr72);
                           }
                           if(_loc5_)
                           {
                              §§pop().y = §§pop();
                              if(!(_loc5_ || param1))
                              {
                                 continue loop6;
                              }
                              §§goto(addr52);
                           }
                        }
                        else
                        {
                           §§goto(addr64);
                        }
                        §§goto(addr72);
                     }
                  }
                  §§goto(addr166);
               }
            }
            while(true)
            {
               §§goto(addr125);
               §§goto(addr141);
            }
         }
         §§goto(addr141);
      }
      
      public function §3V§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc3_))
         {
            this.§8!1§.x = param1;
            while(true)
            {
               this.§8!1§.y = param2;
               while(_loc4_ || this)
               {
                  this.§>!f§(this.§]V§,this.§%7§);
                  if(!(_loc4_ || param1))
                  {
                     continue;
                  }
                  return;
                  addr53:
               }
            }
         }
         §§goto(addr53);
      }
      
      private function get §2>§() : §7"#§
      {
         return getChildAt(0) as §7"#§;
      }
      
      private function get §[Z§() : §7"#§
      {
         return getChildAt(1) as §7"#§;
      }
      
      public function get §]V§() : Number
      {
         return this.§2>§.x;
      }
      
      public function get §%7§() : Number
      {
         return this.§2>§.y;
      }
      
      public function get §?G§() : Number
      {
         return this.§[Z§.x;
      }
      
      public function get §"R§() : Number
      {
         return this.§[Z§.y;
      }
   }
}
