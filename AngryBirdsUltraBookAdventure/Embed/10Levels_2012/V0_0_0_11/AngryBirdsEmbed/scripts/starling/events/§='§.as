package starling.events
{
   import §?^§.§8!?§;
   import §?^§.Sprite;
   import each.Texture;
   import flash.display3D.Context3D;
   import flash.geom.Point;
   
   class §='§ extends Sprite
   {
      
      private static var §!c§:Class;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §!c§ = TouchMarker_TouchMarkerBmp;
         }
      }
      
      private var §'l§:Point;
      
      private var §]s§:Texture;
      
      function §='§(param1:Context3D)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§8!?§ = null;
         if(!(_loc5_ && param1))
         {
            super();
            if(_loc4_)
            {
               addr30:
               this.§'l§ = new Point();
               if(!_loc5_)
               {
                  this.§]s§ = Texture.§ !3§(param1,new §!c§());
               }
            }
            var _loc2_:int = 0;
            while(_loc2_ < 2)
            {
               _loc3_ = new §8!?§(this.§]s§);
               if(_loc4_)
               {
                  §§push(_loc3_);
                  §§push(this.§]s§.width);
                  if(_loc4_ || param1)
                  {
                     §§push(§§pop() / 2);
                  }
                  §§pop().pivotX = §§pop();
                  if(!_loc5_)
                  {
                     §§push(_loc3_);
                     §§push(this.§]s§.height);
                     if(!_loc5_)
                     {
                        §§push(§§pop() / 2);
                     }
                     §§pop().pivotY = §§pop();
                     if(_loc4_)
                     {
                        _loc3_.§-j§ = false;
                        if(!_loc4_)
                        {
                           continue;
                        }
                     }
                  }
                  addChild(_loc3_);
                  if(_loc5_ && this)
                  {
                     continue;
                  }
               }
               _loc2_++;
            }
            return;
         }
         §§goto(addr30);
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.§]s§.dispose();
            if(!(_loc1_ && _loc1_))
            {
               super.dispose();
            }
         }
      }
      
      public function §08§(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            if(param3)
            {
               if(_loc4_ || this)
               {
                  this.§'l§.x += param1 - this.§'!%§.x;
                  this.§'l§.y += param2 - this.§'!%§.y;
                  addr51:
                  §§push(this.§'!%§);
                  if(!(_loc5_ && this))
                  {
                     §§push(param1);
                     if(_loc4_)
                     {
                        §§pop().x = §§pop();
                        addr76:
                        §§push(this.§'!%§);
                        §§push(param2);
                     }
                     §§pop().y = §§pop();
                     if(!(_loc5_ && this))
                     {
                        §§push(this.§47§);
                        if(_loc4_)
                        {
                           §§push(2);
                           if(_loc4_ || this)
                           {
                              §§push(§§pop() * this.§'l§.x);
                              if(_loc4_)
                              {
                                 §§push(param1);
                                 if(_loc4_ || this)
                                 {
                                    §§push(§§pop() - §§pop());
                                    if(_loc4_)
                                    {
                                       §§pop().x = §§pop();
                                       addr128:
                                       §§push(this.§47§);
                                       §§push(2 * this.§'l§.y);
                                       if(!(_loc5_ && param3))
                                       {
                                          addr140:
                                          §§push(§§pop() - param2);
                                       }
                                    }
                                    §§pop().y = §§pop();
                                    §§goto(addr142);
                                 }
                              }
                              §§goto(addr140);
                           }
                        }
                     }
                     §§goto(addr128);
                  }
               }
               §§goto(addr76);
            }
            §§goto(addr51);
         }
         addr142:
      }
      
      public function §[n§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param2)
         {
            this.§'l§.x = param1;
            if(!(_loc4_ && this))
            {
               this.§'l§.y = param2;
               if(!_loc3_)
               {
               }
               §§goto(addr56);
            }
            this.§08§(this.§7I§,this.§>>§);
         }
         addr56:
      }
      
      private function get §'!%§() : §8!?§
      {
         return getChildAt(0) as §8!?§;
      }
      
      private function get §47§() : §8!?§
      {
         return getChildAt(1) as §8!?§;
      }
      
      public function get §7I§() : Number
      {
         return this.§'!%§.x;
      }
      
      public function get §>>§() : Number
      {
         return this.§'!%§.y;
      }
      
      public function get §1!;§() : Number
      {
         return this.§47§.x;
      }
      
      public function get §3$§() : Number
      {
         return this.§47§.y;
      }
   }
}
