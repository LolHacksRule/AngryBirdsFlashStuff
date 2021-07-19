package starling.events
{
   import §-!`§.§7!J§;
   import §-!`§.Sprite;
   import §0!-§.Texture;
   import flash.display3D.Context3D;
   import flash.geom.Point;
   
   class §!!]§ extends Sprite
   {
      
      private static var §6H§:Class;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §6H§ = TouchMarker_TouchMarkerBmp;
         }
      }
      
      private var §#-§:Point;
      
      private var §8w§:Texture;
      
      function §!!]§(param1:Context3D)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§7!J§ = null;
         if(!(_loc4_ && this))
         {
            super();
            if(!(_loc4_ && _loc3_))
            {
               this.§#-§ = new Point();
               if(_loc5_)
               {
                  addr42:
                  this.§8w§ = Texture.§&B§(param1,new §6H§());
               }
            }
            var _loc2_:int = 0;
            while(_loc2_ < 2)
            {
               _loc3_ = new §7!J§(this.§8w§);
               if(_loc5_ || _loc2_)
               {
                  §§push(_loc3_);
                  §§push(this.§8w§.width);
                  if(_loc5_ || this)
                  {
                     §§push(§§pop() / 2);
                  }
                  §§pop().pivotX = §§pop();
                  if(_loc5_)
                  {
                     §§push(_loc3_);
                     §§push(this.§8w§.height);
                     if(!(_loc4_ && _loc3_))
                     {
                        §§push(§§pop() / 2);
                     }
                     §§pop().pivotY = §§pop();
                     if(_loc5_ || _loc3_)
                     {
                        addr123:
                        _loc3_.§[,§ = false;
                        if(!(_loc5_ || _loc2_))
                        {
                           continue;
                        }
                        addChild(_loc3_);
                        if(!_loc5_)
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
         §§goto(addr42);
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§8w§.dispose();
            if(!(_loc2_ && _loc2_))
            {
               addr28:
               super.dispose();
            }
            return;
         }
         §§goto(addr28);
      }
      
      public function §9!l§(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(param3)
         {
            if(_loc5_)
            {
               this.§#-§.x += param1 - this.§@"§.x;
               if(!_loc4_)
               {
                  this.§#-§.y += param2 - this.§@"§.y;
                  if(!(_loc4_ && this))
                  {
                     addr54:
                     §§push(this.§@"§);
                     if(!(_loc4_ && param1))
                     {
                        §§push(param1);
                        if(!_loc4_)
                        {
                           §§pop().x = §§pop();
                           if(_loc5_)
                           {
                              addr82:
                              this.§@"§.y = param2;
                              addr81:
                              if(!_loc5_)
                              {
                              }
                              §§goto(addr135);
                           }
                           §§push(this.§%5§);
                           if(_loc5_)
                           {
                              §§push(2);
                              if(!(_loc4_ && param3))
                              {
                                 §§push(§§pop() * this.§#-§.x);
                                 if(!(_loc4_ && param1))
                                 {
                                    §§push(param1);
                                    if(_loc5_ || this)
                                    {
                                       §§push(§§pop() - §§pop());
                                       if(_loc5_ || this)
                                       {
                                          §§pop().x = §§pop();
                                          addr135:
                                          §§goto(addr146);
                                       }
                                       addr146:
                                       §§goto(addr138);
                                    }
                                    §§goto(addr145);
                                 }
                                 §§goto(addr135);
                              }
                              addr138:
                              §§goto(addr137);
                           }
                           addr137:
                           §§push(this.§%5§);
                           §§push(2 * this.§#-§.y);
                           if(!_loc4_)
                           {
                              addr145:
                              §§push(§§pop() - param2);
                           }
                           §§pop().y = §§pop();
                           return;
                        }
                        §§goto(addr82);
                     }
                     §§goto(addr81);
                  }
               }
            }
            §§goto(addr82);
         }
         §§goto(addr54);
      }
      
      public function §!!'§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param2))
         {
            this.§#-§.x = param1;
            if(_loc4_ || this)
            {
               §§goto(addr55);
            }
            §§goto(addr66);
         }
         addr55:
         this.§#-§.y = param2;
         if(!(_loc3_ && param2))
         {
            addr66:
            this.§9!l§(this.§&R§,this.§0U§);
         }
      }
      
      private function get §@"§() : §7!J§
      {
         return getChildAt(0) as §7!J§;
      }
      
      private function get §%5§() : §7!J§
      {
         return getChildAt(1) as §7!J§;
      }
      
      public function get §&R§() : Number
      {
         return this.§@"§.x;
      }
      
      public function get §0U§() : Number
      {
         return this.§@"§.y;
      }
      
      public function get §[g§() : Number
      {
         return this.§%5§.x;
      }
      
      public function get §2!b§() : Number
      {
         return this.§%5§.y;
      }
   }
}
