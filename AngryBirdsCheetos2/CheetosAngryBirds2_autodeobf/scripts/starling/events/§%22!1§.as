package starling.events
{
   import §]!a§.Texture;
   import §^a§.§6p§;
   import §^a§.Sprite;
   import flash.display3D.Context3D;
   import flash.geom.Point;
   
   class §"!1§ extends Sprite
   {
      
      private static var §!U§:Class;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §!U§ = TouchMarker_TouchMarkerBmp;
         }
      }
      
      private var § C§:Point;
      
      private var §7Y§:Texture;
      
      function §"!1§(param1:Context3D)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§6p§ = null;
         if(!_loc5_)
         {
            super();
            loop0:
            while(true)
            {
               addr41:
               while(true)
               {
                  this.§ C§ = new Point();
                  continue loop0;
               }
            }
            addr49:
         }
         while(true)
         {
            this.§7Y§ = Texture.§?!`§(param1,new §!U§());
            if(!_loc4_)
            {
               continue;
            }
            if(_loc4_ || _loc2_)
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
            _loc3_ = new §6p§(this.§7Y§);
            if(!_loc5_)
            {
               §§push(_loc3_);
               §§push(this.§7Y§.width);
               if(_loc4_ || _loc3_)
               {
                  §§push(§§pop() / 2);
               }
               §§pop().pivotX = §§pop();
               loop4:
               while(true)
               {
                  §§push(_loc3_);
                  §§push(this.§7Y§.height);
                  if(!_loc5_)
                  {
                     §§push(§§pop() / 2);
                  }
                  §§pop().pivotY = §§pop();
                  addr120:
                  while(true)
                  {
                     _loc3_.§;o§ = false;
                  }
                  loop8:
                  while(true)
                  {
                     if(!(_loc4_ || _loc2_))
                     {
                        continue loop4;
                     }
                     _loc2_++;
                     if(_loc5_ && _loc2_)
                     {
                        continue;
                     }
                     addr82:
                     if(_loc4_ || this)
                     {
                        if(_loc5_)
                        {
                           break;
                        }
                        if(false)
                        {
                           while(true)
                           {
                              addChild(_loc3_);
                              continue loop8;
                           }
                           addr93:
                        }
                        continue loop3;
                     }
                     while(true)
                     {
                        §§goto(addr93);
                        §§goto(addr82);
                     }
                  }
                  §§goto(addr120);
               }
            }
            §§goto(addr109);
         }
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§7Y§.dispose();
         }
         do
         {
            super.dispose();
         }
         while(!_loc1_);
         
      }
      
      public function §^!5§(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            if(param3)
            {
               while(true)
               {
                  this.§ C§.x += param1 - this.§,9§.x;
                  addr185:
                  loop1:
                  while(true)
                  {
                     this.§ C§.y += param2 - this.§,9§.y;
                     addr160:
                     while(true)
                     {
                        addr68:
                        if(_loc4_ || param2)
                        {
                           continue loop1;
                        }
                     }
                  }
                  addr133:
                  if(!(_loc4_ || param3))
                  {
                     continue;
                  }
                  §§push(this.§!s§);
                  loop8:
                  while(true)
                  {
                     §§push(2);
                     addr97:
                     while(true)
                     {
                        §§push(§§pop() * this.§ C§.x);
                        addr101:
                        while(true)
                        {
                           §§push(param1);
                           addr102:
                           while(true)
                           {
                              §§push(§§pop() - §§pop());
                              addr103:
                              while(true)
                              {
                                 §§pop().x = §§pop();
                                 addr104:
                                 while(!_loc5_)
                                 {
                                    continue loop8;
                                 }
                                 loop7:
                                 while(true)
                                 {
                                    if(!(_loc5_ && param3))
                                    {
                                       §§goto(addr133);
                                    }
                                    else
                                    {
                                       loop6:
                                       while(true)
                                       {
                                          §§push(this.§,9§);
                                          if(_loc5_ && param1)
                                          {
                                             break;
                                          }
                                          §§push(param2);
                                          if(_loc4_ || this)
                                          {
                                             §§pop().y = §§pop();
                                             continue loop7;
                                          }
                                          addr145:
                                          while(true)
                                          {
                                             §§pop().x = §§pop();
                                             continue loop6;
                                          }
                                       }
                                       while(true)
                                       {
                                          §§goto(addr145);
                                          §§goto(addr146);
                                       }
                                       addr146:
                                       addr144:
                                    }
                                 }
                                 §§goto(addr185);
                              }
                           }
                        }
                     }
                  }
               }
            }
            while(true)
            {
               §§goto(addr144);
               §§goto(addr160);
            }
         }
         §§goto(addr92);
      }
      
      public function §&!Z§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            this.§ C§.x = param1;
         }
         do
         {
            this.§ C§.y = param2;
            do
            {
               this.§^!5§(this.§%s§,this.§1F§);
            }
            while(_loc4_);
            
         }
         while(_loc4_);
         
      }
      
      private function get §,9§() : §6p§
      {
         return getChildAt(0) as §6p§;
      }
      
      private function get §!s§() : §6p§
      {
         return getChildAt(1) as §6p§;
      }
      
      public function get §%s§() : Number
      {
         return this.§,9§.x;
      }
      
      public function get §1F§() : Number
      {
         return this.§,9§.y;
      }
      
      public function get §+=§() : Number
      {
         return this.§!s§.x;
      }
      
      public function get §4!J§() : Number
      {
         return this.§!s§.y;
      }
   }
}
