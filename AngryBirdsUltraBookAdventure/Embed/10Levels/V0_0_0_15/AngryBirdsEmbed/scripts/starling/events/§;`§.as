package starling.events
{
   import §5!@§.Texture;
   import §9W§.§6!0§;
   import §9W§.Sprite;
   import flash.display3D.Context3D;
   import flash.geom.Point;
   
   class §;`§ extends Sprite
   {
      
      private static var §^M§:Class;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §^M§ = TouchMarker_TouchMarkerBmp;
         }
      }
      
      private var §,c§:Point;
      
      private var §7#§:Texture;
      
      function §;`§(param1:Context3D)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§6!0§ = null;
         if(!(_loc5_ && param1))
         {
            super();
            if(_loc4_)
            {
               addr30:
               this.§,c§ = new Point();
               if(!_loc5_)
               {
                  this.§7#§ = Texture.§?g§(param1,new §^M§());
               }
            }
            var _loc2_:int = 0;
            while(_loc2_ < 2)
            {
               _loc3_ = new §6!0§(this.§7#§);
               if(_loc4_)
               {
                  §§push(_loc3_);
                  §§push(this.§7#§.width);
                  if(_loc4_ || param1)
                  {
                     §§push(§§pop() / 2);
                  }
                  §§pop().pivotX = §§pop();
                  if(!_loc5_)
                  {
                     §§push(_loc3_);
                     §§push(this.§7#§.height);
                     if(!_loc5_)
                     {
                        §§push(§§pop() / 2);
                     }
                     §§pop().pivotY = §§pop();
                     if(_loc4_)
                     {
                        _loc3_.§=O§ = false;
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
            this.§7#§.dispose();
            if(!(_loc1_ && _loc1_))
            {
               super.dispose();
            }
         }
      }
      
      public function §2!A§(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            if(param3)
            {
               if(_loc4_ || this)
               {
                  this.§,c§.x += param1 - this.§-p§.x;
                  this.§,c§.y += param2 - this.§-p§.y;
                  addr51:
                  §§push(this.§-p§);
                  if(!(_loc5_ && this))
                  {
                     §§push(param1);
                     if(_loc4_)
                     {
                        §§pop().x = §§pop();
                        addr76:
                        §§push(this.§-p§);
                        §§push(param2);
                     }
                     §§pop().y = §§pop();
                     if(!(_loc5_ && this))
                     {
                        §§push(this.§=!H§);
                        if(_loc4_)
                        {
                           §§push(2);
                           if(_loc4_ || this)
                           {
                              §§push(§§pop() * this.§,c§.x);
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
                                       §§push(this.§=!H§);
                                       §§push(2 * this.§,c§.y);
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
      
      public function §@o§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param2)
         {
            this.§,c§.x = param1;
            if(!(_loc4_ && this))
            {
               this.§,c§.y = param2;
               if(!_loc3_)
               {
               }
               §§goto(addr56);
            }
            this.§2!A§(this.§-N§,this.§`k§);
         }
         addr56:
      }
      
      private function get §-p§() : §6!0§
      {
         return getChildAt(0) as §6!0§;
      }
      
      private function get §=!H§() : §6!0§
      {
         return getChildAt(1) as §6!0§;
      }
      
      public function get §-N§() : Number
      {
         return this.§-p§.x;
      }
      
      public function get §`k§() : Number
      {
         return this.§-p§.y;
      }
      
      public function get §8!%§() : Number
      {
         return this.§=!H§.x;
      }
      
      public function get §@#§() : Number
      {
         return this.§=!H§.y;
      }
   }
}
