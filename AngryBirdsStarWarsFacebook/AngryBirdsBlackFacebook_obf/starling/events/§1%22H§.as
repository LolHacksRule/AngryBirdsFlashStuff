package starling.events
{
   import §!!U§.§#"t§;
   import §!!U§.Sprite;
   import §&v§.Texture;
   import flash.display3D.Context3D;
   import flash.geom.Point;
   
   class §1"H§ extends Sprite
   {
      
      private static var §"! §:Class;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §"! § = TouchMarker_TouchMarkerBmp;
         }
      }
      
      private var §?"f§:Point;
      
      private var §^"R§:Texture;
      
      function §1"H§(param1:Context3D)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§#"t§ = null;
         if(_loc4_)
         {
            super();
         }
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               this.§?"f§ = new Point();
               while(_loc4_)
               {
                  this.§^"R§ = Texture.§`"J§(param1,new §"! §());
                  if(!(_loc5_ && _loc3_))
                  {
                     if(true)
                     {
                        break loop1;
                     }
                     continue loop1;
                  }
               }
               continue loop0;
            }
            var _loc2_:int = 0;
            loop3:
            while(_loc2_ < 2)
            {
               _loc3_ = new §#"t§(this.§^"R§);
               if(!_loc5_)
               {
                  §§push(_loc3_);
                  §§push(this.§^"R§.width);
                  if(!_loc5_)
                  {
                     §§push(§§pop() / 2);
                  }
                  §§pop().pivotX = §§pop();
                  while(true)
                  {
                     §§push(_loc3_);
                     §§push(this.§^"R§.height);
                     if(_loc4_)
                     {
                        §§push(§§pop() / 2);
                     }
                     §§pop().pivotY = §§pop();
                     loop5:
                     for(; _loc4_ || _loc2_; if(!(_loc4_ || _loc2_))
                     {
                        continue;
                     },if(true)
                     {
                        continue loop3;
                     },§§goto(addr98))
                     {
                        while(true)
                        {
                           _loc3_.§3'§ = false;
                           loop7:
                           while(true)
                           {
                              addr98:
                              while(true)
                              {
                                 addChild(_loc3_);
                                 do
                                 {
                                    _loc2_++;
                                 }
                                 while(!(_loc4_ || this));
                                 
                                 if(!(_loc5_ && this))
                                 {
                                    continue loop5;
                                 }
                                 continue loop7;
                              }
                              continue loop3;
                           }
                        }
                     }
                  }
               }
               §§goto(addr125);
            }
            return;
         }
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§^"R§.dispose();
            do
            {
               super.dispose();
            }
            while(_loc2_ && _loc2_);
            
         }
      }
      
      public function §[=§(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            if(param3)
            {
               loop0:
               while(true)
               {
                  this.§?"f§.x += param1 - this.§7"q§.x;
                  addr170:
                  while(true)
                  {
                     this.§?"f§.y += param2 - this.§7"q§.y;
                     addr145:
                     while(true)
                     {
                        addr70:
                        if(!(_loc5_ && param1))
                        {
                           continue loop0;
                        }
                     }
                  }
               }
            }
            while(true)
            {
               §§push(this.§7"q§);
               loop4:
               while(true)
               {
                  §§push(param1);
                  addr130:
                  while(true)
                  {
                     §§pop().x = §§pop();
                     continue loop4;
                  }
               }
               §§goto(addr145);
            }
         }
         while(true)
         {
            §§push(this.§;"X§);
            if(_loc4_ || this)
            {
               §§push(2);
               if(!_loc5_)
               {
                  §§push(§§pop() * this.§?"f§.y);
                  if(_loc4_ || param1)
                  {
                     if(!_loc5_)
                     {
                        §§goto(addr49);
                     }
                     §§goto(addr112);
                  }
                  §§goto(addr58);
               }
               §§goto(addr99);
            }
            §§goto(addr98);
         }
         §§goto(addr94);
      }
      
      public function §8!=§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            this.§?"f§.x = param1;
            while(true)
            {
               this.§?"f§.y = param2;
               §§goto(addr70);
            }
         }
         addr70:
         while(true)
         {
            this.§[=§(this.§,§,this.§3#&§);
            if(!_loc4_)
            {
               if(!(_loc4_ && param2))
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      private function get §7"q§() : §#"t§
      {
         return getChildAt(0) as §#"t§;
      }
      
      private function get §;"X§() : §#"t§
      {
         return getChildAt(1) as §#"t§;
      }
      
      public function get §,§() : Number
      {
         return this.§7"q§.x;
      }
      
      public function get §3#&§() : Number
      {
         return this.§7"q§.y;
      }
      
      public function get §,"'§() : Number
      {
         return this.§;"X§.x;
      }
      
      public function get §="P§() : Number
      {
         return this.§;"X§.y;
      }
   }
}
