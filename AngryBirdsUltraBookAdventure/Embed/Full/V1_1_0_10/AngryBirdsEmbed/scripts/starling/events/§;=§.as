package starling.events
{
   import §&o§.§?T§;
   import §&o§.Sprite;
   import §0! §.Texture;
   import flash.display3D.Context3D;
   import flash.geom.Point;
   
   class §;=§ extends Sprite
   {
      
      private static var §-E§:Class;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §-E§ = TouchMarker_TouchMarkerBmp;
         }
      }
      
      private var §,+§:Point;
      
      private var §;p§:Texture;
      
      function §;=§(param1:Context3D)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§?T§ = null;
         if(!(_loc4_ && _loc3_))
         {
            super();
            if(!_loc4_)
            {
               addr31:
               this.§,+§ = new Point();
               if(!(_loc4_ && _loc2_))
               {
                  this.§;p§ = Texture.§>! §(param1,new §-E§());
               }
            }
            var _loc2_:int = 0;
            while(_loc2_ < 2)
            {
               _loc3_ = new §?T§(this.§;p§);
               if(_loc4_)
               {
                  continue;
               }
               §§push(_loc3_);
               §§push(this.§;p§.width);
               if(!_loc4_)
               {
                  §§push(§§pop() / 2);
               }
               §§pop().pivotX = §§pop();
               if(!(_loc4_ && this))
               {
                  §§push(_loc3_);
                  §§push(this.§;p§.height);
                  if(_loc5_ || this)
                  {
                     §§push(§§pop() / 2);
                  }
                  §§pop().pivotY = §§pop();
                  if(!(_loc4_ && _loc3_))
                  {
                     _loc3_.§3!D§ = false;
                     if(!_loc4_)
                     {
                        addr123:
                        addChild(_loc3_);
                        if(!(_loc5_ || this))
                        {
                           continue;
                        }
                     }
                     _loc2_++;
                  }
                  continue;
               }
               §§goto(addr123);
            }
            return;
         }
         §§goto(addr31);
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.§;p§.dispose();
            if(_loc1_ || _loc2_)
            {
               addr43:
               super.dispose();
            }
            return;
         }
         §§goto(addr43);
      }
      
      public function §%!$§(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            if(param3)
            {
               if(!(_loc4_ && param3))
               {
                  this.§,+§.x += param1 - this.§^!-§.x;
               }
               this.§,+§.y += param2 - this.§^!-§.y;
            }
            §§push(this.§^!-§);
            if(_loc5_ || param1)
            {
               §§push(param1);
               if(_loc5_)
               {
                  §§pop().x = §§pop();
                  if(!(_loc4_ && this))
                  {
                     addr85:
                     this.§^!-§.y = param2;
                     §§push(this.§1!5§);
                     if(!(_loc4_ && param2))
                     {
                        §§push(2);
                        if(!_loc4_)
                        {
                           §§push(§§pop() * this.§,+§.x);
                           if(_loc5_ || this)
                           {
                              §§push(param1);
                              if(!(_loc4_ && this))
                              {
                                 §§push(§§pop() - §§pop());
                                 if(_loc5_ || param1)
                                 {
                                    §§pop().x = §§pop();
                                    if(_loc5_ || param2)
                                    {
                                       addr146:
                                       addr145:
                                       §§push(this.§1!5§);
                                       §§push(2 * this.§,+§.y);
                                       if(_loc5_)
                                       {
                                          addr152:
                                          §§push(§§pop() - param2);
                                       }
                                       §§pop().y = §§pop();
                                       §§goto(addr155);
                                    }
                                    addr155:
                                    return;
                                 }
                              }
                           }
                           §§goto(addr152);
                        }
                        §§goto(addr146);
                     }
                     §§goto(addr145);
                     addr84:
                  }
                  §§goto(addr146);
               }
               §§goto(addr85);
            }
            §§goto(addr84);
         }
         §§goto(addr85);
      }
      
      public function §#q§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
         {
            this.§,+§.x = param1;
            if(_loc3_)
            {
               this.§,+§.y = param2;
               if(_loc4_)
               {
               }
               §§goto(addr51);
            }
            this.§%!$§(this.§<Y§,this.§ !5§);
         }
         addr51:
      }
      
      private function get §^!-§() : §?T§
      {
         return getChildAt(0) as §?T§;
      }
      
      private function get §1!5§() : §?T§
      {
         return getChildAt(1) as §?T§;
      }
      
      public function get §<Y§() : Number
      {
         return this.§^!-§.x;
      }
      
      public function get § !5§() : Number
      {
         return this.§^!-§.y;
      }
      
      public function get §-!3§() : Number
      {
         return this.§1!5§.x;
      }
      
      public function get §7k§() : Number
      {
         return this.§1!5§.y;
      }
   }
}
