package starling.events
{
   import §,_§.§4K§;
   import §,_§.Sprite;
   import §7!=§.Texture;
   import flash.display3D.Context3D;
   import flash.geom.Point;
   
   class §<^§ extends Sprite
   {
      
      private static var §=O§:Class;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §=O§ = TouchMarker_TouchMarkerBmp;
         }
      }
      
      private var §9t§:Point;
      
      private var §[#§:Texture;
      
      function §<^§(param1:Context3D)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§4K§ = null;
         if(_loc5_)
         {
            super();
            if(_loc5_ || _loc2_)
            {
               §§goto(addr31);
            }
            §§goto(addr37);
         }
         addr31:
         this.§9t§ = new Point();
         if(!_loc4_)
         {
            addr37:
            this.§[#§ = Texture.§,c§(param1,new §=O§());
         }
         var _loc2_:int = 0;
         while(_loc2_ < 2)
         {
            _loc3_ = new §4K§(this.§[#§);
            if(_loc5_ || _loc3_)
            {
               §§push(_loc3_);
               §§push(this.§[#§.width);
               if(!(_loc4_ && param1))
               {
                  §§push(§§pop() / 2);
               }
               §§pop().pivotX = §§pop();
               if(!_loc4_)
               {
                  addr87:
                  §§push(_loc3_);
                  §§push(this.§[#§.height);
                  if(_loc5_)
                  {
                     §§push(§§pop() / 2);
                  }
                  §§pop().pivotY = §§pop();
                  if(!(_loc5_ || this))
                  {
                     continue;
                  }
               }
               _loc3_.§!!%§ = false;
               if(!_loc4_)
               {
                  addChild(_loc3_);
                  if(!_loc5_)
                  {
                     continue;
                  }
               }
               _loc2_++;
               continue;
            }
            §§goto(addr87);
         }
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.§[#§.dispose();
            if(_loc1_)
            {
               super.dispose();
            }
         }
      }
      
      public function §^"§(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param1)
         {
            if(param3)
            {
               this.§9t§.x += param1 - this.§7!9§.x;
               this.§9t§.y += param2 - this.§7!9§.y;
            }
            §§push(this.§7!9§);
            if(_loc5_)
            {
               §§push(param1);
               if(_loc5_)
               {
                  §§pop().x = §§pop();
                  if(!(_loc4_ && param2))
                  {
                     addr78:
                     this.§7!9§.y = param2;
                  }
                  §§push(this.§4!9§);
                  if(!_loc4_)
                  {
                     §§push(2);
                     if(_loc5_)
                     {
                        §§push(§§pop() * this.§9t§.x);
                        if(!(_loc4_ && param2))
                        {
                           §§push(param1);
                           if(!_loc4_)
                           {
                              §§push(§§pop() - §§pop());
                              if(!(_loc4_ && param2))
                              {
                                 §§pop().x = §§pop();
                                 addr122:
                                 addr121:
                                 §§push(this.§4!9§);
                                 §§push(2 * this.§9t§.y);
                                 if(_loc5_ || param3)
                                 {
                                 }
                                 §§goto(addr135);
                              }
                              §§push(param2);
                           }
                           §§push(§§pop() - §§pop());
                        }
                        addr135:
                        §§pop().y = §§pop();
                        return;
                     }
                     §§goto(addr122);
                  }
                  §§goto(addr121);
               }
            }
         }
         §§goto(addr78);
      }
      
      public function §2n§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc3_))
         {
            this.§9t§.x = param1;
            if(_loc4_ || param2)
            {
               addr45:
               this.§9t§.y = param2;
               if(_loc4_)
               {
                  this.§^"§(this.§[!5§,this.§=! §);
               }
            }
            return;
         }
         §§goto(addr45);
      }
      
      private function get §7!9§() : §4K§
      {
         return getChildAt(0) as §4K§;
      }
      
      private function get §4!9§() : §4K§
      {
         return getChildAt(1) as §4K§;
      }
      
      public function get §[!5§() : Number
      {
         return this.§7!9§.x;
      }
      
      public function get §=! §() : Number
      {
         return this.§7!9§.y;
      }
      
      public function get §-!?§() : Number
      {
         return this.§4!9§.x;
      }
      
      public function get §!M§() : Number
      {
         return this.§4!9§.y;
      }
   }
}
