package starling.events
{
   import §_-4g§.Texture;
   import §_-LP§.Sprite;
   import §_-LP§.§_-19§;
   import flash.geom.Point;
   
   class §_-Uf§ extends Sprite
   {
      
      private static var §_-vi§:Class;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §_-vi§ = TouchMarker_TouchMarkerBmp;
         }
      }
      
      private var §_-Oy§:Point;
      
      private var §_-cX§:Texture;
      
      function §_-Uf§()
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§_-19§ = null;
         if(!(_loc4_ && _loc2_))
         {
            super();
            if(!(_loc4_ && _loc3_))
            {
               this.§_-Oy§ = new Point();
               if(_loc3_)
               {
                  addr38:
                  this.§_-cX§ = Texture.§_-aY§(new §_-vi§());
               }
               var _loc1_:int = 0;
               while(_loc1_ < 2)
               {
                  _loc2_ = new §_-19§(this.§_-cX§);
                  if(!_loc4_)
                  {
                     §§push(_loc2_);
                     §§push(this.§_-cX§.width);
                     if(!_loc4_)
                     {
                        §§push(§§pop() / 2);
                     }
                     §§pop().pivotX = §§pop();
                     if(!(_loc4_ && this))
                     {
                        addr79:
                        §§push(_loc2_);
                        §§push(this.§_-cX§.height);
                        if(!_loc4_)
                        {
                           §§push(§§pop() / 2);
                        }
                        §§pop().pivotY = §§pop();
                        if(_loc4_ && _loc2_)
                        {
                           continue;
                        }
                        _loc2_.§_-pE§ = false;
                        if(!_loc3_)
                        {
                           continue;
                        }
                     }
                     addChild(_loc2_);
                     if(!(_loc4_ && _loc1_))
                     {
                        _loc1_++;
                     }
                     continue;
                  }
                  §§goto(addr79);
               }
               return;
            }
         }
         §§goto(addr38);
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§_-cX§.dispose();
            if(_loc1_ || _loc2_)
            {
               super.dispose();
            }
         }
      }
      
      public function §_-ee§(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(param3)
         {
            this.§_-Oy§.x += param1 - this.§_-u4§.x;
            if(!_loc4_)
            {
               this.§_-Oy§.y += param2 - this.§_-u4§.y;
               addr42:
               §§push(this.§_-u4§);
               if(_loc5_)
               {
                  §§push(param1);
                  if(_loc5_)
                  {
                     §§pop().x = §§pop();
                     addr52:
                     §§push(this.§_-u4§);
                     §§push(param2);
                  }
                  §§pop().y = §§pop();
                  if(!(_loc4_ && param1))
                  {
                     addr68:
                     §§push(this.§_-yM§);
                     if(_loc5_)
                     {
                        §§push(2);
                        if(_loc5_ || param1)
                        {
                           §§push(§§pop() * this.§_-Oy§.x);
                           if(!(_loc4_ && param3))
                           {
                              §§push(param1);
                              if(_loc5_ || param1)
                              {
                                 §§push(§§pop() - §§pop());
                                 if(_loc5_ || this)
                                 {
                                    §§pop().x = §§pop();
                                    §§goto(addr111);
                                 }
                              }
                           }
                           §§goto(addr129);
                        }
                     }
                     §§goto(addr111);
                  }
                  addr111:
                  §§push(this.§_-yM§);
                  §§push(2 * this.§_-Oy§.y);
                  if(!(_loc4_ && param1))
                  {
                     addr129:
                     §§push(§§pop() - param2);
                  }
                  §§pop().y = §§pop();
                  return;
               }
               §§goto(addr52);
            }
            §§goto(addr68);
         }
         §§goto(addr42);
      }
      
      public function §_-2B§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§_-Oy§.x = param1;
            if(!(_loc3_ && param1))
            {
               §§goto(addr34);
            }
            §§goto(addr52);
         }
         addr34:
         this.§_-Oy§.y = param2;
         if(_loc4_ || param1)
         {
            addr52:
            this.§_-ee§(this.§_-dm§,this.§_-Oo§);
         }
      }
      
      private function get §_-u4§() : §_-19§
      {
         return getChildAt(0) as §_-19§;
      }
      
      private function get §_-yM§() : §_-19§
      {
         return getChildAt(1) as §_-19§;
      }
      
      public function get §_-dm§() : Number
      {
         return this.§_-u4§.x;
      }
      
      public function get §_-Oo§() : Number
      {
         return this.§_-u4§.y;
      }
      
      public function get §_-15§() : Number
      {
         return this.§_-yM§.x;
      }
      
      public function get §_-AU§() : Number
      {
         return this.§_-yM§.y;
      }
   }
}
