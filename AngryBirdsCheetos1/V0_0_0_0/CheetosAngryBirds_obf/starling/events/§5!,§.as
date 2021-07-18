package starling.events
{
   import §2!-§.Texture;
   import §`a§.§>?§;
   import §`a§.Sprite;
   import flash.display3D.Context3D;
   import flash.geom.Point;
   
   class §5!,§ extends Sprite
   {
      
      private static var §package§:Class;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §package§ = TouchMarker_TouchMarkerBmp;
         }
      }
      
      private var §#9§:Point;
      
      private var §[!H§:Texture;
      
      function §5!,§(param1:Context3D)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§>?§ = null;
         if(_loc5_ || _loc2_)
         {
            super();
            loop0:
            while(true)
            {
               addr52:
               while(true)
               {
                  this.§#9§ = new Point();
                  continue loop0;
               }
            }
            addr60:
         }
         while(true)
         {
            this.§[!H§ = Texture.§#v§(param1,new §package§());
            if(!(_loc5_ || _loc2_))
            {
               continue;
            }
            if(_loc5_ || _loc3_)
            {
               if(true)
               {
                  break;
               }
            }
            else
            {
               §§goto(addr60);
            }
            §§goto(addr52);
         }
         var _loc2_:int = 0;
         while(_loc2_ < 2)
         {
            _loc3_ = new §>?§(this.§[!H§);
            if(_loc5_)
            {
               §§push(_loc3_);
               §§push(this.§[!H§.width);
               if(!_loc4_)
               {
                  §§push(§§pop() / 2);
               }
               §§pop().pivotX = §§pop();
               loop4:
               while(true)
               {
                  §§push(_loc3_);
                  §§push(this.§[!H§.height);
                  if(!(_loc4_ && param1))
                  {
                     §§push(§§pop() / 2);
                  }
                  §§pop().pivotY = §§pop();
                  while(true)
                  {
                     _loc3_.§=!;§ = false;
                     loop6:
                     while(_loc5_)
                     {
                        while(true)
                        {
                           addChild(_loc3_);
                           while(_loc5_ || param1)
                           {
                              _loc2_++;
                              if(_loc4_ && _loc3_)
                              {
                                 continue;
                              }
                              if(!_loc5_)
                              {
                                 continue loop4;
                              }
                           }
                           continue loop6;
                        }
                        continue loop4;
                     }
                  }
               }
            }
            while(false)
            {
               §§goto(addr97);
            }
         }
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.§[!H§.dispose();
         }
         do
         {
            super.dispose();
         }
         while(!_loc1_);
         
      }
      
      public function §`-§(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param2))
         {
            if(param3)
            {
               loop0:
               while(true)
               {
                  this.§#9§.x += param1 - this.§1P§.x;
                  addr170:
                  while(true)
                  {
                     this.§#9§.y += param2 - this.§1P§.y;
                     continue loop0;
                  }
               }
            }
            while(true)
            {
               §§push(this.§1P§);
               loop4:
               while(true)
               {
                  §§push(param1);
                  addr123:
                  while(true)
                  {
                     §§pop().x = §§pop();
                     continue loop4;
                  }
               }
            }
         }
         §§goto(addr85);
      }
      
      public function §8y§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
            this.§#9§.x = param1;
            while(true)
            {
               this.§#9§.y = param2;
               loop1:
               while(!(_loc4_ && this))
               {
                  while(true)
                  {
                     this.§`-§(this.§=;§,this.§<>§);
                     if(!_loc4_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr70);
      }
      
      private function get §1P§() : §>?§
      {
         return getChildAt(0) as §>?§;
      }
      
      private function get §27§() : §>?§
      {
         return getChildAt(1) as §>?§;
      }
      
      public function get §=;§() : Number
      {
         return this.§1P§.x;
      }
      
      public function get §<>§() : Number
      {
         return this.§1P§.y;
      }
      
      public function get §3u§() : Number
      {
         return this.§27§.x;
      }
      
      public function get §]o§() : Number
      {
         return this.§27§.y;
      }
   }
}
